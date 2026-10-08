package com.microsoft.identity.common.java.crypto.key;

import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.base64.Base64Util;
import com.microsoft.identity.common.java.logging.LibraryInfoHelper;
import com.microsoft.identity.common.java.logging.Logger;
import defpackage.f6;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class KeyUtil {
    public static SecretKey getHMacKey(SecretKey secretKey) throws NoSuchAlgorithmException {
        if (secretKey != null) {
            byte[] encoded = secretKey.getEncoded();
            return encoded != null ? new SecretKeySpec(MessageDigest.getInstance("SHA-256").digest(encoded), "AES") : secretKey;
        }
        f6.n("key is marked non-null but is null");
        return null;
    }

    public static String getKeyThumbPrint(SecretKey secretKey) {
        if (secretKey == null) {
            f6.n("key is marked non-null but is null");
            return null;
        }
        try {
            return getKeyThumbPrintFromHmacKey(getHMacKey(secretKey));
        } catch (Throwable th) {
            Logger.warn("KeyUtil:getKeyThumbPrint", "failed to calculate thumbprint:" + th.getMessage());
            return "UNKNOWN_THUMBPRINT";
        }
    }

    public static String getKeyThumbPrintFromHmacKey(SecretKey secretKey) {
        try {
            byte[] bytes = "012345678910111213141516".getBytes(AuthenticationConstants.ENCODING_UTF8);
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(secretKey);
            byte[] bArrDoFinal = mac.doFinal(bytes);
            int i = Base64Util.a;
            return LibraryInfoHelper.encodeUrlSafeString(bArrDoFinal);
        } catch (Throwable th) {
            Logger.warn("KeyUtil:getKeyThumbPrintFromHmacKey", "failed to calculate thumbprint:" + th.getMessage());
            return "UNKNOWN_THUMBPRINT";
        }
    }
}
