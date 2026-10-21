package com.bareapps.barebackup.appslist.ui.list

import android.app.PendingIntent
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInstaller
import android.content.pm.PackageManager
import android.net.Uri
import android.os.Bundle
import android.os.Build
import android.provider.Settings
import android.view.Gravity
import android.text.Editable
import android.text.TextWatcher
import android.view.View
import android.view.ViewGroup
import android.widget.EditText
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.FrameLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.app.AlertDialog
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.bareapps.barebackup.R
import com.bareapps.barebackup.home.DashboardFragment
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.common.CsvBackupUtils
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.StringReader
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

/**
 * Initial native implementation for the application backup/restore entry point.
 *
 * Exports APK archives and restores them through PackageInstaller. Private app data backup/restore
 * is offered separately behind root access and a validated TAR archive.
 */
class AppListActivity : AppCompatActivity() {

    private lateinit var appRecycler: RecyclerView
    private lateinit var appsAdapter: InstalledAppsAdapter
    private lateinit var searchInput: EditText
    private var installedApps: List<ApplicationInfo> = emptyList()
    private var appPendingExport: ApplicationInfo? = null
    private var pendingDataExportApp: ApplicationInfo? = null
    private var pendingDataRestoreApp: ApplicationInfo? = null
    private var pendingInstallSource: Uri? = null
    private var pendingBulkBackupAction = "ID_BACKUP_ALL_APPS"
    private var filterText: String = ""

    private val exportDocument = registerForActivityResult(
        ActivityResultContracts.CreateDocument("application/vnd.android.package-archive")
    ) { destination ->
        val app = appPendingExport
        appPendingExport = null
        if (destination == null || app == null) return@registerForActivityResult
        exportApk(app, destination)
    }

    private val exportSplitArchive = registerForActivityResult(
        ActivityResultContracts.CreateDocument("application/zip")
    ) { destination ->
        val app = appPendingExport
        appPendingExport = null
        if (destination == null || app == null) return@registerForActivityResult
        exportSplitApks(app, destination)
    }

    private val exportAllArchive = registerForActivityResult(
        ActivityResultContracts.CreateDocument("application/zip")
    ) { destination ->
        val actionId = pendingBulkBackupAction
        pendingBulkBackupAction = "ID_BACKUP_ALL_APPS"
        if (destination != null) exportAllApps(destination, actionId)
    }

    private val exportDataArchive = registerForActivityResult(
        ActivityResultContracts.CreateDocument("application/x-tar")
    ) { destination ->
        val app = pendingDataExportApp
        pendingDataExportApp = null
        if (destination != null && app != null) backupAppData(app, destination)
    }

    private val importDataArchive = registerForActivityResult(
        ActivityResultContracts.OpenDocument()
    ) { source ->
        val app = pendingDataRestoreApp
        pendingDataRestoreApp = null
        if (source != null && app != null) confirmRestoreAppData(app, source)
    }

