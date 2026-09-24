package defpackage;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e36 implements fr9 {
    public int a;
    public final Object b;

    public e36(dp9 dp9Var) {
        this.b = dp9Var;
        this.a = dp9Var.a;
    }

    @Override // defpackage.fr9
    public byte[] a(int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArrL;
        byte[] bArrA;
        if (bArr2.length < i) {
            m0.h("ciphertext too short");
            return null;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, i, bArr2.length);
        dr drVar = new dr(7);
        drVar.c = null;
        drVar.d = null;
        drVar.b = (dp9) this.b;
        drVar.c = new km8(d2a.a(bArr));
        to9 to9VarI = drVar.i();
        m1a m1aVar = new m1a(((d2a) to9VarI.e.a).b(), to9VarI.f);
        byte[][] bArr3 = {x13.d};
        int length = bArrCopyOfRange.length;
        byte[] bArr4 = m1aVar.c;
        if (length < bArr4.length + 16) {
            m0.h("Ciphertext too short.");
            return null;
        }
        if (!au9.b(bArr4, bArrCopyOfRange)) {
            m0.h("Decryption failed (OutputPrefix mismatch).");
            return null;
        }
        Cipher cipher = (Cipher) m1a.f.get();
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArrCopyOfRange, bArr4.length, bArr4.length + 16);
        byte[] bArr5 = (byte[]) bArrCopyOfRange2.clone();
        bArr5[8] = (byte) (bArr5[8] & 127);
        bArr5[12] = (byte) (bArr5[12] & 127);
        cipher.init(2, new SecretKeySpec(m1aVar.b, "AES"), new IvParameterSpec(bArr5));
        int length2 = bArr4.length + 16;
        int length3 = bArrCopyOfRange.length - length2;
        byte[] bArrDoFinal = cipher.doFinal(bArrCopyOfRange, length2, length3);
        if (length3 == 0 && bArrDoFinal == null && "The Android Project".equals(System.getProperty("java.vendor"))) {
            bArrDoFinal = new byte[0];
        }
        byte[][] bArr6 = (byte[][]) Arrays.copyOf(bArr3, 2);
        bArr6[1] = bArrDoFinal;
        int length4 = bArr6.length;
        yu9 yu9Var = m1aVar.a;
        if (length4 == 0) {
            bArrA = yu9Var.a(m1a.e, 16);
        } else {
            byte[] bArrA2 = yu9Var.a(m1a.d, 16);
            for (int i2 = 0; i2 < bArr6.length - 1; i2++) {
                byte[] bArr7 = bArr6[i2];
                if (bArr7 == null) {
                    bArr7 = new byte[0];
                }
                bArrA2 = z85.L(jd4.Q(bArrA2), yu9Var.a(bArr7, 16));
            }
            byte[] bArr8 = bArr6[bArr6.length - 1];
            if (bArr8.length >= 16) {
                if (bArr8.length < bArrA2.length) {
                    c6.f("xorEnd requires a.length >= b.length");
                    return null;
                }
                int length5 = bArr8.length - bArrA2.length;
                bArrL = Arrays.copyOf(bArr8, bArr8.length);
                for (int i3 = 0; i3 < bArrA2.length; i3++) {
                    int i4 = length5 + i3;
                    bArrL[i4] = (byte) (bArrL[i4] ^ bArrA2[i3]);
                }
            } else {
                if (bArr8.length >= 16) {
                    c6.f("x must be smaller than a block.");
                    return null;
                }
                byte[] bArrCopyOf = Arrays.copyOf(bArr8, 16);
                bArrCopyOf[bArr8.length] = -128;
                bArrL = z85.L(bArrCopyOf, jd4.Q(bArrA2));
            }
            bArrA = yu9Var.a(bArrL, 16);
        }
        if (MessageDigest.isEqual(bArrCopyOfRange2, bArrA)) {
            return bArrDoFinal;
        }
        throw new AEADBadTagException("Integrity check failed.");
    }

    public void b(m50 m50Var) {
        int i = this.a;
        Object[] objArr = (Object[]) this.b;
        if (i < objArr.length) {
            objArr[i] = m50Var;
            this.a = i + 1;
        }
    }

    @Override // defpackage.fr9
    public int zza() {
        return this.a;
    }

    public e36() {
        this.b = new Object[256];
    }
}
