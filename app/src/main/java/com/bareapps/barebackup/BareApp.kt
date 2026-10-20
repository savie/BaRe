package com.bareapps.barebackup

import android.app.ActivityManager
import android.app.Application
import android.app.ApplicationExitInfo
import android.app.LocaleManager
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.content.pm.Signature
import android.content.pm.SigningInfo
import android.content.res.Configuration
import android.media.AudioAttributes
import android.net.Uri
import android.os.Build
import android.os.LocaleList
import android.os.Process
import android.os.StrictMode
import android.util.AtomicFile
import android.util.Base64
import android.util.Log
import androidx.annotation.Keep
import androidx.core.app.NotificationCompat
import androidx.core.content.ContextCompat
import androidx.core.content.FileProvider
import com.google.firebase.FirebaseApp
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.crashlytics.FirebaseCrashlytics
import com.google.firebase.database.DatabaseError
import com.google.firebase.database.FirebaseDatabase
import com.google.firebase.database.ValueEventListener
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.topjohnwu.superuser.Shell
import java.io.File
import java.io.InputStreamReader
import java.nio.charset.StandardCharsets
import java.io.PrintWriter
import java.io.StringWriter
import java.security.MessageDigest
import java.util.Locale
import java.util.concurrent.CopyOnWriteArrayList
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlin.system.exitProcess

/**
 * Process-wide application bootstrap.
 *
 * Ports the self-contained responsibilities of SwiftBackup's SwiftApp
 * Application class. Feature-specific services remain in their own
 * subsystems; this class owns process startup and global callbacks.
 */
@Keep
class BareApp : Application() {

    @Volatile
    private lateinit var preferences: SharedPreferences

    @Volatile
    var safUsageAllowed: Boolean = false
        private set

    private var authStateListener: FirebaseAuth.AuthStateListener? = null
    private var firebaseConnectionListener: ValueEventListener? = null
    private var packageReceiverRegistered = false
    @Volatile private var firebaseConnected: Boolean? = null
    private val startupScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    private val packageChangeListeners =
        CopyOnWriteArrayList<(PackageChangeEvent) -> Unit>()

    private val packageChangeReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val action = intent?.action ?: return
            val changedPackage = intent.data?.schemeSpecificPart ?: return
            if (changedPackage == this@BareApp.packageName) return

