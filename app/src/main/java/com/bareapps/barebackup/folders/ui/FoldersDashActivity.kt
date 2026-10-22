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
    private var pendingBackupIncremental = false

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
            else -> backupTree(treeUri, pendingBackupCloud, pendingBackupIncremental)
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
        pendingBackupIncremental = false
        pendingRestoreEntry = null
        pendingImportUri = null
        chooseTree.launch(null)
    }

    fun beginIncrementalBackup(toCloud: Boolean) {
        if (toCloud && CloudStorageDestination.tree(this) == null) {
            openCloudTab()
            toast("Choose a cloud storage folder first")
            return
        }
        pendingBackupCloud = toCloud
        pendingBackupIncremental = true
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

    private fun backupTree(sourceUri: Uri, toCloud: Boolean, incremental: Boolean = false) {
        val root = DocumentFile.fromTreeUri(this, sourceUri)
        if (root == null) {
            toast("Could not access the selected folder")
            return
        }
        if (incremental) {
            lifecycleScope.launch {
                val result = withContext(Dispatchers.IO) {
                    runCatching { createIncrementalSnapshot(root, sourceUri, toCloud) }
                }
                result.onSuccess { created ->
                    toast(if (created) "Incremental folder snapshot completed" else "No folder changes since the previous snapshot")
                    if (created) refreshFragments()
                }.onFailure { toast("Incremental backup failed: " + (it.message ?: "I/O error")) }
            }
            return
        }
        val folderName = safeName(root.name ?: "folder")
        val filename = folderName + "-" + System.currentTimeMillis() + ".zip"
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
                toast("Folder backup failed: " + (error.message ?: "I/O error"))
            }
        }
    }

    private fun restoreArchiveToTree(entry: FolderBackupEntry, destinationTree: Uri) {
        lifecycleScope.launch {
            val result = withContext(Dispatchers.IO) {
                runCatching {
                    val manifest = readSnapshotManifest(entry)
                    if (manifest == null) {
                        restoreZip(openBackupInput(entry), destinationTree)
                    } else {
                        restoreSnapshotChain(resolveSnapshotChain(entry, manifest), destinationTree)
                    }
                }
            }
            result.onSuccess { toast("Folder restore completed") }
                .onFailure { toast("Folder restore failed: " + (it.message ?: "I/O error")) }
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

    private fun restoreZip(
        rawInput: InputStream,
        destinationTree: Uri,
        replaceTypeConflicts: Set<String> = emptySet()
    ) {
        val destination = DocumentFile.fromTreeUri(this, destinationTree)
            ?: error("Could not access the destination folder")
        val staging = createTempDir("bare-folder-restore-", directory = cacheDir)
        try {
            val pathValidator = FolderArchivePathValidator(MAX_RESTORE_PATH_LENGTH)
            var totalBytes = 0L
            var entryCount = 0

            // Fully validate and stage the archive before modifying user files.
            ZipInputStream(rawInput).use { zip ->
                while (true) {
                    val entry = zip.nextEntry ?: break
                    entryCount += 1
                    require(entryCount <= MAX_RESTORE_ENTRIES) { "Archive contains too many entries" }
                    val isDirectory = entry.isDirectory
                    val path = pathValidator.register(entry.name, isDirectory)
                    val segments = path.split('/')

                    val stagedTarget = File(staging, path)
                    require(stagedTarget.canonicalPath.startsWith(staging.canonicalPath + File.separator)) {
                        "Archive contains an unsafe path"
                    }
                    if (isDirectory) {
                        // ZIP directory entries must never carry data; reject payloads without draining
                        // attacker-controlled content into memory or bypassing file size accounting.
                        require(zip.read() == -1) { "Archive directory entry contains unexpected data: $path" }
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
                            val copied = copyCurrentEntry(zip, output, MAX_RESTORE_BYTES - totalBytes)
                            totalBytes += copied
                        }
                    }
                    zip.closeEntry()
                }
            }

            // Preflight every destination conflict before making any changes. Incremental
            // restore may replace a file with a directory (or vice versa) only when the
            // snapshot history explicitly records that type transition.
            fun preflight(source: File, targetDirectory: DocumentFile, prefix: String) {
                source.listFiles().orEmpty().forEach { child ->
                    val path = if (prefix.isEmpty()) child.name else "$prefix/${child.name}"
                    val existing = targetDirectory.findFile(child.name)
                    if (existing != null && existing.isDirectory != child.isDirectory) {
                        require(path in replaceTypeConflicts) {
                            "Restore destination has a file/folder conflict at $path"
                        }
                        if (existing.isDirectory) {
                            require(existing.listFiles().isEmpty()) {
                                "Cannot replace non-empty destination folder at $path; its extra files must be preserved"
                            }
                        }
                    }
                    if (child.isDirectory && existing != null && existing.isDirectory) {
                        preflight(child, existing, path)
                    }
                }
            }
            preflight(staging, destination, "")

            fun apply(source: File, targetDirectory: DocumentFile, prefix: String) {
                source.listFiles().orEmpty().forEach { child ->
                    val path = if (prefix.isEmpty()) child.name else "$prefix/${child.name}"
                    if (child.isDirectory) {
                        var existing = targetDirectory.findFile(child.name)
                        if (existing != null && !existing.isDirectory && path in replaceTypeConflicts) {
                            check(existing.delete()) { "Could not replace destination file at $path" }
                            existing = null
                        }
                        val target = existing
                            ?: targetDirectory.createDirectory(child.name)
                            ?: error("Could not create folder $path")
                        require(target.isDirectory) { "Restore destination has a file/folder conflict at $path" }
                        apply(child, target, path)
                    } else {
                        targetDirectory.findFile(child.name)?.let { existing ->
                            if (existing.isDirectory) {
                                require(path in replaceTypeConflicts && existing.listFiles().isEmpty()) {
                                    "Cannot replace destination folder at $path"
                                }
                            }
                            check(existing.delete()) { "Could not replace existing destination entry at $path" }
                        }
                        val target = targetDirectory.createFile("application/octet-stream", child.name)
                            ?: error("Could not create file $path")
                        FileInputStream(child).use { input ->
                            contentResolver.openOutputStream(target.uri).use { rawOutput ->
                                input.copyTo(checkNotNull(rawOutput) { "Could not write $path" })
                            }
                        }
                    }
                }
            }
            apply(staging, destination, "")
        } finally {
            staging.deleteRecursively()
        }
    }

    private fun createIncrementalSnapshot(root: DocumentFile, sourceUri: Uri, toCloud: Boolean): Boolean {
        val sourceKey = sha256(sourceUri.toString().toByteArray(Charsets.UTF_8)).take(16)
        val prefix = "bare-snapshot-" + sourceKey + "-"
        val currentFiles = linkedMapOf<String, DocumentFile>()
        val currentDirectories = linkedSetOf<String>()
        val currentFingerprints = mutableListOf<FolderFileFingerprint>()

        fun scan(directory: DocumentFile, prefixPath: String) {
            directory.listFiles().sortedBy { it.name.orEmpty() }.forEach { child ->
                val name = child.name ?: error("Folder contains an unnamed item")
                require(name != "." && name != ".." && '/' !in name && '\\' !in name) {
                    "Folder contains an invalid file name"
                }
                val path = prefixPath + name
                if (child.isDirectory) {
                    currentDirectories += path
                    scan(child, path + "/")
                } else if (child.isFile) {
                    val digest = java.security.MessageDigest.getInstance("SHA-256")
                    var size = 0L
                    val input = contentResolver.openInputStream(child.uri) ?: error("Could not read " + path)
                    input.use { stream ->
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        while (true) {
                            val count = stream.read(buffer)
                            if (count < 0) break
                            if (count > 0) {
                                size += count
                                digest.update(buffer, 0, count)
                            }
                        }
                    }
                    currentFiles[path] = child
                    currentFingerprints += FolderFileFingerprint(path, size,
                        digest.digest().joinToString("") { "%02x".format(it) })
                }
            }
        }
        scan(root, "")
        val existing = listBackupArchives(toCloud).filter { it.name.startsWith(prefix) }
        val previousManifests = existing.map { archive ->
            archive to (readSnapshotManifest(archive) ?: error("Snapshot archive has no valid manifest: " + archive.name))
        }
        require(previousManifests.map { it.second.snapshotId }.toSet().size == previousManifests.size) {
            "Duplicate snapshot IDs found in backup storage"
        }
        val parentIds = previousManifests.mapNotNull { it.second.parentSnapshotId }.toSet()
        val leaves = previousManifests.filter { it.second.snapshotId !in parentIds }
        require(leaves.size <= 1) { "Snapshot history has multiple branches; refusing to append to an ambiguous chain" }
        val previous = leaves.singleOrNull()?.second
        val plan = if (previous == null) {
            FolderIncrementalPlan(currentFingerprints.sortedBy { it.path }, emptyList())
        } else {
            FolderIncrementalPlan.compare(previous.files, currentFingerprints)
        }
        val addedDirectories = currentDirectories.filter { it !in previous?.directories.orEmpty() }
            .sortedWith(compareBy<String> { it.count { c -> c == '/' } }.thenBy { it })
        val deletedDirectories = previous?.directories.orEmpty().filter { it !in currentDirectories }
            .sortedWith(compareByDescending<String> { it.count { c -> c == '/' } }.thenByDescending { it })
        if (previous != null && plan.isEmpty && addedDirectories.isEmpty() && deletedDirectories.isEmpty()) return false

        val snapshotId = java.util.UUID.randomUUID().toString().replace("-", "")
        val manifest = FolderSnapshotManifest(snapshotId, previous?.snapshotId,
            currentFingerprints.sortedBy { it.path }, plan.deletedPaths,
            currentDirectories.sorted(), deletedDirectories)
        val filename = prefix + snapshotId + ".zip"
        val localFile: File?
        val destinationUri: Uri?
        if (toCloud) {
            destinationUri = CloudStorageDestination.createFile(this, "application/zip", filename)
                ?: error("Could not create a cloud snapshot archive")
            localFile = null
        } else {
            localFile = File(localBackupDirectory(), filename)
            destinationUri = null
        }
        try {
            val rawOutput = if (localFile != null) FileOutputStream(localFile) else
                contentResolver.openOutputStream(checkNotNull(destinationUri))
                    ?: error("Could not open the snapshot destination")
            ZipOutputStream(rawOutput).use { zip ->
                zip.putNextEntry(ZipEntry(FolderSnapshotManifest.ARCHIVE_ENTRY))
                zip.write(manifest.encode().toByteArray(Charsets.UTF_8))
                zip.closeEntry()
                addedDirectories.forEach { path ->
                    zip.putNextEntry(ZipEntry(path + "/"))
                    zip.closeEntry()
                }
                plan.changedOrAdded.sortedBy { it.path }.forEach { file ->
                    val document = currentFiles[file.path] ?: error("Source file disappeared: " + file.path)
                    val digest = java.security.MessageDigest.getInstance("SHA-256")
                    var copied = 0L
                    zip.putNextEntry(ZipEntry(file.path))
                    (contentResolver.openInputStream(document.uri) ?: error("Could not read " + file.path)).use { input ->
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        while (true) {
                            val count = input.read(buffer)
                            if (count < 0) break
                            if (count > 0) {
                                copied += count
                                digest.update(buffer, 0, count)
                                zip.write(buffer, 0, count)
                            }
                        }
                    }
                    zip.closeEntry()
                    val copiedHash = digest.digest().joinToString("") { "%02x".format(it) }
                    require(copied == file.size && copiedHash.equals(file.sha256, ignoreCase = true)) {
                        "Source file changed while snapshot was being written: " + file.path
                    }
                }
            }
        } catch (error: Exception) {
            localFile?.delete()
            if (destinationUri != null) runCatching { DocumentFile.fromSingleUri(this, destinationUri)?.delete() }
            throw error
        }
        return true
    }

    private fun sha256(bytes: ByteArray): String =
        java.security.MessageDigest.getInstance("SHA-256").digest(bytes)
            .joinToString("") { "%02x".format(it) }

    private fun listBackupArchives(toCloud: Boolean): List<FolderBackupEntry> =
        if (toCloud) {
            val tree = CloudStorageDestination.tree(this) ?: error("Choose a cloud storage folder first")
            tree.listFiles().filter { it.isFile && it.name.orEmpty().endsWith(".zip", true) }.map { file ->
                FolderBackupEntry(file.name.orEmpty(), file.lastModified(), file.length(), cloudFile = file)
            }
        } else {
            localBackupDirectory().listFiles().orEmpty().filter { it.isFile && it.extension.equals("zip", true) }
                .map { file -> FolderBackupEntry(file.name, file.lastModified(), file.length(), localFile = file) }
        }

    private fun openBackupInput(entry: FolderBackupEntry): InputStream = when {
        entry.localFile != null -> FileInputStream(entry.localFile)
        entry.cloudFile != null -> contentResolver.openInputStream(entry.cloudFile.uri)
        else -> null
    } ?: error("Could not open the selected folder backup")

    private fun readSnapshotManifest(entry: FolderBackupEntry): FolderSnapshotManifest? {
        openBackupInput(entry).use { raw ->
            ZipInputStream(raw).use { zip ->
                while (true) {
                    val item = zip.nextEntry ?: break
                    if (item.name == FolderSnapshotManifest.ARCHIVE_ENTRY) {
                        val output = java.io.ByteArrayOutputStream()
                        val buffer = ByteArray(8192)
                        var total = 0
                        while (true) {
                            val count = zip.read(buffer)
                            if (count < 0) break
                            total += count
                            require(total <= MAX_MANIFEST_BYTES) { "Snapshot manifest is too large" }
                            output.write(buffer, 0, count)
                        }
                        return FolderSnapshotManifest.decode(output.toString("UTF-8"))
                    }
                    zip.closeEntry()
                }
            }
        }
        return null
    }

    private fun resolveSnapshotChain(
        selected: FolderBackupEntry,
        selectedManifest: FolderSnapshotManifest
    ): List<Pair<FolderBackupEntry, FolderSnapshotManifest>> {
        val selectedArchiveName = selected.localFile?.name ?: selected.cloudFile?.name
            ?: error("Selected snapshot has no archive filename")
        val match = Regex("^bare-snapshot-([a-f0-9]{16})-[A-Za-z0-9_-]+\\.zip$", RegexOption.IGNORE_CASE)
            .matchEntire(selectedArchiveName) ?: error("Snapshot filename is invalid")
        val prefix = "bare-snapshot-" + match.groupValues[1] + "-"
        val byId = linkedMapOf<String, Pair<FolderBackupEntry, FolderSnapshotManifest>>()
        listBackupArchives(selected.cloudFile != null).filter { it.name.startsWith(prefix) }.forEach { archive ->
            val manifest = readSnapshotManifest(archive) ?: error("Snapshot archive has no manifest: " + archive.name)
            require(archive.name == prefix + manifest.snapshotId + ".zip") {
                "Snapshot filename does not match its manifest"
            }
            require(byId.put(manifest.snapshotId, archive to manifest) == null) { "Duplicate snapshot ID" }
        }
        val selectedPair = byId[selectedManifest.snapshotId] ?: error("Selected snapshot is missing from storage")
        require(selectedPair.first.name == selectedArchiveName) { "Selected snapshot does not match its manifest" }
        val reverse = mutableListOf<Pair<FolderBackupEntry, FolderSnapshotManifest>>()
        val visited = mutableSetOf<String>()
        var current: Pair<FolderBackupEntry, FolderSnapshotManifest>? = selectedPair
        while (current != null) {
            val pair = current
            require(visited.add(pair.second.snapshotId)) { "Snapshot chain contains a cycle" }
            reverse += pair
            val parent = pair.second.parentSnapshotId
            current = if (parent == null) null else byId[parent] ?: error("Missing snapshot parent: " + parent)
        }
        return reverse.asReversed()
    }

    private fun restoreSnapshotChain(
        chain: List<Pair<FolderBackupEntry, FolderSnapshotManifest>>,
        destinationTree: Uri
    ) {
        require(chain.isNotEmpty()) { "Snapshot chain is empty" }
        chain.forEachIndexed { index, pair ->
            require(pair.second.parentSnapshotId == if (index == 0) null else chain[index - 1].second.snapshotId) {
                "Snapshot chain is out of order"
            }
        }
        val staging = createTempDir("bare-snapshot-restore-", directory = cacheDir)
        val merged = File(cacheDir, "bare-merged-" + java.util.UUID.randomUUID().toString() + ".zip")
        try {
            var totalBytes = 0L
            var entryCount = 0
            chain.forEach { (archive, manifest) ->
                require(readSnapshotManifest(archive) == manifest) { "Snapshot manifest changed while restoring" }
                manifest.deletedPaths.forEach { path ->
                    val target = File(staging, path)
                    require(target.canonicalPath.startsWith(staging.canonicalPath + File.separator)) {
                        "Snapshot contains an unsafe deleted path"
                    }
                    if (target.exists()) {
                        require(!target.isDirectory) { "Snapshot attempts to delete a directory as a file" }
                        check(target.delete()) { "Could not stage deletion of " + path }
                    }
                }
                manifest.deletedDirectories.forEach { path ->
                    val target = File(staging, path)
                    require(target.canonicalPath.startsWith(staging.canonicalPath + File.separator)) {
                        "Snapshot contains an unsafe deleted directory path"
                    }
                    if (target.isDirectory) check(target.deleteRecursively()) {
                        "Could not stage directory deletion: " + path
                    }
                }
                openBackupInput(archive).use { raw ->
                    ZipInputStream(raw).use { zip ->
                        val validator = FolderArchivePathValidator(MAX_RESTORE_PATH_LENGTH)
                        while (true) {
                            val item = zip.nextEntry ?: break
                            if (item.name == FolderSnapshotManifest.ARCHIVE_ENTRY) {
                                val output = java.io.ByteArrayOutputStream()
                                val buffer = ByteArray(8192)
                                var size = 0
                                while (true) {
                                    val count = zip.read(buffer)
                                    if (count < 0) break
                                    size += count
                                    require(size <= MAX_MANIFEST_BYTES) { "Snapshot manifest is too large" }
                                    output.write(buffer, 0, count)
                                }
                                require(FolderSnapshotManifest.decode(output.toString("UTF-8")) == manifest) {
                                    "Snapshot manifest does not match the chain"
                                }
                                zip.closeEntry()
                                continue
                            }
                            entryCount++
                            require(entryCount <= MAX_RESTORE_ENTRIES) { "Snapshot chain contains too many entries" }
                            val path = validator.register(item.name, item.isDirectory)
                            val target = File(staging, path)
                            require(target.canonicalPath.startsWith(staging.canonicalPath + File.separator)) {
                                "Snapshot contains an unsafe path"
                            }
                            if (item.isDirectory) {
                                require(zip.read() == -1) { "Directory entry contains unexpected data: " + path }
                                if (target.exists() && !target.isDirectory) {
                                    check(target.delete()) { "Could not replace staged file with folder: " + path }
                                }
                                check(target.mkdirs() || target.isDirectory) { "Could not stage folder " + path }
                            } else {
                                var parent = target.parentFile
                                while (parent != null && parent != staging) {
                                    if (parent.exists() && !parent.isDirectory) {
                                        check(parent.delete()) {
                                            "Could not replace staged file with folder: " + parent.name
                                        }
                                    }
                                    parent = parent.parentFile
                                }
                                check(target.parentFile?.mkdirs() == true || target.parentFile?.isDirectory == true) {
                                    "Could not stage folder for " + path
                                }
                                if (target.isDirectory) {
                                    check(target.deleteRecursively()) { "Could not replace staged folder with file: " + path }
                                }
                                FileOutputStream(target).use { output ->
                                    totalBytes += copyCurrentEntry(zip, output, MAX_RESTORE_BYTES - totalBytes)
                                }
                            }
                            zip.closeEntry()
                        }
                    }
                }
            }
            val expectedFiles = chain.last().second.files.sortedBy { it.path }
            val actualFiles = mutableListOf<FolderFileFingerprint>()
            fun fingerprintDirectory(directory: File, prefix: String) {
                directory.listFiles().orEmpty().forEach { child ->
                    val path = prefix + child.name
                    if (child.isDirectory) {
                        fingerprintDirectory(child, path + "/")
                    } else {
                        val digest = java.security.MessageDigest.getInstance("SHA-256")
                        var size = 0L
                        FileInputStream(child).use { input ->
                            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                            while (true) {
                                val count = input.read(buffer)
                                if (count < 0) break
                                if (count > 0) {
                                    size += count
                                    digest.update(buffer, 0, count)
                                }
                            }
                        }
                        actualFiles += FolderFileFingerprint(path, size,
                            digest.digest().joinToString("") { "%02x".format(it) })
                    }
                }
            }
            fingerprintDirectory(staging, "")
            require(actualFiles.sortedBy { it.path } == expectedFiles) {
                "Restored snapshot contents do not match the latest manifest"
            }
            val actualDirectories = mutableSetOf<String>()
            fun collectDirectories(directory: File, prefix: String) {
                directory.listFiles().orEmpty().filter { it.isDirectory }.forEach { child ->
                    val path = prefix + child.name
                    actualDirectories += path
                    collectDirectories(child, path + "/")
                }
            }
            collectDirectories(staging, "")
            require(actualDirectories == chain.last().second.directories.toSet()) {
                "Restored snapshot directories do not match the latest manifest"
            }

            ZipOutputStream(FileOutputStream(merged)).use { zip ->
                fun addDirectory(directory: File, prefix: String) {
                    directory.listFiles().orEmpty().sortedBy { it.name }.forEach { child ->
                        val path = prefix + child.name
                        if (child.isDirectory) {
                            zip.putNextEntry(ZipEntry(path + "/"))
                            zip.closeEntry()
                            addDirectory(child, path + "/")
                        } else {
                            zip.putNextEntry(ZipEntry(path))
                            FileInputStream(child).use { it.copyTo(zip) }
                            zip.closeEntry()
                        }
                    }
                }
                addDirectory(staging, "")
            }
            val finalManifest = chain.last().second
            val finalFiles = finalManifest.files.map { it.path }.toSet()
            val transitionDirectories = finalManifest.directories.toSet()
            val allDeletedFiles = chain.flatMap { it.second.deletedPaths }.toSet()
            val allDeletedDirectories = chain.flatMap { it.second.deletedDirectories }.toSet()
            val typeTransitions = (allDeletedFiles intersect transitionDirectories) +
                (allDeletedDirectories intersect finalFiles)
            restoreZip(FileInputStream(merged), destinationTree, typeTransitions)
            val finalPaths = chain.last().second.files.map { it.path }.toSet()
            val deletedPaths = chain.flatMap { it.second.deletedPaths }.toSet().filterNot { deleted ->
                finalPaths.any { current -> current == deleted || current.startsWith(deleted + "/") }
            }
            val destination = DocumentFile.fromTreeUri(this, destinationTree)
                ?: error("Could not access the destination folder")
            deletedPaths.sorted().forEach { path ->
                var parent: DocumentFile? = destination
                val segments = path.split('/')
                for (segment in segments.dropLast(1)) {
                    val next = parent?.findFile(segment)
                    if (next == null) {
                        parent = null
                        break
                    }
                    if (!next.isDirectory) error("Restore destination has a file/folder conflict at " + segment)
                    parent = next
                }
                val target = parent?.findFile(segments.last())
                if (target != null) {
                    require(!target.isDirectory) { "Snapshot deletion conflicts with a destination folder: " + path }
                    check(target.delete()) { "Could not delete restored file " + path }
                }
            }
            val finalDirectories = chain.last().second.directories.toSet()
            val deletedDirectories = chain.flatMap { it.second.deletedDirectories }.toSet().filterNot { deleted ->
                finalDirectories.any { current -> current == deleted || current.startsWith(deleted + "/") }
            }.sortedWith(compareByDescending<String> { it.count { c -> c == '/' } }.thenByDescending { it })
            deletedDirectories.forEach { path ->
                var parent: DocumentFile? = destination
                val segments = path.split('/')
                for (segment in segments.dropLast(1)) {
                    val next = parent?.findFile(segment)
                    if (next == null || !next.isDirectory) { parent = null; break }
                    parent = next
                }
                val target = parent?.findFile(segments.last())
                if (target != null && target.isDirectory && target.listFiles().isEmpty()) {
                    check(target.delete()) { "Could not delete restored directory " + path }
                }
            }
        } finally {
            staging.deleteRecursively()
            merged.delete()
        }
    }

    private fun copyCurrentEntry(
        input: ZipInputStream,
        output: java.io.OutputStream,
        remainingBytes: Long
    ): Long {
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        var copied = 0L
        while (true) {
            val count = input.read(buffer)
            if (count < 0) break
            if (count > 0) {
                require(count.toLong() <= remainingBytes - copied) {
                    "Archive exceeds the restore size limit"
                }
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
        private const val MAX_MANIFEST_BYTES = 4 * 1024 * 1024
        private const val MAX_RESTORE_BYTES = 10L * 1024L * 1024L * 1024L
        private const val MAX_RESTORE_ENTRIES = 100_000
        private const val MAX_RESTORE_PATH_LENGTH = 4_096
    }
}
