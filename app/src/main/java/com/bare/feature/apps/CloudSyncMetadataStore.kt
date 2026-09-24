package com.bare.feature.apps

import android.content.Context
import android.content.ContentValues
import com.bare.feature.account.AccountLocalDatabase

/**
 * Local persistence for verified cloud-sync metadata.
 *
 * The store is deliberately provider-neutral. A future cloud provider can
 * populate these records without changing Apps inventory/filter semantics.
 *
 * The metadata shape follows the relevant Reference CloudMetadata semantics
 * (package/version/backup time/installer/protection/note) without copying the
 * Reference storage format or transport implementation.
 */
class CloudSyncMetadataStore(context: Context) {
    private val database = AccountLocalDatabase(context)

    data class Record(
        val accountId: String,
        val packageName: String,
        val state: CloudSyncState,
        val updatedAt: Long,
        val versionCode: Long? = null,
        val versionName: String? = null,
        val installerPackage: String? = null,
        val backupCount: Int = 0,
        val latestBackupTime: Long? = null,
        val protectedBackup: Boolean = false,
        val note: String? = null,
    )

    fun hasProviderMetadata(accountId: String?): Boolean {
        if (accountId.isNullOrBlank()) return false
        database.readableDatabase.rawQuery(
            "SELECT 1 FROM cloud_sync_metadata WHERE account_id = ? LIMIT 1",
            arrayOf(accountId),
        ).use { cursor ->
            return cursor.moveToFirst()
        }
    }

    fun loadStates(accountId: String?): Map<String, CloudSyncState> {
        return loadRecords(accountId).associate { it.packageName to it.state }
    }

    fun loadRecords(accountId: String?): List<Record> {
        if (accountId.isNullOrBlank()) return emptyList()
        val result = mutableListOf<Record>()
        database.readableDatabase.rawQuery(
            """
            SELECT account_id, package_name, sync_state, updated_at,
                   version_code, version_name, installer_package,
                   backup_count, latest_backup_time, protected_backup, note
            FROM cloud_sync_metadata
            WHERE account_id = ?
            """.trimIndent(),
            arrayOf(accountId),
        ).use { cursor ->
            while (cursor.moveToNext()) {
                val state = runCatching {
                    CloudSyncState.valueOf(cursor.getString(2))
                }.getOrDefault(CloudSyncState.UNKNOWN)
                result += Record(
                    accountId = cursor.getString(0),
                    packageName = cursor.getString(1),
                    state = state,
                    updatedAt = cursor.getLong(3),
                    versionCode = cursor.getLongOrNull(4),
                    versionName = cursor.getStringOrNull(5),
                    installerPackage = cursor.getStringOrNull(6),
                    backupCount = cursor.getInt(7),
                    latestBackupTime = cursor.getLongOrNull(8),
                    protectedBackup = cursor.getInt(9) != 0,
                    note = cursor.getStringOrNull(10),
                )
            }
        }
        return result
    }

    /**
     * Provider/application boundary for future synchronization integration.
     * This method only records verified provider results; it does not perform
     * network I/O or infer a cloud state from local backup directories.
     */
    fun replaceRecords(
        accountId: String,
        records: Collection<Record>,
    ) {
        require(accountId.isNotBlank()) { "accountId is required" }
        val db = database.writableDatabase
        db.beginTransaction()
        try {
            db.delete(
                "cloud_sync_metadata",
                "account_id = ?",
                arrayOf(accountId),
            )
            records.forEach { record ->
                require(record.accountId == accountId) { "record account mismatch" }
                val values = ContentValues().apply {
                    put("account_id", accountId)
                    put("package_name", record.packageName)
                    put("sync_state", record.state.name)
                    put("updated_at", record.updatedAt)
                    putNullable("version_code", record.versionCode)
                    putNullable("version_name", record.versionName)
                    putNullable("installer_package", record.installerPackage)
                    put("backup_count", record.backupCount)
                    putNullable("latest_backup_time", record.latestBackupTime)
                    put("protected_backup", if (record.protectedBackup) 1 else 0)
                    putNullable("note", record.note)
                }
                db.insertOrThrow("cloud_sync_metadata", null, values)
            }
            db.setTransactionSuccessful()
        } finally {
            db.endTransaction()
        }
    }

    fun replaceStates(
        accountId: String,
        states: Map<String, CloudSyncState>,
        updatedAt: Long = System.currentTimeMillis(),
    ) {
        replaceRecords(
            accountId,
            states.map { (packageName, state) ->
                Record(
                    accountId = accountId,
                    packageName = packageName,
                    state = state,
                    updatedAt = updatedAt,
                )
            },
        )
    }

    private fun ContentValues.putNullable(key: String, value: Long?) {
        if (value == null) putNull(key) else put(key, value)
    }

    private fun ContentValues.putNullable(key: String, value: String?) {
        if (value == null) putNull(key) else put(key, value)
    }

    private fun android.database.Cursor.getLongOrNull(index: Int): Long? {
        return if (isNull(index)) null else getLong(index)
    }

    private fun android.database.Cursor.getStringOrNull(index: Int): String? {
        return if (isNull(index)) null else getString(index)
    }
}
