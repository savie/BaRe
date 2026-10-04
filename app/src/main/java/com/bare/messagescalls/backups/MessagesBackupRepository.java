package com.bare.messagescalls.backups;

import android.content.Context;
import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Build;
import android.provider.Telephony;
import android.provider.ContactsContract;

import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;

/** Reference vd5-compatible local Messages backup inventory/retention surface. */
public final class MessagesBackupRepository {
    private final Context context;
    public MessagesBackupRepository(Context context){this.context=context.getApplicationContext();}

    public List<MessageBackupItem> listLocal() {
        File root=localRoot();
        if(root==null||!root.isDirectory()) return Collections.emptyList();
        File[] files=root.listFiles();
        if(files==null) return Collections.emptyList();
        List<MessageBackupItem> result=new ArrayList<>();
        for(File file:files){
            if(!file.isFile()) continue;
            MessageBackupItem item=parse(file.getName());
            if(item!=null) result.add(item);
        }
        result.sort(Comparator.comparingLong(MessageBackupItem::getBackupTime).reversed());
        return result;
    }


    /**
     * Reference ff5/mz6.e local backup production: build qv1-shaped JSON,
     * encrypt the conversations payload, materialize MMS part files, and
     * hand the archive to the reconstructed Reference SBA native creator.
     */
    public MessageBackupItem createLocalBackup(
            List<String> selectedThreadIds, boolean includeMms, int configuredCompression) throws Exception {
        if (selectedThreadIds == null || selectedThreadIds.isEmpty()) {
            throw new IllegalArgumentException("No messages selected");
        }
        File root = localRoot();
        if (root == null) throw new IllegalStateException("No selected local storage");
        if (!root.exists() && !root.mkdirs()) {
            throw new IllegalStateException("Cannot create messages backup directory");
        }

        Set<Long> threads = new LinkedHashSet<>();
        for (String id : selectedThreadIds) {
            try { threads.add(Long.parseLong(id)); } catch (NumberFormatException ignored) { }
        }
        if (threads.isEmpty()) throw new IllegalArgumentException("No valid message threads selected");

        File work = new File(context.getCacheDir(), "messages_backup");
        deleteTree(work);
        if (!work.mkdirs()) throw new IllegalStateException("Cannot create messages backup cache");
        File mmsData = new File(work, "mms_data");
        if (!mmsData.mkdirs()) throw new IllegalStateException("Cannot create MMS cache");

        long now = System.currentTimeMillis();
        List<JSONObjectThread> conversations = readConversations(threads, includeMms, mmsData);
        int messageCount = 0;
        for (JSONObjectThread c : conversations) messageCount += c.messageCount;
        if (messageCount <= 0) {
            deleteTree(work);
            throw new IllegalStateException("No messages available");
        }

        File plain = new File(work, "conversations");
        File encrypted = new File(work, "conversations.enc");
        FileOutputStream plainOut = new FileOutputStream(plain);
        try {
            JSONObject rootObject = new JSONObject();
            org.json.JSONArray items = new org.json.JSONArray();
            for (JSONObjectThread c : conversations) items.put(c.value);
            rootObject.put("items", items);
            plainOut.write(rootObject.toString().getBytes(StandardCharsets.UTF_8));
        } finally {
            plainOut.close();
        }

        byte[] payload = java.nio.file.Files.readAllBytes(plain.toPath());
        byte[] encryptedPayload = com.bare.messagescalls.restore.ReferenceMessagesArchiveCrypto
                .encryptConversations(payload);
        try (FileOutputStream out = new FileOutputStream(encrypted)) {
            out.write(encryptedPayload);
        }

        String device = sanitizeDevice(Build.MODEL);
        String fileName = "v3." + now + "." + conversations.size() + "."
                + messageCount + "." + device + ".msg";
        File output = new File(root, fileName);

        // Reference mz6.e passes the whole messages_backup directory as one
        // root-inclusive SBA entry, not each child as a flat archive entry.
        List<File> sources = new ArrayList<>();
        List<String> names = new ArrayList<>();
        sources.add(work);
        names.add(work.getName());

        char[] passwordChars = CallsBackupRepository.referencePassword(context);
        byte[] salt = new byte[16];
        byte[] nonceSeed = new byte[16];
        byte[] key = null;
        byte[] keyCheck = null;
        try {
            java.security.SecureRandom random = new java.security.SecureRandom();
            random.nextBytes(salt);
            random.nextBytes(nonceSeed);

            int compressionLevel = configuredCompression >= 0 ? configuredCompression : 1;
            int compressionMethod = compressionLevel == 0 ? 0 : 1;
            com.bare.appslist.restore.SbaNativeArchiveBackend backend =
                    new com.bare.appslist.restore.SbaNativeArchiveBackend();
            key = backend.deriveArgon2id(
                    new String(passwordChars), salt, 3, 16384, 1, 32);
            keyCheck = com.bare.appslist.restore.SbaArchiveCreationExecutor.keyCheck(
                    "SBA1-AEGIS256-key-check-v1", key, salt, nonceSeed);

            byte[][] metadata = new byte[sources.size()][];
            String[] sourcePaths = new String[sources.size()];
            int[] flags = new int[sources.size()];
            flags[0] = 8; // Reference Basic + includeRootDirectory.
            String[][] xattrs = new String[sources.size()][];
            String[][] links = new String[sources.size()][];
            for (int i = 0; i < sources.size(); i++) {
                metadata[i] = names.get(i).getBytes(StandardCharsets.UTF_8);
                sourcePaths[i] = sources.get(i).getAbsolutePath();
            }

            com.bare.appslist.restore.SbaArchiveCreationExecutor.Result result =
                    new com.bare.appslist.restore.SbaArchiveCreationExecutor().create(
                            output,
                            referenceArchiveMetadata(),
                            metadata, sourcePaths, flags, xattrs, links,
                            2, compressionMethod, compressionLevel,
                            4, 1, 3, 16384, 1, 1048576,
                            1, 32, key, keyCheck, salt, nonceSeed, null);
            key = null;
            keyCheck = null;
            if (!result.isSuccess()) {
                if (output.exists()) output.delete();
                throw new IllegalStateException(result.getError());
            }
        } finally {
            java.util.Arrays.fill(passwordChars, '\0');
            if (key != null) java.util.Arrays.fill(key, (byte) 0);
            if (keyCheck != null) java.util.Arrays.fill(keyCheck, (byte) 0);
            java.util.Arrays.fill(salt, (byte) 0);
            java.util.Arrays.fill(nonceSeed, (byte) 0);
            deleteTree(work);
        }

        enforceRetention(context.getSharedPreferences(
                context.getPackageName() + "_preferences", Context.MODE_PRIVATE)
                .getInt("max_sms_backups", -1));
        return new MessageBackupItem(fileName, now, messageCount, conversations.size(), device);
    }

