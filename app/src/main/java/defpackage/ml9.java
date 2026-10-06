package defpackage;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ml9 implements w99 {
    public static final byte[] d = ho6.c0("7a806c");
    public static final byte[] e = ho6.c0("46bb91c3c5");
    public static final byte[] f = ho6.c0("36864200e0eaf5284d884a0e77d31646");
    public static final byte[] g = ho6.c0("bae8e37fc83441b16034566b");
    public static final byte[] h = ho6.c0("af60eb711bd85bc1e4d3e0a462e074eea428a8");
    public final q34 a;
    public final SecretKeySpec b;
    public final byte[] c;

    public ml9(byte[] bArr, byte[] bArr2, q34 q34Var) {
        this.c = bArr2;
        lg7.P(bArr.length);
        this.b = new SecretKeySpec(bArr, "AES");
        this.a = q34Var;
    }

    public static boolean c(Cipher cipher) {
        try {
            byte[] bArr = g;
            cipher.init(2, new SecretKeySpec(f, "AES"), new GCMParameterSpec(128, bArr, 0, bArr.length));
            cipher.updateAAD(e);
            byte[] bArr2 = h;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), d);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.c;
        if (length < bArr3.length + 28) {
            m0.h("ciphertext too short");
            return null;
        }
        if (!au9.b(bArr3, bArr)) {
            m0.h("Decryption failed (OutputPrefix mismatch).");
            return null;
        }
        this.a.getClass();
        Cipher cipherT = q34.t();
        cipherT.init(2, this.b, new GCMParameterSpec(128, bArr, bArr3.length, 12));
        if (bArr2 != null && bArr2.length != 0) {
            cipherT.updateAAD(bArr2);
        }
        return cipherT.doFinal(bArr, bArr3.length + 12, (bArr.length - bArr3.length) - 12);
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        this.a.getClass();
        Cipher cipherT = q34.t();
        int length = bArr.length;
        byte[] bArr3 = this.c;
        if (length > 2147483619 - bArr3.length) {
            m0.h("plaintext too long");
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + 12 + bArr.length + 16);
        byte[] bArrA = rt9.a(12);
        System.arraycopy(bArrA, 0, bArrCopyOf, bArr3.length, 12);
        cipherT.init(1, this.b, new GCMParameterSpec(128, bArrA, 0, bArrA.length));
        if (bArr2 != null && bArr2.length != 0) {
            cipherT.updateAAD(bArr2);
        }
        int iDoFinal = cipherT.doFinal(bArr, 0, bArr.length, bArrCopyOf, bArr3.length + 12);
        if (iDoFinal == bArr.length + 16) {
            return bArrCopyOf;
        }
        throw new GeneralSecurityException(xs1.h(iDoFinal - bArr.length, "encryption failed; AES-GCM-SIV tag must be 16 bytes, but got only ", " bytes"));
    }
}
