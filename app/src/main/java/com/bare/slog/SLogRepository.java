package com.bare.slog;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * F84 — concrete local structured-log persistence/retention boundary.
 *
 * Schema and query semantics are reconstructed from Reference SMessage/kv6/nv6.
 * No remote/provider/backend delivery is implied here.
 */
public final class SLogRepository {
    private static final long RETENTION_MILLIS = 3L * 24L * 60L * 60L * 1000L;
    private static final int MAX_RETRIEVAL = 10_000;

    public interface Observer {
        void onChanged(List<SLogEntry> entries);
    }

    private final SLogDatabase database;
    private final Set<Observer> observers = new HashSet<>();

    public SLogRepository(Context context) {
        database = new SLogDatabase(context);
    }

    public synchronized void insert(SLogEntry entry) {
        if (entry == null) throw new NullPointerException("entry");

        SQLiteDatabase db = database.getWritableDatabase();
        ContentValues values = new ContentValues();
        values.put("time", entry.time);
        values.put("messageType", entry.messageType);
        values.put("title", entry.title);
        values.put("msg", entry.message);
        if (entry.color == null) values.putNull("color");
        else values.put("color", entry.color);
        if (entry.id > 0L) values.put("id", entry.id);

        db.insertWithOnConflict(
                "SMessage",
                null,
                values,
                SQLiteDatabase.CONFLICT_REPLACE);
        notifyObservers();
    }

    public synchronized List<SLogEntry> latest() {
        return query(
                "SELECT time,messageType,title,msg,color,id " +
                        "FROM (SELECT * FROM SMessage ORDER BY id DESC LIMIT ?) " +
                        "ORDER BY id ASC",
                new String[]{String.valueOf(MAX_RETRIEVAL)});
    }

    public synchronized List<SLogEntry> after(long timeMillis, Set<Integer> messageTypes) {
        Set<Integer> filter = messageTypes == null
                ? null
                : new HashSet<>(messageTypes);

        List<SLogEntry> result = new ArrayList<>();
        String selection = "time > ?";
        List<String> args = new ArrayList<>();
        args.add(String.valueOf(timeMillis));

        if (filter != null && !filter.isEmpty()) {
            StringBuilder placeholders = new StringBuilder();
            for (Integer ignored : filter) {
                if (placeholders.length() > 0) placeholders.append(',');
                placeholders.append('?');
                args.add(String.valueOf(ignored));
            }
            selection += " AND messageType IN (" + placeholders + ")";
        }

        SQLiteDatabase db = database.getReadableDatabase();
        try (Cursor cursor = db.query(
                "SMessage",
                new String[]{"time","messageType","title","msg","color","id"},
                selection,
                args.toArray(new String[0]),
                null,
                null,
                "id ASC",
                null)) {
            while (cursor.moveToNext() && result.size() < MAX_RETRIEVAL) {
                result.add(readEntry(cursor));
            }
        }
        return result;
    }

    public synchronized void observeAfter(long timeMillis, Observer observer) {
        if (observer == null) throw new NullPointerException("observer");
        observers.add(observer);
        observer.onChanged(after(timeMillis, null));
    }

    public synchronized void removeObserver(Observer observer) {
        if (observer != null) observers.remove(observer);
    }

    public synchronized int count() {
        SQLiteDatabase db = database.getReadableDatabase();
        try (Cursor cursor = db.rawQuery("SELECT COUNT(*) FROM SMessage", null)) {
            return cursor.moveToFirst() ? cursor.getInt(0) : 0;
        }
    }

    public synchronized void clearAll() {
        database.getWritableDatabase().delete("SMessage", null, null);
        notifyObservers();
    }

    public synchronized int deleteOlderThan(long cutoffMillis) {
        int deleted = database.getWritableDatabase().delete(
                "SMessage",
                "time < ?",
                new String[]{String.valueOf(cutoffMillis)});
        if (deleted > 0) notifyObservers();
        return deleted;
    }

    public synchronized int applyRetention(long nowMillis) {
        return deleteOlderThan(nowMillis - RETENTION_MILLIS);
    }

    private List<SLogEntry> query(String sql, String[] args) {
        List<SLogEntry> result = new ArrayList<>();
        SQLiteDatabase db = database.getReadableDatabase();
        try (Cursor cursor = db.rawQuery(sql, args)) {
            while (cursor.moveToNext() && result.size() < MAX_RETRIEVAL) {
                result.add(readEntry(cursor));
            }
        }
        return result;
    }

    private SLogEntry readEntry(Cursor cursor) {
        return new SLogEntry(
                cursor.getLong(0),
                cursor.getInt(1),
                cursor.getString(2),
                cursor.getString(3),
                cursor.isNull(4) ? null : cursor.getString(4),
                cursor.getLong(5));
    }

    private void notifyObservers() {
        if (observers.isEmpty()) return;
        List<SLogEntry> current = latest();
        for (Observer observer : new HashSet<>(observers)) {
            observer.onChanged(current);
        }
    }
}
