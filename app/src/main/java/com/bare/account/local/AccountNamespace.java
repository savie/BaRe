package com.bare.account.local;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Deterministic local account namespace derived from the backend UID.
 *
 * Reference qy5.e(uid) computes lowercase MD5(UTF-8(uid)) and keeps the
 * first half, producing a 16-character account directory key.
 *
 * This is local filesystem identity only; it is not a backend/Supabase key.
 */
public final class AccountNamespace {
    private AccountNamespace() {}

    public static String keyForUid(String uid) {
        if (uid == null || uid.isEmpty()) {
            throw new IllegalArgumentException("uid");
        }

        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] digest = md.digest(uid.getBytes(StandardCharsets.UTF_8));
            StringBuilder hex = new StringBuilder(digest.length * 2);
            for (byte value : digest) {
                hex.append(Character.forDigit((value >>> 4) & 0x0f, 16));
                hex.append(Character.forDigit(value & 0x0f, 16));
            }
            return hex.substring(0, 16);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError("MD5 is required by the platform", e);
        }
    }

    public static String relativePathForUid(String uid) {
        return "accounts/" + keyForUid(uid);
    }
}
