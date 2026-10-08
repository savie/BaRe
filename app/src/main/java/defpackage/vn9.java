package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vn9 implements w99 {
    public final byte[] a;
    public final int b;
    public final yu9 c;

    public vn9(byte[] bArr, d2a d2aVar, int i) {
        this.c = g67.G(xu9.J(tu9.b(bArr.length), new km8(d2a.a(bArr))));
        this.a = d2aVar.b();
        this.b = i;
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            f6.n("ciphertext is null");
            return null;
        }
        int length = bArr.length;
        byte[] bArr3 = this.a;
        int length2 = bArr3.length;
        int i = this.b;
        if (length < length2 + i + 28) {
            m0.h("ciphertext too short");
            return null;
        }
        if (!au9.b(bArr3, bArr)) {
            m0.h("Decryption failed (OutputPrefix mismatch).");
            return null;
        }
        int length3 = bArr3.length + i;
        byte[] bArrC = c(Arrays.copyOfRange(bArr, bArr3.length, length3));
        if (!u48.c(2)) {
            m0.h("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            return null;
        }
        SecretKeySpec secretKeySpecC = yk9.c(bArrC);
        int i2 = length3 + 12;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, length3, i2);
        if (bArrCopyOfRange.length != 12) {
            m0.h("iv is wrong size");
            return null;
        }
        if (bArr.length < length3 + 28) {
            m0.h("ciphertext too short");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecA = yk9.a(bArrCopyOfRange, 0, bArrCopyOfRange.length);
        Cipher cipherB = yk9.b();
        cipherB.init(2, secretKeySpecC, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            cipherB.updateAAD(bArr2);
        }
        return cipherB.doFinal(bArr, i2, bArr.length - i2);
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            f6.n("plaintext is null");
            return null;
        }
        int i = this.b;
        int i2 = i + 12;
        byte[] bArrA = rt9.a(i2);
        byte[] bArrCopyOf = Arrays.copyOf(bArrA, i);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, i, i2);
        byte[] bArrC = c(bArrCopyOf);
        if (!u48.c(2)) {
            m0.h("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            return null;
        }
        SecretKeySpec secretKeySpecC = yk9.c(bArrC);
        byte[] bArr3 = this.a;
        int length = bArr3.length + i + bArrCopyOfRange.length;
        if (bArrCopyOfRange.length != 12) {
            m0.h("iv is wrong size");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecA = yk9.a(bArrCopyOfRange, 0, bArrCopyOfRange.length);
        Cipher cipherB = yk9.b();
        cipherB.init(1, secretKeySpecC, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            cipherB.updateAAD(bArr2);
        }
        int outputSize = cipherB.getOutputSize(bArr.length);
        if (outputSize > Integer.MAX_VALUE - length) {
            m0.h("plaintext too long");
            return null;
        }
        byte[] bArr4 = new byte[length + outputSize];
        if (cipherB.doFinal(bArr, 0, bArr.length, bArr4, length) != outputSize) {
            m0.h("not enough data written");
            return null;
        }
        System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
        System.arraycopy(bArrA, 0, bArr4, bArr3.length, bArrA.length);
        return bArr4;
    }

    public final byte[] c(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = {0, 1, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        byte[] bArr3 = {0, 2, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        if (bArr.length > 12 || bArr.length < 8) {
            m0.h("invalid salt size");
            return null;
        }
        System.arraycopy(bArr, 0, bArr2, 4, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 4, bArr.length);
        byte[] bArr4 = new byte[32];
        yu9 yu9Var = this.c;
        System.arraycopy(yu9Var.a(bArr2, 16), 0, bArr4, 0, 16);
        System.arraycopy(yu9Var.a(bArr3, 16), 0, bArr4, 16, 16);
        return bArr4;
    }
}
