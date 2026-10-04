package com.bare.wifi;

import android.content.Context;
import android.os.Environment;

import com.bare.account.local.AccountNamespace;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.storage.AndroidStorageInventory;
import com.bare.storage.LocalStorageCoordinator;
import com.bare.storage.StorageSelection;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/** Reference w14/y32-compatible reader for the encrypted local Wi-Fi artifact. */
public final class WifiLocalEncryptedRepository {
    private static final String FILE_NAME = "wifi_networks.wfi";
    private static final byte VERSION = 1;
    private static final byte CIPHER_ID = 2;
    private static final byte[] ENTITY_AAD = new byte[]{
            0x53, 0x77, 0x69, 0x66, 0x74, 0x42, 0x61, 0x63, 0x6b, 0x75, 0x70,
            0x5f, 0x45, 0x6e, 0x74, 0x69, 0x74, 0x79
    };

    private final Context context;
    public WifiLocalEncryptedRepository(Context context) { this.context = context.getApplicationContext(); }

    public Result read() {
        try {
            String uid = new AnonymousIdentityStore(context).getOrCreateUid();
            File file = artifactFile(resolveStorageRoot(), uid);
            if (!file.isFile()) return Result.success(Collections.emptyList());

            byte[] encrypted = Files.readAllBytes(file.toPath());
            if (encrypted.length < 30 || encrypted[0] != VERSION || encrypted[1] != CIPHER_ID) {
                return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
            }
            byte[] iv = new byte[12];
            System.arraycopy(encrypted, 2, iv, 0, iv.length);
            byte[] ciphertextAndTag = new byte[encrypted.length - 14];
            System.arraycopy(encrypted, 14, ciphertextAndTag, 0, ciphertextAndTag.length);

            byte[] aad = new byte[2 + ENTITY_AAD.length];
            aad[0] = VERSION; aad[1] = CIPHER_ID;
            System.arraycopy(ENTITY_AAD, 0, aad, 2, ENTITY_AAD.length);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(uidKey(uid), "AES"), new GCMParameterSpec(128, iv));
            cipher.updateAAD(aad);
            return Result.success(parse(cipher.doFinal(ciphertextAndTag)));
        } catch (GeneralSecurityException | java.io.IOException | RuntimeException e) {
            return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
        }
    }

    public Result write(List<WifiCredentialState> items) {
        if (items == null) return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
        try {
            String uid = new AnonymousIdentityStore(context).getOrCreateUid();
            File file = artifactFile(resolveStorageRoot(), uid);
            File parent = file.getParentFile();
            if (parent != null && !parent.exists() && !parent.mkdirs()) {
                return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
            }

            JSONObject root = new JSONObject();
            JSONArray array = new JSONArray();
            for (WifiCredentialState item : items) {
                if (item == null || item.getSsid() == null || item.getSsid().isEmpty()) continue;
                JSONObject value = new JSONObject();
                value.put("SSID", item.getSsid());
                value.put("preSharedKey", item.getCredential());
                value.put("hiddenSSID", item.isHiddenSsid());
                value.put("allowedKeyManagement", bitSetForWrite(item.getAllowedKeyManagement()));
                value.put("allowedProtocols", bitSetForWrite(item.getAllowedProtocols()));
                value.put("allowedPairwiseCiphers", bitSetForWrite(item.getAllowedPairwiseCiphers()));
                value.put("allowedGroupCiphers", bitSetForWrite(item.getAllowedGroupCiphers()));

                JSONObject passwordInfo = new JSONObject();
                putNullable(passwordInfo, "entEapMethod", item.getEapMethod());
                putNullable(passwordInfo, "entPhase2Method", item.getPhase2Method());
                putNullable(passwordInfo, "entIdentity", item.getIdentity());
                putNullable(passwordInfo, "entAnonIdentity", item.getAnonymousIdentity());
                putNullable(passwordInfo, "entPassword", item.getEnterprisePassword());
                putNullable(passwordInfo, "entCaCert", item.getCaCertificate());
                value.put("passwordInfo", passwordInfo);
                array.put(value);
            }
            root.put("items", array);

            byte[] plaintext = root.toString().getBytes(StandardCharsets.UTF_8);
            byte[] iv = new byte[12];
            new java.security.SecureRandom().nextBytes(iv);
            byte[] aad = new byte[2 + ENTITY_AAD.length];
            aad[0] = VERSION;
            aad[1] = CIPHER_ID;
            System.arraycopy(ENTITY_AAD, 0, aad, 2, ENTITY_AAD.length);

            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(uidKey(uid), "AES"),
                    new GCMParameterSpec(128, iv));
            cipher.updateAAD(aad);
            byte[] ciphertextAndTag = cipher.doFinal(plaintext);

            byte[] envelope = new byte[2 + iv.length + ciphertextAndTag.length];
            envelope[0] = VERSION;
            envelope[1] = CIPHER_ID;
            System.arraycopy(iv, 0, envelope, 2, iv.length);
            System.arraycopy(ciphertextAndTag, 0, envelope, 14, ciphertextAndTag.length);
            Files.write(file.toPath(), envelope);
            return Result.success(Collections.unmodifiableList(new ArrayList<>(items)));
        } catch (GeneralSecurityException | java.io.IOException | RuntimeException e) {
            return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
        }
    }

    public boolean delete() {
        try {
            String uid = new AnonymousIdentityStore(context).getOrCreateUid();
            return !artifactFile(resolveStorageRoot(), uid).exists()
                    || artifactFile(resolveStorageRoot(), uid).delete();
        } catch (RuntimeException ignored) {
            return false;
        }
    }

    private File artifactFile(File storageRoot, String uid) {
        return new File(new File(new File(new File(new File(storageRoot, "BΛR☰"), "accounts"),
                AccountNamespace.keyForUid(uid)), "backups/wifi/local"), FILE_NAME);
    }

    private static void putNullable(JSONObject object, String key, String value) {
        try { object.put(key, value == null ? JSONObject.NULL : value); }
        catch (Exception e) { throw new IllegalStateException(e); }
    }

    private static JSONArray bitSetForWrite(BitSet value) {
        JSONArray array = new JSONArray();
        if (value == null) return array;
        for (int i = 0; i < value.length(); i++) array.put(value.get(i) ? 1 : 0);
        return array;
    }

    private File resolveStorageRoot() {
        StorageSelection selection = new LocalStorageCoordinator(context, new AndroidStorageInventory(context)).resolveSelection();
        if (selection != null && selection.selected != null) return new File(selection.selected.rootPath);
        return Environment.getExternalStorageDirectory();
    }

    private static byte[] uidKey(String uid) {
        byte[] raw = uid.getBytes(StandardCharsets.UTF_8);
        byte[] key = new byte[32];
        if (raw.length >= 32) System.arraycopy(raw, 0, key, 0, 32);
        else { System.arraycopy(raw, 0, key, 0, raw.length); System.arraycopy(raw, 0, key, raw.length, 32 - raw.length); }
        return key;
    }

    static List<WifiCredentialState> parse(byte[] plaintext) throws Exception {
        JSONObject root = new JSONObject(new String(plaintext, StandardCharsets.UTF_8));
        JSONArray items = root.optJSONArray("items");
        if (items == null) return Collections.emptyList();
        List<WifiCredentialState> result = new ArrayList<>(items.length());
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.optJSONObject(i);
            if (item == null) continue;
            String ssid = item.optString("SSID", null);
            if (ssid == null || ssid.isEmpty()) continue;
            JSONObject info = item.optJSONObject("passwordInfo");
            result.add(new WifiCredentialState(
                    ssid,
                    item.optString("preSharedKey", ""),
                    true,
                    item.optBoolean("hiddenSSID", false),
                    bitSet(item.optJSONArray("allowedKeyManagement")),
                    bitSet(item.optJSONArray("allowedProtocols")),
                    bitSet(item.optJSONArray("allowedPairwiseCiphers")),
                    bitSet(item.optJSONArray("allowedGroupCiphers")),
                    nullable(info, "entEapMethod"), nullable(info, "entPhase2Method"),
                    nullable(info, "entIdentity"), nullable(info, "entAnonIdentity"),
                    nullable(info, "entPassword"), nullable(info, "entCaCert")));
        }
        return Collections.unmodifiableList(result);
    }

    private static String nullable(JSONObject object, String key) {
        return object != null && object.has(key) && !object.isNull(key) ? object.optString(key, null) : null;
    }

    private static BitSet bitSet(JSONArray array) {
        if (array == null) return null;
        BitSet result = new BitSet();
        boolean positional = true;
        for (int i = 0; i < array.length(); i++) {
            int value = array.optInt(i, -1);
            if (value != 0 && value != 1) { positional = false; break; }
        }
        if (positional) {
            for (int i = 0; i < array.length(); i++) if (array.optInt(i, 0) != 0) result.set(i);
        } else {
            for (int i = 0; i < array.length(); i++) {
                int index = array.optInt(i, -1);
                if (index >= 0) result.set(index);
            }
        }
        return result;
    }

    public static final class Result {
        private final List<WifiCredentialState> items;
        private final WifiAccessContract.Failure failure;
        private Result(List<WifiCredentialState> items, WifiAccessContract.Failure failure) { this.items = items; this.failure = failure; }
        public static Result success(List<WifiCredentialState> items) { return new Result(Collections.unmodifiableList(new ArrayList<>(items)), WifiAccessContract.Failure.NONE); }
        public static Result failure(WifiAccessContract.Failure failure) { return new Result(Collections.emptyList(), failure); }
        public List<WifiCredentialState> getItems() { return items; }
        public WifiAccessContract.Failure getFailure() { return failure; }
        public boolean isSuccess() { return failure == WifiAccessContract.Failure.NONE; }
    }
}
