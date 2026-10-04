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
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Reference ff5 restore boundary for SMS + MMS.
 *
 * SMS rows are reconstructed from ki7. MMS rows are reconstructed from wg5,
 * xg5 and vg5, including MMS part bytes when the archive exposes the same
 * cachedFileName used by the Reference backup pipeline.
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
        result.sort((a, b) -> Long.compare(b.lastDate, a.lastDate));
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
            if (conversations == null) {
                return Result.failure("Reference conversations payload is empty");
            }

            Map<String, byte[]> archiveEntries = archiveCrypto.readArchiveEntries(backupFile);
            Set<String> selected = selectedConversationThreadIds == null
                    ? null : new HashSet<>(selectedConversationThreadIds);

            int smsInserted = 0;
            int mmsInserted = 0;
            int partsInserted = 0;
            int skipped = 0;
            int invalid = 0;

            for (int i = 0; i < conversations.length(); i++) {
                JSONObject conversation = conversations.optJSONObject(i);
                if (conversation == null) continue;

                String thread = string(conversation, "threadId");
                if (selected != null && !selected.isEmpty() && !selected.contains(thread)) {
                    continue;
                }

                JSONArray smsItems = conversation.optJSONArray("smsItemList");
                if (smsItems != null) {
                    for (int j = 0; j < smsItems.length(); j++) {
                        JSONObject sms = smsItems.optJSONObject(j);
                        if (sms == null) continue;
                        SmsRow row = SmsRow.from(sms);
                        if (row.address == null || row.address.isEmpty()) {
                            invalid++;
                            continue;
                        }
                        if (existsSmsOnDevice(row)) {
                            skipped++;
                            continue;
                        }

                        ContentValues values = row.toContentValues();
                        Long targetThread = getOrCreateThreadId(
                                Collections.singletonList(row.address));
                        if (targetThread != null) values.put("thread_id", targetThread);

                        Uri insertedUri = resolver.insert(Telephony.Sms.CONTENT_URI, values);
                        if (insertedUri == null) invalid++;
                        else smsInserted++;
                    }
                }

                JSONArray mmsItems = conversation.optJSONArray("mmsItemList");
                if (mmsItems != null) {
                    for (int j = 0; j < mmsItems.length(); j++) {
                        JSONObject mms = mmsItems.optJSONObject(j);
                        if (mms == null) continue;
                        MmsRestoreResult mmsResult = restoreMms(mms, archiveEntries);
                        skipped += mmsResult.skipped;
                        invalid += mmsResult.invalid;
                        if (mmsResult.inserted) mmsInserted++;
                        partsInserted += mmsResult.partsInserted;
                    }
                }
            }

            return Result.success(smsInserted, mmsInserted, partsInserted, skipped, invalid);
        } catch (Exception e) {
            return Result.failure(e.getMessage() == null
                    ? e.getClass().getSimpleName() : e.getMessage());
        }
    }

    private MmsRestoreResult restoreMms(JSONObject o, Map<String, byte[]> archiveEntries) {
        MmsRow row = MmsRow.from(o);
        if (row.type == null || row.date == null) {
            return MmsRestoreResult.invalid();
        }
        if (existsMmsOnDevice(row)) return MmsRestoreResult.skipped();

        List<String> recipients = stringList(o, "recipients");
        if (recipients.isEmpty()) {
            JSONArray addresses = o.optJSONArray("addressItems");
            if (addresses != null) {
                for (int i = 0; i < addresses.length(); i++) {
                    JSONObject address = addresses.optJSONObject(i);
                    String value = address == null ? null : string(address, "address");
                    if (value != null && !value.isEmpty()) recipients.add(value);
                }
            }
        }
        if (recipients.isEmpty()) {
            String fallback = string(o, "address");
            if (fallback != null && !fallback.isEmpty()) recipients.add(fallback);
        }

        Long threadId = getOrCreateThreadId(recipients);
        ContentValues values = row.toContentValues();
        if (threadId != null) values.put("thread_id", threadId);
        values.remove("_id");

        Uri mmsUri = resolver.insert(Telephony.Mms.CONTENT_URI, values);
        if (mmsUri == null || mmsUri.getLastPathSegment() == null) {
            return MmsRestoreResult.invalid();
        }

        long newMid;
        try {
            newMid = Long.parseLong(mmsUri.getLastPathSegment());
        } catch (NumberFormatException e) {
            return MmsRestoreResult.invalid();
        }

        int partsInserted = 0;
        JSONArray partItems = o.optJSONArray("partItems");
        if (partItems != null) {
            for (int i = 0; i < partItems.length(); i++) {
                JSONObject part = partItems.optJSONObject(i);
                if (part == null) continue;

                ContentValues partValues = MmsPartRow.from(part).toContentValues();
                partValues.remove("_id");
                partValues.remove("mid");
                partValues.remove("_data");
                partValues.put("mid", newMid);

                // Reference only falls back to wg5.getProperFileName() when a
                // serialized part name is empty. Preserve that behavior.
                if (!partValues.containsKey("name") || isEmpty(partValues.getAsString("name"))) {
                    String properFileName = properFileName(o);
                    if (properFileName != null) partValues.put("name", properFileName);
                }

                Uri partUri = resolver.insert(
                        Telephony.Mms.CONTENT_URI.buildUpon()
                                .appendPath(String.valueOf(newMid))
                                .appendPath("part")
                                .build(),
                        partValues);
                if (partUri == null) {
                    return new MmsRestoreResult(true, partsInserted, 0, 1);
                }
                partsInserted++;

                // For binary parts Reference backs the provider row with the
                // extracted cache file. Use the serialized cachedFileName when
                // available; otherwise match by the part's file/name metadata.
                String cachedFileName = string(part, "cachedFileName");
                if (cachedFileName == null || cachedFileName.isEmpty()) {
                    cachedFileName = string(part, "fileName");
                }
                if (cachedFileName == null || cachedFileName.isEmpty()) {
                    cachedFileName = string(part, "name");
                }
                if (cachedFileName != null && !cachedFileName.isEmpty()) {
                    byte[] data = findArchiveEntry(archiveEntries, cachedFileName);
                    if (data != null && !isTextPart(part)) {
                        try (OutputStream out = resolver.openOutputStream(partUri)) {
                            if (out != null) {
                                out.write(data);
                            }
                        } catch (Exception ignored) {
                            // Keep the provider row; Reference also treats
                            // binary cache materialization as best-effort.
                        }
                    }
                }
            }
        }

        JSONArray addressItems = o.optJSONArray("addressItems");
        if (addressItems != null) {
            for (int i = 0; i < addressItems.length(); i++) {
                JSONObject address = addressItems.optJSONObject(i);
                if (address == null) continue;
                MmsAddressRow addressRow = MmsAddressRow.from(address);
                ContentValues addressValues = addressRow.toContentValues();
                addressValues.remove("msg_id");
                addressValues.remove("contact_id");
                addressValues.put("msg_id", newMid);
                if (resolver.insert(
                        Telephony.Mms.CONTENT_URI.buildUpon()
                                .appendPath(String.valueOf(newMid))
                                .appendPath("addr")
                                .build(),
                        addressValues) == null) {
                    invalid++;
                }
            }
        }

        return new MmsRestoreResult(true, partsInserted, 0, 0);
    }

    private Long getOrCreateThreadId(List<String> addresses) {
        if (addresses == null || addresses.isEmpty()) return null;
        List<String> normalized = new ArrayList<>();
        for (String address : addresses) {
            if (address != null && !address.trim().isEmpty()) normalized.add(address);
        }
        if (normalized.isEmpty()) return null;

        String cacheKey = String.join("\u001f", normalized);
        if (threadIds.containsKey(cacheKey)) return threadIds.get(cacheKey);
        try {
            Long id = Telephony.Threads.getOrCreateThreadId(context, normalized);
            threadIds.put(cacheKey, id);
            return id;
        } catch (Exception ignored) {
            return null;
        }
    }

    private boolean existsSmsOnDevice(SmsRow row) {
        Cursor cursor = null;
        try {
            cursor = resolver.query(
                    Telephony.Sms.CONTENT_URI,
                    new String[]{"date"},
                    "date = ? AND date_sent = ? AND address = ? AND type = ?",
                    new String[]{
                            String.valueOf(row.date == null ? 0L : row.date),
                            String.valueOf(row.dateSent == null ? 0L : row.dateSent),
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

    private boolean existsMmsOnDevice(MmsRow row) {
        Cursor cursor = null;
        try {
            cursor = resolver.query(
                    Telephony.Mms.CONTENT_URI,
                    new String[]{"date"},
                    "date = ? AND date_sent = ? AND m_type = ?",
                    new String[]{
                            String.valueOf(row.date == null ? 0L : row.date),
                            String.valueOf(row.dateSent == null ? 0L : row.dateSent),
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

    private static byte[] findArchiveEntry(Map<String, byte[]> entries, String name) {
        if (entries == null || entries.isEmpty() || name == null) return null;
        String normalized = name.replace('\\', '/');
        byte[] exact = entries.get(normalized);
        if (exact != null) return exact;
        int slash = normalized.lastIndexOf('/');
        String base = slash >= 0 ? normalized.substring(slash + 1) : normalized;
        exact = entries.get(base);
        if (exact != null) return exact;
        for (Map.Entry<String, byte[]> entry : entries.entrySet()) {
            String key = entry.getKey();
            if (key != null && key.endsWith(base)) return entry.getValue();
        }
        return null;
    }

    private static boolean isTextPart(JSONObject part) {
        String contentType = string(part, "contentType");
        return contentType != null && (
                contentType.toLowerCase(java.util.Locale.ROOT).startsWith("text/")
                        || "application/smil".equalsIgnoreCase(contentType));
    }

    private static String properFileName(JSONObject mms) {
        JSONArray parts = mms.optJSONArray("partItems");
        if (parts != null) {
            for (int i = 0; i < parts.length(); i++) {
                JSONObject part = parts.optJSONObject(i);
                if (part == null) continue;
                String name = string(part, "name");
                String type = string(part, "contentType");
                if (name != null && !name.isEmpty()
                        && type != null
                        && !type.toLowerCase(java.util.Locale.ROOT).startsWith("text/")
                        && !"application/smil".equalsIgnoreCase(type)) {
                    return name;
                }
            }
            for (int i = 0; i < parts.length(); i++) {
                JSONObject part = parts.optJSONObject(i);
                if (part == null) continue;
                String type = string(part, "contentType");
                if ("application/smil".equalsIgnoreCase(type)) {
                    String text = string(part, "text");
                    if (text != null) {
                        int start = text.indexOf("src=\"");
                        if (start >= 0) {
                            start += 5;
                            int end = text.indexOf('\"', start);
                            if (end > start) return text.substring(start, end);
                        }
                    }
                }
            }
        }
        return null;
    }

    private static boolean isEmpty(String value) {
        return value == null || value.isEmpty();
    }

    private static List<String> stringList(JSONObject object, String key) {
        List<String> result = new ArrayList<>();
        JSONArray array = object.optJSONArray(key);
        if (array != null) {
            for (int i = 0; i < array.length(); i++) {
                String value = array.optString(i, null);
                if (value != null && !value.isEmpty()) result.add(value);
            }
        }
        return result;
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
    }

    private static final class MmsRow {
        Integer box, contentClass, deliveryReport, deliveryTime, locked, messageSize;
        Integer mmsVersion, priority, read, readReport, readStatus, reportAllowed;
        Integer responseStatus, retrieveStatus, retrieveTextCharset, seen, status, subId;
        Integer subjectCharset, textOnly, type;
        Long date, dateSent, expiry, id, threadId;
        String contentLocation, contentType, messageClass, responseText, retrieveText;
        String subject, transactionId;

        static MmsRow from(JSONObject o) {
            MmsRow r = new MmsRow();
            r.box=intValue(o,"box"); r.contentClass=intValue(o,"contentClass");
            r.deliveryReport=intValue(o,"deliveryReport"); r.deliveryTime=intValue(o,"deliveryTime");
            r.locked=intValue(o,"locked"); r.messageSize=intValue(o,"messageSize");
            r.mmsVersion=intValue(o,"mmsVersion"); r.priority=intValue(o,"priority");
            r.read=intValue(o,"read"); r.readReport=intValue(o,"readReport");
            r.readStatus=intValue(o,"readStatus"); r.reportAllowed=intValue(o,"reportAllowed");
            r.responseStatus=intValue(o,"responseStatus"); r.retrieveStatus=intValue(o,"retrieveStatus");
            r.retrieveTextCharset=intValue(o,"retrieveTextCharset"); r.seen=intValue(o,"seen");
            r.status=intValue(o,"status"); r.subId=intValue(o,"subId");
            r.subjectCharset=intValue(o,"subjectCharset"); r.textOnly=intValue(o,"textOnly");
            r.type=intValue(o,"type");
            r.date=longValue(o,"date"); r.dateSent=longValue(o,"dateSent");
            r.expiry=longValue(o,"expiry"); r.id=longValue(o,"id"); r.threadId=longValue(o,"threadId");
            r.contentLocation=string(o,"contentLocation"); r.contentType=string(o,"contentType");
            r.messageClass=string(o,"messageClass"); r.responseText=string(o,"responseText");
            r.retrieveText=string(o,"retrieveText"); r.subject=string(o,"subject");
            r.transactionId=string(o,"transactionId");
            return r;
        }

        ContentValues toContentValues() {
            ContentValues v=new ContentValues();
            put(v,"msg_box",box); put(v,"ct_cls",contentClass); put(v,"ct_l",contentLocation);
            put(v,"ct_t",contentType); put(v,"date",date); put(v,"date_sent",dateSent);
            put(v,"d_rpt",deliveryReport); put(v,"d_tm",deliveryTime); put(v,"exp",expiry);
            put(v,"locked",locked); put(v,"m_cls",messageClass); put(v,"m_size",messageSize);
            put(v,"v",mmsVersion); put(v,"pri",priority); put(v,"read",read); put(v,"rr",readReport);
            put(v,"read_status",readStatus); put(v,"rpt_a",reportAllowed); put(v,"resp_st",responseStatus);
            put(v,"resp_txt",responseText); put(v,"retr_st",retrieveStatus); put(v,"retr_txt",retrieveText);
            put(v,"retr_txt_cs",retrieveTextCharset); put(v,"seen",seen); put(v,"st",status);
            put(v,"sub_id",subId); put(v,"sub",subject); put(v,"sub_cs",subjectCharset);
            put(v,"text_only",textOnly); put(v,"tr_id",transactionId); put(v,"m_type",type);
            return v;
        }
    }

    private static final class MmsPartRow {
        Long id, mid;
        Integer charset, contentId, contentLocation, contentStartType, dataLocation, seq;
        String charset, contentDisposition, contentType, contentTypeType, fileName, name, text;

        static MmsPartRow from(JSONObject o) {
            MmsPartRow r=new MmsPartRow();
            r.id=longValue(o,"id"); r.mid=longValue(o,"mid");
            r.charset=string(o,"charset"); r.contentId=intValue(o,"contentId");
            r.contentLocation=intValue(o,"contentLocation"); r.contentStartType=intValue(o,"contentStartType");
            r.dataLocation=intValue(o,"dataLocation"); r.seq=intValue(o,"seq");
            r.contentDisposition=string(o,"contentDisposition"); r.contentType=string(o,"contentType");
            r.contentTypeType=string(o,"contentTypeType"); r.fileName=string(o,"fileName");
            r.name=string(o,"name"); r.text=string(o,"text");
            return r;
        }

        ContentValues toContentValues() {
            ContentValues v=new ContentValues();
            put(v,"chset",charset); put(v,"cd",contentDisposition); put(v,"cid",contentId);
            put(v,"cl",contentLocation); put(v,"ctt_s",contentStartType); put(v,"ct",contentType);
            put(v,"ctt_t",contentTypeType); put(v,"_data",dataLocation); put(v,"fn",fileName);
            put(v,"mid",mid); put(v,"name",name); put(v,"seq",seq); put(v,"text",text);
            return v;
        }

        private static Integer stringInt(JSONObject o,String key) { return intValue(o,key); }
    }

    private static final class MmsAddressRow {
        Long msgId, contactId;
        String address;
        Integer type, charset;

        static MmsAddressRow from(JSONObject o) {
            MmsAddressRow r=new MmsAddressRow();
            r.msgId=longValue(o,"msgId"); r.contactId=longValue(o,"contactId");
            r.address=string(o,"address"); r.type=intValue(o,"type"); r.charset=intValue(o,"charset");
            return r;
        }

        ContentValues toContentValues() {
            ContentValues v=new ContentValues();
            put(v,"msg_id",msgId); put(v,"contact_id",contactId); put(v,"address",address);
            put(v,"type",type); put(v,"charset",charset);
            return v;
        }
    }

    private static void put(ContentValues v, String key, Object value) {
        if (value == null) return;
        if (value instanceof String) v.put(key, (String) value);
        else if (value instanceof Integer) v.put(key, (Integer) value);
        else if (value instanceof Long) v.put(key, (Long) value);
    }

    private static final class MmsRestoreResult {
        final boolean inserted;
        final int partsInserted;
        final int skipped;
        final int invalid;
        MmsRestoreResult(boolean inserted,int partsInserted,int skipped,int invalid){
            this.inserted=inserted;this.partsInserted=partsInserted;this.skipped=skipped;this.invalid=invalid;
        }
        static MmsRestoreResult invalid(){return new MmsRestoreResult(false,0,0,1);}
        static MmsRestoreResult skipped(){return new MmsRestoreResult(false,0,1,0);}
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
        private final int mmsInserted;
        private final int partsInserted;
        private final int skipped;
        private final int invalid;
        private final String error;

        private Result(boolean success,int inserted,int mmsInserted,int partsInserted,
                       int skipped,int invalid,String error){
            this.success=success;this.inserted=inserted;this.mmsInserted=mmsInserted;
            this.partsInserted=partsInserted;this.skipped=skipped;this.invalid=invalid;this.error=error;
        }
        public static Result success(int inserted,int mmsInserted,int partsInserted,int skipped,int invalid){
            return new Result(true,inserted,mmsInserted,partsInserted,skipped,invalid,null);
        }
        public static Result failure(String error){return new Result(false,0,0,0,0,0,error);}
        public boolean isSuccess(){return success;}
        public int getInserted(){return inserted;}
        public int getMmsInserted(){return mmsInserted;}
        public int getPartsInserted(){return partsInserted;}
        public int getSkipped(){return skipped;}
        public int getInvalid(){return invalid;}
        public String getError(){return error;}
    }
}
