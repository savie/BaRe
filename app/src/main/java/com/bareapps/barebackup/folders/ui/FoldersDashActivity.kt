package com.bareapps.barebackup.folders.ui

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.documentfile.provider.DocumentFile
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentPagerAdapter
import androidx.lifecycle.lifecycleScope
import androidx.viewpager.widget.ViewPager
import com.bareapps.barebackup.R
import com.bareapps.barebackup.common.CloudStorageDestination
import com.bareapps.barebackup.home.DashboardFragment
import com.bareapps.barebackup.home.HomeActivity
import androidx.appcompat.widget.Toolbar
import com.google.android.material.tabs.TabLayout
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.InputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

/** Kotlin port of the reference FoldersDashActivity using folders_dash_activity.xml and its tab fragments. */
class FoldersDashActivity : AppCompatActivity() {
    private var pendingRestoreEntry: FolderBackupEntry? = null
    private var pendingImportUri: Uri? = null
    private var pendingBackupCloud = false

    private val chooseTree = registerForActivityResult(ActivityResultContracts.OpenDocumentTree()) { treeUri ->
        if (treeUri == null) {
            pendingRestoreEntry = null
            pendingImportUri = null
            return@registerForActivityResult
        }
        try {
            contentResolver.takePersistableUriPermission(
                treeUri,
                Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            )
        } catch (_: Exception) {
            // Some providers do not grant persistable permissions; the current activity can still use the URI.
        }
        val restoreEntry = pendingRestoreEntry
        val importUri = pendingImportUri
        pendingRestoreEntry = null
        pendingImportUri = null
        when {
            restoreEntry != null -> restoreArchiveToTree(restoreEntry, treeUri)
            importUri != null -> restoreArchiveToTree(importUri, treeUri)
            else -> backupTree(treeUri, pendingBackupCloud)
        }
    }

