package com.bare.messagescalls.backups;

import android.content.Context;
import android.os.Build;

import com.bare.appslist.restore.SbaArchiveCreationExecutor;
import com.bare.appslist.restore.SbaNativeArchiveBackend;
import com.bare.core.state.SecureLocalState;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.messagescalls.model.CallLogBackupItem;
import com.bare.messagescalls.model.CallLogItem;
import com.bare.settings.PasswordStrategy;
import com.bare.settings.PasswordStrategyRepository;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/** Reference d01/z11 + mz6.e call-log backup owner. */
public final class CallsBackupRepository {
    private static final String ENTRY_NAME = "call_logs";
    private static final String ARCHIVE_METADATA = "swiftbackup.calls.v3";
    private final Context context;

    public CallsBackupRepository(Context context) {
        this.context = context.getApplicationContext();
    }

    public List<CallLogBackupItem> listLocal() {
        File root = localRoot();
        if (root == null || !root.isDirectory()) return Collections.emptyList();
        File[] files = root.listFiles();
        if (files == null) return Collections.emptyList();
        ArrayList<CallLogBackupItem> result = new ArrayList<>();
        for (File file : files) {
            if (!file.isFile()) continue;
            CallLogBackupItem item = parse(file.getName(), file);
            if (item != null) result.add(item);
        }
        result.sort(Comparator.comparingLong(CallLogBackupItem::getBackupTime).reversed());
        return result;
    }

    public CallLogBackupItem createLocalBackup(List<CallLogItem> calls) throws Exception {
        if (calls == null || calls.isEmpty()) throw new IllegalArgumentException("No call logs selected");
        File root = localRoot();
        if (root == null) throw new IllegalStateException("No selected local storage");
        if (!root.exists() && !root.mkdirs()) throw new IllegalStateException("Cannot create call backup directory");

        long now = System.currentTimeMillis();
        String device = sanitizeDevice(Build.MODEL);
        String fileName = "v3." + now + "." + calls.size() + "." + device + ".cls";
        File output = new File(root, fileName);

        File tempRoot = new File(context.getCacheDir(), "calls_backup");
        if (!tempRoot.exists() && !tempRoot.mkdirs()) throw new IllegalStateException("Cannot create calls cache");
        File source = new File(tempRoot, "call_logs");
        if (source.exists() && !source.delete()) throw new IllegalStateException("Cannot reset calls cache");
        writeWrapper(source, calls);

        char[] passwordChars = referencePassword(context);
        byte[] salt = new byte[16];
        byte[] nonceSeed = new byte[16];
        SecureRandom random = new SecureRandom();
        random.nextBytes(salt);
        random.nextBytes(nonceSeed);

        SbaNativeArchiveBackend backend = new SbaNativeArchiveBackend();
        byte[] key = backend.deriveArgon2id(
                new String(passwordChars), salt, 3, 16384, 1, 32);
        byte[] keyCheck = SbaArchiveCreationExecutor.keyCheck(
                "SBA1-AEGIS256-key-check-v1", key, salt, nonceSeed);
        try {
            SbaArchiveCreationExecutor.Result result = new SbaArchiveCreationExecutor().create(
                    output,
                    ARCHIVE_METADATA.getBytes(StandardCharsets.UTF_8),
                    new byte[][]{ENTRY_NAME.getBytes(StandardCharsets.UTF_8)},
                    new String[]{source.getAbsolutePath()},
                    new int[]{0},
                    new String[][]{null},
                    new String[][]{null},
                    2, 1, 1, 4, 1, 3, 16384, 1, 1048576,
                    1, 32, key, keyCheck, salt, nonceSeed, null);
            if (!result.isSuccess()) {
                if (output.exists()) output.delete();
                throw new IllegalStateException(result.getError());
            }
            return new CallLogBackupItem(fileName, now, calls.size(), device, output);
        } finally {
            Arrays.fill(passwordChars, '\0');
            if (source.exists()) source.delete();
        }
    }

    public boolean deleteAllLocal() {
        File root = localRoot();
        if (root == null || !root.exists()) return true;
        File[] files = root.listFiles();
        if (files == null) return false;
        boolean ok = true;
        for (File file : files) if (file.isFile()) ok &= file.delete();
        return ok;
    }

    public int enforceRetention(int maxBackups) {
        if (maxBackups <= 0) return 0;
        List<CallLogBackupItem> items = listLocal();
        int removed = 0;
        for (int i = maxBackups; i < items.size(); i++) {
            File file = items.get(i).getLocalFile();
            if (file.isFile() && file.delete()) removed++;
        }
        return removed;
    }

    private File localRoot() {
        StorageSelection selection = new LocalStorageCoordinator(
                context, new AndroidStorageInventory(context)).resolveSelection();
        if (selection == null || selection.selected == null) return null;
        return new File(new File(new File(selection.selected.rootPath, "BaRe"), "backups"), "calls/local");
    }

    private static CallLogBackupItem parse(String name, File file) {
        try {
            String[] p = name.split("\\.", -1);
            if (p.length < 5) return null;
            if (!("v3".equals(p[0]) || "v2".equals(p[0]))) return null;
            long time = Long.parseLong(p[1]);
            int count = Integer.parseInt(p[2]);
            return new CallLogBackupItem(name, time, count, p[3], file);
        } catch (RuntimeException ignored) {
            return null;
        }
    }

