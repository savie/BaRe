package defpackage;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class er9 implements fr9 {
    public final int a;

    public er9(kg9 kg9Var) throws GeneralSecurityException {
        if (kg9Var.b != 12) {
            m0.h("invalid IV size");
            throw null;
        }
        if (kg9Var.c != 16) {
            m0.h("invalid tag size");
            throw null;
        }
        if (kg9Var.d == ig9.e) {
            this.a = kg9Var.a;
        } else {
            m0.h("invalid variant");
            throw null;
        }
    }

    @Override // defpackage.fr9
    public final byte[] a(int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr2.length < i) {
            m0.h("ciphertext too short");
            return null;
        }
        if (bArr.length != this.a) {
            m0.h("invalid key size");
            return null;
        }
        SecretKeySpec secretKeySpecC = yk9.c(bArr);
        int i2 = i + 12;
        if (bArr2.length < i + 28) {
            m0.h("ciphertext too short");
            return null;
        }
        AlgorithmParameterSpec algorithmParameterSpecA = yk9.a(bArr2, i, 12);
        Cipher cipherB = yk9.b();
        cipherB.init(2, secretKeySpecC, algorithmParameterSpecA);
        return cipherB.doFinal(bArr2, i2, (bArr2.length - i) - 12);
    }

    @Override // defpackage.fr9
    public final int zza() {
        return this.a;
    }
}
