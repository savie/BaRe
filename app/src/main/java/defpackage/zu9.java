package defpackage;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zu9 implements yu9 {
    public static final id5 d = new id5(2);
    public final SecretKeySpec a;
    public final byte[] b;
    public final byte[] c;

    public zu9(byte[] bArr) throws GeneralSecurityException {
        lg7.P(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.a = secretKeySpec;
        if (!u48.e(1)) {
            m0.h("Can not use AES-CMAC in FIPS-mode.");
            throw null;
        }
        Cipher cipher = (Cipher) d.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrQ = jd4.Q(cipher.doFinal(new byte[16]));
        this.b = bArrQ;
        this.c = jd4.Q(bArrQ);
    }

    @Override // defpackage.yu9
    public final byte[] a(byte[] bArr, int i) throws GeneralSecurityException {
        byte[] bArrL;
        if (i > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        if (!u48.e(1)) {
            m0.h("Can not use AES-CMAC in FIPS-mode.");
            return null;
        }
        Cipher cipher = (Cipher) d.get();
        cipher.init(1, this.a);
        int length = bArr.length;
        int i2 = length == 0 ? 1 : ((length - 1) / 16) + 1;
        if ((i2 << 4) == bArr.length) {
            bArrL = z85.M(bArr, this.b, (i2 - 1) << 4, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (i2 - 1) << 4, bArr.length);
            if (bArrCopyOfRange.length >= 16) {
                c6.f("x must be smaller than a block.");
                return null;
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[bArrCopyOfRange.length] = -128;
            bArrL = z85.L(bArrCopyOf, this.c);
        }
        byte[] bArr2 = new byte[16];
        byte[] bArr3 = new byte[16];
        for (int i3 = 0; i3 < i2 - 1; i3++) {
            int i4 = i3 << 4;
            for (int i5 = 0; i5 < 16; i5++) {
                bArr3[i5] = (byte) (bArr2[i5] ^ bArr[i5 + i4]);
            }
            if (cipher.doFinal(bArr3, 0, 16, bArr2) != 16) {
                l0.e("Cipher didn't write full block");
                return null;
            }
        }
        for (int i6 = 0; i6 < 16; i6++) {
            bArr3[i6] = (byte) (bArr2[i6] ^ bArrL[i6]);
        }
        if (cipher.doFinal(bArr3, 0, 16, bArr2) == 16) {
            return 16 == i ? bArr2 : Arrays.copyOf(bArr2, i);
        }
        l0.e("Cipher didn't write full block");
        return null;
    }
}
