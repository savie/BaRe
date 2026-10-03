package com.bare.home.repository;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;

import java.nio.charset.StandardCharsets;

/** Reference b45/d45-compatible local anonymous identity. */
public final class AnonymousIdentityStore {
    private static final String PREFS = "bare_anonymous_identity";
    private static final String KEY_UID = "uid";
    private static final String KEY_MIGRATING = "is_migrating_to_google_sign_in";

    private final Context context;
    private final SharedPreferences preferences;

    public AnonymousIdentityStore(Context context) {
        if (context == null) throw new IllegalArgumentException("Context is required.");
        this.context = context.getApplicationContext();
        this.preferences = this.context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public String getOrCreateUid() {
        String stored = getStoredUid();
        if (stored != null) return stored;
        String uid = deriveUidFromSigningSignature();
        preferences.edit().putString(KEY_UID, uid).apply();
        return uid;
    }

    public String getStoredUid() {
        String value = preferences.getString(KEY_UID, null);
        return value == null || value.isEmpty() ? null : value;
    }

    public void clear() {
        preferences.edit().remove(KEY_UID).remove(KEY_MIGRATING).apply();
    }

    public boolean isMigratingToGoogle() {
        return preferences.getBoolean(KEY_MIGRATING, false);
    }

    public void setMigratingToGoogle(boolean migrating) {
        preferences.edit().putBoolean(KEY_MIGRATING, migrating).apply();
    }

    private String deriveUidFromSigningSignature() {
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo info;
            Signature signature = null;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                info = pm.getPackageInfo(
                        context.getPackageName(),
                        PackageManager.GET_SIGNING_CERTIFICATES);
                if (info.signingInfo != null) {
                    Signature[] signatures = info.signingInfo.hasMultipleSigners()
                            ? info.signingInfo.getApkContentsSigners()
                            : info.signingInfo.getSigningCertificateHistory();
                    if (signatures != null && signatures.length > 0) signature = signatures[0];
                }
            } else {
                info = pm.getPackageInfo(
                        context.getPackageName(),
                        PackageManager.GET_SIGNATURES);
                if (info.signatures != null && info.signatures.length > 0) signature = info.signatures[0];
            }
            if (signature == null) throw new IllegalStateException("App signing identity is unavailable.");
            return new StringBuilder(murmurHash128(
                    Integer.toString(signature.hashCode()).getBytes(StandardCharsets.UTF_8)))
                    .reverse().toString();
        } catch (PackageManager.NameNotFoundException | SecurityException e) {
            throw new IllegalStateException("Unable to read app signing identity.", e);
        }
    }

    /** Reference sz8.E(): MurmurHash3 x64 128-bit, seed 0, rendered as 32 hex chars. */
    private String murmurHash128(byte[] data) {
        final long c1 = 0x87c37b91114253d5L;
        final long c2 = 0x4cf5ad432745937fL;
        long h1 = 0L, h2 = 0L;
        int blocks = data.length & ~15;

        for (int i = 0; i < blocks; i += 16) {
            long k1 = littleEndianLong(data, i);
            long k2 = littleEndianLong(data, i + 8);
            k1 *= c1; k1 = Long.rotateLeft(k1, 31); k1 *= c2; h1 ^= k1;
            h1 = Long.rotateLeft(h1, 27); h1 += h2; h1 = h1 * 5 + 0x52dce729L;
            k2 *= c2; k2 = Long.rotateLeft(k2, 33); k2 *= c1; h2 ^= k2;
            h2 = Long.rotateLeft(h2, 31); h2 += h1; h2 = h2 * 5 + 0x38495ab5L;
        }

        long k1 = 0L, k2 = 0L;
        int tail = blocks;
        switch (data.length & 15) {
            case 15: k2 ^= ((long) data[tail + 14] & 0xff) << 48;
            case 14: k2 ^= ((long) data[tail + 13] & 0xff) << 40;
            case 13: k2 ^= ((long) data[tail + 12] & 0xff) << 32;
            case 12: k2 ^= ((long) data[tail + 11] & 0xff) << 24;
            case 11: k2 ^= ((long) data[tail + 10] & 0xff) << 16;
            case 10: k2 ^= ((long) data[tail + 9] & 0xff) << 8;
            case 9: k2 ^= ((long) data[tail + 8] & 0xff); k2 *= c2; k2 = Long.rotateLeft(k2, 33); k2 *= c1; h2 ^= k2;
            case 8: k1 ^= ((long) data[tail + 7] & 0xff) << 56;
            case 7: k1 ^= ((long) data[tail + 6] & 0xff) << 48;
            case 6: k1 ^= ((long) data[tail + 5] & 0xff) << 40;
            case 5: k1 ^= ((long) data[tail + 4] & 0xff) << 32;
            case 4: k1 ^= ((long) data[tail + 3] & 0xff) << 24;
            case 3: k1 ^= ((long) data[tail + 2] & 0xff) << 16;
            case 2: k1 ^= ((long) data[tail + 1] & 0xff) << 8;
            case 1: k1 ^= ((long) data[tail] & 0xff); k1 *= c1; k1 = Long.rotateLeft(k1, 31); k1 *= c2; h1 ^= k1;
        }

        h1 ^= data.length; h2 ^= data.length; h1 += h2; h2 += h1;
        h1 = fmix(h1); h2 = fmix(h2); h1 += h2; h2 += h1;
        return String.format(java.util.Locale.ROOT, "%016x%016x", h1, h2);
    }

    private long littleEndianLong(byte[] data, int offset) {
        long value = 0L;
        for (int i = 0; i < 8; i++) value |= ((long) data[offset + i] & 0xffL) << (i * 8);
        return value;
    }

    private long fmix(long value) {
        value ^= value >>> 33;
        value *= 0xff51afd7ed558ccdl;
        value ^= value >>> 33;
        value *= 0xc4ceb9fe1a85ec53L;
        return value ^ (value >>> 33);
    }
}
