package defpackage;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k1a implements w99 {
    public static final ei8 e = new ei8(1);
    public final byte[] a;
    public final yu9 b;
    public final SecretKeySpec c;
    public final int d;

    public k1a(int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (!u48.e(1)) {
            m0.h("Can not use AES-EAX in FIPS-mode.");
            throw null;
        }
        if (i != 12 && i != 16) {
            c6.f("IV size should be either 12 or 16 bytes");
            throw null;
        }
        this.d = i;
        lg7.P(bArr.length);
        this.c = new SecretKeySpec(bArr, "AES");
        this.b = g67.G(xu9.J(tu9.b(bArr.length), new km8(d2a.a(bArr))));
        this.a = bArr2;
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.a;
        int length2 = length - bArr3.length;
        int i = this.d;
        int i2 = (length2 - i) - 16;
        if (i2 < 0) {
            m0.h("ciphertext too short");
            return null;
        }
        if (!au9.b(bArr3, bArr)) {
            m0.h("Decryption failed (OutputPrefix mismatch).");
            return null;
        }
        byte[] bArrC = c(0, bArr, bArr3.length, i);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArrC2 = c(1, bArr2, 0, bArr2.length);
        byte[] bArrC3 = c(2, bArr, bArr3.length + i, i2);
        int length3 = bArr.length - 16;
        byte b = 0;
        for (int i3 = 0; i3 < 16; i3++) {
            b = (byte) (b | (((bArr[length3 + i3] ^ bArrC2[i3]) ^ bArrC[i3]) ^ bArrC3[i3]));
        }
        if (b != 0) {
            throw new AEADBadTagException("tag mismatch");
        }
        Cipher cipher = (Cipher) e.get();
        cipher.init(1, this.c, new IvParameterSpec(bArrC));
        return cipher.doFinal(bArr, bArr3.length + i, i2);
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.a;
        int length2 = Integer.MAX_VALUE - bArr3.length;
        int i = this.d;
        if (length > (length2 - i) - 16) {
            m0.h("plaintext too long");
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i + bArr.length + 16);
        byte[] bArrA = rt9.a(i);
        System.arraycopy(bArrA, 0, bArrCopyOf, bArr3.length, i);
        byte[] bArrC = c(0, bArrA, 0, bArrA.length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArrC2 = c(1, bArr2, 0, bArr2.length);
        Cipher cipher = (Cipher) e.get();
        cipher.init(1, this.c, new IvParameterSpec(bArrC));
        cipher.doFinal(bArr, 0, bArr.length, bArrCopyOf, bArr3.length + i);
        byte[] bArrC3 = c(2, bArrCopyOf, bArr3.length + i, bArr.length);
        int length3 = bArr3.length + bArr.length + i;
        for (int i2 = 0; i2 < 16; i2++) {
            bArrCopyOf[length3 + i2] = (byte) ((bArrC2[i2] ^ bArrC[i2]) ^ bArrC3[i2]);
        }
        return bArrCopyOf;
    }

    public final byte[] c(int i, byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3 + 16];
        bArr2[15] = (byte) i;
        System.arraycopy(bArr, i2, bArr2, 16, i3);
        return this.b.a(bArr2, 16);
    }
}