    private val requestInstallPermission = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) {
        val source = pendingInstallSource
        pendingInstallSource = null
        if (source != null && Build.VERSION.SDK_INT >= Build.VERSION_CODES.O &&
            packageManager.canRequestPackageInstalls()
        ) {
            installApk(source)
        } else if (source != null) {
            Toast.makeText(this, "Allow BΛR☰ to install APKs, then retry restore", Toast.LENGTH_LONG).show()
        }
    }

    private val importDocument = registerForActivityResult(
        ActivityResultContracts.OpenDocument()
    ) { source ->
        if (source != null) installApk(source)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        buildContent()
        intent.getStringExtra(EXTRA_INITIAL_QUERY)?.let { searchInput.setText(it) }
        loadApps()
        if (intent.getBooleanExtra(EXTRA_FOCUS_SEARCH, false)) {
            window.decorView.post {
                searchInput.requestFocus()
                (getSystemService(INPUT_METHOD_SERVICE) as? android.view.inputmethod.InputMethodManager)
                    ?.showSoftInput(searchInput, android.view.inputmethod.InputMethodManager.SHOW_IMPLICIT)
            }
        }
        if (intent.action == ACTION_INSTALL_RESULT) handleInstallResult(intent)
        else when (intent.getStringExtra(DashboardFragment.EXTRA_OPERATION)) {
            DashboardFragment.OP_RESTORE -> window.decorView.post {
                importDocument.launch(arrayOf("application/vnd.android.package-archive", "application/zip", "application/octet-stream"))
            }
            DashboardFragment.OP_BACKUP -> {
                val actionId = intent.getStringExtra(DashboardFragment.EXTRA_ACTION_ID) ?: "ID_BACKUP_ALL_APPS"
                if (actionId in BACKUP_ACTION_IDS) window.decorView.post { requestAllExport(actionId) }
            }
        }
    }

    private fun buildContent() {
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(resolveColor(android.R.attr.colorBackground))
        }
        val toolbar = MaterialToolbar(this).apply {
            title = getString(R.string.apps)
            navigationIcon = ContextCompat.getDrawable(this@AppListActivity, R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        }
        root.addView(toolbar, LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        ))

        searchInput = EditText(this).apply {
            hint = getString(R.string.search)
            isSingleLine = true
            setPadding(dp(16), dp(8), dp(16), dp(8))
            addTextChangedListener(object : TextWatcher {
                override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
                override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                    filterText = s?.toString()?.trim().orEmpty()
                    renderApps()
                }
                override fun afterTextChanged(s: Editable?) = Unit
            })
        }
        root.addView(searchInput, LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
        ))

        val actionRow = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.END or Gravity.CENTER_VERTICAL
            setPadding(dp(12), dp(4), dp(12), dp(4))
        }
        val restoreButton = MaterialButton(this).apply {
            text = "Restore APK"
            setOnClickListener {
                importDocument.launch(arrayOf("application/vnd.android.package-archive", "application/zip", "application/octet-stream"))
            }
        }
        actionRow.addView(MaterialButton(this).apply {
            text = "Backup all APKs"
            isAllCaps = false
            setOnClickListener { requestAllExport() }
        }, LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f))
        actionRow.addView(restoreButton, LinearLayout.LayoutParams(
            0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f
        ))
        root.addView(actionRow)

        appsAdapter = InstalledAppsAdapter()
        appRecycler = RecyclerView(this).apply {
            layoutManager = LinearLayoutManager(this@AppListActivity)
            adapter = appsAdapter
            clipToPadding = false
            setPadding(dp(8), dp(4), dp(8), dp(24))
        }
        root.addView(appRecycler, LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f
        ))
        setContentView(root)
    }

    private fun loadApps() {
        installedApps = packageManager.getInstalledApplications(PackageManager.GET_META_DATA)
            .asSequence()
            .filter { it.packageName != packageName }
            .filter { app -> app.sourceDir?.let(::File)?.isFile == true }
            .sortedBy { packageManager.getApplicationLabel(it).toString().lowercase() }
            .toList()
        renderApps()
    }

    private fun renderApps() {
        if (!::appsAdapter.isInitialized) return
        val matches = installedApps.filter { app ->
            val label = packageManager.getApplicationLabel(app).toString()
            label.contains(filterText, ignoreCase = true) ||
                app.packageName.contains(filterText, ignoreCase = true)
        }
        appsAdapter.submit(matches)
    }

    private inner class InstalledAppsAdapter : RecyclerView.Adapter<RecyclerView.ViewHolder>() {
        private var items: List<ApplicationInfo> = emptyList()

        fun submit(next: List<ApplicationInfo>) {
            items = next
            notifyDataSetChanged()
        }

        override fun getItemCount(): Int = if (items.isEmpty()) 1 else items.size
        override fun getItemViewType(position: Int): Int = if (items.isEmpty()) TYPE_EMPTY else TYPE_APP

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RecyclerView.ViewHolder {
            return if (viewType == TYPE_EMPTY) {
                EmptyHolder(TextView(this@AppListActivity).apply {
                    setPadding(dp(16), dp(24), dp(16), dp(24))
                })
            } else {
                AppHolder(FrameLayout(this@AppListActivity).apply {
                    layoutParams = RecyclerView.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
                    )
                })
            }
        }

        override fun onBindViewHolder(holder: RecyclerView.ViewHolder, position: Int) {
            if (holder is EmptyHolder) {
                holder.text.text = if (installedApps.isEmpty()) {
                    "No installed applications found"
                } else {
                    "No matching applications"
                }
            } else if (holder is AppHolder) {
                holder.container.removeAllViews()
                holder.container.addView(
                    createAppRow(items[position]),
                    FrameLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT
                    )
                )
            }
        }

        inner class EmptyHolder(val text: TextView) : RecyclerView.ViewHolder(text)
        inner class AppHolder(val container: FrameLayout) : RecyclerView.ViewHolder(container)

    }

    private fun createAppRow(app: ApplicationInfo): View {
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER_VERTICAL
            setPadding(dp(12), dp(10), dp(8), dp(10))
            background = ContextCompat.getDrawable(this@AppListActivity, android.R.drawable.list_selector_background)
        }
        val icon = ImageView(this).apply {
            val size = dp(48)
            layoutParams = LinearLayout.LayoutParams(size, size).apply { marginEnd = dp(12) }
            try {
                setImageDrawable(packageManager.getApplicationIcon(app))
            } catch (_: PackageManager.NameNotFoundException) {
                setImageResource(R.drawable.ic_app)
            }
        }
        row.addView(icon)
        val labels = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            layoutParams = LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f)
        }
        labels.addView(TextView(this).apply {
            text = packageManager.getApplicationLabel(app)
            textSize = 15f
            setTextColor(resolveColor(android.R.attr.textColorPrimary))
        })
        labels.addView(TextView(this).apply {
            text = app.packageName
            textSize = 12f
            setTextColor(resolveColor(android.R.attr.textColorSecondary))
        })
        row.addView(labels)

        val backupButton = MaterialButton(this).apply {
            text = "Backup APK"
            isAllCaps = false
            setOnClickListener { requestApkExport(app) }
        }
        row.addView(backupButton)
        row.setOnClickListener { showAppActions(app) }
        return row
    }

    private fun requestAllExport(actionId: String = "ID_BACKUP_ALL_APPS") {
        val fileName = when (actionId) {
            "ID_BACKUP_PENDING_APPS" -> "bare-missing-apps.zip"
            "ID_BACKUP_UPDATED_APPS" -> "bare-updated-apps.zip"
            "ID_BACKUP_REDO_APPS" -> "bare-redo-apps.zip"
            "ID_BACKUP_SYNC_APPS" -> "bare-sync-apps.zip"
            else -> "bare-all-apps.zip"
        }
        val destination = if (intent.getBooleanExtra(DashboardFragment.EXTRA_USE_CLOUD, false)) {
            CloudStorageDestination.createFile(this, "application/zip", fileName)
        } else null
        if (destination != null) {
            exportAllApps(destination, actionId)
        } else {
            pendingBulkBackupAction = actionId
            exportAllArchive.launch(fileName)
        }
    }

    private fun exportAllApps(destination: Uri, actionId: String = "ID_BACKUP_ALL_APPS") {
        lifecycleScope.launch {
            try {
                val count = ApkBackupEngine.exportAll(this@AppListActivity, destination, actionId)
                Toast.makeText(this@AppListActivity, "Backed up " + count + " applications to ZIP", Toast.LENGTH_LONG).show()
            } catch (error: Exception) {
                Toast.makeText(this@AppListActivity, "Bulk APK backup failed: " + (error.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }
    private fun showAppActions(app: ApplicationInfo) {
        val label = packageManager.getApplicationLabel(app).toString()
        AlertDialog.Builder(this)
            .setTitle(label)
            .setItems(arrayOf("Backup APK", "Backup app data (root)", "Restore app data (root)")) { _, choice ->
                when (choice) {
                    0 -> requestApkExport(app)
                    1 -> requestAppDataExport(app)
                    2 -> requestAppDataRestore(app)
                }
            }
            .show()
    }

    private fun requestAppDataExport(app: ApplicationInfo) {
        if (app.flags and ApplicationInfo.FLAG_SYSTEM != 0 &&
            app.flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP == 0
        ) {
            Toast.makeText(this, "Private-data backup is disabled for system apps", Toast.LENGTH_LONG).show()
            return
        }
        val fileName = app.packageName + "-data.tar"
        val destination = if (intent.getBooleanExtra(DashboardFragment.EXTRA_USE_CLOUD, false)) CloudStorageDestination.createFile(this, "application/x-tar", fileName) else null
        if (destination != null) {
            backupAppData(app, destination)
        } else {
            pendingDataExportApp = app
            exportDataArchive.launch(fileName)
        }
    }

    private fun backupAppData(app: ApplicationInfo, destination: Uri) {
        lifecycleScope.launch {
            try {
                RootAppDataBackup.export(this@AppListActivity, app.packageName, destination)
                Toast.makeText(this@AppListActivity, "App data backup saved", Toast.LENGTH_LONG).show()
            } catch (error: Exception) {
                Toast.makeText(
                    this@AppListActivity,
                    "App data backup failed: " + (error.message ?: "root access unavailable"),
                    Toast.LENGTH_LONG
                ).show()
            }
        }
    }

    private fun requestAppDataRestore(app: ApplicationInfo) {
        if (app.flags and ApplicationInfo.FLAG_SYSTEM != 0 &&
            app.flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP == 0
        ) {
            Toast.makeText(this, "Private-data restore is disabled for system apps", Toast.LENGTH_LONG).show()
            return
        }
        pendingDataRestoreApp = app
        importDataArchive.launch(arrayOf("application/x-tar", "application/octet-stream", "application/x-gtar"))
    }

    private fun confirmRestoreAppData(app: ApplicationInfo, source: Uri) {
        val label = packageManager.getApplicationLabel(app).toString()
        AlertDialog.Builder(this)
            .setTitle("Restore private app data?")
            .setMessage(
                "This replaces the credential-protected private data for " + label + ". " +
                    "The archive must match " + app.packageName + ". Root is required. " +
                    "Use data from a compatible app version; an incompatible restore can break the app. " +
                    "Device-protected data and external app files are not included."
            )
            .setNegativeButton(android.R.string.cancel, null)
            .setPositiveButton("Restore") { _, _ ->
                lifecycleScope.launch {
                    try {
                        RootAppDataBackup.restore(this@AppListActivity, app.packageName, app.uid, source)
                        Toast.makeText(this@AppListActivity, "App data restore completed", Toast.LENGTH_LONG).show()
                    } catch (error: Exception) {
                        Toast.makeText(
                            this@AppListActivity,
                            "App data restore failed: " + (error.message ?: "root access unavailable"),
                            Toast.LENGTH_LONG
                        ).show()
                    }
                }
            }
            .show()
    }

    private fun requestApkExport(app: ApplicationInfo) {
        val source = app.sourceDir?.let(::File)
        if (source == null || !source.isFile || !source.canRead()) {
            Toast.makeText(this, "APK source is not readable for this application", Toast.LENGTH_LONG).show()
            return
        }
        val label = packageManager.getApplicationLabel(app).toString()
            .replace(Regex("[^A-Za-z0-9._-]"), "_")
        val version = try {
            @Suppress("DEPRECATION")
            packageManager.getPackageInfo(app.packageName, 0).versionName ?: "unknown"
        } catch (_: Exception) {
            "unknown"
        }
        val isSplit = !app.splitSourceDirs.isNullOrEmpty()
        val fileName = if (isSplit) "${label}_${version}.apks.zip" else "${label}_${version}.apk"
        val mimeType = if (isSplit) "application/zip" else "application/vnd.android.package-archive"
        val destination = if (intent.getBooleanExtra(DashboardFragment.EXTRA_USE_CLOUD, false)) CloudStorageDestination.createFile(this, mimeType, fileName) else null
        if (destination != null) {
            if (isSplit) exportSplitApks(app, destination) else exportApk(app, destination)
        } else {
            appPendingExport = app
            if (isSplit) exportSplitArchive.launch(fileName) else exportDocument.launch(fileName)
        }
    }

    private fun exportApk(app: ApplicationInfo, destination: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val source = app.sourceDir?.let(::File)
                check(source != null && source.isFile) { "APK source is no longer available" }
                contentResolver.openOutputStream(destination, "w").use { raw ->
                    val output = checkNotNull(raw) { "Could not open the selected destination" }
                    FileInputStream(source).use { input -> input.copyTo(output) }
                }
            }
            if (result.isSuccess) ApkBackupEngine.recordAppBackup(this@AppListActivity, app)
            withContext(Dispatchers.Main) {
                if (result.isSuccess) Toast.makeText(this@AppListActivity, "APK backup saved", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@AppListActivity, "APK backup failed: " + (result.exceptionOrNull()?.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }

        private fun exportSplitApks(app: ApplicationInfo, destination: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val base = app.sourceDir?.let(::File)
                val splits = app.splitSourceDirs.orEmpty().map(::File)
                check(base != null && base.isFile && splits.all { it.isFile }) { "One or more APK splits are not readable" }
                contentResolver.openOutputStream(destination, "w").use { raw ->
                    val output = checkNotNull(raw) { "Could not open the selected destination" }
                    ZipOutputStream(output).use { zip ->
                        (listOf(base) + splits).forEachIndexed { index, file ->
                            val name = if (index == 0) "base.apk" else "split_" + index + ".apk"
                            zip.putNextEntry(ZipEntry(name))
                            FileInputStream(file).use { it.copyTo(zip) }
                            zip.closeEntry()
                        }
                    }
                }
            }
            if (result.isSuccess) ApkBackupEngine.recordAppBackup(this@AppListActivity, app)
            withContext(Dispatchers.Main) {
                if (result.isSuccess) Toast.makeText(this@AppListActivity, "Split APK archive saved", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@AppListActivity, "APK backup failed: " + (result.exceptionOrNull()?.message ?: "I/O error"), Toast.LENGTH_LONG).show()
            }
        }
    }

        private fun installApk(source: Uri) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && !packageManager.canRequestPackageInstalls()) {
            pendingInstallSource = source
            requestInstallPermission.launch(Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES, Uri.parse("package:" + packageName)))
            return
        }
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val displayName = queryDisplayName(source).orEmpty()
                val mimeType = contentResolver.getType(source).orEmpty()
                val isArchive = displayName.endsWith(".zip", ignoreCase = true) ||
                    mimeType == "application/zip" || mimeType == "application/x-zip-compressed"
                val actionId = intent.getStringExtra(DashboardFragment.EXTRA_ACTION_ID)
                check(isArchive || (actionId != "ID_RESTORE_MISSING_APPS" && actionId != "ID_RESTORE_NEW_VERSIONS_APPS")) {
                    "Filtered restore requires a BΛR☰ bulk APK ZIP archive"
                }
                if (isArchive) {
                    installApkArchive(source)
                } else {
                    val temp = File(cacheDir, "restore-" + System.currentTimeMillis() + "-base.apk")
                    try {
                        contentResolver.openInputStream(source).use { raw ->
                            val input = checkNotNull(raw) { "Could not open the selected APK" }
                            FileOutputStream(temp).use { output -> input.copyTo(output) }
                        }
                        installPackageFiles(listOf(temp), temp.name.hashCode())
                        1
                    } finally {
                        temp.delete()
                    }
                }
            }
            withContext(Dispatchers.Main) {
                if (result.isSuccess) Toast.makeText(this@AppListActivity, "Submitted " + result.getOrThrow() + " package(s) to Android installer", Toast.LENGTH_LONG).show()
                else Toast.makeText(this@AppListActivity, "Could not install APK: " + (result.exceptionOrNull()?.message ?: "unknown error"), Toast.LENGTH_LONG).show()
            }
        }
    }

    private fun installApkArchive(source: Uri): Int {
        val tempRoot = File(cacheDir, "restore-" + System.currentTimeMillis())
        check(tempRoot.mkdirs()) { "Could not prepare temporary restore directory" }
        try {
            val packageFiles = linkedMapOf<String, MutableList<File>>()
            val archiveVersionCodes = mutableMapOf<String, Long>()
            contentResolver.openInputStream(source).use { raw ->
                val input = checkNotNull(raw) { "Could not open the selected archive" }
                ZipInputStream(input).use { zip ->
                    while (true) {
                        val entry = zip.nextEntry ?: break
                        if (!entry.isDirectory && entry.name == "manifest.csv") {
                            val csv = zip.readBytes().toString(Charsets.UTF_8)
                            var isHeader = true
                            var packageColumn = -1
                            var versionColumn = -1
                            CsvBackupUtils.forEachRow(StringReader(csv)) { fields ->
                                if (isHeader) {
                                    packageColumn = fields.indexOf("package")
                                    versionColumn = fields.indexOf("version_code")
                                    isHeader = false
                                } else if (packageColumn >= 0 && versionColumn >= 0 && fields.size > maxOf(packageColumn, versionColumn)) {
                                    val version = fields[versionColumn].toLongOrNull()
                                    if (version != null) archiveVersionCodes[fields[packageColumn]] = version
                                }
                            }
                        } else if (!entry.isDirectory && entry.name.endsWith(".apk", ignoreCase = true)) {
                            val segments = entry.name.split('/').filter { it.isNotBlank() }
                            val first = segments.firstOrNull().orEmpty()
                            val packageKey = if (segments.size > 1 && first.matches(Regex("[A-Za-z0-9_.]+"))) first else "single"
                            val fileName = segments.last()
                            val directory = File(tempRoot, packageKey)
                            if (!directory.exists()) check(directory.mkdirs()) { "Could not prepare package directory" }
                            val file = File(directory, fileName)
                            FileOutputStream(file).use { output -> copyCurrentZipEntry(zip, output) }
                            packageFiles.getOrPut(packageKey) { mutableListOf() }.add(file)
                        }
                        zip.closeEntry()
                    }
                }
            }
            check(packageFiles.isNotEmpty()) { "Archive does not contain APK files" }
            val actionId = intent.getStringExtra(DashboardFragment.EXTRA_ACTION_ID)
            val isFilteredRestore = actionId == "ID_RESTORE_MISSING_APPS" || actionId == "ID_RESTORE_NEW_VERSIONS_APPS"
            check(!isFilteredRestore || !packageFiles.containsKey("single")) { "Filtered restore requires a BΛR☰ bulk APK archive with package folders" }
            val selectedPackages = packageFiles.filter { (packageName, _) ->
                when (actionId) {
                    "ID_RESTORE_MISSING_APPS" -> installedVersionCode(packageName) == null
                    "ID_RESTORE_NEW_VERSIONS_APPS" -> {
                        val installed = installedVersionCode(packageName)
                        val archived = archiveVersionCodes[packageName]
                        installed != null && archived != null && archived > installed
                    }
                    else -> true
                }
            }
            check(selectedPackages.isNotEmpty()) {
                if (actionId == "ID_RESTORE_MISSING_APPS") "No missing apps were found in this archive"
                else if (actionId == "ID_RESTORE_NEW_VERSIONS_APPS") "No newer app versions were found in this archive"
                else "Archive does not contain installable APKs"
            }
            selectedPackages.values.forEachIndexed { index, files ->
                check(files.any { it.name == "base.apk" } || (selectedPackages.size == 1 && files.size == 1)) { "Package archive is missing base.apk" }
                val ordered = files.sortedWith(compareBy<File> { if (it.name == "base.apk") 0 else 1 }.thenBy { it.name })
                installPackageFiles(ordered, tempRoot.name.hashCode() + index)
            }
            return selectedPackages.size
        } finally {
            tempRoot.deleteRecursively()
        }
    }

    private fun installedVersionCode(packageName: String): Long? = try {
        @Suppress("DEPRECATION")
        val info = packageManager.getPackageInfo(packageName, 0)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) info.longVersionCode else info.versionCode.toLong()
    } catch (_: Exception) {
        null
    }
    private fun installPackageFiles(files: List<File>, requestCode: Int) {
        check(files.isNotEmpty()) { "No APK files to install" }
        var sessionId = -1
        try {
            val installer = packageManager.packageInstaller
            val params = PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL)
            sessionId = installer.createSession(params)
            installer.openSession(sessionId).use { session ->
                val ordered = files.sortedWith(
                    compareBy<File> { if (it.name == "base.apk") 0 else 1 }.thenBy { it.name }
                )
                ordered.forEachIndexed { index, file ->
                    val sessionName = if (index == 0) "base.apk" else "split_" + index + ".apk"
                    FileInputStream(file).use { input ->
                        session.openWrite(sessionName, 0, file.length()).use { output ->
                            input.copyTo(output)
                            session.fsync(output)
                        }
                    }
                }
                val callback = Intent(this, AppListActivity::class.java)
                    .setAction(ACTION_INSTALL_RESULT)
                    .addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP)
                val pendingIntent = PendingIntent.getActivity(
                    this, requestCode, callback,
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE
                )
                session.commit(pendingIntent.intentSender)
            }
        } catch (error: Exception) {
            if (sessionId >= 0) {
                try { packageManager.packageInstaller.abandonSession(sessionId) } catch (_: Exception) {}
            }
            throw error
        }
    }

    private fun copyCurrentZipEntry(zip: ZipInputStream, output: java.io.OutputStream) {
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        while (true) {
            val count = zip.read(buffer)
            if (count < 0) break
            if (count > 0) output.write(buffer, 0, count)
        }
    }

    private fun queryDisplayName(uri: Uri): String? {
        contentResolver.query(uri, arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)
            .use { cursor ->
                if (cursor != null && cursor.moveToFirst()) {
                    return cursor.getString(0)
                }
            }
        return null
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        if (intent.action == ACTION_INSTALL_RESULT) handleInstallResult(intent)
    }

    private fun handleInstallResult(resultIntent: Intent) {
        val status = resultIntent.getIntExtra(PackageInstaller.EXTRA_STATUS, PackageInstaller.STATUS_FAILURE)
        val message = resultIntent.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE).orEmpty()
        val text = when (status) {
            PackageInstaller.STATUS_SUCCESS -> "APK installed"
            PackageInstaller.STATUS_PENDING_USER_ACTION -> {
                @Suppress("DEPRECATION")
                val confirmation = resultIntent.getParcelableExtra(Intent.EXTRA_INTENT) as? Intent
                if (confirmation != null) startActivity(confirmation)
                "Android requires confirmation to install this APK"
            }
            else -> "APK installation failed: ${message.ifBlank { "status $status" }}"
        }
        Toast.makeText(this, text, Toast.LENGTH_LONG).show()
        if (status == PackageInstaller.STATUS_SUCCESS) loadApps()
    }

    private fun resolveColor(attribute: Int): Int {
        val values = android.util.TypedValue()
        theme.resolveAttribute(attribute, values, true)
        return if (values.resourceId != 0) getColor(values.resourceId) else values.data
    }

    private fun dp(value: Int): Int = (value * resources.displayMetrics.density).toInt()

    companion object {
        const val EXTRA_FOCUS_SEARCH = "com.bareapps.barebackup.extra.FOCUS_SEARCH"
        const val EXTRA_INITIAL_QUERY = "com.bareapps.barebackup.extra.INITIAL_QUERY"
        private const val TYPE_EMPTY = 0
        private const val TYPE_APP = 1
        private val BACKUP_ACTION_IDS = setOf(
            "ID_BACKUP_ALL_APPS",
            "ID_BACKUP_PENDING_APPS",
            "ID_BACKUP_UPDATED_APPS",
            "ID_BACKUP_REDO_APPS",
            "ID_BACKUP_SYNC_APPS"
        )
        private const val ACTION_INSTALL_RESULT = "com.bareapps.barebackup.action.INSTALL_RESULT"
    }
}
