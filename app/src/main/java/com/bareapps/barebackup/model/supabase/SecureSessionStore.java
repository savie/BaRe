package com.bareapps.barebackup.model.supabase;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;

import java.nio.charset.StandardCharsets;
import java.security.KeyStore;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/** Small Android-Keystore-backed store for Supabase session material. */
public final class SecureSessionStore {
    private static final String PREFS = "bare_supabase_secure_session";
    private static final String KEY_ALIAS = "bare_supabase_session_v1";
    private final SharedPreferences prefs;
    private final SecretKey key;
    private final String keyAlias;

    public SecureSessionStore(Context context) throws Exception {
        this(context, PREFS, KEY_ALIAS);
    }

    public SecureSessionStore(Context context, String preferencesName, String keyAlias) throws Exception {
        if (preferencesName == null || preferencesName.trim().isEmpty()
                || keyAlias == null || keyAlias.trim().isEmpty()) {
            throw new IllegalArgumentException("Preferences name and keystore alias are required");
        }
        this.keyAlias = keyAlias;
        prefs = context.getApplicationContext().getSharedPreferences(preferencesName, Context.MODE_PRIVATE);
        KeyStore store = KeyStore.getInstance("AndroidKeyStore");
        store.load(null);
        if (!store.containsAlias(this.keyAlias)) {
            KeyGenerator generator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            generator.init(new android.security.keystore.KeyGenParameterSpec.Builder(this.keyAlias,
                    android.security.keystore.KeyProperties.PURPOSE_ENCRYPT
                            | android.security.keystore.KeyProperties.PURPOSE_DECRYPT)
                    .setBlockModes(android.security.keystore.KeyProperties.BLOCK_MODE_GCM)
                    .setEncryptionPaddings(android.security.keystore.KeyProperties.ENCRYPTION_PADDING_NONE)
                    .setRandomizedEncryptionRequired(true).build());
            generator.generateKey();
            store.load(null);
        }
        key = (SecretKey) store.getKey(this.keyAlias, null);
    }

    public synchronized void put(String name, String value) throws Exception {
        if (value == null) {
            prefs.edit().remove(name).apply();
            return;
        }
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.ENCRYPT_MODE, key);
        byte[] encrypted = cipher.doFinal(value.getBytes(StandardCharsets.UTF_8));
        byte[] iv = cipher.getIV();
        byte[] packed = new byte[iv.length + encrypted.length];
        System.arraycopy(iv, 0, packed, 0, iv.length);
        System.arraycopy(encrypted, 0, packed, iv.length, encrypted.length);
        prefs.edit().putString(name, Base64.encodeToString(packed, Base64.NO_WRAP)).apply();
    }

    public synchronized String get(String name) throws Exception {
        String encoded = prefs.getString(name, null);
        if (encoded == null) return null;
        byte[] packed = Base64.decode(encoded, Base64.NO_WRAP);
        if (packed.length < 13) throw new IllegalStateException("Stored session is invalid");
        byte[] iv = new byte[12];
        byte[] ciphertext = new byte[packed.length - iv.length];
        System.arraycopy(packed, 0, iv, 0, iv.length);
        System.arraycopy(packed, iv.length, ciphertext, 0, ciphertext.length);
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(Cipher.DECRYPT_MODE, key, new GCMParameterSpec(128, iv));
        return new String(cipher.doFinal(ciphertext), StandardCharsets.UTF_8);
    }

    public synchronized void clear() {
        prefs.edit().clear().apply();
    }
}