    private val importZip = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) {
            pendingImportUri = uri
            pendingRestoreEntry = null
            chooseTree.launch(null)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.folders_dash_activity)

        val toolbar = findViewById<Toolbar>(R.id.toolbar)
        setSupportActionBar(toolbar)
        supportActionBar?.setDisplayHomeAsUpEnabled(true)
        supportActionBar?.title = getString(R.string.folders)
        toolbar.setNavigationOnClickListener { finish() }

        val pager = findViewById<ViewPager>(R.id.viewPager)
        pager.offscreenPageLimit = 1
        pager.adapter = object : FragmentPagerAdapter(
            supportFragmentManager,
            BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT
        ) {
            override fun getCount(): Int = 2

            override fun getItem(position: Int): Fragment =
                FoldersDashFragment.newInstance(position == 1)

            override fun getPageTitle(position: Int): CharSequence =
                if (position == 0) "Local" else "Cloud"
        }
        findViewById<TabLayout>(R.id.tabLayout).setupWithViewPager(pager)

        val useCloud = intent.getBooleanExtra(DashboardFragment.EXTRA_USE_CLOUD, false)
        if (useCloud) pager.currentItem = 1
        if (savedInstanceState == null) when (intent.getStringExtra(DashboardFragment.EXTRA_OPERATION)) {
            DashboardFragment.OP_BACKUP -> window.decorView.post { beginBackup(useCloud) }
            DashboardFragment.OP_RESTORE -> {
                if (useCloud) pager.currentItem = 1
                else window.decorView.post { beginRestoreFromFile() }
            }
        }
    }

    fun beginBackup(toCloud: Boolean) {
        if (toCloud && CloudStorageDestination.tree(this) == null) {
            openCloudTab()
            toast("Choose a cloud storage folder first")
            return
        }
        pendingBackupCloud = toCloud
        pendingRestoreEntry = null
        pendingImportUri = null
        chooseTree.launch(null)
    }

    fun beginRestoreFromFile() {
        pendingRestoreEntry = null
        pendingImportUri = null
        importZip.launch(arrayOf("application/zip", "application/octet-stream"))
    }

    internal fun restoreBackup(entry: FolderBackupEntry) {
        pendingRestoreEntry = entry
        pendingImportUri = null
        chooseTree.launch(null)
    }

    internal fun deleteBackup(entry: FolderBackupEntry) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    when {
                        entry.localFile != null -> check(entry.localFile.delete()) { "Could not delete local backup" }
                        entry.cloudFile != null -> check(entry.cloudFile.delete()) { "Could not delete cloud backup" }
                        else -> error("Unknown folder backup location")
                    }
                }
            }
            result.onSuccess {
                toast("Folder backup deleted")
                refreshFragments()
            }.onFailure { toast(it.message ?: "Could not delete folder backup") }
        }
    }

    private fun backupTree(sourceUri: Uri, toCloud: Boolean) {
        val root = DocumentFile.fromTreeUri(this, sourceUri)
        if (root == null) {
            toast("Could not access the selected folder")
            return
        }
        val folderName = safeName(root.name ?: "folder")
        val filename = "$folderName-${System.currentTimeMillis()}.zip"
        val destinationUri: Uri?
        val localFile: File?
        if (toCloud) {
            destinationUri = CloudStorageDestination.createFile(this, "application/zip", filename)
            localFile = null
            if (destinationUri == null) {
                openCloudTab()
                toast("Cloud storage is not configured")
                return
            }
        } else {
            localFile = File(localBackupDirectory(), filename)
            destinationUri = null
        }

        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    if (localFile != null) {
                        FileOutputStream(localFile).use { output ->
                            ZipOutputStream(output).use { zip -> addDirectoryToZip(root, "", zip) }
                        }
                    } else {
                        val output = contentResolver.openOutputStream(checkNotNull(destinationUri))
                            ?: error("Could not open the cloud backup destination")
                        ZipOutputStream(output).use { zip -> addDirectoryToZip(root, "", zip) }
                    }
                }
            }
            result.onSuccess {
                toast("Folder backup completed")
                refreshFragments()
            }.onFailure { error ->
                localFile?.delete()
                toast("Folder backup failed: ${error.message ?: "I/O error"}")
            }
        }
    }

    private fun restoreArchiveToTree(entry: FolderBackupEntry, destinationTree: Uri) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val input = when {
                        entry.localFile != null -> FileInputStream(entry.localFile)
                        entry.cloudFile != null -> contentResolver.openInputStream(entry.cloudFile.uri)
                        else -> null
                    } ?: error("Could not open the selected folder backup")
                    restoreZip(input, destinationTree)
                }
            }
            result.onSuccess {
                toast("Folder restore completed")
            }.onFailure {
                toast("Folder restore failed: ${it.message ?: "I/O error"}")
            }
        }
    }

    private fun restoreArchiveToTree(archiveUri: Uri, destinationTree: Uri) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val input = contentResolver.openInputStream(archiveUri)
                        ?: error("Could not open ZIP archive")
                    restoreZip(input, destinationTree)
                }
            }
            result.onSuccess { toast("Folder restore completed") }
                .onFailure { toast("Folder restore failed: ${it.message ?: "I/O error"}") }
        }
    }

    private fun addDirectoryToZip(directory: DocumentFile, prefix: String, zip: ZipOutputStream) {
        directory.listFiles().forEach { child ->
            val childName = child.name ?: "unnamed"
            require(childName != "." && childName != ".." && '/' !in childName && '\\' !in childName) {
                "Folder contains an invalid file name"
            }
            val name = prefix + childName
            if (child.isDirectory) {
                zip.putNextEntry(ZipEntry("$name/"))
                zip.closeEntry()
                addDirectoryToZip(child, "$name/", zip)
            } else if (child.isFile) {
                zip.putNextEntry(ZipEntry(name))
                contentResolver.openInputStream(child.uri).use { input ->
                    checkNotNull(input) { "Could not read $name" }.copyTo(zip)
                }
                zip.closeEntry()
            }
        }
    }

    private fun restoreZip(rawInput: InputStream, destinationTree: Uri) {
        val destination = DocumentFile.fromTreeUri(this, destinationTree)
            ?: error("Could not access the destination folder")
        val staging = createTempDir("bare-folder-restore-", directory = cacheDir)
        try {
            val pathKinds = linkedMapOf<String, Boolean>()
            val explicitEntries = hashSetOf<String>()
            var totalBytes = 0L
            var entryCount = 0

            // Fully validate and stage the archive before modifying user files.
            ZipInputStream(rawInput).use { zip ->
                while (true) {
                    val entry = zip.nextEntry ?: break
                    entryCount += 1
                    require(entryCount <= MAX_RESTORE_ENTRIES) { "Archive contains too many entries" }
                    val rawName = entry.name
                    require(rawName.isNotBlank() && rawName.length <= MAX_RESTORE_PATH_LENGTH) {
                        "Archive contains an invalid path"
                    }
                    require(!rawName.startsWith("/") && '\\' !in rawName) {
                        "Archive contains an absolute path"
                    }
                    val normalized = if (entry.isDirectory) rawName.removeSuffix("/") else rawName
                    val segments = normalized.split('/')
                    require(segments.isNotEmpty() && segments.all { it.isNotEmpty() && it != "." && it != ".." }) {
                        "Archive contains an unsafe path"
                    }
                    val path = segments.joinToString("/")
                    val isDirectory = entry.isDirectory
                    require(explicitEntries.add(path)) { "Archive contains a duplicate path: $path" }

                    // Register implicit parents too, so file/directory collisions are caught in either order.
                    for (index in 1 until segments.size) {
                        val parentPath = segments.take(index).joinToString("/")
                        val existingKind = pathKinds[parentPath]
                        require(existingKind != false) { "Archive path conflicts with a file: $parentPath" }
                        pathKinds[parentPath] = true
                    }
                    val previousKind = pathKinds[path]
                    require(previousKind == null || previousKind == isDirectory) {
                        "Archive contains a file/directory path conflict: $path"
                    }
                    pathKinds[path] = isDirectory

                    val stagedTarget = File(staging, path)
                    require(stagedTarget.canonicalPath.startsWith(staging.canonicalPath + File.separator)) {
                        "Archive contains an unsafe path"
                    }
                    if (isDirectory) {
                        require(stagedTarget.isDirectory || !stagedTarget.exists()) {
                            "Archive contains a file/directory path conflict: $path"
                        }
                        check(stagedTarget.mkdirs() || stagedTarget.isDirectory) {
                            "Could not stage folder $path"
                        }
                    } else {
                        check(stagedTarget.parentFile?.mkdirs() == true || stagedTarget.parentFile?.isDirectory == true) {
                            "Could not stage folder for $path"
                        }
                        FileOutputStream(stagedTarget).use { output ->
                            val copied = copyCurrentEntry(zip, output)
                            totalBytes += copied
                            require(totalBytes <= MAX_RESTORE_BYTES) {
                                "Archive exceeds the restore size limit"
                            }
                        }
                    }
                    zip.closeEntry()
                }
            }

            // Reject all destination type conflicts before applying any staged entry.
            fun preflight(source: File, targetDirectory: DocumentFile) {
                source.listFiles().orEmpty().forEach { child ->
                    val existing = targetDirectory.findFile(child.name)
                    if (existing != null) {
                        require(existing.isDirectory == child.isDirectory) {
                            "Restore destination has a file/folder conflict at ${child.name}"
                        }
                    }
                    if (child.isDirectory && existing != null) {
                        preflight(child, existing)
                    }
                }
            }
            preflight(staging, destination)

            fun apply(source: File, targetDirectory: DocumentFile) {
                source.listFiles().orEmpty().forEach { child ->
                    if (child.isDirectory) {
                        val target = targetDirectory.findFile(child.name)
                            ?: targetDirectory.createDirectory(child.name)
                            ?: error("Could not create folder ${child.name}")
                        require(target.isDirectory) { "Restore destination has a file/folder conflict at ${child.name}" }
                        apply(child, target)
                    } else {
                        targetDirectory.findFile(child.name)?.let { existing ->
                            check(existing.delete()) { "Could not replace existing file ${child.name}" }
                        }
                        val target = targetDirectory.createFile("application/octet-stream", child.name)
                            ?: error("Could not create file ${child.name}")
                        FileInputStream(child).use { input ->
                            contentResolver.openOutputStream(target.uri).use { rawOutput ->
                                input.copyTo(checkNotNull(rawOutput) { "Could not write ${child.name}" })
                            }
                        }
                    }
                }
            }
            apply(staging, destination)
        } finally {
            staging.deleteRecursively()
        }
    }

    private fun copyCurrentEntry(input: ZipInputStream, output: java.io.OutputStream): Long {
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        var copied = 0L
        while (true) {
            val count = input.read(buffer)
            if (count < 0) break
            if (count > 0) {
                copied += count
                output.write(buffer, 0, count)
            }
        }
        return copied
    }

    private fun refreshFragments() {
        supportFragmentManager.fragments.filterIsInstance<FoldersDashFragment>().forEach { it.refresh() }
    }

    private fun localBackupDirectory(): File =
        File(filesDir, LOCAL_BACKUP_DIR).apply { mkdirs() }

    private fun safeName(value: String): String =
        value.replace(Regex("[^A-Za-z0-9._-]"), "_").take(48).ifBlank { "folder" }

    private fun openCloudTab() {
        startActivity(Intent(this, HomeActivity::class.java)
            .addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP)
            .putExtra(HomeActivity.EXTRA_OPEN_CLOUD_TAB, true))
    }

    private fun toast(message: String) = Toast.makeText(this, message, Toast.LENGTH_LONG).show()

    companion object {
        private const val LOCAL_BACKUP_DIR = "folder-backups"
        private const val MAX_RESTORE_BYTES = 10L * 1024L * 1024L * 1024L
        private const val MAX_RESTORE_ENTRIES = 100_000
        private const val MAX_RESTORE_PATH_LENGTH = 4_096
    }
}