    private List<JSONObjectThread> readConversations(
            Set<Long> selected, boolean includeMms, File mmsData) throws Exception {
        ContentResolver resolver = context.getContentResolver();
        Map<Long, JSONObjectThread> byThread = new LinkedHashMap<>();
        Cursor sms = resolver.query(Telephony.Sms.CONTENT_URI, null, null, null, "date ASC");
        if (sms != null) {
            try {
                while (sms.moveToNext()) {
                    Long thread = longColumn(sms, "thread_id");
                    if (thread == null || !selected.contains(thread)) continue;
                    JSONObjectThread conversation = byThread.get(thread);
                    if (conversation == null) {
                        conversation = new JSONObjectThread(thread);
                        byThread.put(thread, conversation);
                    }
                    conversation.sms.put(toSmsJson(sms));
                }
            } finally { sms.close(); }
        }

        if (includeMms) {
            Cursor mms = resolver.query(Telephony.Mms.CONTENT_URI, null, null, null, "date ASC");
            if (mms != null) {
                try {
                    while (mms.moveToNext()) {
                        Long thread = longColumn(mms, "thread_id");
                        if (thread == null || !selected.contains(thread)) continue;
                        JSONObjectThread conversation = byThread.get(thread);
                        if (conversation == null) {
                            conversation = new JSONObjectThread(thread);
                            byThread.put(thread, conversation);
                        }
                        JSONObject mmsJson = toMmsJson(mms, mmsData);
                        if (mmsJson != null) conversation.mms.put(mmsJson);
                    }
                } finally { mms.close(); }
            }
        }

        for (JSONObjectThread conversation : byThread.values()) {
            conversation.finish(resolver);
        }
        ArrayList<JSONObjectThread> result = new ArrayList<>(byThread.values());
        result.sort((a, b) -> Long.compare(b.lastSmsDate, a.lastSmsDate));
        return result;
    }

