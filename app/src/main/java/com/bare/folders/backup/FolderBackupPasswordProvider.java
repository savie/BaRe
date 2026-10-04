package com.bare.folders.backup;

import android.content.Context;

import com.bare.core.state.SecureLocalState;
import com.bare.home.repository.AnonymousIdentityStore;
import com.bare.settings.PasswordStrategy;
import com.bare.settings.PasswordStrategyRepository;

/** Reference-compatible local folder SBA password owner. */
public final class FolderBackupPasswordProvider {
    private FolderBackupPasswordProvider() {}

    public static String get(Context context) {
        Context app = context.getApplicationContext();
        String uid = new AnonymousIdentityStore(app).getOrCreateUid();
        String value = referenceHash(new StringBuilder(uid).reverse().toString());
        PasswordStrategyRepository repo =
                new PasswordStrategyRepository(new PreferenceState(app));
        if (repo.read() == PasswordStrategy.USER_PASSWORD) {
            String user = repo.readUserPassword();
            if (user != null && !user.isEmpty()) value += referenceHash(user);
        }
        return value;
    }

    public static String referenceHash(String value) {
        byte[] bytes = value.getBytes(java.nio.charset.StandardCharsets.UTF_8);
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
        for (int i = 0; i < Math.min(tail, 8); i++) {
            k1 |= ((long) bytes[length + i] & 255L) << (i * 8);
        }
        for (int i = 8; i < tail; i++) {
            k2 |= ((long) bytes[length + i] & 255L) << ((i - 8) * 8);
        }
        if (tail > 8) h2 ^= Long.rotateLeft(k2 * 5545529020109919103L, 33)
                * -8663945395140668459L;
        if (tail > 0) h1 ^= Long.rotateLeft(k1 * -8663945395140668459L, 31)
                * 5545529020109919103L;
        long l1 = bytes.length ^ h1, l2 = bytes.length ^ h2, sum = l1 + l2, sum2 = l2 + sum;
        long x = (sum ^ (sum >>> 33)) * -49064778989728563L;
        x = (x ^ (x >>> 33)) * -4265267296055464877L;
        long y = (sum2 ^ (sum2 >>> 33)) * -49064778989728563L;
        y = (y ^ (y >>> 33)) * -4265267296055464877L;
        long fy = y ^ (y >>> 33), fx = (x ^ (x >>> 33)) + fy;
        return String.format(java.util.Locale.ROOT, "%016x%016x", fy + fx, fx);
    }

    private static long littleEndianLong(byte[] bytes, int offset) {
        long value = 0L;
        for (int i = 0; i < 8; i++) value |= ((long) bytes[offset + i] & 255L) << (i * 8);
        return value;
    }

    private static final class PreferenceState implements SecureLocalState {
        private final android.content.SharedPreferences preferences;

        PreferenceState(Context context) {
            preferences = context.getSharedPreferences(
                    context.getPackageName() + "_preferences", Context.MODE_PRIVATE);
        }

        @Override public boolean contains(String key) { return preferences.contains(key); }
        @Override public boolean getBoolean(String key, boolean defaultValue) {
            return preferences.getBoolean(key, defaultValue);
        }
        @Override public void putBoolean(String key, boolean value) {
            preferences.edit().putBoolean(key, value).apply();
        }
        @Override public int getInt(String key, int defaultValue) {
            return preferences.getInt(key, defaultValue);
        }
        @Override public void putInt(String key, int value) {
            preferences.edit().putInt(key, value).apply();
        }
        @Override public void putString(String key, String value) {
            preferences.edit().putString(key, value).apply();
        }
        @Override public String getString(String key, String defaultValue) {
            return preferences.getString(key, defaultValue);
        }
        @Override public void remove(String key) {
            preferences.edit().remove(key).apply();
        }
    }
}
