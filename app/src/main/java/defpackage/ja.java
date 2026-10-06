package defpackage;

import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ja {
    public static final AtomicBoolean a = new AtomicBoolean(false);

    public static String a(ga gaVar, ia iaVar) throws GeneralSecurityException {
        byte[] bArr = gaVar.b;
        byte[] bArr2 = gaVar.a;
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        SecretKeySpec secretKeySpec = iaVar.b;
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKeySpec);
        byte[] bArrDoFinal = mac.doFinal(bArr3);
        byte[] bArr4 = gaVar.c;
        if (bArrDoFinal.length == bArr4.length) {
            int i = 0;
            for (int i2 = 0; i2 < bArrDoFinal.length; i2++) {
                i |= bArrDoFinal[i2] ^ bArr4[i2];
            }
            if (i == 0) {
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                cipher.init(2, iaVar.a, new IvParameterSpec(bArr));
                return new String(cipher.doFinal(bArr2), "UTF-8");
            }
        }
        m0.h("MAC stored in civ does not match computed MAC.");
        return null;
    }

    public static ga b(String str, ia iaVar) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        byte[] bytes = str.getBytes("UTF-8");
        c();
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(1, iaVar.a, new IvParameterSpec(bArr));
        byte[] iv = cipher.getIV();
        byte[] bArrDoFinal = cipher.doFinal(bytes);
        byte[] bArr2 = new byte[iv.length + bArrDoFinal.length];
        System.arraycopy(iv, 0, bArr2, 0, iv.length);
        System.arraycopy(bArrDoFinal, 0, bArr2, iv.length, bArrDoFinal.length);
        SecretKeySpec secretKeySpec = iaVar.b;
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKeySpec);
        return new ga(bArrDoFinal, iv, mac.doFinal(bArr2));
    }

    public static void c() {
        AtomicBoolean atomicBoolean = a;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (ha.class) {
            try {
                if (!atomicBoolean.get()) {
                    int i = ha.a;
                    atomicBoolean.set(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ia d(String str, byte[] bArr) {
        c();
        byte[] encoded = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(str.toCharArray(), bArr, yr5.p, 384)).getEncoded();
        byte[] bArr2 = new byte[16];
        System.arraycopy(encoded, 0, bArr2, 0, 16);
        byte[] bArr3 = new byte[32];
        System.arraycopy(encoded, 16, bArr3, 0, 32);
        return new ia(new SecretKeySpec(bArr2, "AES"), new SecretKeySpec(bArr3, "HmacSHA256"));
    }

    public static ia e(String str) throws InvalidKeyException {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length != 2) {
            c6.f("Cannot parse aesKey:hmacKey");
            return null;
        }
        byte[] bArrDecode = Base64.decode(strArrSplit[0], 2);
        if (bArrDecode.length != 16) {
            d6.f("Base64 decoded key is not 128 bytes");
            return null;
        }
        byte[] bArrDecode2 = Base64.decode(strArrSplit[1], 2);
        if (bArrDecode2.length == 32) {
            return new ia(new SecretKeySpec(bArrDecode, 0, bArrDecode.length, "AES"), new SecretKeySpec(bArrDecode2, "HmacSHA256"));
        }
        d6.f("Base64 decoded key is not 256 bytes");
        return null;
    }
}