    private JSONObject toSmsJson(Cursor c) throws Exception {
        JSONObject o = new JSONObject();
        put(o, "type", integerColumn(c, "type"));
        put(o, "thread_id", longColumn(c, "thread_id"));
        put(o, "address", stringColumn(c, "address"));
        put(o, "date", longColumn(c, "date"));
        put(o, "dateSent", longColumn(c, "date_sent"));
        put(o, "read", integerColumn(c, "read"));
        put(o, "seen", integerColumn(c, "seen"));
        put(o, "status", stringColumn(c, "status"));
        put(o, "subject", stringColumn(c, "subject"));
        put(o, "body", stringColumn(c, "body"));
        put(o, "person", integerColumn(c, "person"));
        put(o, "protocol", integerColumn(c, "protocol"));
        put(o, "replyPathPresent", integerColumn(c, "reply_path_present"));
        put(o, "serviceCenter", stringColumn(c, "service_center"));
        put(o, "locked", integerColumn(c, "locked"));
        put(o, "errorCode", integerColumn(c, "error_code"));
        put(o, "creator", stringColumn(c, "creator"));
        return o;
    }

    private JSONObject toMmsJson(Cursor c, File mmsData) throws Exception {
        JSONObject o = new JSONObject();
        put(o, "id", longColumn(c, "_id"));
        put(o, "box", integerColumn(c, "msg_box"));
        put(o, "type", integerColumn(c, "m_type"));
        put(o, "threadId", longColumn(c, "thread_id"));
        put(o, "dateInSeconds", longColumn(c, "date"));
        put(o, "dateSentInSeconds", longColumn(c, "date_sent"));
        put(o, "read", integerColumn(c, "read"));
        put(o, "seen", integerColumn(c, "seen"));
        put(o, "textOnly", integerColumn(c, "text_only"));
        put(o, "contentClass", integerColumn(c, "ct_cls"));
        put(o, "deliveryReport", integerColumn(c, "d_rpt"));
        put(o, "deliveryTime", integerColumn(c, "d_tm"));
        put(o, "subject", stringColumn(c, "sub"));
        put(o, "subjectCharset", integerColumn(c, "sub_cs"));
        put(o, "contentType", stringColumn(c, "ct_t"));
        put(o, "contentLocation", stringColumn(c, "ct_l"));
        put(o, "expiry", longColumn(c, "exp"));
        put(o, "messageClass", stringColumn(c, "m_cls"));
        put(o, "mmsVersion", integerColumn(c, "v"));
        put(o, "messageSize", integerColumn(c, "m_size"));
        put(o, "priority", integerColumn(c, "pri"));
        put(o, "readReport", integerColumn(c, "rr"));
        put(o, "reportAllowed", integerColumn(c, "rpt_a"));
        put(o, "responseStatus", integerColumn(c, "resp_st"));
        put(o, "responseText", stringColumn(c, "resp_txt"));
        put(o, "retrieveStatus", integerColumn(c, "retr_st"));
        put(o, "retrieveText", stringColumn(c, "retr_txt"));
        put(o, "retrieveTextCharset", integerColumn(c, "retr_txt_cs"));
        put(o, "readStatus", integerColumn(c, "read_status"));
        put(o, "status", integerColumn(c, "st"));
        put(o, "subId", integerColumn(c, "sub_id"));
        put(o, "transactionId", stringColumn(c, "tr_id"));

        long mmsId = longColumn(c, "_id") == null ? -1L : longColumn(c, "_id");
        org.json.JSONArray recipients = new org.json.JSONArray();
        Cursor addr = context.getContentResolver().query(
                Telephony.Mms.CONTENT_URI.buildUpon().appendPath(String.valueOf(mmsId)).appendPath("addr").build(),
                null, null, null, "_id ASC");
        if (addr != null) {
            try {
                while (addr.moveToNext()) {
                    String address = stringColumn(addr, "address");
                    Integer type = integerColumn(addr, "type");
                    if (address != null && !address.isEmpty() && type != null && type == 151) {
                        recipients.put(address);
                    }
                }
            } finally { addr.close(); }
        }
        o.put("recipients", recipients);

        org.json.JSONArray addresses = new org.json.JSONArray();
        if (addr != null) { /* no-op; query is already closed */ }
        Cursor addr2 = context.getContentResolver().query(
                Telephony.Mms.CONTENT_URI.buildUpon().appendPath(String.valueOf(mmsId)).appendPath("addr").build(),
                null, null, null, "_id ASC");
        if (addr2 != null) {
            try {
                while (addr2.moveToNext()) {
                    JSONObject a = new JSONObject();
                    put(a, "msgId", longColumn(addr2, "msg_id"));
                    put(a, "contactId", longColumn(addr2, "contact_id"));
                    put(a, "address", stringColumn(addr2, "address"));
                    put(a, "type", integerColumn(addr2, "type"));
                    put(a, "charset", integerColumn(addr2, "charset"));
                    addresses.put(a);
                }
            } finally { addr2.close(); }
        }
        o.put("addressItems", addresses);

        org.json.JSONArray parts = new org.json.JSONArray();
        Cursor part = context.getContentResolver().query(
                Telephony.Mms.CONTENT_URI.buildUpon().appendPath(String.valueOf(mmsId)).appendPath("part").build(),
                null, null, null, "seq ASC, _id ASC");
        if (part != null) {
            try {
                while (part.moveToNext()) {
                    JSONObject p = new JSONObject();
                    Long id = longColumn(part, "_id");
                    put(p, "id", id);
                    put(p, "mid", longColumn(part, "mid"));
                    put(p, "charset", stringColumn(part, "chset"));
                    put(p, "contentDisposition", stringColumn(part, "cd"));
                    put(p, "contentId", integerColumn(part, "cid"));
                    put(p, "contentLocation", integerColumn(part, "cl"));
                    put(p, "contentStartType", integerColumn(part, "ctt_s"));
                    put(p, "contentType", stringColumn(part, "ct"));
                    put(p, "contentTypeType", stringColumn(part, "ctt_t"));
                    put(p, "dataLocation", integerColumn(part, "_data"));
                    put(p, "fileName", stringColumn(part, "fn"));
                    put(p, "name", stringColumn(part, "name"));
                    put(p, "seq", integerColumn(part, "seq"));
                    put(p, "text", stringColumn(part, "text"));

                    String contentType = stringColumn(part, "ct");
                    if (contentType == null || !contentType.startsWith("text/plain")) {
                        String preferred = stringColumn(part, "fn");
                        if (preferred == null || preferred.isEmpty()) preferred = stringColumn(part, "name");
                        if (preferred == null || preferred.isEmpty()) {
                            preferred = UUID.randomUUID().toString();
                        }
                        String cached = uniqueCacheName(mmsData, preferred);
                        File target = new File(mmsData, cached);
                        try (InputStream in = context.getContentResolver().openInputStream(
                                Telephony.Mms.CONTENT_URI.buildUpon()
                                        .appendPath(String.valueOf(mmsId))
                                        .appendPath("part")
                                        .appendPath(String.valueOf(id == null ? -1L : id))
                                        .build());
                             FileOutputStream out = new FileOutputStream(target)) {
                            if (in != null) {
                                byte[] buffer = new byte[262144];
                                int read;
                                while ((read = in.read(buffer)) != -1) out.write(buffer, 0, read);
                            }
                        } catch (Exception ignored) {
                            if (target.exists()) target.delete();
                            cached = null;
                        }
                        if (cached != null && target.isFile() && target.length() > 0) {
                            p.put("cachedFileName", cached);
                        }
                    }
                    parts.put(p);
                }
            } finally { part.close(); }
        }
        String text = null;
        for (int i = 0; i < parts.length(); i++) {
            JSONObject partJson = parts.optJSONObject(i);
            if (partJson == null) continue;
            String type = partJson.optString("contentType", null);
            if (type != null && type.startsWith("text")) {
                text = partJson.optString("text", null);
                if (text != null) break;
            }
        }
        if (text != null) o.put("text", text);
        o.put("partItems", parts);
        // Reference wg5.c only retains MMS items that have both part and
        // address rows after loading the provider graph.
        if (parts.length() == 0 || addresses.length() == 0) return null;
        return o;
    }

