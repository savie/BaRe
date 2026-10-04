package com.bare.messagescalls.restore;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Telephony;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Reference ff5 restoreSms boundary: decrypt the selected backup artifact,
 * reconstruct ki7 SMS rows, resolve thread IDs from recipients, and insert
 * into Telephony.Sms.CONTENT_URI while skipping rows already on device.
 */
public final class MessagesRestoreRepository {
    private final Context context;
    private final ContentResolver resolver;
    private final ReferenceMessagesArchiveCrypto archiveCrypto;
    private final Map<String, Long> threadIds = new LinkedHashMap<>();

    public MessagesRestoreRepository(Context context) {
        this.context = context.getApplicationContext();
        this.resolver = this.context.getContentResolver();
        this.archiveCrypto = new ReferenceMessagesArchiveCrypto(this.context);
    }

    public List<ConversationPreview> readConversations(File backupFile) throws Exception {
        byte[] plaintext = archiveCrypto.readConversations(backupFile);
        JSONObject root = new JSONObject(new String(
                plaintext, java.nio.charset.StandardCharsets.UTF_8));
        JSONArray conversations = root.optJSONArray("items");
        if (conversations == null) return Collections.emptyList();
        List<ConversationPreview> result = new ArrayList<>();
        for (int i = 0; i < conversations.length(); i++) {
            JSONObject o = conversations.optJSONObject(i);
            if (o == null) continue;
            String threadId = string(o, "threadId");
            String title = string(o, "displayName");
            if (title == null || title.isEmpty()) title = string(o, "address");
            int count = o.optInt("messageCount", 0);
            long date = o.optLong("lastSmsDate", o.optLong("date", 0L));
            result.add(new ConversationPreview(threadId, title, count, date));
        }
        result.sort((a,b) -> Long.compare(b.lastDate, a.lastDate));
        return result;
    }

    public Result restore(File backupFile, List<String> selectedConversationThreadIds) {
        if (backupFile == null || !backupFile.isFile()) {
            return Result.failure("Backup file does not exist");
        }
        try {
            byte[] plaintext = archiveCrypto.readConversations(backupFile);
            JSONObject root = new JSONObject(new String(
                    plaintext, java.nio.charset.StandardCharsets.UTF_8));
            JSONArray conversations = root.optJSONArray("items");
            if (conversations == null) return Result.failure("Reference conversations payload is empty");

            java.util.HashSet<String> selected = selectedConversationThreadIds == null
                    ? null : new java.util.HashSet<>(selectedConversationThreadIds);

            int inserted = 0;
            int skipped = 0;
            int invalid = 0;
            for (int i = 0; i < conversations.length(); i++) {
                JSONObject conversation = conversations.optJSONObject(i);
                if (conversation == null) continue;
                String thread = string(conversation, "threadId");
                if (selected != null && !selected.isEmpty() && !selected.contains(thread)) continue;

                JSONArray smsItems = conversation.optJSONArray("smsItemList");
                if (smsItems == null) continue;
                for (int j = 0; j < smsItems.length(); j++) {
                    JSONObject sms = smsItems.optJSONObject(j);
                    if (sms == null) continue;
                    SmsRow row = SmsRow.from(sms);
                    if (row.address == null || row.address.isEmpty()) {
                        invalid++;
                        continue;
                    }
                    if (existsOnDevice(row)) {
                        skipped++;
                        continue;
                    }

                    ContentValues values = row.toContentValues();
                    Long targetThread = getOrCreateThreadId(row.address);
                    if (targetThread != null) values.put("thread_id", targetThread);

                    Uri insertedUri = resolver.insert(Telephony.Sms.CONTENT_URI, values);
                    if (insertedUri == null) invalid++;
                    else inserted++;
                }
            }
            return Result.success(inserted, skipped, invalid);
        } catch (Exception e) {
            return Result.failure(e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage());
        }
    }

    private boolean existsOnDevice(SmsRow row) {
        Cursor cursor = null;
        try {
            cursor = resolver.query(
                    Telephony.Sms.CONTENT_URI,
                    new String[]{"date"},
                    "date = ? AND date_sent = ? AND address = ? AND type = ?",
                    new String[]{
                            String.valueOf(row.date),
                            String.valueOf(row.dateSent),
                            row.address,
                            String.valueOf(row.type == null ? 0 : row.type)
                    },
                    null);
            return cursor != null && cursor.getCount() > 0;
        } catch (Exception ignored) {
            return false;
        } finally {
            if (cursor != null) cursor.close();
        }
    }

