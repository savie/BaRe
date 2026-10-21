package com.bareapps.barebackup.appslist.ui.list

import android.content.Context
import android.net.Uri
import com.topjohnwu.superuser.Shell
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException

/** Root-gated backup/restore of an installed app's credential-protected private data directory. */
internal object RootAppDataBackup {
    suspend fun export(context: Context, packageName: String, destination: Uri) = withContext(Dispatchers.IO) {
        requireValidPackage(packageName)
        val shell = Shell.getShell()
        check(shell.isRoot) { "Root access was not granted" }
        val archive = File(context.cacheDir, "bare-data-" + packageName + "-" + System.currentTimeMillis() + ".tar")
        try {
            val root = dataRoot()
            val command = "cd " + quote(root) + " && find " + quote(packageName) +
                " -type f -print | tar -cpf " + quote(archive.absolutePath) +
                " -C " + quote(root) + " -T -"
            val result = Shell.cmd(command).exec()
            check(result.isSuccess) { "Could not read app data. The app may not have a data directory or root access may be restricted." }
            val verification = Shell.cmd("tar -tf " + quote(archive.absolutePath)).exec()
            check(verification.isSuccess && verification.out.isNotEmpty()) { "The app data archive is empty or unreadable" }
            context.contentResolver.openOutputStream(destination).use { raw ->
                val output = checkNotNull(raw) { "Could not open the selected backup destination" }
                FileInputStream(archive).use { input -> input.copyTo(output) }
            }
        } finally {
            archive.delete()
        }
    }

    suspend fun restore(context: Context, packageName: String, targetUid: Int, source: Uri) = withContext(Dispatchers.IO) {
        requireValidPackage(packageName)
        val shell = Shell.getShell()
        check(shell.isRoot) { "Root access was not granted" }
        val archive = File(context.cacheDir, "bare-restore-" + packageName + "-" + System.currentTimeMillis() + ".tar")
        try {
            context.contentResolver.openInputStream(source).use { raw ->
                val input = checkNotNull(raw) { "Could not open the selected data archive" }
                FileOutputStream(archive).use { output -> input.copyTo(output) }
            }
            val listing = Shell.cmd("tar -tf " + quote(archive.absolutePath)).exec()
            check(listing.isSuccess && listing.out.isNotEmpty()) { "The selected file is not a readable TAR archive" }
            val entries = listing.out.map { it.trim().removePrefix("./") }.filter { it.isNotEmpty() }
            check(entries.all { entry ->
                val segments = entry.split('/')
                segments.none { it == ".." } && (entry == packageName || entry.startsWith(packageName + "/"))
            }) { "Archive contents do not match the selected application" }
            val detailed = Shell.cmd("tar -tvf " + quote(archive.absolutePath)).exec()
            check(detailed.isSuccess && detailed.out.filter { it.isNotBlank() }.all { line ->
                line.firstOrNull() == 'd' || line.firstOrNull() == '-'
            }) { "Restore archive contains symbolic links or special files and was rejected for safety" }

            val root = dataRoot()
            val dataDir = root + "/" + packageName
            val rollbackDir = dataDir + ".bare-rollback-" + System.currentTimeMillis()
            require(targetUid > 0) { "Invalid target application UID" }
            val command = "am force-stop " + quote(packageName) + " >/dev/null 2>&1 || true; " +
                "if [ -d " + quote(dataDir) + " ]; then mv " + quote(dataDir) + " " + quote(rollbackDir) + " || exit 21; fi; " +
                "if tar -xpf " + quote(archive.absolutePath) + " -C " + quote(root) +
                " && chown -R " + targetUid + ":" + targetUid + " " + quote(dataDir) + "; then " +
                "restorecon -RF " + quote(dataDir) + " >/dev/null 2>&1 || true; " +
                "rm -rf " + quote(rollbackDir) + "; " +
                "else rm -rf " + quote(dataDir) + "; " +
                "if [ -d " + quote(rollbackDir) + " ]; then mv " + quote(rollbackDir) + " " + quote(dataDir) + "; fi; exit 22; fi"
            val result = Shell.cmd(command).exec()
            check(result.isSuccess) { "Restore failed; the previous app data was rolled back when possible." }
        } finally {
            archive.delete()
        }
    }

    private fun dataRoot(): String = "/data/user/" + (android.os.Process.myUid() / 100000)

    private fun requireValidPackage(packageName: String) {
        require(packageName.matches(Regex("[A-Za-z0-9_]+(\\.[A-Za-z0-9_]+)+"))) { "Invalid application package name" }
    }

    private fun quote(value: String): String = "'" + value.replace("'", "'\\''") + "'"
}
