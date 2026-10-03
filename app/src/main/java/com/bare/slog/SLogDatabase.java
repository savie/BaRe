package com.bare.slog;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Local SLog persistence substrate.
 *
 * The schema mirrors Reference MDatabase/SMessage. Runtime database open,
 * migration and transaction verification are intentionally outside P5.5.
 */
public final class SLogDatabase extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "swiftbackup-db";
    private static final int DATABASE_VERSION = 1;

    public SLogDatabase(Context context) {
        super(context.getApplicationContext(), DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(
                "CREATE TABLE IF NOT EXISTS SMessage (" +
                        "time INTEGER NOT NULL," +
                        "messageType INTEGER NOT NULL," +
                        "title TEXT NOT NULL," +
                        "msg TEXT NOT NULL," +
                        "color TEXT," +
                        "id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL" +
                        ")");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // No migration is currently evidenced for the target schema.
    }
}
