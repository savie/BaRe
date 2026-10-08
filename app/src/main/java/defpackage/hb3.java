package defpackage;

import java.nio.charset.Charset;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Locale;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
import org.swiftapps.swiftbackup.cloud.protocols.filen.FilenSession;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class hb3 {
    public static final byte[] a;

    static {
        byte[] bytes = "Salted__".getBytes(f51.d);
        bytes.getClass();
        a = bytes;
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        if (bArr2.length != 32) {
            c6.f("Filen AES keys must be 256 bits");
            return null;
        }
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(i, new SecretKeySpec(bArr2, "AES"), new GCMParameterSpec(128, bArr3));
        byte[] bArrDoFinal = cipher.doFinal(bArr);
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr.length < 28) {
            c6.f("Encrypted Filen chunk is too short");
            return null;
        }
        try {
            return a(x50.k0(bArr, 12, bArr.length), bArr2, 2, x50.k0(bArr, 0, 12));
        } catch (AEADBadTagException e) {
            throw new SecurityException("Filen data authentication failed", e);
        }
    }

    public static String c(String str, byte[] bArr) {
        str.getClass();
        bArr.getClass();
        if (!uq7.V(str, "U2FsdGVk", false)) {
            if (uq7.V(str, "002", false)) {
                if (!uq7.V(str, "002", false) || str.length() < 15) {
                    c6.f("Unsupported Filen metadata format");
                    return null;
                }
                byte[] bytes = str.substring(3, 15).getBytes(f51.e);
                bytes.getClass();
                byte[] bArrDecode = Base64.getDecoder().decode(str.substring(15));
                bArrDecode.getClass();
                Charset charset = f51.a;
                try {
                    return new String(a(bArrDecode, s(new String(bArr, charset), bArr, 1, 32), 2, bytes), charset);
                } catch (AEADBadTagException e) {
                    throw new SecurityException("Filen data authentication failed", e);
                }
            }
            if (!uq7.V(str, "003", false)) {
                c6.f("Unsupported Filen metadata format");
                return null;
            }
            if (!uq7.V(str, "003", false) || str.length() < 27) {
                c6.f("Unsupported Filen metadata format");
                return null;
            }
            byte[] bArrQ = q(str.substring(3, 27));
            byte[] bArrDecode2 = Base64.getDecoder().decode(str.substring(27));
            bArrDecode2.getClass();
            try {
                return new String(a(bArrDecode2, r(bArr), 2, bArrQ), f51.a);
            } catch (AEADBadTagException e2) {
                throw new SecurityException("Filen data authentication failed", e2);
            }
        }
        byte[] bArrDecode3 = Base64.getDecoder().decode(str);
        int length = bArrDecode3.length;
        byte[] bArr2 = a;
        if (length < bArr2.length + 24) {
            c6.f("Invalid Filen legacy metadata length");
            return null;
        }
        if (!Arrays.equals(x50.k0(bArrDecode3, 0, bArr2.length), bArr2)) {
            c6.f("Invalid Filen legacy metadata header");
            return null;
        }
        int length2 = bArr2.length;
        int i = length2 + 8;
        byte[] bArrK0 = x50.k0(bArrDecode3, length2, i);
        byte[] bArrK1 = x50.k0(bArrDecode3, i, bArrDecode3.length);
        if (bArrK1.length % 16 != 0) {
            c6.f("Invalid Filen legacy ciphertext length");
            return null;
        }
        byte[] bArr3 = new byte[48];
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bArrDigest = new byte[0];
        int i2 = 0;
        while (i2 < 48) {
            messageDigest.reset();
            messageDigest.update(bArrDigest);
            messageDigest.update(bArr);
            messageDigest.update(bArrK0);
            bArrDigest = messageDigest.digest();
            bArrDigest.getClass();
            int iMin = Math.min(bArrDigest.length, 48 - i2);
            x50.j0(bArrDigest, bArr3, i2, 0, iMin, 4);
            i2 += iMin;
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new SecretKeySpec(x50.k0(bArr3, 0, 32), "AES"), new IvParameterSpec(x50.k0(bArr3, 32, 48)));
            byte[] bArrDoFinal = cipher.doFinal(bArrK1);
            bArrDoFinal.getClass();
            return new String(bArrDoFinal, f51.a);
        } catch (Exception e3) {
            throw new SecurityException("Filen legacy metadata decryption failed", e3);
        }
    }

    public static ib3 d(String str) {
        str.getClass();
        String strConcat = f("SHA-512", f("SHA-384", f("SHA-256", f("SHA-1", str)))).concat(f("SHA-512", f("MD5", e("MD4", e("MD2", str)))));
        byte[] bytes = p(str).getBytes(f51.a);
        bytes.getClass();
        return new ib3(strConcat, bytes);
    }

    public static final String e(String str, String str2) {
        hl2 w35Var;
        if (str.equals("MD2")) {
            w35Var = new v35();
        } else {
            if (!str.equals("MD4")) {
                throw new IllegalStateException("Unsupported legacy digest: ".concat(str).toString());
            }
            w35Var = new w35();
        }
        byte[] bytes = str2.getBytes(f51.a);
        bytes.getClass();
        w35Var.update(bytes, 0, bytes.length);
        byte[] bArr = new byte[w35Var.c()];
        w35Var.doFinal(bArr, 0);
        return t(bArr);
    }

    public static final String f(String str, String str2) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[] bytes = str2.getBytes(f51.a);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        return t(bArrDigest);
    }

    public static ib3 g(String str, String str2) {
        str.getClass();
        Charset charset = f51.a;
        byte[] bytes = str2.getBytes(charset);
        bytes.getClass();
        String strT = t(s(str, bytes, 200000, 64));
        byte[] bytes2 = strT.substring(0, strT.length() / 2).getBytes(charset);
        bytes2.getClass();
        byte[] bytes3 = strT.substring(strT.length() / 2).getBytes(charset);
        bytes3.getClass();
        byte[] bArrDigest = MessageDigest.getInstance("SHA-512").digest(bytes3);
        bArrDigest.getClass();
        return new ib3(t(bArrDigest), bytes2);
    }

    public static ib3 h(String str, String str2) {
        str.getClass();
        n40 n40Var = new n40(2, ms8.k(q(str2)), null, null, 3, 65536, 4);
        byte[] bArr = new byte[64];
        m40 m40Var = new m40();
        m40Var.e(n40Var);
        Charset charset = f51.a;
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        m40Var.c(bytes, bArr);
        byte[] bytes2 = t(x50.k0(bArr, 0, 32)).getBytes(charset);
        bytes2.getClass();
        return new ib3(t(x50.k0(bArr, 32, 64)), bytes2);
    }

    public static byte[] i(String str) {
        PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(Base64.getDecoder().decode(str)));
        privateKeyGeneratePrivate.getClass();
        byte[] byteArray = ((RSAPrivateKey) privateKeyGeneratePrivate).getPrivateExponent().toByteArray();
        if (byteArray.length > 1 && byteArray[0] == 0) {
            byteArray = x50.k0(byteArray, 1, byteArray.length);
        }
        return j(byteArray);
    }

    public static byte[] j(byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(new byte[32], "HmacSHA256"));
        byte[] bArrDoFinal = mac.doFinal(bArr);
        Mac mac2 = Mac.getInstance("HmacSHA256");
        mac2.init(new SecretKeySpec(bArrDoFinal, "HmacSHA256"));
        byte[] bytes = "hmac-sha256-key".getBytes(f51.a);
        bytes.getClass();
        byte[] bArrDoFinal2 = mac2.doFinal(x50.u0(bytes, new byte[]{1}));
        bArrDoFinal2.getClass();
        return Arrays.copyOf(bArrDoFinal2, 32);
    }

    public static String k(String str, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        str.getClass();
        bArr.getClass();
        bArr2.getClass();
        if (bArr2.length != 12) {
            c6.f("Failed requirement.");
            return null;
        }
        ArrayList arrayList = new ArrayList(bArr2.length);
        for (byte b : bArr2) {
            arrayList.add(Character.valueOf("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt((b & 255) % 64)));
        }
        String strY0 = el1.Y0(arrayList, "", null, null, null, 62);
        Charset charset = f51.a;
        byte[] bytes = strY0.getBytes(charset);
        bytes.getClass();
        byte[] bArrS = s(new String(bArr, charset), bArr, 1, 32);
        byte[] bytes2 = str.getBytes(charset);
        bytes2.getClass();
        return eq3.k("002", new String(bytes, charset), Base64.getEncoder().encodeToString(a(bytes2, bArrS, 1, bytes)));
    }

    public static String l(String str, byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        bArr.getClass();
        bArr2.getClass();
        if (bArr2.length != 12) {
            c6.f("Failed requirement.");
            return null;
        }
        byte[] bytes = str.getBytes(f51.a);
        bytes.getClass();
        return eq3.k("003", t(bArr2), Base64.getEncoder().encodeToString(a(bytes, r(bArr), 1, bArr2)));
    }

    public static String m(String str, FilenSession filenSession) {
        str.getClass();
        filenSession.getClass();
        int authVersion = filenSession.getAuthVersion();
        if (authVersion == 1 || authVersion == 2) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            return p(lowerCase);
        }
        if (authVersion == 3) {
            return o(str, q(filenSession.getNameHmacKeyHex()));
        }
        throw new IllegalStateException(("Unsupported Filen auth version: " + filenSession.getAuthVersion()).toString());
    }

    public static ww4 n(String str, FilenSession filenSession) throws NoSuchAlgorithmException, InvalidKeyException {
        String legacyNameHmacKeyHex;
        filenSession.getClass();
        ww4 ww4VarP = nc8.p();
        ww4VarP.add(m(str, filenSession));
        if (filenSession.getAuthVersion() == eb3.V3.getValue() && (legacyNameHmacKeyHex = filenSession.getLegacyNameHmacKeyHex()) != null) {
            if (legacyNameHmacKeyHex.length() <= 0) {
                legacyNameHmacKeyHex = null;
            }
            if (legacyNameHmacKeyHex != null) {
                String strO = o(str, q(legacyNameHmacKeyHex));
                if (!strO.equals(el1.S0(ww4VarP))) {
                    ww4VarP.add(strO);
                }
            }
        }
        return nc8.h(ww4VarP);
    }

    public static String o(String str, byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        str.getClass();
        if (bArr.length != 32) {
            c6.f("Filen name HMAC key must be 256 bits");
            return null;
        }
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        byte[] bytes = lowerCase.getBytes(f51.a);
        bytes.getClass();
        byte[] bArrDoFinal = mac.doFinal(bytes);
        bArrDoFinal.getClass();
        return t(bArrDoFinal);
    }

    public static String p(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
        Charset charset = f51.a;
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        byte[] bArrDigest = messageDigest.digest(bytes);
        bArrDigest.getClass();
        String strT = t(bArrDigest);
        MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-1");
        byte[] bytes2 = strT.getBytes(charset);
        bytes2.getClass();
        byte[] bArrDigest2 = messageDigest2.digest(bytes2);
        bArrDigest2.getClass();
        return t(bArrDigest2);
    }

    public static byte[] q(String str) {
        str.getClass();
        if (str.length() % 2 != 0) {
            c6.f("Hex input must have even length");
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            String strSubstring = str.substring(i2, i2 + 2);
            ly8.j(16);
            bArr[i] = (byte) Integer.parseInt(strSubstring, 16);
        }
        return bArr;
    }

    public static byte[] r(byte[] bArr) {
        char lowerCase;
        int length = bArr.length;
        if (length == 32) {
            return bArr;
        }
        if (length != 64) {
            c6.f("Invalid Filen v3 metadata key length");
            return null;
        }
        String str = new String(bArr, f51.d);
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isDigit(cCharAt) && ('a' > (lowerCase = Character.toLowerCase(cCharAt)) || lowerCase >= 'g')) {
                c6.f("Invalid Filen v3 metadata key");
                return null;
            }
        }
        return q(str);
    }

    public static byte[] s(String str, byte[] bArr, int i, int i2) {
        char[] charArray = str.toCharArray();
        charArray.getClass();
        PBEKeySpec pBEKeySpec = new PBEKeySpec(charArray, bArr, i, i2 * 8);
        try {
            byte[] encoded = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA512").generateSecret(pBEKeySpec).getEncoded();
            encoded.getClass();
            return encoded;
        } finally {
            pBEKeySpec.clearPassword();
        }
    }

    public static String t(byte[] bArr) {
        bArr.getClass();
        return x50.t0(bArr, "", new nk(8), 30);
    }
}
