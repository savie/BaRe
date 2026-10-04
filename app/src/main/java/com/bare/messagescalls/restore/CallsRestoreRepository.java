package com.bare.messagescalls.restore;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;

import com.bare.messagescalls.backups.CallsBackupRepository;
import com.bare.messagescalls.model.CallLogItem;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.IOException;
import java.io.FileInputStream;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Reference z11/d01 call-log restore path. */
public final class CallsRestoreRepository {
    private final Context context;
    private Long nextRetryId;
    public CallsRestoreRepository(Context context) { this.context = context.getApplicationContext(); }

    public List<CallLogItem> readBackup(File backupFile) throws Exception {
        if (backupFile == null || !backupFile.isFile()) {
            throw new IOException("Call backup file does not exist");
        }
        Exception last = null;
        for (char[] password : CallsBackupRepository.referencePasswordCandidates(context)) {
            try {
                java.util.Map<String, byte[]> entries =
                        ReferenceSbaNativeRestoreOrchestrator.readEntries(
                                backupFile, new String(password));
                byte[] payload = entries.get("call_logs");
                if (payload == null) for (java.util.Map.Entry<String, byte[]> entry : entries.entrySet()) {
                    if (entry.getKey() != null && entry.getKey().endsWith("/call_logs")) {
                        payload = entry.getValue();
                        break;
                    }
                }
                if (payload == null) throw new IOException("Reference call_logs entry not found");
                return parseWrapper(new String(payload, StandardCharsets.UTF_8));
            } catch (Exception e) {
                last = e;
            } finally {
                java.util.Arrays.fill(password, '\0');
            }
        }
        if (last != null) {
            try {
                byte[] encrypted;
                try (FileInputStream in = new FileInputStream(backupFile);
                     ByteArrayOutputStream out = new ByteArrayOutputStream((int) Math.min(
                             backupFile.length(), Integer.MAX_VALUE))) {
                    byte[] buffer = new byte[8192];
                    int read;
                    while ((read = in.read(buffer)) != -1) out.write(buffer, 0, read);
                    encrypted = out.toByteArray();
                }
                return parseWrapper(new String(
                        ReferenceLegacyCallLogCrypto.decrypt(context, encrypted),
                        StandardCharsets.UTF_8));
            } catch (Exception legacy) {
                last.addSuppressed(legacy);
            }
        }
        throw last != null ? last : new IOException("Unable to read Reference call-log archive");
    }

    public Result restore(List<CallLogItem> items) {
        if (items == null || items.isEmpty()) return new Result(0, 0);
        int restored=0, skipped=0;
        for (CallLogItem item : items) {
            if (item == null || isOnDevice(item)) { skipped++; continue; }
            try { if (insertWithRetry(item)) restored++; else skipped++; }
            catch (Exception ignored) { skipped++; }
        }
        return new Result(restored, skipped);
    }

    private boolean isOnDevice(CallLogItem item) {
        try (Cursor cursor = context.getContentResolver().query(
                CallLogProviderRepository.contentUriForSdk(Build.VERSION.SDK_INT),
                new String[]{"_id"}, "date = ? AND number = ? AND type = ?",
                new String[]{String.valueOf(item.date), item.number, String.valueOf(item.type)}, null)) {
            return cursor != null && cursor.getCount() > 0;
        } catch (Exception ignored) { return false; }
    }

    private boolean insertWithRetry(CallLogItem original) throws Exception {
        long id = original.id;
        for (int attempt=0; attempt<10; attempt++) {
            CallLogItem candidate = prepareForRestore(original);
            if (attempt > 0) candidate = withId(candidate, id);
            try {
                android.net.Uri inserted = insertFallback(toContentValues(candidate));
                if (inserted != null) return true;
            } catch (Exception e) {
                if (attempt == 9) throw e;
            }
            if (nextRetryId == null) {
                nextRetryId = original.id + 1000L;
            } else {
                nextRetryId = nextRetryId + 1L;
            }
            id = nextRetryId;
        }
        return false;
    }

    private CallLogItem prepareForRestore(CallLogItem item) {
        if (Build.VERSION.SDK_INT<33 || !CallLogProviderRepository.telephonyPhoneAccountComponent().equals(item.phoneAccountComponentName)
                || item.sourceSimSlotIndex==null) return item;
        return withPhoneAccountId(item, CallLogProviderRepository.subscriptionIdForSlot(context,item.sourceSimSlotIndex));
    }

