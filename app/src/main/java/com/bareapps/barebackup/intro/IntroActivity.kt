package com.bareapps.barebackup.intro

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.provider.Settings
import android.text.Html
import android.text.method.LinkMovementMethod
import android.util.Log
import android.view.View
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.credentials.CredentialManager
import androidx.credentials.CustomCredential
import androidx.credentials.GetCredentialRequest
import androidx.credentials.exceptions.GetCredentialCancellationException
import androidx.lifecycle.lifecycleScope
import com.bareapps.barebackup.BareApp
import com.bareapps.barebackup.R
import com.bareapps.barebackup.account.LocalAccountRecovery
import com.bareapps.barebackup.home.HomeActivity
import com.google.android.libraries.identity.googleid.GetGoogleIdOption
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.FirebaseAuthUserCollisionException
import com.google.firebase.auth.GoogleAuthProvider
import com.google.android.material.button.MaterialButton
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.tasks.await
import kotlinx.coroutines.withContext
import rikka.shizuku.Shizuku

class IntroActivity : AppCompatActivity() {
    private var navigatingHome = false
    private var authInProgress = false
    private var permissionGrantInProgress = false
    private var shizukuListenerRegistered = false
    private var pendingLocalIdentityRecovery = false
    private var showingRequiredPermissions = false

    private val notificationPermission = registerForActivityResult(
        ActivityResultContracts.RequestPermission()
    ) {
        refreshPermissionCards()
        continueIfRequiredPermissionsGranted()
    }