    private static String uniqueCacheName(File root, String requested) {
        String clean = requested.replace('/', '_').replace('\\', '_');
        if (clean.isEmpty()) clean = UUID.randomUUID().toString();
        File candidate = new File(root, clean);
        if (!candidate.exists()) return clean;
        String base = clean;
        int dot = clean.lastIndexOf('.');
        String ext = dot > 0 ? clean.substring(dot) : "";
        if (dot > 0) base = clean.substring(0, dot);
        for (int i = 1; i < 10000; i++) {
            String next = base + "-" + i + ext;
            if (!new File(root, next).exists()) return next;
        }
        return UUID.randomUUID().toString();
    }

    private static Long longColumn(Cursor c, String name) {
        int i = c.getColumnIndex(name);
        return i >= 0 && !c.isNull(i) ? c.getLong(i) : null;
    }
    private static Integer integerColumn(Cursor c, String name) {
        int i = c.getColumnIndex(name);
        return i >= 0 && !c.isNull(i) ? c.getInt(i) : null;
    }
    private static String stringColumn(Cursor c, String name) {
        int i = c.getColumnIndex(name);
        return i >= 0 && !c.isNull(i) ? c.getString(i) : null;
    }
    private static void put(JSONObject o, String key, Object value) throws Exception {
        if (value != null) o.put(key, value);
    }

