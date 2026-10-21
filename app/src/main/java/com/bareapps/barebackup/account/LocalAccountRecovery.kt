package com.bareapps.barebackup.account

import android.content.Context
import android.os.Build
import android.os.Environment
import android.provider.Settings
import android.util.Log
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.security.SecureRandom
import java.util.UUID
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

/**
 * Portable identity lifecycle for the device-local account.
 *
 * This is intentionally independent of Firebase and any future backend. The portable marker
 * lives beside BΛR☰ account data so clearing app-private data does not rotate the local UID.
 */
class LocalAccountRecovery(context: Context) {
    private val app = context.applicationContext

    enum class Status { READY, STORAGE_ACCESS_REQUIRED }

    data class Result(val status: Status, val uid: String? = null, val restored: Boolean = false)

    @Synchronized
    fun ensureIdentity(): Result {
        if (!hasStorageAccess()) return Result(Status.STORAGE_ACCESS_REQUIRED)

        val marker = markerFile()
        if (marker.exists()) {
            // Existing marker is authoritative. Never mint a new identity if it is damaged,
            // unreadable, or encrypted with a different device-scoped key.
            val uid = try {
                readMarker(marker)
            } catch (error: Exception) {
                Log.e(TAG, "Portable local identity exists but cannot be recovered; refusing to rotate UID", error)
                throw IllegalStateException(
                    "Saved local identity cannot be recovered; refusing to create a replacement account",
                    error,
                )
            }
            require(uid.isNotBlank() && uid.length <= MAX_UID_LENGTH) {
                "Saved local identity contains an invalid UID"
            }
            persistPrivateCopy(uid)
            persistActiveLocalAccount(uid)
            ensureAccountDirectories(uid)
            Log.i(TAG, "Recovered portable local account identity; accountDir=" + accountDirectoryName(uid))
            return Result(Status.READY, uid, restored = true)
        }

        // Migrate the legacy local UID from the backup branch's private preference
        // store when no portable marker has been written yet. This avoids rotating an
        // existing local identity during an upgrade.
        val existingPrivate = readPrivateCopy()
            ?: app.getSharedPreferences(LEGACY_PREFS, Context.MODE_PRIVATE)
                .getString(LEGACY_UID_KEY, null)
                ?.trim()
                ?.takeIf { it.isNotEmpty() && it.length <= MAX_UID_LENGTH }
        val uid = existingPrivate ?: UUID.randomUUID().toString()
        writeMarkerAtomically(marker, uid)
        persistPrivateCopy(uid)
        persistActiveLocalAccount(uid)
        ensureAccountDirectories(uid)
        Log.i(TAG, "Local account identity ready; accountDir=" + accountDirectoryName(uid) + "; restored=" + (existingPrivate != null))
        return Result(Status.READY, uid, restored = existingPrivate != null)
    }

