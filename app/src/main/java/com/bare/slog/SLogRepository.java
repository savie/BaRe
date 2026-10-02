package com.bare.slog;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class SLogRepository {
    private static final long RETENTION_MILLIS = 3L * 24L * 60L * 60L * 1000L;
    private static final int MAX_RETRIEVAL = 10_000;

    private final File file;
    private final List<SLogEntry> entries = new ArrayList<>();
    private long nextId = 1L;

    public SLogRepository(Context context) {
        file = new File(context.getApplicationContext().getFilesDir(), "slog/entries.json");
        load();
    }

    public synchronized void insert(SLogEntry entry) {
        if (entry == null) throw new NullPointerException("entry");
        long id = entry.id > 0 ? entry.id : nextId++;
        entries.add(new SLogEntry(entry.time, entry.messageType, entry.title, entry.message, entry.color, id));
        if (id >= nextId) nextId = id + 1L;
        persist();
    }

    public synchronized List<SLogEntry> latest() {
        return after(0L, null);
    }

    public synchronized List<SLogEntry> after(long timeMillis, Set<Integer> messageTypes) {
        Set<Integer> filter = messageTypes == null ? null : new HashSet<>(messageTypes);
        List<SLogEntry> result = new ArrayList<>();
        for (int i = entries.size() - 1; i >= 0 && result.size() < MAX_RETRIEVAL; i--) {
            SLogEntry entry = entries.get(i);
            if (entry.time < timeMillis) continue;
            if (filter != null && !filter.contains(entry.messageType)) continue;
            result.add(entry);
        }
        return result;
    }

    public synchronized int count() {
        return entries.size();
    }

    public synchronized void clearAll() {
        entries.clear();
        nextId = 1L;
        persist();
    }

    public synchronized int deleteOlderThan(long cutoffMillis) {
        int before = entries.size();
        entries.removeIf(entry -> entry.time < cutoffMillis);
        if (entries.size() != before) persist();
        return before - entries.size();
    }

    public synchronized int applyRetention(long nowMillis) {
        return deleteOlderThan(nowMillis - RETENTION_MILLIS);
    }

    private void load() {
        if (!file.isFile()) return;
        try (FileInputStream input = new FileInputStream(file)) {
            byte[] bytes = new byte[(int) file.length()];
            int count = input.read(bytes);
            if (count <= 0) return;
            JSONArray array = new JSONArray(new String(bytes, 0, count, StandardCharsets.UTF_8));
            for (int i = 0; i < array.length(); i++) {
                JSONObject item = array.optJSONObject(i);
                if (item == null) continue;
                long id = item.optLong("id", nextId++);
                SLogEntry entry = new SLogEntry(
                        item.optLong("time", 0L),
                        item.optInt("messageType", 0),
                        item.optString("title", ""),
                        item.optString("message", ""),
                        item.isNull("color") ? null : item.optString("color", null),
                        id);
                entries.add(entry);
                if (id >= nextId) nextId = id + 1L;
            }
        } catch (Exception ignored) {
            entries.clear();
            nextId = 1L;
        }
    }

    private void persist() {
        File parent = file.getParentFile();
        if (parent != null && !parent.exists() && !parent.mkdirs() && !parent.isDirectory()) {
            return;
        }

        JSONArray array = new JSONArray();
        for (SLogEntry entry : entries) {
            JSONObject item = new JSONObject();
            try {
                item.put("time", entry.time);
                item.put("messageType", entry.messageType);
                item.put("title", entry.title);
                item.put("message", entry.message);
                if (entry.color == null) item.put("color", JSONObject.NULL);
                else item.put("color", entry.color);
                item.put("id", entry.id);
                array.put(item);
            } catch (Exception ignored) {
                // Keep remaining entries serializable.
            }
        }

        try (FileOutputStream output = new FileOutputStream(file, false)) {
            output.write(array.toString().getBytes(StandardCharsets.UTF_8));
            output.flush();
        } catch (Exception ignored) {
            // Persistence failure is not reported as successful remote/log delivery.
        }
    }
}
