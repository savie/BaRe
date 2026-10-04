package com.bare.messagescalls.restore;

import android.content.Context;
import com.bare.home.repository.AnonymousIdentityStore;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/** Exact Reference w14 -> y32 -> x32 legacy JSON crypto boundary. */
public final class ReferenceLegacyCallLogCrypto {
    private static final byte VERSION = 1, CIPHER_ID = 2;
    private static final byte[] ENTITY = "SwiftBackup_Entity".getBytes(StandardCharsets.UTF_8);
    private static final int IV_LENGTH = 12, TAG_LENGTH = 16;

    private ReferenceLegacyCallLogCrypto() {}

    public static byte[] decrypt(Context context, byte[] encoded) throws IOException {
        if (encoded == null || encoded.length < 30) throw new IOException("Legacy payload too short");
        if (encoded[0] != VERSION) throw new IOException("Unexpected crypto version " + encoded[0]);
        if (encoded[1] != CIPHER_ID) throw new IOException("Unexpected cipher ID " + encoded[1]);

        byte[] key = keyForUid(new AnonymousIdentityStore(context).getOrCreateUid());
        byte[] iv = Arrays.copyOfRange(encoded, 2, 14);
        byte[] aad = aad();
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key, "AES"),
                    new GCMParameterSpec(TAG_LENGTH * 8, iv));
            cipher.updateAAD(aad);
            return cipher.doFinal(encoded, 14, encoded.length - 14);
        } catch (Exception e) {
            throw new IOException("Legacy call-log authentication/decryption failed", e);
        } finally {
            Arrays.fill(key, (byte) 0);
            Arrays.fill(iv, (byte) 0);
            Arrays.fill(aad, (byte) 0);
        }
    }

    private static byte[] keyForUid(String uid) {
        if (uid == null) uid = "";
        if (uid.length() < 32) {
            if (uid.isEmpty()) throw new IllegalArgumentException("Reference UID is empty");
            uid = uid.concat(uid.substring(0, 32 - uid.length()));
        } else if (uid.length() > 32) {
            uid = uid.substring(0, 32);
        }
        return uid.getBytes(StandardCharsets.UTF_8);
    }

    private static byte[] aad() {
        byte[] aad = new byte[2 + ENTITY.length];
        aad[0] = VERSION; aad[1] = CIPHER_ID;
        System.arraycopy(ENTITY, 0, aad, 2, ENTITY.length);
        return aad;
    }
}
