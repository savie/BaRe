package com.bare.feature.account

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

/**
 * Local Account persistence boundary for v1.0.
 *
 * This is storage only. It does not implement authentication and never stores
 * plaintext passwords or provider credentials.
 */
class AccountLocalDatabase(context: Context) :
    SQLiteOpenHelper(context.applicationContext, DATABASE_NAME, null, DATABASE_VERSION) {

    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL(
            """
            CREATE TABLE accounts (
                account_id TEXT PRIMARY KEY,
                email TEXT NOT NULL,
                provider TEXT NOT NULL,
                active INTEGER NOT NULL DEFAULT 0,
                password_salt TEXT,
                password_verifier TEXT
            )
            """.trimIndent(),
        )
        createCloudSyncMetadataTable(db)
    }

    private fun createCloudSyncMetadataTable(db: SQLiteDatabase) {
        db.execSQL(
            """
            CREATE TABLE cloud_sync_metadata (
                account_id TEXT NOT NULL,
                package_name TEXT NOT NULL,
                sync_state TEXT NOT NULL,
                updated_at INTEGER NOT NULL,
                version_code INTEGER,
                version_name TEXT,
                installer_package TEXT,
                backup_count INTEGER NOT NULL DEFAULT 0,
                latest_backup_time INTEGER,
                protected_backup INTEGER NOT NULL DEFAULT 0,
                note TEXT,
                PRIMARY KEY (account_id, package_name)
            )
            """.trimIndent(),
        )
        db.execSQL(
            "CREATE INDEX idx_cloud_sync_metadata_account ON cloud_sync_metadata(account_id)"
        )
    }

    fun activeAccountId(): String? {
        readableDatabase.rawQuery(
            "SELECT account_id FROM accounts WHERE active = 1 LIMIT 1",
            emptyArray(),
        ).use { cursor ->
            return if (cursor.moveToFirst()) cursor.getString(0) else null
        }
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        if (oldVersion < 2) {
            db.execSQL("ALTER TABLE accounts ADD COLUMN password_salt TEXT")
            db.execSQL("ALTER TABLE accounts ADD COLUMN password_verifier TEXT")
        }
        if (oldVersion < 3) {
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN version_code INTEGER")
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN version_name TEXT")
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN installer_package TEXT")
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN backup_count INTEGER NOT NULL DEFAULT 0")
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN latest_backup_time INTEGER")
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN protected_backup INTEGER NOT NULL DEFAULT 0")
            db.execSQL("ALTER TABLE cloud_sync_metadata ADD COLUMN note TEXT")
        }
    }

    companion object {
        private const val DATABASE_NAME = "bare_account.db"
        private const val DATABASE_VERSION = 3
    }
}
