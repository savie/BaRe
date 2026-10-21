package com.bareapps.barebackup.folders.ui

import android.net.Uri
import android.os.Bundle
import android.view.ViewGroup
import android.widget.LinearLayout
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.documentfile.provider.DocumentFile
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import com.bareapps.barebackup.R
import com.bareapps.barebackup.home.DashboardFragment
import com.bareapps.barebackup.common.CloudStorageDestination
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.button.MaterialButton
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

/** SAF-based folder backup/restore. User explicitly chooses both source and destination trees. */
class FoldersDashActivity : AppCompatActivity() {
    private var selectedTree: Uri? = null
    private val chooseTree = registerForActivityResult(ActivityResultContracts.OpenDocumentTree()) { uri ->
        if (uri != null) {
            selectedTree = uri
            try { contentResolver.takePersistableUriPermission(uri, IntentFlags.READ_WRITE) } catch (_: Exception) {}
            status.text = "Selected folder: ${DocumentFile.fromTreeUri(this, uri)?.name ?: uri}"
            when (intent.getStringExtra(DashboardFragment.EXTRA_OPERATION)) {
                DashboardFragment.OP_BACKUP -> {
                    val destination = if (intent.getBooleanExtra(DashboardFragment.EXTRA_USE_CLOUD, false)) {
                        CloudStorageDestination.createFile(this, "application/zip", "bare-folder-backup.zip")
                    } else null
                    if (destination != null) backupTree(uri, destination) else exportZip.launch("bare-folder-backup.zip")
                }
                DashboardFragment.OP_RESTORE -> importZip.launch(arrayOf("application/zip", "application/octet-stream"))
            }
        }
    }
    private val exportZip = registerForActivityResult(ActivityResultContracts.CreateDocument("application/zip")) { uri ->
        if (uri != null) selectedTree?.let { backupTree(it, uri) }
    }
    private val importZip = registerForActivityResult(ActivityResultContracts.OpenDocument()) { uri ->
        if (uri != null) selectedTree?.let { restoreTree(uri, it) }
    }
    private lateinit var status: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), 0, dp(16), dp(16))
        }
        root.addView(MaterialToolbar(this).apply {
            title = getString(R.string.folders)
            navigationIcon = getDrawable(R.drawable.ic_arrow_back)
            setNavigationOnClickListener { finish() }
        })
        status = TextView(this).apply {
            text = "Choose a folder before backing up or restoring files."
            setPadding(0, dp(12), 0, dp(16))
        }
        root.addView(status)
        root.addView(MaterialButton(this).apply {
            text = "Choose folder"
            setOnClickListener { chooseTree.launch(selectedTree) }
        })
        root.addView(MaterialButton(this).apply {
            text = "Back up folder to ZIP"
            setOnClickListener {
                if (selectedTree == null) toast("Choose a source folder first")
                else exportZip.launch("bare-folder-backup.zip")
            }
        })
        root.addView(MaterialButton(this).apply {
            text = "Restore ZIP into folder"
            setOnClickListener {
                if (selectedTree == null) toast("Choose a destination folder first")
                else importZip.launch(arrayOf("application/zip", "application/octet-stream"))
            }
        })
        setContentView(root)
        if (intent.getStringExtra(DashboardFragment.EXTRA_OPERATION) == DashboardFragment.OP_BACKUP ||
            intent.getStringExtra(DashboardFragment.EXTRA_OPERATION) == DashboardFragment.OP_RESTORE
        ) {
            window.decorView.post { chooseTree.launch(selectedTree) }
        }
    }

    private fun backupTree(treeUri: Uri, destination: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val root = DocumentFile.fromTreeUri(this@FoldersDashActivity, treeUri)
                    ?: error("Could not access selected folder")
                contentResolver.openOutputStream(destination).use { raw ->
                    val output = checkNotNull(raw) { "Could not open ZIP destination" }
                    ZipOutputStream(output).use { zip -> addDirectoryToZip(root, "", zip) }
                }
            }
            runOnUiThread {
                if (result.isSuccess) toast("Folder backup completed")
                else toast("Folder backup failed: " + (result.exceptionOrNull()?.message ?: "I/O error"))
            }
        }
    }

        private fun addDirectoryToZip(directory: DocumentFile, prefix: String, zip: ZipOutputStream) {
        directory.listFiles().forEach { child ->
            val name = prefix + (child.name ?: "unnamed")
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

    private fun restoreTree(archive: Uri, treeUri: Uri) {
        lifecycleScope.launch(Dispatchers.IO) {
            val result = runCatching {
                val root = DocumentFile.fromTreeUri(this@FoldersDashActivity, treeUri)
                    ?: error("Could not access destination folder")
                contentResolver.openInputStream(archive).use { raw ->
                    val input = checkNotNull(raw) { "Could not open ZIP archive" }
                    ZipInputStream(input).use { zip ->
                        while (true) {
                            val entry = zip.nextEntry ?: break
                            val segments = entry.name.split('/').filter { it.isNotBlank() }
                            if (segments.isNotEmpty()) {
                                require(segments.none { it == ".." }) { "Archive contains an unsafe path" }
                                var parent = root
                                segments.dropLast(1).forEach { segment ->
                                    parent = parent.findFile(segment)?.takeIf { it.isDirectory }
                                        ?: parent.createDirectory(segment)
                                        ?: error("Could not create folder " + segment)
                                }
                                val leaf = segments.last()
                                if (entry.isDirectory) {
                                    if (parent.findFile(leaf) == null) parent.createDirectory(leaf)
                                } else {
                                    val target = parent.findFile(leaf)
                                    if (target != null) target.delete()
                                    val created = parent.createFile("application/octet-stream", leaf)
                                        ?: error("Could not create file " + leaf)
                                    contentResolver.openOutputStream(created.uri).use { rawOutput ->
                                        val output = checkNotNull(rawOutput) { "Could not write " + leaf }
                                        copyCurrentEntry(zip, output)
                                    }
                                }
                            }
                            zip.closeEntry()
                        }
                    }
                }
            }
            runOnUiThread {
                if (result.isSuccess) toast("Folder restore completed")
                else toast("Folder restore failed: " + (result.exceptionOrNull()?.message ?: "I/O error"))
            }
        }
    }

        private fun copyCurrentEntry(input: ZipInputStream, output: java.io.OutputStream) {
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        while (true) {
            val count = input.read(buffer)
            if (count < 0) break
            if (count > 0) output.write(buffer, 0, count)
        }
    }

    private fun toast(message: String) = Toast.makeText(this, message, Toast.LENGTH_LONG).show()
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()

    private object IntentFlags {
        val READ_WRITE = android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION or
            android.content.Intent.FLAG_GRANT_WRITE_URI_PERMISSION
    }
}