    private val legacyStoragePermissions = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) {
        refreshPermissionCards()
        continueIfRequiredPermissionsGranted()
    }

    private val shizukuPermissionResultListener =
        Shizuku.OnRequestPermissionResultListener { requestCode, grantResult ->
            if (requestCode == REQUEST_SHIZUKU_PERMISSION) {
                if (grantResult == PackageManager.PERMISSION_GRANTED) {
                    grantWithShizuku()
                } else {
                    finishPermissionGrant()
                    Toast.makeText(this, R.string.permission_error, Toast.LENGTH_SHORT).show()
                }
            }
        }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val preferences = getSharedPreferences("${packageName}_preferences", MODE_PRIVATE)
        if (!preferences.getBoolean(KEY_FIRST_START, true)) {
            openHome()
            return
        }

        setContentView(R.layout.intro_activity)
        // Hide the included permissions section through its real child; the include ID
        // itself is not reliably returned by findViewById in this generated layout.
        (findViewById<View>(R.id.tv_header)?.parent as? View)?.visibility = View.GONE

        findViewById<TextView>(R.id.tv_sign_in_subtitle)
            .setText(R.string.signin_intro_subtitle)

        findViewById<TextView>(R.id.tv_privacy_policy).apply {
            text = Html.fromHtml(
                getString(R.string.tos_privacy_agreement),
                Html.FROM_HTML_MODE_LEGACY,
            )
            movementMethod = LinkMovementMethod.getInstance()
        }

        findViewById<ImageView>(R.id.iv_menu).setOnClickListener { showIntroMenu(it) }
        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener { signInWithGoogle() }
        findViewById<MaterialButton>(R.id.btn_anonymous).setOnClickListener { showGoogleSignInRequiredDialog() }

        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            .getActionButton().setOnClickListener { requestStorageAccess() }

        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            .getActionButton().setOnClickListener { requestNotificationAccess() }

        findViewById<IntroPermissionCardView>(R.id.container_xiaomi_installed_apps_perm)
            .getActionButton().setOnClickListener { openInstalledAppsSettings() }

        findViewById<MaterialButton>(R.id.btn_root_permissions)
            .setOnClickListener { grantAllPermissionsWithRootOrShizuku() }

        try {
            Shizuku.addRequestPermissionResultListener(shizukuPermissionResultListener)
            shizukuListenerRegistered = true
        } catch (error: Exception) {
            Log.w(TAG, "Unable to register Shizuku permission result listener", error)
        }

        updateDeviceSpecificCards()
        refreshPermissionCards()

    }

    private fun showGoogleSignInRequiredDialog() {
        val dialogView = layoutInflater.inflate(R.layout.google_sign_in_required_dialog, null, false)
        val dialog = AlertDialog.Builder(this)
            .setView(dialogView)
            .create()

        dialogView.findViewById<View>(R.id.btn_google).setOnClickListener {
            dialog.dismiss()
            signInWithGoogle()
        }
        dialogView.findViewById<View>(R.id.btn_anonymous).setOnClickListener {
            dialog.dismiss()
            continueAnonymously()
        }
        // The reference dialog has no Cancel action.
        dialogView.findViewById<View>(R.id.btn_cancel).visibility = View.GONE
        dialog.setOnCancelListener { }
        dialog.show()
        // Match the reference dialog's narrower centered card instead of the platform
        // default width, which spreads the content too close to the screen edges.
        val displayWidth = resources.displayMetrics.widthPixels
        dialog.window?.setLayout((displayWidth * 0.84f).toInt(), android.view.WindowManager.LayoutParams.WRAP_CONTENT)
    }

    @Suppress("DEPRECATION")
    override fun onBackPressed() {
        if (showingRequiredPermissions) {
            showSignInScreen()
            return
        }
        super.onBackPressed()
    }

    private fun showSignInScreen() {
        showingRequiredPermissions = false
        setContentView(R.layout.intro_activity)
        (findViewById<View>(R.id.tv_header)?.parent as? View)?.visibility = View.GONE

        findViewById<TextView>(R.id.tv_sign_in_subtitle)
            .setText(R.string.signin_intro_subtitle)
        findViewById<TextView>(R.id.tv_privacy_policy).apply {
            text = Html.fromHtml(
                getString(R.string.tos_privacy_agreement),
                Html.FROM_HTML_MODE_LEGACY,
            )
            movementMethod = LinkMovementMethod.getInstance()
        }

        findViewById<ImageView>(R.id.iv_menu).setOnClickListener { showIntroMenu(it) }
        findViewById<MaterialButton>(R.id.btn_google).setOnClickListener { signInWithGoogle() }
        findViewById<MaterialButton>(R.id.btn_anonymous).setOnClickListener { showGoogleSignInRequiredDialog() }
        updateDeviceSpecificCards()
        refreshPermissionCards()
    }

    override fun onResume() {
        super.onResume()
        if (findViewById<View>(R.id.container_permissions) != null) {
            updateDeviceSpecificCards()
            refreshPermissionCards()
            if (pendingLocalIdentityRecovery && hasRequiredStorageAccess()) {
                initializeLocalAccount()
            }
            continueIfRequiredPermissionsGranted()
        }
    }

    override fun onDestroy() {
        if (shizukuListenerRegistered) {
            try {
                Shizuku.removeRequestPermissionResultListener(shizukuPermissionResultListener)
            } catch (error: Exception) {
                Log.w(TAG, "Unable to remove Shizuku permission result listener", error)
            }
        }
        super.onDestroy()
    }

    private fun showIntroMenu(anchor: View) {
        androidx.appcompat.widget.PopupMenu(this, anchor).apply {
            menuInflater.inflate(R.menu.menu_intro, menu)
            setOnMenuItemClickListener { item ->
                when (item.itemId) {
                    R.id.action_language -> {
                        launchIntroMenuDestination("$packageName.locale.LocaleActivity")
                        true
                    }
                    R.id.action_barelogger -> {
                        launchIntroMenuDestination("$packageName.slog.SLogActivity")
                        true
                    }
                    R.id.action_restart -> {
                        recreate()
                        true
                    }
                    else -> false
                }
            }
            show()
        }
    }

    private fun launchIntroMenuDestination(className: String) {
        try {
            startActivity(Intent().setClassName(this, className))
        } catch (error: Exception) {
            Log.w(TAG, "Intro menu destination is unavailable: $className", error)
            Toast.makeText(this, R.string.permission_error, Toast.LENGTH_SHORT).show()
        }
    }

    private fun signInWithGoogle() {
        if (authInProgress || navigatingHome) return
        authInProgress = true
        setAuthButtonsEnabled(false)

        lifecycleScope.launch {
            try {
                val webClientId = (application as BareApp).getGoogleAuthWebClientId()
                check(webClientId.isNotBlank()) { "Google OAuth Web Client ID is empty" }

                val googleOption = GetGoogleIdOption.Builder()
                    .setServerClientId(webClientId)
                    .setFilterByAuthorizedAccounts(false)
                    .setAutoSelectEnabled(false)
                    .build()
                val request = GetCredentialRequest.Builder()
                    .addCredentialOption(googleOption)
                    .build()
                val credential = CredentialManager.create(this@IntroActivity)
                    .getCredential(this@IntroActivity, request)
                    .credential

                val customCredential = credential as? CustomCredential
                    ?: error("Google ID token credential was not returned")
                check(
                    customCredential.type == GoogleIdTokenCredential.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL
                ) { "Google ID token credential was not returned" }

                val googleCredential = GoogleIdTokenCredential.createFrom(customCredential.data)
                val firebaseCredential = GoogleAuthProvider.getCredential(googleCredential.idToken, null)
                val auth = FirebaseAuth.getInstance()
                val currentUser = auth.currentUser

                try {
                    if (currentUser?.isAnonymous == true) {
                        currentUser.linkWithCredential(firebaseCredential).await()
                    } else {
                        auth.signInWithCredential(firebaseCredential).await()
                    }
                } catch (collision: FirebaseAuthUserCollisionException) {
                    auth.signInWithCredential(firebaseCredential).await()
                }

                completeGoogleAccountSetup()
            } catch (cancelled: GetCredentialCancellationException) {
                Log.i(TAG, "Google sign-in was cancelled by the user")
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (error: Exception) {
                val stage = when {
                    error is androidx.credentials.exceptions.GetCredentialException -> "credential_manager"
                    error is com.google.firebase.auth.FirebaseAuthException -> "firebase_auth"
                    error is com.google.firebase.FirebaseException -> "firebase"
                    else -> "google_token_or_unknown"
                }
                Log.e(
                    TAG,
                    "Google sign-in failed at stage=$stage; exception=${error.javaClass.name}; message=${error.message}",
                    error,
                )
                Toast.makeText(this@IntroActivity, R.string.auth_failed, Toast.LENGTH_LONG).show()
            } finally {
                authInProgress = false
                if (!isFinishing && !navigatingHome) setAuthButtonsEnabled(true)
            }
        }
    }

    private fun completeGoogleAccountSetup() {
        val user = FirebaseAuth.getInstance().currentUser
            ?: throw IllegalStateException("Google sign-in completed without an authenticated account")
        val accountPrefs = getSharedPreferences("bare_local_account", MODE_PRIVATE)
        accountPrefs.edit()
            .putString("google_uid", user.uid)
            .putString("active_uid", user.uid)
            .putString("active_kind", "google")
            .apply()

        // Keep a device-local recovery identity alongside the cloud identity. If storage
        // access is not available yet, the dedicated permission screen stays visible and
        // onResume retries recovery after the user grants access.
        showRequiredPermissionsScreen()
        initializeLocalAccount()
        accountPrefs.edit()
            .putString("google_uid", user.uid)
            .putString("active_uid", user.uid)
            .putString("active_kind", "google")
            .apply()
    }

    private fun continueAnonymously() {
        if (authInProgress || navigatingHome) return

        // Match the reference flow: Skip selects a local account, then opens a dedicated
        // required-permissions screen. Local mode must not create a Firebase anonymous user.
        showRequiredPermissionsScreen()
        initializeLocalAccount()
    }

    private fun initializeLocalAccount() {
        pendingLocalIdentityRecovery = true
        try {
            val recovery = LocalAccountRecovery(this).ensureIdentity()
            if (recovery.status == LocalAccountRecovery.Status.STORAGE_ACCESS_REQUIRED) {
                Toast.makeText(this, R.string.permission_error, Toast.LENGTH_LONG).show()
                requestStorageAccess()
                return
            }
            pendingLocalIdentityRecovery = false
            Log.i(TAG, "Local account ready; restored=" + recovery.restored)
        } catch (error: Exception) {
            Log.e(TAG, "Local account recovery/setup failed", error)
            Toast.makeText(this, R.string.permission_error, Toast.LENGTH_LONG).show()
        }
    }

    private fun hasRequiredStorageAccess(): Boolean =
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) EnvironmentCompat.hasAllFilesAccess()
        else isPermissionGranted(Manifest.permission.WRITE_EXTERNAL_STORAGE)

    private fun showRequiredPermissionsScreen() {
        showingRequiredPermissions = true
        // The reference keeps sign-in and required permissions as sections of intro_activity.
        // Reuse that fixed layout and switch sections in Kotlin instead of inventing a layout resource.
        setContentView(R.layout.intro_activity)
        // Include wrapper IDs are not consistently resolvable in this layout.
        // Hide the actual sign-in section root via a stable child from its included layout.
        (findViewById<View>(R.id.tv_sign_in_title)?.parent as? View)?.visibility = View.GONE
        findViewById<View>(R.id.container_sign_in_actions)?.visibility = View.GONE
        findViewById<View>(R.id.tv_privacy_policy)?.visibility = View.GONE
        findViewById<View>(R.id.firebase_connection_error_view)?.visibility = View.GONE
        (findViewById<View>(R.id.tv_header)?.parent as? View)?.visibility = View.VISIBLE

        findViewById<View>(R.id.iv_menu)?.setOnClickListener { showIntroMenu(it) }
        findViewById<MaterialButton>(R.id.btn_root_permissions)?.setOnClickListener {
            grantAllPermissionsWithRootOrShizuku()
        }
        findViewById<IntroPermissionCardView>(R.id.container_storage_perm)
            .getActionButton().setOnClickListener { requestStorageAccess() }
        findViewById<IntroPermissionCardView>(R.id.container_notifications_perm)
            .getActionButton().setOnClickListener { requestNotificationAccess() }
        findViewById<IntroPermissionCardView>(R.id.container_xiaomi_installed_apps_perm)
            .getActionButton().setOnClickListener { openInstalledAppsSettings() }
        updateDeviceSpecificCards()
        refreshPermissionCards()
        continueIfRequiredPermissionsGranted()
    }

    private fun showAnonymousSignInFailure() {
        if (isFinishing || navigatingHome) return
        AlertDialog.Builder(this)
            .setTitle(R.string.cloud_connection_failed)
            .setMessage(R.string.auth_failed)
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton(R.string.continue_anyway) { _, _ -> continueToHome() }
            .show()
    }

    private fun setAuthButtonsEnabled(enabled: Boolean) {
        findViewById<MaterialButton>(R.id.btn_google)?.isEnabled = enabled
        findViewById<MaterialButton>(R.id.btn_anonymous)?.isEnabled = enabled
    }

    private fun updateDeviceSpecificCards() {
        findViewById<View>(R.id.container_xiaomi_installed_apps_perm)?.visibility =
            if (IntroPermissionGrantCoordinator.supportsInstalledAppsPermission(this)) {
                View.VISIBLE
            } else {
                View.GONE
            }
    }

    private fun requestStorageAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                startActivity(
                    Intent(
                        Settings.ACTION_MANAGE_APP_ALL_FILES_ACCESS_PERMISSION,
                        Uri.parse("package:$packageName"),
                    ),
                )
            } catch (_: Exception) {
                try {
                    startActivity(Intent(Settings.ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION))
                } catch (_: Exception) {
                    openAppSettings()
                }
            }
        } else {
            legacyStoragePermissions.launch(
                arrayOf(
                    Manifest.permission.READ_EXTERNAL_STORAGE,
                    Manifest.permission.WRITE_EXTERNAL_STORAGE,
                ),
            )
        }
    }

    private fun requestNotificationAccess() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            notificationPermission.launch(Manifest.permission.POST_NOTIFICATIONS)
        } else {
            refreshPermissionCards()
        }
    }

    private fun openInstalledAppsSettings() {
        val manufacturerIntent = Intent("miui.intent.action.APP_PERM_EDITOR")
            .putExtra("extra_pkgname", packageName)
        try {
            startActivity(manufacturerIntent)
        } catch (_: Exception) {
            openAppSettings()
        }
    }

    private fun openAppSettings() {
        try {
            startActivity(
                Intent(
                    Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                    Uri.parse("package:$packageName"),
                ),
            )
        } catch (error: Exception) {
            Log.w(TAG, "Unable to open application settings", error)
            Toast.makeText(this, R.string.permission_error, Toast.LENGTH_SHORT).show()
        }
    }

    private fun refreshPermissionCards() {
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            EnvironmentCompat.hasAllFilesAccess()
        } else {
            isPermissionGranted(Manifest.permission.READ_EXTERNAL_STORAGE) &&
                isPermissionGranted(Manifest.permission.WRITE_EXTERNAL_STORAGE)
        }
        findViewById<View>(R.id.container_storage_perm)?.visibility =
            if (storageGranted) View.GONE else View.VISIBLE

        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            isPermissionGranted(Manifest.permission.POST_NOTIFICATIONS)
        findViewById<View>(R.id.container_notifications_perm)?.visibility =
            if (notificationsGranted) View.GONE else View.VISIBLE

        val installedAppsSupported =
            IntroPermissionGrantCoordinator.supportsInstalledAppsPermission(this)
        val installedAppsGranted = !installedAppsSupported ||
            isPermissionGranted("com.android.permission.GET_INSTALLED_APPS")
        findViewById<View>(R.id.container_xiaomi_installed_apps_perm)?.visibility =
            if (installedAppsGranted) View.GONE else View.VISIBLE

        val bulkPermissions = buildList {
            add(Manifest.permission.READ_SMS)
            add(Manifest.permission.READ_CONTACTS)
            add(Manifest.permission.READ_CALL_LOG)
            add(Manifest.permission.WRITE_CALL_LOG)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                add(Manifest.permission.POST_NOTIFICATIONS)
            }
            if (Build.VERSION.SDK_INT >= 36) {
                add("android.permission.ACCESS_LOCAL_NETWORK")
            }
        }
        val bulkPermissionMissing = bulkPermissions.any { !isPermissionGranted(it) } ||
            !storageGranted ||
            (installedAppsSupported && !installedAppsGranted)
        findViewById<View>(R.id.container_root_permissions)?.visibility =
            if (bulkPermissionMissing) View.VISIBLE else View.GONE
    }

    private fun isPermissionGranted(permission: String): Boolean = try {
        checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED
    } catch (_: RuntimeException) {
        false
    }

    private fun grantAllPermissionsWithRootOrShizuku() {
        if (permissionGrantInProgress || navigatingHome) return

        // Match the reference interaction: explain the exact permissions first,
        // then run the bulk grant only after the user confirms.
        AlertDialog.Builder(this)
            .setTitle(R.string.root_grant_permissions_dialog_title)
            .setMessage(R.string.root_grant_permissions_dialog_msg_prefix)
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton(R.string.grant_permissions) { _, _ -> startBulkPermissionGrant() }
            .show()
    }

    private fun startBulkPermissionGrant() {
        if (permissionGrantInProgress || navigatingHome) return
        permissionGrantInProgress = true
        findViewById<MaterialButton>(R.id.btn_root_permissions)?.isEnabled = false

        lifecycleScope.launch {
            val rootAttempt = withContext(Dispatchers.IO) {
                IntroPermissionGrantCoordinator.grantWithRoot(this@IntroActivity)
            }
            if (rootAttempt.available) {
                if (!rootAttempt.succeeded) {
                    Log.w(
                        TAG,
                        "Root shell is available; keeping the root path because some individual grants failed: attempted=${rootAttempt.attempted}, failed=${rootAttempt.failed}",
                    )
                }
                // Do not switch to Shizuku just because one permission is unsupported
                // or restricted on this Android/ROM. A usable root shell is the preferred
                // elevated path; report partial grant results instead of launching Shizuku.
                finishPermissionGrant(rootAttempt)
                return@launch
            }

            Log.w(TAG, "Root shell unavailable; checking whether Shizuku can be used")

            when {
                IntroPermissionGrantCoordinator.hasShizukuPermission() -> grantWithShizuku()
                IntroPermissionGrantCoordinator.isShizukuRunning() -> {
                    try {
                        Shizuku.requestPermission(REQUEST_SHIZUKU_PERMISSION)
                    } catch (error: Exception) {
                        Log.e(TAG, "Unable to request Shizuku permission", error)
                        finishPermissionGrant()
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.permission_error,
                            Toast.LENGTH_LONG,
                        ).show()
                    }
                }
                else -> {
                    finishPermissionGrant()
                    if (IntroPermissionGrantCoordinator.launchShizukuManager(this@IntroActivity)) {
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.apk_import_status_requesting_elevated_access,
                            Toast.LENGTH_LONG,
                        ).show()
                    } else {
                        Toast.makeText(
                            this@IntroActivity,
                            R.string.permission_error,
                            Toast.LENGTH_LONG,
                        ).show()
                    }
                }
            }
        }
    }

    private fun grantWithShizuku() {
        if (isFinishing || isDestroyed) return
        lifecycleScope.launch {
            val attempt = withContext(Dispatchers.IO) {
                IntroPermissionGrantCoordinator.grantWithShizuku(this@IntroActivity)
            }
            finishPermissionGrant(attempt)
        }
    }

    private fun finishPermissionGrant(attempt: IntroPermissionGrantCoordinator.Attempt? = null) {
        permissionGrantInProgress = false
        findViewById<MaterialButton>(R.id.btn_root_permissions)?.isEnabled = true
        refreshPermissionCards()

        if (attempt == null || !attempt.available || !attempt.succeeded) {
            if (attempt != null) {
                Log.w(
                    TAG,
                    "Root/Shizuku grant incomplete: attempted=${attempt.attempted}, failed=${attempt.failed}",
                )
            }
            Toast.makeText(this, R.string.permission_error, Toast.LENGTH_LONG).show()
            continueIfRequiredPermissionsGranted()
        } else {
            Toast.makeText(this, R.string.all_permissions_granted, Toast.LENGTH_LONG).show()
            continueToHome()
        }
    }

    private fun continueIfRequiredPermissionsGranted() {
        if (!showingRequiredPermissions || navigatingHome || isFinishing || isDestroyed) return

        val storageGranted = hasRequiredStorageAccess()
        val notificationsGranted = Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU ||
            isPermissionGranted(Manifest.permission.POST_NOTIFICATIONS)
        val installedAppsGranted =
            !IntroPermissionGrantCoordinator.supportsInstalledAppsPermission(this) ||
                isPermissionGranted("com.android.permission.GET_INSTALLED_APPS")
        val corePermissions = listOf(
            Manifest.permission.READ_SMS,
            Manifest.permission.READ_CONTACTS,
            Manifest.permission.READ_CALL_LOG,
            Manifest.permission.WRITE_CALL_LOG,
        ).all(::isPermissionGranted)
        val localNetworkGranted = Build.VERSION.SDK_INT < 36 ||
            isPermissionGranted("android.permission.ACCESS_LOCAL_NETWORK")

        if (storageGranted && notificationsGranted && installedAppsGranted &&
            corePermissions && localNetworkGranted
        ) {
            continueToHome()
        }
    }

    private fun continueToHome() {
        if (navigatingHome) return
        navigatingHome = true

        getSharedPreferences("${packageName}_preferences", MODE_PRIVATE).edit()
            .putBoolean(KEY_FIRST_START, false)
            .apply()

        openHome()
    }

    private fun openHome() {
        startActivity(Intent(this, HomeActivity::class.java))
        finish()
    }

    companion object {
        private const val TAG = "IntroActivity"
        private const val KEY_FIRST_START = "KEY_FIRST_START"
        private const val REQUEST_SHIZUKU_PERMISSION = 6417
    }
}