    private void writeWrapper(File source, List<CallLogItem> calls) throws Exception {
        JSONObject root = new JSONObject();
        JSONArray items = new JSONArray();
        for (CallLogItem call : calls) items.put(toJson(call));
        root.put("items", items);
        try (FileOutputStream out = new FileOutputStream(source)) {
            out.write(root.toString().getBytes(StandardCharsets.UTF_8));
        }
    }

    private static JSONObject toJson(CallLogItem c) throws Exception {
        JSONObject o = new JSONObject();
        put(o, "_id", c.id); put(o, "type", c.type); put(o, "features", c.features);
        put(o, "number", c.number); put(o, "number_presentation", c.numberPresentation);
        put(o, "countryiso", c.countryIso); put(o, "date", c.date); put(o, "duration", c.duration);
        put(o, "data_usage", c.dataUsage); put(o, "new", c.newCall); put(o, "name", c.name);
        put(o, "numbertype", c.numberType); put(o, "voicemail_uri", c.voiceMailUri);
        put(o, "is_read", c.isRead); put(o, "geocoded_location", c.geoCodedLocation);
        put(o, "lookup_uri", c.lookupUri); put(o, "matched_number", c.matchedNumber);
        put(o, "normalized_number", c.normalizedNumber); put(o, "photo_id", c.photoId);
        put(o, "photo_uri", c.photoUri); put(o, "formatted_number", c.formattedNumber);
        put(o, "phone_account_component_name", c.phoneAccountComponentName);
        put(o, "subscription_id", c.phoneAccountId); put(o, "sourceSimSlotIndex", c.sourceSimSlotIndex);
        return o;
    }

    private static void put(JSONObject o, String key, Object value) throws Exception {
        if (value != null) o.put(key, value);
    }

    public static char[] referencePassword(Context context) {
        String uid = new AnonymousIdentityStore(context).getOrCreateUid();
        String base = referenceHash(new StringBuilder(uid).reverse().toString());
        PasswordStrategyRepository repo = new PasswordStrategyRepository(
                new PreferenceSecureLocalState(context));
        if (repo.read() == PasswordStrategy.USER_PASSWORD) {
            String user = repo.readUserPassword();
            if (user != null && !user.isEmpty()) base += referenceHash(user);
        }
        return base.toCharArray();
    }

    static String referenceHash(String value) {
        byte[] bytes = value.getBytes(StandardCharsets.UTF_8);
        int length = bytes.length & -16;
        long h1 = 0L, h2 = 0L;
        for (int i = 0; i < length; i += 16) {
            long v1 = littleEndianLong(bytes, i), v2 = littleEndianLong(bytes, i + 8);
            long r1 = (Long.rotateLeft((Long.rotateLeft(v1 * -8663945395140668459L, 31)
                    * 5545529020109919103L) ^ h1, 27) + h2) * 5 + 1390208809L;
            long r2 = (Long.rotateLeft((Long.rotateLeft(v2 * 5545529020109919103L, 33)
                    * -8663945395140668459L) ^ h2, 31) + r1) * 5 + 944331445L;
            h1 = r1; h2 = r2;
        }
        int tail = bytes.length - length;
        long k1 = 0L, k2 = 0L;
        for (int i = 0; i < Math.min(tail, 8); i++) k1 |= ((long) bytes[length+i] & 255L) << (i*8);
        for (int i = 8; i < tail; i++) k2 |= ((long) bytes[length+i] & 255L) << ((i-8)*8);
        if (tail > 8) h2 ^= Long.rotateLeft(k2 * 5545529020109919103L, 33) * -8663945395140668459L;
        if (tail > 0) h1 ^= Long.rotateLeft(k1 * -8663945395140668459L, 31) * 5545529020109919103L;
        long l1 = bytes.length ^ h1, l2 = bytes.length ^ h2, sum = l1+l2, sum2 = l2+sum;
        long x=(sum^(sum>>>33))*-49064778989728563L; x=(x^(x>>>33))*-4265267296055464877L;
        long y=(sum2^(sum2>>>33))*-49064778989728563L; y=(y^(y>>>33))*-4265267296055464877L;
        long fy=y^(y>>>33), fx=(x^(x>>>33))+fy;
        return String.format(java.util.Locale.ROOT, "%016x%016x", fy+fx, fx);
    }

    private static long littleEndianLong(byte[] bytes, int offset) {
        long value=0L; for(int i=0;i<8;i++) value|=((long)bytes[offset+i]&255L)<<(i*8); return value;
    }

    private static String sanitizeDevice(String value) {
        if (value == null || value.isEmpty()) value = "bare";
        return value.replaceAll("[.#$\\[\\]]", "").replace("/", "");
    }

    private static final class PreferenceSecureLocalState implements SecureLocalState {
        private final android.content.SharedPreferences prefs;
        PreferenceSecureLocalState(Context context) {
            prefs=context.getSharedPreferences(context.getPackageName()+"_preferences", Context.MODE_PRIVATE);
        }
        public boolean contains(String k){return prefs.contains(k);}
        public boolean getBoolean(String k,boolean d){return prefs.getBoolean(k,d);}
        public void putBoolean(String k,boolean v){prefs.edit().putBoolean(k,v).apply();}
        public int getInt(String k,int d){return prefs.getInt(k,d);}
        public void putInt(String k,int v){prefs.edit().putInt(k,v).apply();}
        public void putString(String k,String v){prefs.edit().putString(k,v).apply();}
        public String getString(String k,String d){return prefs.getString(k,d);}
        public void remove(String k){prefs.edit().remove(k).apply();}
    }
}