    private android.net.Uri insertFallback(ContentValues values) throws Exception {
        List<android.net.Uri> uris=CallLogProviderRepository.restoreContentUrisForSdk(Build.VERSION.SDK_INT);
        for (int i=0;i<uris.size();i++) {
            try {
                android.net.Uri uri=context.getContentResolver().insert(uris.get(i),values);
                if (uri!=null) return uri;
            } catch(Exception e) { if(i==uris.size()-1) throw e; }
        }
        return null;
    }

    private static ContentValues toContentValues(CallLogItem c) {
        ContentValues v=new ContentValues();
        v.put("_id",c.id); v.put("type",c.type); v.put("features",c.features);
        put(v,"number",c.number); v.put("presentation",c.numberPresentation);
        put(v,"countryiso",c.countryIso); v.put("date",c.date); v.put("duration",c.duration);
        v.put("data_usage",c.dataUsage); v.put("new",c.newCall); put(v,"name",c.name);
        v.put("numbertype",c.numberType); put(v,"voicemail_uri",c.voiceMailUri); v.put("is_read",c.isRead);
        put(v,"geocoded_location",c.geoCodedLocation); put(v,"lookup_uri",c.lookupUri);
        put(v,"matched_number",c.matchedNumber); put(v,"normalized_number",c.normalizedNumber);
        v.put("photo_id",c.photoId); put(v,"photo_uri",c.photoUri); put(v,"formatted_number",c.formattedNumber);
        put(v,"subscription_component_name",c.phoneAccountComponentName); put(v,"subscription_id",c.phoneAccountId);
        return v;
    }
    private static void put(ContentValues v,String k,String s){if(s!=null)v.put(k,s);}
    private static CallLogItem withId(CallLogItem c,long id){return new CallLogItem(id,c.type,c.features,c.number,c.numberPresentation,c.countryIso,c.date,c.duration,c.dataUsage,c.newCall,c.name,c.numberType,c.voiceMailUri,c.isRead,c.geoCodedLocation,c.lookupUri,c.matchedNumber,c.normalizedNumber,c.photoId,c.photoUri,c.formattedNumber,c.phoneAccountComponentName,c.phoneAccountId,c.sourceSimSlotIndex);}
    private static CallLogItem withPhoneAccountId(CallLogItem c,String id){return new CallLogItem(c.id,c.type,c.features,c.number,c.numberPresentation,c.countryIso,c.date,c.duration,c.dataUsage,c.newCall,c.name,c.numberType,c.voiceMailUri,c.isRead,c.geoCodedLocation,c.lookupUri,c.matchedNumber,c.normalizedNumber,c.photoId,c.photoUri,c.formattedNumber,c.phoneAccountComponentName,id,c.sourceSimSlotIndex);}
    private static List<CallLogItem> parseWrapper(String text)throws Exception{
        JSONObject root=new JSONObject(text); JSONArray array=root.optJSONArray("items"); if(array==null)return Collections.emptyList();
        ArrayList<CallLogItem> result=new ArrayList<>(array.length());
        for(int i=0;i<array.length();i++)result.add(fromJson(array.getJSONObject(i))); return result;
    }
    private static CallLogItem fromJson(JSONObject o){return new CallLogItem(
        o.optLong("_id"),o.optInt("type"),o.optInt("features"),opt(o,"number"),o.has("presentation") ? o.optInt("presentation") : o.optInt("number_presentation"),opt(o,"countryiso"),
        o.optLong("date"),o.optLong("duration"),o.optLong("data_usage"),o.optInt("new"),opt(o,"name"),o.optInt("numbertype"),
        opt(o,"voicemail_uri"),o.optInt("is_read"),opt(o,"geocoded_location"),opt(o,"lookup_uri"),opt(o,"matched_number"),
        opt(o,"normalized_number"),o.optLong("photo_id"),opt(o,"photo_uri"),opt(o,"formatted_number"),
        opt(o,"subscription_component_name") != null ? opt(o,"subscription_component_name") : opt(o,"phone_account_component_name"),opt(o,"subscription_id"),
        o.has("sourceSimSlotIndex")&&!o.isNull("sourceSimSlotIndex")?o.optInt("sourceSimSlotIndex"):null);}
    private static String opt(JSONObject o,String k){return o.has(k)&&!o.isNull(k)?o.optString(k,null):null;}
    public static final class Result{
        private final int restored,skipped;
        public Result(int restored,int skipped){this.restored=restored;this.skipped=skipped;}
        public int getRestored(){return restored;} public int getSkipped(){return skipped;}
    }
}