    private static final class JSONObjectThread {
        final long threadId;
        final org.json.JSONArray sms = new org.json.JSONArray();
        final org.json.JSONArray mms = new org.json.JSONArray();
        int messageCount;
        long lastSmsDate;
        JSONObject value;
        JSONObjectThread(long threadId) { this.threadId = threadId; }
        void finish(ContentResolver resolver) throws Exception {
            messageCount = sms.length() + mms.length();
            long latest = 0L;
            String snippet = null;
            String address = null;
            for (int i=0;i<sms.length();i++) {
                JSONObject s=sms.getJSONObject(i);
                long when=s.optLong("date",s.optLong("dateSent",0L));
                if (when>latest) { latest=when; if(!s.optString("body","").isEmpty()) snippet=s.optString("body"); }
                if (address==null || address.isEmpty()) address=s.optString("address",null);
            }
            for (int i=0;i<mms.length();i++) {
                JSONObject mm=mms.getJSONObject(i);
                long sec=mm.optLong("dateInSeconds",mm.optLong("dateSentInSeconds",0L));
                long when=String.valueOf(sec).length()==10 ? sec*1000L : sec;
                if (when>=latest) { latest=when; if(!mm.optString("text","").isEmpty()) snippet=mm.optString("text"); }
                if ((address==null || address.isEmpty()) && mm.has("recipients")) {
                    org.json.JSONArray rs=mm.optJSONArray("recipients");
                    if(rs!=null && rs.length()>0) address=rs.optString(0,null);
                }
            }
            value=new JSONObject();
            value.put("id",threadId);
            value.put("threadId",threadId);
            value.put("date",latest);
            value.put("messageCount",messageCount);
            if(snippet!=null) value.put("snippet",snippet);
            if(address!=null) value.put("address",address);
            value.put("smsItemList",sms);
            value.put("mmsItemList",mms);
            lastSmsDate = latest;
            value.put("lastSmsDate",latest);
            String[] contact = contactFor(resolver, address);
            if (contact[0] != null) value.put("displayName", contact[0]);
            if (contact[1] != null) value.put("photoUri", contact[1]);
        }
    }


