package com.bare.feature.apps

import android.content.Context
import com.bare.feature.account.AccountLocalDatabase

/**
 * Local persistence for verified cloud-sync metadata.
 *
 * The store is deliberately provider-neutral. A future cloud provider can
 * populate these records without changing Apps inventory/filter semantics.
 */
class CloudSyncMetadataStore(context: Context) {
    private val database = AccountLocalDatabase(context)

    data class Record(
        val accountId: String,
        val packageName: String,
        val state: CloudSyncState,
        val updatedAt: Long,
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
        if (accountId.isNullOrBlank()) return emptyMap()
        val result = linkedMapOf<String, CloudSyncState>()
        database.readableDatabase.rawQuery(
            "SELECT package_name, sync_state FROM cloud_sync_metadata WHERE account_id = ?",
            arrayOf(accountId),
        ).use { cursor ->
            while (cursor.moveToNext()) {
                val state = runCatching {
                    CloudSyncState.valueOf(cursor.getString(1))
                }.getOrDefault(CloudSyncState.UNKNOWN)
                result[cursor.getString(0)] = state
            }
        }
        return result
    }

    /**
     * Provider/application boundary for future synchronization integration.
     * This method only records verified provider results; it does not perform
     * network I/O or infer a cloud state from local backup directories.
     */
    fun replaceStates(accountId: String, states: Map<String, CloudSyncState>, updatedAt: Long = System.currentTimeMillis()) {
        require(accountId.isNotBlank()) { "accountId is required" }
        database.writableDatabase.beginTransaction()
        try {
            database.writableDatabase.delete(
                "cloud_sync_metadata",
                "account_id = ?",
                arrayOf(accountId),
            )
            states.forEach { (packageName, state) ->
                database.writableDatabase.execSQL(
                    """
                    INSERT INTO cloud_sync_metadata(account_id, package_name, sync_state, updated_at)
                    VALUES (?, ?, ?, ?)
                    """.trimIndent(),
                    arrayOf(accountId, packageName, state.name, updatedAt),
                )
            }
            database.writableDatabase.setTransactionSuccessful()
        } finally {
            database.writableDatabase.endTransaction()
        }
    }
}