            val replacing = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false)
            if (replacing && action != Intent.ACTION_PACKAGE_REPLACED) return

            Log.d(TAG_PACKAGE, "Package changed: action=$action package=$changedPackage")
            val event = PackageChangeEvent(changedPackage, action, replacing)
            packageChangeListeners.forEach { listener ->
                try {
                    listener(event)
                } catch (error: RuntimeException) {
                    Log.e(TAG_PACKAGE, "Package-change listener failed", error)
                }
            }
        }
    }

    override fun onCreate() {
        super.onCreate()
        instance = this
        Log.d(TAG, "onCreate")

        createReferenceNotificationChannels()
        notificationManager().cancelAll()
        installCrashHandler()

        initializePreferences()
        initializeSafPolicy()
        configureDefaultRootShell()
        initializeApplicationLocale()

        // JNI symbols are bound to BΛR☰'s Application class, not SwiftApp.
        System.loadLibrary("native-lib")

        initializeCrashlyticsIdentityTracking()
        initializeFirebaseConnectivityTracking()
        registerPackageChangeReceiver()
        reconcileDataSyncRuntimeLedger()
        startupScope.launch { logProcessStartupDiagnostics() }
        reconcileStrictModePolicy()

        Log.d(TAG, "init() complete")
    }

    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            Log.i(TAG_LOCALE, "Config changed. Locales: ${newConfig.locales}")
            syncSavedLocaleFromConfiguration(newConfig.locales)
        }
    }

    @Keep
    external fun getGoogleAuthAndroidClientId(): String

    @Keep
    external fun getGoogleAuthWebClientId(): String

    @Keep
    external fun isLocalNetworkTcpBlockedByPermission(
        host: String,
        port: Int,
        timeoutMs: Int,
    ): Boolean

    /** Event emitted for package broadcasts that SwiftApp forwarded to its local event bus. */
    data class PackageChangeEvent(
        val packageName: String,
        val action: String,
        val replacing: Boolean,
    )

    fun addPackageChangeListener(listener: (PackageChangeEvent) -> Unit) {
        packageChangeListeners.addIfAbsent(listener)
    }

    fun removePackageChangeListener(listener: (PackageChangeEvent) -> Unit) {
        packageChangeListeners.remove(listener)
    }

    val firebaseConnectionStatus: Boolean?
        get() = firebaseConnected

    fun sharedPreferences(): SharedPreferences {
        check(::preferences.isInitialized) { "BareApp preferences have not been initialized" }
        return preferences
    }

    private fun initializePreferences() {
        preferences = getSharedPreferences("${packageName}_preferences", MODE_PRIVATE)
    }

    private fun initializeSafPolicy() {
        safUsageAllowed = try {
            preferences.getBoolean(PREF_USE_SAF, false)
        } catch (_: ClassCastException) {
            false
        }
        Log.i(TAG_STORAGE, "SAF usage allowed: $safUsageAllowed")
    }

    private fun configureDefaultRootShell() {
        // Reference builder: flags=10 and a 10-second command timeout.
        // Root is not requested eagerly; libsu creates the shell on demand.
        try {
            Shell.setDefaultBuilder(
                Shell.Builder.create()
                    .setFlags(Shell.FLAG_MOUNT_MASTER)
                    .setTimeout(10),
            )
        } catch (error: RuntimeException) {
            Log.e(TAG_ROOT, "Unable to configure the default libsu shell builder", error)
        }
    }

    private fun initializeApplicationLocale() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) return

        try {
            val localeManager = getSystemService(LocaleManager::class.java) ?: return
            val savedTag = try {
                preferences.getString(PREF_APP_LOCALE, null)
            } catch (_: ClassCastException) {
                null
            }?.takeIf { it.isNotBlank() }

            val locale = if (savedTag != null) {
                Locale.forLanguageTag(savedTag.replace('_', '-'))
            } else {
                localeManager.systemLocales.get(0) ?: Locale.getDefault()
            }

            preferences.edit()
                .putString(PREF_APP_LOCALE, "${locale.language}_${locale.country}")
                .apply()
            localeManager.applicationLocales = LocaleList(locale)
            Log.i(TAG_LOCALE, "Application locale initialized to $locale")
        } catch (error: Exception) {
            Log.e(TAG_LOCALE, "Unable to initialize application locale", error)
        }
    }

    private fun syncSavedLocaleFromConfiguration(locales: LocaleList) {
        if (locales.isEmpty) return
        val supportedTags = readSupportedLocaleTags()
        if (supportedTags.isEmpty()) return

        val matched = locales.getFirstMatch(supportedTags.toTypedArray()) ?: return
        val value = "${matched.language}_${matched.country}"
        val current = try {
            preferences.getString(PREF_APP_LOCALE, null)
        } catch (_: ClassCastException) {
            null
        }
        if (current != value) {
            preferences.edit().putString(PREF_APP_LOCALE, value).apply()
            Log.i(TAG_LOCALE, "Application locale synchronized from system: $matched")
        }
    }

    private fun readSupportedLocaleTags(): List<String> {
        val tags = ArrayList<String>()
        try {
            resources.getXml(R.xml.locales_config).use { parser ->
                var event = parser.eventType
                while (event != org.xmlpull.v1.XmlPullParser.END_DOCUMENT) {
                    if (event == org.xmlpull.v1.XmlPullParser.START_TAG &&
                        parser.name == "locale"
                    ) {
                        parser.getAttributeValue(
                            "http://schemas.android.com/apk/res/android",
                            "name",
                        )?.let(tags::add)
                    }
                    event = parser.next()
                }
            }
        } catch (error: Exception) {
            Log.w(TAG_LOCALE, "Unable to read supported locale tags", error)
        }
        return tags
    }

    private fun createReferenceNotificationChannels() {
        val manager = notificationManager()
        val locale = systemNotificationLocale()
        val audioAttributes = AudioAttributes.Builder()
            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
            .setUsage(AudioAttributes.USAGE_NOTIFICATION)
            .build()

        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL_BACKUP_RESTORE,
                localizedString(R.string.backup_and_restore, locale),
                NotificationManager.IMPORTANCE_LOW,
            ).apply { setShowBadge(false) },
        )
        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL_NORMAL,
                localizedString(R.string.normal, locale),
                NotificationManager.IMPORTANCE_LOW,
            ).apply { setShowBadge(false) },
        )
        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL_SUCCESS,
                localizedString(R.string.task_successful, locale),
                NotificationManager.IMPORTANCE_DEFAULT,
            ).apply {
                setSound(resourceUri(R.raw.task_complete_sound_success), audioAttributes)
                setBypassDnd(false)
                enableVibration(true)
                setShowBadge(false)
            },
        )
        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL_ERROR,
                localizedString(R.string.task_error, locale),
                NotificationManager.IMPORTANCE_DEFAULT,
            ).apply {
                setSound(resourceUri(R.raw.task_complete_sound_error), audioAttributes)
                setBypassDnd(false)
                enableVibration(true)
                setShowBadge(false)
            },
        )
        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL_SILENT,
                localizedString(R.string.task_complete_no_sound, locale),
                NotificationManager.IMPORTANCE_LOW,
            ).apply {
                enableVibration(true)
                setBypassDnd(false)
                setShowBadge(false)
            },
        )
        manager.createNotificationChannel(
            NotificationChannel(
                CHANNEL_CRASH,
                "Crash notification",
                NotificationManager.IMPORTANCE_DEFAULT,
            ).apply {
                setSound(resourceUri(R.raw.task_complete_sound_error), audioAttributes)
                setBypassDnd(false)
                enableVibration(true)
                setShowBadge(false)
            },
        )
    }

    private fun systemNotificationLocale(): Locale {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            val localeManager = getSystemService(LocaleManager::class.java)
            if (localeManager != null && !localeManager.systemLocales.isEmpty) {
                return localeManager.systemLocales.get(0) ?: Locale.ENGLISH
            }
        }
        return resources.configuration.locales.get(0) ?: Locale.ENGLISH
    }

    private fun localizedString(resourceId: Int, locale: Locale): String {
        val configuration = Configuration(resources.configuration).apply {
            setLocale(locale)
        }
        return createConfigurationContext(configuration).getString(resourceId)
    }

    private fun resourceUri(resourceId: Int): Uri =
        Uri.parse("android.resource://$packageName/$resourceId")

    private fun notificationManager(): NotificationManager =
        getSystemService(NotificationManager::class.java)
            ?: error("NotificationManager is unavailable")

    private fun installCrashHandler() {
        val previousHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            try {
                handleUncaughtException(thread, throwable)
            } catch (handlerError: Throwable) {
                Log.e(TAG_CRASH, "Crash handler failed while handling an uncaught exception", handlerError)
            } finally {
                if (previousHandler != null) {
                    previousHandler.uncaughtException(thread, throwable)
                } else {
                    Process.killProcess(Process.myPid())
                    exitProcess(10)
                }
            }
        }
    }

    private fun handleUncaughtException(thread: Thread, throwable: Throwable) {
        val stackTrace = StringWriter().also { writer ->
            throwable.printStackTrace(PrintWriter(writer))
        }.toString()
        Log.e(TAG_CRASH, stackTrace)
        writeCrashFile(stackTrace)
        postCrashNotification(throwable)
        logCrashEnvironment()
    }

    private fun writeCrashFile(stackTrace: String): File? {
        return try {
            val file = File(cacheDir, CRASH_FILE_NAME)
            file.writeText(stackTrace, Charsets.UTF_8)
            if (file.exists() && file.length() > 0L) file else null
        } catch (error: Exception) {
            Log.e(TAG_CRASH, "Unable to write crash stack trace", error)
            null
        }
    }

    private fun postCrashNotification(throwable: Throwable) {
        val cause = throwable.cause ?: throwable
        val errorFile = File(cacheDir, CRASH_FILE_NAME)
        val builder = NotificationCompat.Builder(this, CHANNEL_CRASH)
            .setSmallIcon(R.drawable.ic_stat)
            .setContentTitle("Swift Backup crashed")
            .setContentText(cause.toString())
            .setStyle(NotificationCompat.BigTextStyle().bigText(cause.toString()))
            .setOnlyAlertOnce(true)
            .setAutoCancel(true)

        if (errorFile.exists() && errorFile.length() > 0L) {
            try {
                val uri = FileProvider.getUriForFile(
                    this,
                    "$packageName.fileprovider",
                    errorFile,
                )
                val viewIntent = Intent(Intent.ACTION_VIEW)
                    .setDataAndType(uri, "text/plain")
                    .addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                val pendingIntent = PendingIntent.getActivity(
                    this,
                    0,
                    viewIntent,
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
                )
                builder.setContentIntent(pendingIntent)
            } catch (error: Exception) {
                Log.w(TAG_CRASH, "Unable to attach crash-log viewer action", error)
            }
        }

        try {
            notificationManager().notify(CRASH_NOTIFICATION_ID, builder.build())
        } catch (error: Exception) {
            Log.e(TAG_CRASH, "Unable to post crash notification", error)
        }
    }

    private fun logCrashEnvironment() {
        try {
            Log.i(
                TAG,
                "Crash environment: cache=${cacheDir.absolutePath}, " +
                    "freeBytes=${cacheDir.usableSpace}, totalBytes=${cacheDir.totalSpace}",
            )
        } catch (error: Exception) {
            Log.w(TAG, "Unable to collect crash environment details", error)
        }
    }

    private fun registerPackageChangeReceiver() {
        if (packageReceiverRegistered) return

        val filter = IntentFilter().apply {
            priority = 999
            addDataScheme("package")
            addAction(Intent.ACTION_PACKAGE_ADDED)
            addAction(Intent.ACTION_PACKAGE_REMOVED)
            addAction(Intent.ACTION_PACKAGE_REPLACED)
            addAction(Intent.ACTION_PACKAGE_CHANGED)
        }

        try {
            ContextCompat.registerReceiver(
                this,
                packageChangeReceiver,
                filter,
                ContextCompat.RECEIVER_EXPORTED,
            )
            packageReceiverRegistered = true
        } catch (error: Exception) {
            Log.e(TAG_PACKAGE, "Unable to register package-change receiver", error)
        }
    }

    private fun initializeCrashlyticsIdentityTracking() {
        try {
            val listener = FirebaseAuth.AuthStateListener { auth ->
                val user = auth.currentUser ?: return@AuthStateListener
                try {
                    if (FirebaseApp.getApps(this).isNotEmpty()) {
                        FirebaseCrashlytics.getInstance().apply {
                            setUserId(user.uid)
                            setCustomKey("uid", user.uid)
                        }
                    }
                } catch (error: Exception) {
                    Log.w(TAG, "Unable to associate Firebase user with Crashlytics", error)
                }
            }
            FirebaseAuth.getInstance().addAuthStateListener(listener)
            authStateListener = listener
        } catch (error: Exception) {
            Log.e(TAG, "Unable to register Firebase authentication state listener", error)
        }
    }

    private fun initializeFirebaseConnectivityTracking() {
        try {
            val listener = object : ValueEventListener {
                override fun onDataChange(snapshot: com.google.firebase.database.DataSnapshot) {
                    firebaseConnected = snapshot.getValue(Boolean::class.java)
                    Log.d(TAG_NETWORK, "Firebase Realtime Database connected: $firebaseConnected")
                }

                override fun onCancelled(error: DatabaseError) {
                    Log.w(TAG_NETWORK, "Firebase connection listener cancelled: ${error.message}")
                }
            }
            FirebaseDatabase.getInstance()
                .getReference(".info/connected")
                .addValueEventListener(listener)
            firebaseConnectionListener = listener
        } catch (error: Exception) {
            Log.e(TAG_NETWORK, "Unable to register Firebase connection listener", error)
        }
    }

    /**
     * Closes any foreground data-sync sessions left open by a previous process,
     * then applies the reference ledger's 24-hour retention and 200-entry cap.
     */
    private fun reconcileDataSyncRuntimeLedger() {
        synchronized(DATA_SYNC_LEDGER_LOCK) {
            val file = File(filesDir, DATA_SYNC_LEDGER_PATH)
            if (!file.exists()) return

            try {
                val atomicFile = AtomicFile(file)
                val ledger = atomicFile.openRead().use { input ->
                    InputStreamReader(input, StandardCharsets.UTF_8).use { reader ->
                        JsonParser.parseReader(reader).asJsonArray
                    }
                }
                val now = System.currentTimeMillis()
                var changed = false
                val normalized = JsonArray()

                for (element in ledger) {
                    if (!element.isJsonObject) continue
                    val entry = element.asJsonObject
                    val end = entry.get("endMs")
                    if (end == null || end.isJsonNull) {
                        entry.addProperty("endMs", now)
                        entry.addProperty("outcome", "PROCESS_RESTARTED")
                        changed = true
                        Log.w(
                            TAG_DATA_SYNC_LEDGER,
                            "Closed stale dataSync FGS session id=${entry.get("id")?.asString}",
                        )
                    }
                    val endMs = entry.get("endMs")?.takeUnless { it.isJsonNull }?.asLong ?: now
                    if (endMs >= now - DATA_SYNC_LEDGER_RETENTION_MS) {
                        normalized.add(entry)
                    } else {
                        changed = true
                    }
                }

                while (normalized.size() > DATA_SYNC_LEDGER_MAX_ENTRIES) {
                    normalized.remove(0)
                    changed = true
                }

                if (changed) {
                    val output = atomicFile.startWrite()
                    try {
                        output.write(normalized.toString().toByteArray(StandardCharsets.UTF_8))
                        atomicFile.finishWrite(output)
                    } catch (error: Exception) {
                        atomicFile.failWrite(output)
                        throw error
                    }
                    Log.i(
                        TAG_DATA_SYNC_LEDGER,
                        "Reconciled stale dataSync FGS sessions from previous process",
                    )
                }
            } catch (error: Exception) {
                Log.e(TAG_DATA_SYNC_LEDGER, "Failed to reconcile dataSync FGS ledger", error)
            }
        }
    }

    private fun logProcessStartupDiagnostics() {
        try {
            val activityManager = getSystemService(ActivityManager::class.java) ?: return
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                val exits = activityManager.getHistoricalProcessExitReasons(null, 0, 0)
                val latest = exits
                    .orEmpty()
                    .filter { it.processName == packageName }
                    .maxByOrNull { it.timestamp }

                if (latest != null) {
                    val summary = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                        latest.processStateSummary?.toString(Charsets.UTF_8)
                    } else {
                        null
                    }
                    Log.i(
                        TAG,
                        "Last exit details: reason=${latest.reason}, description=${latest.description}, " +
                            "timestamp=${latest.timestamp}, stateSummary=$summary",
                    )
                }
            }

            if (Build.VERSION.SDK_INT >= 35) {
                val start = activityManager.getHistoricalProcessStartReasons(1)
                    .orEmpty()
                    .firstOrNull { it.processName == packageName }
                if (start != null) {
                    Log.i(
                        TAG,
                        "ApplicationStartInfo: reason=${start.reason}, " +
                            "startType=${start.startType}, wasForceStopped=${start.wasForceStopped()}",
                    )
                }
            }
        } catch (error: Throwable) {
            Log.w(TAG, "Unable to collect process startup/exit diagnostics", error)
        }
    }

    private fun reconcileStrictModePolicy() {
        StrictMode.setVmPolicy(StrictMode.VmPolicy.Builder().build())
    }

    /** Reads the APK signing certificates using SwiftApp.Companion.e()'s contract. */
    fun getApkSignatures(): Array<Signature>? {
        return try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                val packageInfo = packageManager.getPackageInfo(
                    packageName,
                    PackageManager.GET_SIGNING_CERTIFICATES,
                )
                val signingInfo: SigningInfo = packageInfo.signingInfo ?: return null
                signingInfo.apkContentsSigners
            } else {
                @Suppress("DEPRECATION")
                packageManager.getPackageInfo(packageName, PackageManager.GET_SIGNATURES).signatures
            }
        } catch (error: PackageManager.NameNotFoundException) {
            Log.e(TAG, "Unable to read APK signing certificates", error)
            null
        }
    }

    /** Returns the first APK signer SHA digest encoded as Base64 without line wrapping. */
    fun getApkSignatureSha1Base64(): String? {
        val signature = getApkSignatures()?.firstOrNull() ?: return null
        return try {
            val digest = MessageDigest.getInstance("SHA")
                .digest(signature.toByteArray())
            Base64.encodeToString(digest, Base64.NO_WRAP)
        } catch (error: Exception) {
            Log.e(TAG, "Unable to calculate APK signature digest", error)
            null
        }
    }

    companion object {
        private const val TAG = "BareApp"
        private const val TAG_CRASH = "Crash"
        private const val TAG_LOCALE = "LocaleManager"
        private const val TAG_PACKAGE = "LocalAppChangeReceiver"
        private const val TAG_ROOT = "RootShell"
        private const val TAG_STORAGE = "LabsSettingsFragment"
        private const val TAG_NETWORK = "FirebaseConnection"
        private const val TAG_DATA_SYNC_LEDGER = "DataSyncFgsRuntimeLedger"

        private const val PREF_USE_SAF = "use_saf"
        private const val PREF_APP_LOCALE = "app_locale"

        private const val CHANNEL_BACKUP_RESTORE = "backup_restore_channel"
        private const val CHANNEL_NORMAL = "normal_channel"
        private const val CHANNEL_SUCCESS = "task_completion_channel_success"
        private const val CHANNEL_ERROR = "task_completion_channel_error"
        private const val CHANNEL_SILENT = "task_completion_channel_silent"
        private const val CHANNEL_CRASH = "crash_error_channel"

        private const val CRASH_NOTIFICATION_ID = 912
        private const val CRASH_FILE_NAME = "error.txt"
        private const val DATA_SYNC_LEDGER_PATH = "diagnostics/data_sync_fgs_runtime_ledger.json"
        private const val DATA_SYNC_LEDGER_RETENTION_MS = 86_400_000L
        private const val DATA_SYNC_LEDGER_MAX_ENTRIES = 200
        private val DATA_SYNC_LEDGER_LOCK = Any()

        @Volatile
        private var instance: BareApp? = null

        @JvmStatic
        fun getInstance(): BareApp = checkNotNull(instance) {
            "BareApp has not been initialized"
        }

        @JvmStatic
        fun appContext(): Context = getInstance().applicationContext
    }
}
