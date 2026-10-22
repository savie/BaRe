package defpackage;

import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ka5 {
    public static final ka5 a = new ka5();

    public static ia5 a(String str) {
        int iIntValue;
        List listW0 = nq7.w0(nq7.H0(str).toString(), new char[]{':'}, 6);
        if (listW0.size() != 4) {
            return null;
        }
        Integer numX = uq7.X((String) listW0.get(0));
        Integer numX2 = uq7.X((String) listW0.get(1));
        Long lY = uq7.Y((String) listW0.get(2));
        String str2 = (String) listW0.get(3);
        if (numX != null && numX.intValue() == 1 && numX2 != null && (iIntValue = numX2.intValue()) >= 0 && iIntValue < 256 && lY != null && str2.length() == 64) {
            return new ia5(str2, lY.longValue(), numX2.intValue());
        }
        return null;
    }

    public static String b(byte[] bArr, long j, long j2, long j3, AtomicBoolean atomicBoolean) throws NoSuchAlgorithmException, DigestException {
        int i = 64;
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 4, bArr2, 4, 60);
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        int i2 = 32;
        byte[] bArr3 = new byte[32];
        long j4 = j2;
        while (!atomicBoolean.get() && j4 <= 4294967295L) {
            byte b = (byte) ((j4 >>> 24) & 255);
            bArr2[0] = b;
            byte b2 = (byte) ((j4 >>> 16) & 255);
            bArr2[1] = b2;
            byte b3 = (byte) ((j4 >>> 8) & 255);
            bArr2[2] = b3;
            byte b4 = (byte) (j4 & 255);
            bArr2[3] = b4;
            messageDigest.reset();
            messageDigest.update(bArr2);
            messageDigest.update(bArr, i, bArr.length - i);
            messageDigest.digest(bArr3, 0, i2);
            byte[] bArr4 = bArr2;
            byte[] bArr5 = bArr3;
            if ((((((long) bArr3[0]) & 255) << 24) | ((((long) bArr3[1]) & 255) << 16) | ((((long) bArr5[2]) & 255) << 8) | (((long) bArr5[3]) & 255)) <= j) {
                String strEncodeToString = Base64.getUrlEncoder().withoutPadding().encodeToString(new byte[]{b, b2, b3, b4});
                strEncodeToString.getClass();
                return strEncodeToString;
            }
            j4 += j3;
            bArr2 = bArr4;
            bArr3 = bArr5;
            i = 64;
            i2 = 32;
        }
        return null;
    }
}
