package defpackage;

import com.swiftapps.sba.SbaNativeCrypto;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class sy6 {
    public static final byte[] a;
    public static final byte[] b;
    public static final byte[] c;
    public static final byte[] d;
    public static final byte[] e;
    public static final byte[] f;
    public static final byte[] g;

    static {
        Charset charset = f51.d;
        byte[] bytes = "SBA1-7zAES-key-check-v1".getBytes(charset);
        bytes.getClass();
        a = bytes;
        byte[] bytes2 = "SBA1-AES256GCM-key-check-v1".getBytes(charset);
        bytes2.getClass();
        b = bytes2;
        byte[] bytes3 = "SBA1-AES256GCMSIV-key-check-v1".getBytes(charset);
        bytes3.getClass();
        c = bytes3;
        byte[] bytes4 = "SBA1-AEGIS256-key-check-v1".getBytes(charset);
        bytes4.getClass();
        d = bytes4;
        byte[] bytes5 = "SBA1-AEGIS128X2-key-check-v1".getBytes(charset);
        bytes5.getClass();
        e = bytes5;
        "SBA1-payload-hmac-key-v1".getBytes(charset).getClass();
        byte[] bytes6 = "SBA2-index-mac-key-v1".getBytes(charset);
        bytes6.getClass();
        f = bytes6;
        byte[] bytes7 = "SBA2-index-metadata-mac-v1".getBytes(charset);
        bytes7.getClass();
        g = bytes7;
    }

    public static byte[] a(char[] cArr, byte[] bArr, int i, int i2, int i3, int i4) throws CharacterCodingException {
        cArr.getClass();
        if (cArr.length == 0) {
            c6.f("SBA encryption password must not be empty");
            return null;
        }
        if (bArr.length != 16) {
            c6.f("SBA Argon2id salt must be 16 bytes");
            return null;
        }
        if (1 > i || i >= 101) {
            f6.g(fz5.j(i, "SBA Argon2id iterations out of range: "));
            return null;
        }
        if (16384 > i2 || i2 >= 65537) {
            f6.g(fz5.j(i2, "SBA Argon2id memoryKiB out of range: "));
            return null;
        }
        if (1 > i3 || i3 >= 9) {
            f6.g(fz5.j(i3, "SBA Argon2id parallelism out of range: "));
            return null;
        }
        if (i4 <= 0) {
            f6.g(fz5.j(i4, "SBA Argon2id output bytes must be positive: "));
            return null;
        }
        ByteBuffer byteBufferEncode = f51.a.newEncoder().encode(CharBuffer.wrap(cArr));
        int iRemaining = byteBufferEncode.remaining();
        byte[] bArr2 = new byte[iRemaining];
        byteBufferEncode.get(bArr2);
        if (byteBufferEncode.hasArray()) {
            byte[] bArrArray = byteBufferEncode.array();
            bArrArray.getClass();
            Arrays.fill(bArrArray, 0, bArrArray.length, (byte) 0);
        }
        try {
            return SbaNativeCrypto.a.deriveArgon2id(bArr2, bArr, i, i2, i3, i4);
        } finally {
            Arrays.fill(bArr2, 0, iRemaining, (byte) 0);
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2, long j, long j2, int i, byte[] bArr3) throws NoSuchAlgorithmException, InvalidKeyException {
        bArr.getClass();
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
        mac.update(g);
        mac.update(bArr2);
        e(mac, j);
        e(mac, j2);
        byte[] bArr4 = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr4[i2] = (byte) ((i >>> (24 - (i2 * 8))) & 255);
        }
        mac.update(bArr4);
        mac.update(bArr3);
        byte[] bArrDoFinal = mac.doFinal();
        bArrDoFinal.getClass();
        return bArrDoFinal;
    }

    public static byte[] c(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(f);
        messageDigest.update(bArr2);
        messageDigest.update(bArr3);
        messageDigest.update(bArr);
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return bArrDigest;
    }

    public static byte[] d(l27 l27Var, byte[] bArr, byte[] bArr2, byte[] bArr3) throws NoSuchAlgorithmException {
        byte[] bArr4;
        l27Var.getClass();
        bArr.getClass();
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        switch (ry6.a[l27Var.ordinal()]) {
            case 1:
                bArr4 = a;
                break;
            case 2:
                bArr4 = b;
                break;
            case 3:
                bArr4 = c;
                break;
            case 4:
                bArr4 = d;
                break;
            case 5:
                bArr4 = e;
                break;
            case 6:
                c6.f("SBA encryption method required for key check");
                return null;
            default:
                q.j();
                return null;
        }
        messageDigest.update(bArr4);
        messageDigest.update(bArr2);
        messageDigest.update(bArr3);
        messageDigest.update(bArr);
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return Arrays.copyOf(bArrDigest, 16);
    }

    public static void e(Mac mac, long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((j >>> (56 - (i * 8))) & 255);
        }
        mac.update(bArr);
    }
}