    private fun hasStorageAccess(): Boolean {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            Environment.isExternalStorageManager()
        } else {
            app.checkSelfPermission(android.Manifest.permission.WRITE_EXTERNAL_STORAGE) ==
                android.content.pm.PackageManager.PERMISSION_GRANTED
        }
    }

    private fun markerFile(): File =
        File(File(Environment.getExternalStorageDirectory(), "BΛR☰/accounts"), MARKER_NAME)

    private fun key(): ByteArray {
        val androidId = Settings.Secure.getString(app.contentResolver, Settings.Secure.ANDROID_ID)
            ?.takeIf { it.isNotBlank() }
            ?: throw IllegalStateException("Device-scoped identity key is unavailable")
        val digest = MessageDigest.getInstance("SHA-256")
        digest.update(KEY_DOMAIN.toByteArray(StandardCharsets.UTF_8))
        digest.update(0)
        digest.update(app.packageName.toByteArray(StandardCharsets.UTF_8))
        digest.update(0)
        digest.update(androidId.toByteArray(StandardCharsets.UTF_8))
        return digest.digest()
    }

    private fun readMarker(file: File): String {
        val length = file.length()
        require(length in MIN_MARKER_BYTES..MAX_MARKER_BYTES) { "Portable identity marker has an invalid size" }
        val packed = ByteArray(length.toInt())
        FileInputStream(file).use { input ->
            var offset = 0
            while (offset < packed.size) {
                val count = input.read(packed, offset, packed.size - offset)
                if (count < 0) throw java.io.IOException("Unexpected end of portable identity marker")
                offset += count
            }
        }
        val iv = packed.copyOfRange(0, IV_BYTES)
        val ciphertext = packed.copyOfRange(IV_BYTES, packed.size)
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec(key(), "AES"), GCMParameterSpec(GCM_TAG_BITS, iv))
        return String(cipher.doFinal(ciphertext), StandardCharsets.UTF_8).trim()
    }

    private fun writeMarkerAtomically(marker: File, uid: String) {
        val parent = marker.parentFile ?: throw java.io.IOException("Portable identity directory is unavailable")
        if (!parent.isDirectory && !parent.mkdirs() && !parent.isDirectory) {
            throw java.io.IOException("Cannot create portable identity directory")
        }
        val iv = ByteArray(IV_BYTES).also(SecureRandom()::nextBytes)
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.ENCRYPT_MODE, SecretKeySpec(key(), "AES"), GCMParameterSpec(GCM_TAG_BITS, iv))
        val encrypted = cipher.doFinal(uid.toByteArray(StandardCharsets.UTF_8))
        val temporary = File(parent, "$MARKER_NAME.tmp")
        FileOutputStream(temporary).use { output ->
            output.write(iv)
            output.write(encrypted)
            output.fd.sync()
        }
        // Recheck immediately before replacing to avoid overwriting a marker created by another
        // startup path. If one appeared, it becomes authoritative and must be read instead.
        if (marker.exists()) {
            temporary.delete()
            throw IllegalStateException("Portable identity marker appeared during initialization; retry recovery")
        }
        if (!temporary.renameTo(marker)) {
            temporary.delete()
            throw java.io.IOException("Cannot finalize portable identity marker")
        }
    }

    /** Match reference layout: MD5(UID), first 16 hexadecimal characters. */
    private fun ensureAccountDirectories(uid: String) {
        val root = File(Environment.getExternalStorageDirectory(), ROOT_DIRECTORY)
        val accounts = File(root, "accounts")
        val account = File(accounts, accountDirectoryName(uid))
        val directories = listOf(
            root, accounts, account,
            File(account, "backups"),
            File(account, "backups/apps"), File(account, "backups/apps/local"), File(account, "backups/apps/cloud"),
            File(account, "backups/sms"), File(account, "backups/sms/local"), File(account, "backups/sms/cloud"),
            File(account, "backups/calls"), File(account, "backups/calls/local"), File(account, "backups/calls/cloud"),
            File(account, "backups/wifi"), File(account, "backups/wifi/local"), File(account, "backups/wifi/cloud"),
            File(account, "backups/walls"), File(account, "backups/walls/applied"), File(account, "backups/walls/local"), File(account, "backups/walls/cloud"),
            File(account, "backups/folders"), File(account, "backups/folders/local"), File(account, "backups/folders/cloud"),
            File(account, "cache"), File(root, "icon_cache"),
        )
        directories.forEach { directory ->
            if (!directory.isDirectory && !directory.mkdirs() && !directory.isDirectory) {
                throw java.io.IOException("Unable to create local account directory: " + directory.absolutePath)
            }
        }
        val noMedia = File(root, ".nomedia")
        if (!noMedia.exists() && !noMedia.createNewFile()) {
            throw java.io.IOException("Unable to create " + noMedia.absolutePath)
        }
    }

    private fun accountDirectoryName(uid: String): String {
        val digest = MessageDigest.getInstance("MD5").digest(uid.toByteArray(StandardCharsets.UTF_8))
        return digest.joinToString("") { byte -> "%02x".format(java.util.Locale.ROOT, byte.toInt() and 0xff) }.take(16)
    }

    private fun persistActiveLocalAccount(uid: String) {
        val prefs = app.getSharedPreferences(LEGACY_PREFS, Context.MODE_PRIVATE)
        val editor = prefs.edit().putString(LEGACY_UID_KEY, uid)
        // The portable local UID is the only identity used for /BΛR☰/accounts/*.
        // Google sign-in is tracked separately by FirebaseAuth and google_uid; it must
        // never replace or freeze the local account identity.
        editor.putString("active_uid", uid).putString("active_kind", "local")
        editor.apply()
    }

    private fun privateFile(): File = File(app.filesDir, PRIVATE_UID_FILE)

    private fun readPrivateCopy(): String? {
        val file = privateFile()
        if (!file.isFile) return null
        val uid = file.readText(Charsets.UTF_8).trim()
        return uid.takeIf { it.isNotEmpty() && it.length <= MAX_UID_LENGTH }
    }

    private fun persistPrivateCopy(uid: String) {
        val file = privateFile()
        val temporary = File(app.filesDir, "$PRIVATE_UID_FILE.tmp")
        FileOutputStream(temporary).use { output ->
            output.write(uid.toByteArray(StandardCharsets.UTF_8))
            output.fd.sync()
        }
        if (file.exists() && !file.delete()) {
            temporary.delete()
            throw java.io.IOException("Cannot replace private local identity copy")
        }
        if (!temporary.renameTo(file)) {
            temporary.delete()
            throw java.io.IOException("Cannot finalize private local identity copy")
        }
    }

    companion object {
        private const val TAG = "LocalAccountRecovery"
        private const val MARKER_NAME = ".bare_local_identity.enc"
        private const val ROOT_DIRECTORY = "BΛR☰"
        private const val PRIVATE_UID_FILE = "bare_local_account_uid"
        private const val LEGACY_PREFS = "bare_local_account"
        private const val LEGACY_UID_KEY = "local_uid"
        private const val KEY_DOMAIN = "BΛR☰-local-identity-v1"
        private const val IV_BYTES = 12
        private const val GCM_TAG_BITS = 128
        private const val MIN_MARKER_BYTES = 29L
        private const val MAX_MARKER_BYTES = 4096L
        private const val MAX_UID_LENGTH = 128
    }
}