    private static String[] contactFor(ContentResolver resolver, String address) {
        if (address == null || address.isEmpty()) return new String[]{null, null};
        Cursor cursor = null;
        try {
            cursor = resolver.query(
                    ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                    new String[]{
                            ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME,
                            ContactsContract.CommonDataKinds.Phone.PHOTO_URI,
                            ContactsContract.CommonDataKinds.Phone.NUMBER,
                            ContactsContract.CommonDataKinds.Phone.NORMALIZED_NUMBER
                    },
                    null, null, null);
            if (cursor == null) return new String[]{null, null};
            int name = cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME);
            int photo = cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.PHOTO_URI);
            int number = cursor.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER);
            int normalized = cursor.getColumnIndex(
                    ContactsContract.CommonDataKinds.Phone.NORMALIZED_NUMBER);
            while (cursor.moveToNext()) {
                String candidate = number >= 0 && !cursor.isNull(number)
                        ? cursor.getString(number) : null;
                String candidateNormalized = normalized >= 0 && !cursor.isNull(normalized)
                        ? cursor.getString(normalized) : null;
                if (!address.equals(candidate) && !address.equals(candidateNormalized)) continue;
                return new String[]{
                        name >= 0 && !cursor.isNull(name) ? cursor.getString(name) : null,
                        photo >= 0 && !cursor.isNull(photo) ? cursor.getString(photo) : null
                };
            }
        } catch (Exception ignored) {
            return new String[]{null, null};
        } finally {
            if (cursor != null) cursor.close();
        }
        return new String[]{null, null};
    }

    private static void deleteTree(File root) {
        if (root == null || !root.exists()) return;
        File[] children = root.listFiles();
        if (children != null) {
            for (File child : children) {
                if (child.isDirectory()) deleteTree(child);
                else child.delete();
            }
        }
        root.delete();
    }

    private static byte[] referenceArchiveMetadata() {
        return new byte[]{
                115,119,105,102,116,98,97,99,107,117,112,46,109,101,115,115,
                97,103,101,115,46,118,51
        };
    }

    private static String sanitizeDevice(String value) {
        if (value == null || value.isEmpty()) value = "bare";
        return value.replaceAll("[.#$\\[\\]]", "").replace("/", "");
    }

    public boolean deleteAllLocal() {
        File root=localRoot();
        if(root==null||!root.exists()) return true;
        File[] files=root.listFiles();
        if(files==null) return false;
        boolean ok=true;
        for(File file:files) if(file.isFile()) ok &= file.delete();
        return ok;
    }

    public int enforceRetention(int maxBackups) {
        if(maxBackups<=0) return 0;
        List<MessageBackupItem> items=listLocal();
        int removed=0;
        for(int i=maxBackups;i<items.size();i++){
            File file=new File(localRoot(),items.get(i).getFileName());
            if(file.isFile() && file.delete()) removed++;
        }
        return removed;
    }

    private File localRoot(){
        StorageSelection selection=new LocalStorageCoordinator(
                context,new AndroidStorageInventory(context)).resolveSelection();
        if(selection==null||selection.selected==null) return null;
        return new File(new File(new File(selection.selected.rootPath,"BaRe"),"backups"),"sms/local");
    }

    private static MessageBackupItem parse(String name){
        try{
            String[] p=name.split("\\.",-1);
            if(p.length<5) return null;
            if(!("v2".equals(p[0])||"v3".equals(p[0]))) return null;
            long time=Long.parseLong(p[1]);
            int conversations=Integer.parseInt(p[2]);
            int sms=Integer.parseInt(p[3]);
            return new MessageBackupItem(name,time,sms,conversations,p[4]);
        }catch(RuntimeException ignored){return null;}
    }
}