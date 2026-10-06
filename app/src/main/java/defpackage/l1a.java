package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l1a implements w99 {
    public final SecretKeySpec a;
    public final byte[] b;

    public l1a(byte[] bArr, d2a d2aVar) throws GeneralSecurityException {
        if (!u48.c(2)) {
            m0.h("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
            throw null;
        }
        this.a = yk9.c(bArr);
        this.b = d2aVar.b();
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            f6.n("ciphertext is null");
            return null;
        }
        int length = bArr.length;
        byte[] bArr3 = this.b;
        if (length < bArr3.length + 28) {
            m0.h("ciphertext too short");
            return null;
        }
        if (!au9.b(bArr3, bArr)) {
            m0.h("Decryption failed (OutputPrefix mismatch).");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecA = yk9.a(bArr, bArr3.length, 12);
        Cipher cipherB = yk9.b();
        cipherB.init(2, this.a, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            cipherB.updateAAD(bArr2);
        }
        return cipherB.doFinal(bArr, bArr3.length + 12, (bArr.length - bArr3.length) - 12);
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            f6.n("plaintext is null");
            return null;
        }
        byte[] bArrA = rt9.a(12);
        AlgorithmParameterSpec algorithmParameterSpecA = yk9.a(bArrA, 0, bArrA.length);
        Cipher cipherB = yk9.b();
        cipherB.init(1, this.a, algorithmParameterSpecA);
        if (bArr2 != null && bArr2.length != 0) {
            cipherB.updateAAD(bArr2);
        }
        int outputSize = cipherB.getOutputSize(bArr.length);
        byte[] bArr3 = this.b;
        if (outputSize > 2147483635 - bArr3.length) {
            m0.h("plaintext too long");
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + 12 + outputSize);
        System.arraycopy(bArrA, 0, bArrCopyOf, bArr3.length, 12);
        if (cipherB.doFinal(bArr, 0, bArr.length, bArrCopyOf, bArr3.length + 12) == outputSize) {
            return bArrCopyOf;
        }
        m0.h("not enough data written");
        return null;
    }
}
