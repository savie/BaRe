package com.bareapps.barebackup.home.storageswitch

import android.app.Activity
import android.app.AlertDialog
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Environment
import android.os.storage.StorageManager
import android.os.storage.StorageVolume
import android.provider.DocumentsContract
import android.util.Log
import android.widget.Toast
import com.bareapps.barebackup.BareApp
import java.io.File

/**
 * Functional storage-root switcher for the manifest-declared settings entry point.
 *
 * The persisted preference matches SwiftBackup's preferred_storage_dir. SAF grants are acquired
 * only when the existing use_saf preference is enabled; choosing a volume does not silently enable
 * SAF or claim that root/file operations are available.
 */
class StorageSwitchActivity : Activity() {
    private data class StorageChoice(
        val volume: StorageVolume?,
        val root: File,
        val label: String,
        val removable: Boolean,
        val rootId: String?
    )

    private var pendingChoice: StorageChoice? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        showStorageChoices()
    }

    private fun showStorageChoices() {
        val choices = discoverStorageChoices()
        if (choices.isEmpty()) {
            Toast.makeText(this, "No accessible storage locations found", Toast.LENGTH_LONG).show()
            finish()
            return
        }

        val currentPath = BareApp.appPreferences()?.getString(PREFERRED_STORAGE_DIRECTORY, null)
        val labels = choices.map { choice ->
            val selected = choice.root.path == currentPath
            buildString {
                append(choice.label)
                append("\n")
                append(choice.root.path)
                if (selected) append("  •  Selected")
            }
        }.toTypedArray()

        AlertDialog.Builder(this)
            .setTitle("Storage for local backups")
            .setItems(labels) { _, index -> selectStorage(choices[index]) }
            .setNegativeButton(android.R.string.cancel) { _, _ -> finish() }
            .setOnCancelListener { finish() }
            .show()
    }

    private fun discoverStorageChoices(): List<StorageChoice> {
        val manager = getSystemService(StorageManager::class.java)
        val choices = mutableListOf<StorageChoice>()
        val seenPaths = mutableSetOf<String>()
        val volumes = try {
            manager?.storageVolumes.orEmpty()
        } catch (failure: Exception) {
            Log.w(TAG, "Unable to enumerate storage volumes", failure)
            emptyList()
        }

        for (volume in volumes) {
            val root = storageVolumeDirectory(volume) ?: continue
            if (!root.exists() || !root.canRead() || !seenPaths.add(root.path)) continue
            val removable = try {
                volume.isRemovable
            } catch (_: Exception) {
                Environment.isExternalStorageRemovable(root)
            }
            val description = runCatching { volume.getDescription(this) }
                .getOrNull()
                ?.takeIf { it.isNotBlank() }
                ?: if (removable) "External storage" else "Internal storage"
            choices += StorageChoice(
                volume = volume,
                root = root,
                label = if (removable) "$description (removable)" else description,
                removable = removable,
                rootId = volume.uuid?.takeIf { it.isNotBlank() } ?: if (removable) null else "primary"
            )
        }

        val defaultRoot = Environment.getExternalStorageDirectory()
        if (defaultRoot.exists() && defaultRoot.canRead() && seenPaths.add(defaultRoot.path)) {
            choices.add(
                0,
                StorageChoice(
                    volume = null,
                    root = defaultRoot,
                    label = "Internal storage",
                    removable = Environment.isExternalStorageRemovable(defaultRoot),
                    rootId = "primary"
                )
            )
        }
        return choices.sortedWith(
            compareBy<StorageChoice> { it.removable }.thenBy { it.root.path != defaultRoot.path }
        )
    }

    private fun selectStorage(choice: StorageChoice) {
        val preferences = BareApp.appPreferences()
        if (preferences == null) {
            Toast.makeText(this, "Application preferences are not initialized", Toast.LENGTH_LONG).show()
            finish()
            return
        }

        val useSaf = preferences.getBoolean(USE_SAF, false)
        val normalFileAccessInsufficient = !choice.root.canRead() || !choice.root.canWrite()
        if (choice.removable && useSaf && normalFileAccessInsufficient && !hasValidTreeGrant(choice)) {
            if (choice.rootId == null) {
                Toast.makeText(this, "Cannot determine the document root for this volume", Toast.LENGTH_LONG).show()
                finish()
                return
            }
            pendingChoice = choice
            try {
                startActivityForResult(createTreePickerIntent(choice), REQUEST_TREE)
            } catch (failure: Exception) {
                pendingChoice = null
                Log.e(TAG, "Unable to launch the storage document picker", failure)
                Toast.makeText(this, "Unable to open the storage permission picker", Toast.LENGTH_LONG).show()
                finish()
            }
            return
        }

        saveChoice(choice)
    }

    private fun createTreePickerIntent(choice: StorageChoice): Intent {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            val volumeIntent = runCatching { choice.volume?.createOpenDocumentTreeIntent() }.getOrNull()
            if (volumeIntent != null) return volumeIntent
        }
        val rootId = choice.rootId ?: throw IllegalStateException("Missing storage root ID")
        return Intent(Intent.ACTION_OPEN_DOCUMENT_TREE).apply {
            putExtra(
                DocumentsContract.EXTRA_INITIAL_URI,
                DocumentsContract.buildRootUri(EXTERNAL_STORAGE_AUTHORITY, rootId)
            )
            putExtra("android.provider.extra.SHOW_ADVANCED", true)
            addFlags(
                Intent.FLAG_GRANT_READ_URI_PERMISSION or
                    Intent.FLAG_GRANT_WRITE_URI_PERMISSION or
                    Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
            )
        }
    }

    @Deprecated("Uses the platform activity-result API to retain compatibility with the existing Activity base.")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode != REQUEST_TREE) return
        val choice = pendingChoice
        pendingChoice = null
        val uri = data?.data
        if (resultCode != RESULT_OK || choice == null || uri == null) {
            Toast.makeText(this, "Storage permission was not granted", Toast.LENGTH_LONG).show()
            finish()
            return
        }

        val rootId = choice.rootId
        val documentId = runCatching { DocumentsContract.getTreeDocumentId(uri) }.getOrNull()
        if (rootId == null || documentId == null || !documentId.startsWith("$rootId:")) {
            Toast.makeText(this, "Please select the root of the chosen storage volume", Toast.LENGTH_LONG).show()
            finish()
            return
        }

        val grantedFlags = data.flags and
            (Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
        try {
            contentResolver.takePersistableUriPermission(uri, grantedFlags)
        } catch (failure: Exception) {
            Log.e(TAG, "Unable to persist storage URI permission", failure)
            Toast.makeText(this, "Unable to retain storage permission", Toast.LENGTH_LONG).show()
            finish()
            return
        }

        if (!hasReadWritePermission(uri)) {
            Toast.makeText(this, "The selected document tree does not grant read and write access", Toast.LENGTH_LONG).show()
            finish()
            return
        }
        saveChoice(choice)
    }

    private fun hasValidTreeGrant(choice: StorageChoice): Boolean {
        val rootId = choice.rootId ?: return false
        val expected = runCatching {
            DocumentsContract.buildTreeDocumentUri(EXTERNAL_STORAGE_AUTHORITY, "$rootId:")
        }.getOrNull() ?: return false
        return hasReadWritePermission(expected)
    }

    private fun hasReadWritePermission(uri: Uri): Boolean {
        val hasRead = checkUriPermission(
            uri,
            android.os.Process.myPid(),
            android.os.Process.myUid(),
            Intent.FLAG_GRANT_READ_URI_PERMISSION
        ) == android.content.pm.PackageManager.PERMISSION_GRANTED
        val hasWrite = checkUriPermission(
            uri,
            android.os.Process.myPid(),
            android.os.Process.myUid(),
            Intent.FLAG_GRANT_WRITE_URI_PERMISSION
        ) == android.content.pm.PackageManager.PERMISSION_GRANTED
        if (!hasRead || !hasWrite) return false

        // Mirrors zn7.g(): URI permission alone is insufficient; inspect the root document
        // metadata and accept only a provider that advertises a supported write/create operation.
        return try {
            val documentUri = DocumentsContract.buildDocumentUriUsingTree(
                uri,
                DocumentsContract.getTreeDocumentId(uri)
            )
            contentResolver.query(
                documentUri,
                arrayOf(
                    DocumentsContract.Document.COLUMN_MIME_TYPE,
                    DocumentsContract.Document.COLUMN_FLAGS
                ),
                null,
                null,
                null
            )?.use { cursor ->
                if (!cursor.moveToFirst()) return@use false
                val mimeIndex = cursor.getColumnIndex(DocumentsContract.Document.COLUMN_MIME_TYPE)
                val flagsIndex = cursor.getColumnIndex(DocumentsContract.Document.COLUMN_FLAGS)
                if (mimeIndex < 0 || flagsIndex < 0) return@use false
                val mimeType = cursor.getString(mimeIndex)
                val flags = cursor.getLong(flagsIndex).toInt()
                mimeType.isNotBlank() &&
                    (
                        flags and 4 != 0 ||
                            (mimeType == DocumentsContract.Document.MIME_TYPE_DIR && flags and 8 != 0) ||
                            flags and 2 != 0
                    )
            } ?: false
        } catch (failure: Exception) {
            Log.w(TAG, "Unable to validate storage document metadata", failure)
            false
        }
    }

    private fun saveChoice(choice: StorageChoice) {
        val preferences = BareApp.appPreferences()
        if (preferences == null) {
            Toast.makeText(this, "Application preferences are not initialized", Toast.LENGTH_LONG).show()
            finish()
            return
        }
        val saved = preferences.edit().putString(PREFERRED_STORAGE_DIRECTORY, choice.root.path).commit()
        if (!saved) {
            Toast.makeText(this, "Unable to save the selected storage location", Toast.LENGTH_LONG).show()
            finish()
            return
        }
        setResult(RESULT_OK)
        finish()
    }

    private fun storageVolumeDirectory(volume: StorageVolume): File? {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            return runCatching { volume.directory }.getOrNull()
        }
        return runCatching {
            StorageVolume::class.java.getDeclaredField("mPath").apply { isAccessible = true }
                .get(volume) as? File
        }.getOrNull()
    }

    companion object {
        private const val TAG = "StorageSwitchActivity"
        private const val REQUEST_TREE = 4107
        private const val PREFERRED_STORAGE_DIRECTORY = "preferred_storage_dir"
        private const val USE_SAF = "use_saf"
        private const val EXTERNAL_STORAGE_AUTHORITY = "com.android.externalstorage.documents"
    }
}