    private Long getOrCreateThreadId(String address) {
        if (threadIds.containsKey(address)) return threadIds.get(address);
        try {
            Long id = Telephony.Threads.getOrCreateThreadId(
                    context, Collections.singleton(address));
            threadIds.put(address, id);
            return id;
        } catch (Exception ignored) {
            return null;
        }
    }

    private static String string(JSONObject object, String key) {
        if (object == null || !object.has(key) || object.isNull(key)) return null;
        return object.optString(key, null);
    }

    private static Long longValue(JSONObject object, String key) {
        if (object == null || !object.has(key) || object.isNull(key)) return null;
        try { return object.getLong(key); } catch (Exception ignored) { return null; }
    }

    private static Integer intValue(JSONObject object, String key) {
        if (object == null || !object.has(key) || object.isNull(key)) return null;
        try { return object.getInt(key); } catch (Exception ignored) { return null; }
    }

    private static final class SmsRow {
        Integer type;
        Long threadId;
        String address;
        Long date;
        Long dateSent;
        Integer read;
        Integer seen;
        String status;
        String subject;
        String body;
        Integer person;
        Integer protocol;
        Integer replyPathPresent;
        String serviceCenter;
        Integer locked;
        Integer errorCode;
        String creator;

        static SmsRow from(JSONObject o) {
            SmsRow r = new SmsRow();
            r.type = intValue(o, "type");
            r.threadId = longValue(o, "threadId");
            r.address = string(o, "address");
            r.date = longValue(o, "date");
            r.dateSent = longValue(o, "dateSent");
            r.read = intValue(o, "read");
            r.seen = intValue(o, "seen");
            r.status = string(o, "status");
            r.subject = string(o, "subject");
            r.body = string(o, "body");
            r.person = intValue(o, "person");
            r.protocol = intValue(o, "protocol");
            r.replyPathPresent = intValue(o, "replyPathPresent");
            r.serviceCenter = string(o, "serviceCenter");
            r.locked = intValue(o, "locked");
            r.errorCode = intValue(o, "errorCode");
            r.creator = string(o, "creator");
            return r;
        }

        ContentValues toContentValues() {
            ContentValues v = new ContentValues();
            put(v, "address", address);
            put(v, "date", date);
            put(v, "date_sent", dateSent);
            put(v, "read", read);
            put(v, "seen", seen);
            put(v, "status", status);
            put(v, "subject", subject);
            put(v, "body", body);
            put(v, "person", person);
            put(v, "protocol", protocol);
            put(v, "reply_path_present", replyPathPresent);
            put(v, "service_center", serviceCenter);
            put(v, "locked", locked);
            put(v, "error_code", errorCode);
            put(v, "creator", creator);
            put(v, "type", type);
            return v;
        }

        private static void put(ContentValues v, String key, Object value) {
            if (value == null) return;
            if (value instanceof String) v.put(key, (String) value);
            else if (value instanceof Integer) v.put(key, (Integer) value);
            else if (value instanceof Long) v.put(key, (Long) value);
        }
    }

    public static final class ConversationPreview {
        private final String threadId;
        private final String title;
        private final int messageCount;
        private final long lastDate;
        ConversationPreview(String threadId,String title,int messageCount,long lastDate){
            this.threadId=threadId;this.title=title;this.messageCount=messageCount;this.lastDate=lastDate;
        }
        public String getThreadId(){return threadId;}
        public String getTitle(){return title;}
        public int getMessageCount(){return messageCount;}
        public long getLastDate(){return lastDate;}
    }

    public static final class Result {
        private final boolean success;
        private final int inserted;
        private final int skipped;
        private final int invalid;
        private final String error;

        private Result(boolean success,int inserted,int skipped,int invalid,String error){
            this.success=success;this.inserted=inserted;this.skipped=skipped;this.invalid=invalid;this.error=error;
        }
        public static Result success(int inserted,int skipped,int invalid){
            return new Result(true,inserted,skipped,invalid,null);
        }
        public static Result failure(String error){return new Result(false,0,0,0,error);}
        public boolean isSuccess(){return success;}
        public int getInserted(){return inserted;}
        public int getSkipped(){return skipped;}
        public int getInvalid(){return invalid;}
        public String getError(){return error;}
    }
}
