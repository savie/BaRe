package com.bare.messagescalls.conversations;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.Telephony;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Reference qv1-compatible local conversation projection. */
public final class MessagesConversationRepository {
    private final ContentResolver resolver;

    public MessagesConversationRepository(Context context) {
        if (context == null) throw new IllegalArgumentException("context");
        resolver = context.getApplicationContext().getContentResolver();
    }

    public List<ConversationState> getConversations(boolean includeMms) {
        Map<Long, MutableConversation> byThread = new LinkedHashMap<>();
        readSms(byThread);
        if (includeMms) readMms(byThread);

        List<ConversationState> result = new ArrayList<>(byThread.size());
        for (MutableConversation item : byThread.values()) {
            if (item.threadId == null) continue;
            String title = item.address == null || item.address.isEmpty()
                    ? "Name not found" : item.address;
            result.add(new ConversationState(
                    String.valueOf(item.threadId),
                    title,
                    item.count,
                    item.lastDate,
                    item.snippet));
        }
        Collections.sort(result, (a, b) -> Long.compare(b.getLastDate(), a.getLastDate()));
        return result;
    }

    private void readSms(Map<Long, MutableConversation> byThread) {
        Cursor cursor = resolver.query(
                Telephony.Sms.CONTENT_URI,
                new String[]{"thread_id", "address", "date", "date_sent", "body"},
                null, null, null);
        if (cursor == null) return;
        try {
            int thread = cursor.getColumnIndex("thread_id");
            int address = cursor.getColumnIndex("address");
            int date = cursor.getColumnIndex("date");
            int sent = cursor.getColumnIndex("date_sent");
            int body = cursor.getColumnIndex("body");
            while (cursor.moveToNext()) {
                Long id = nullableLong(cursor, thread);
                if (id == null) continue;
                MutableConversation item = byThread.get(id);
                if (item == null) {
                    item = new MutableConversation(id);
                    byThread.put(id, item);
                }
                item.count++;
                long when = valueLong(cursor, date, sent);
                if (when >= item.lastDate) {
                    item.lastDate = when;
                    String text = nullableString(cursor, body);
                    if (text != null && !text.isEmpty()) item.snippet = text;
                }
                if (item.address == null) item.address = nullableString(cursor, address);
            }
        } finally {
            cursor.close();
        }
    }

    private void readMms(Map<Long, MutableConversation> byThread) {
        Cursor cursor = resolver.query(
                Telephony.Mms.CONTENT_URI,
                new String[]{"thread_id", "date", "date_sent", "subject"},
                null, null, null);
        if (cursor == null) return;
        try {
            int thread = cursor.getColumnIndex("thread_id");
            int date = cursor.getColumnIndex("date");
            int sent = cursor.getColumnIndex("date_sent");
            int subject = cursor.getColumnIndex("subject");
            while (cursor.moveToNext()) {
                Long id = nullableLong(cursor, thread);
                if (id == null) continue;
                MutableConversation item = byThread.get(id);
                if (item == null) {
                    item = new MutableConversation(id);
                    byThread.put(id, item);
                }
                item.count++;
                long whenSeconds = valueLong(cursor, date, sent);
                long when = whenSeconds > 0 && whenSeconds < 100000000000L
                        ? whenSeconds * 1000L : whenSeconds;
                if (when >= item.lastDate) {
                    item.lastDate = when;
                    String text = nullableString(cursor, subject);
                    if (text != null && !text.isEmpty()) item.snippet = text;
                }
            }
        } finally {
            cursor.close();
        }
    }

    private static Long nullableLong(Cursor cursor, int index) {
        return index < 0 || cursor.isNull(index) ? null : cursor.getLong(index);
    }

    private static long valueLong(Cursor cursor, int first, int second) {
        if (first >= 0 && !cursor.isNull(first)) return cursor.getLong(first);
        if (second >= 0 && !cursor.isNull(second)) return cursor.getLong(second);
        return 0L;
    }

    private static String nullableString(Cursor cursor, int index) {
        return index < 0 || cursor.isNull(index) ? null : cursor.getString(index);
    }

    private static final class MutableConversation {
        final Long threadId;
        String address;
        String snippet;
        int count;
        long lastDate;
        MutableConversation(Long threadId) { this.threadId = threadId; }
    }
}
