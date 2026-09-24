package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q1a implements w99 {
    public final j1a a;
    public final a2a b;
    public final int c;
    public final byte[] d;

    public q1a(j1a j1aVar, a2a a2aVar, int i, byte[] bArr) {
        this.a = j1aVar;
        this.b = a2aVar;
        this.c = i;
        this.d = bArr;
    }

    public static q1a c(te9 te9Var) {
        byte[] bArrB = ((d2a) te9Var.e.a).b();
        gf9 gf9Var = te9Var.d;
        j1a j1aVar = new j1a(bArrB, gf9Var.c);
        z1a z1aVar = new z1a("HMAC".concat(String.valueOf(gf9Var.f)), new SecretKeySpec(((d2a) te9Var.f.a).b(), "HMAC"));
        int i = gf9Var.d;
        return new q1a(j1aVar, new a2a(z1aVar, i), i, te9Var.k.b());
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.d;
        int length2 = bArr3.length;
        int i = this.c;
        if (length < length2 + i) {
            m0.h("Decryption failed (ciphertext too short).");
            return null;
        }
        if (!au9.b(bArr3, bArr)) {
            m0.h("Decryption failed (OutputPrefix mismatch).");
            return null;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, bArr3.length, bArr.length - i);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, bArr.length - i, bArr.length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (!MessageDigest.isEqual(this.b.a(z85.N(bArr2, bArrCopyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8))), bArrCopyOfRange2)) {
            m0.h("invalid MAC");
            return null;
        }
        int length3 = bArrCopyOfRange.length;
        j1a j1aVar = this.a;
        int i2 = j1aVar.b;
        if (length3 < i2) {
            m0.h("ciphertext too short");
            return null;
        }
        byte[] bArr4 = new byte[i2];
        System.arraycopy(bArrCopyOfRange, 0, bArr4, 0, i2);
        int length4 = bArrCopyOfRange.length;
        int i3 = j1aVar.b;
        byte[] bArr5 = new byte[length4 - i3];
        j1aVar.a(bArrCopyOfRange, i3, bArrCopyOfRange.length - i3, bArr5, 0, bArr4, false);
        return bArr5;
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        j1a j1aVar = this.a;
        int i = j1aVar.b;
        int i2 = Integer.MAX_VALUE - i;
        if (length > i2) {
            throw new GeneralSecurityException(fz5.j(i2, "plaintext length can not exceed "));
        }
        byte[] bArr3 = new byte[bArr.length + i];
        byte[] bArrA = rt9.a(i);
        System.arraycopy(bArrA, 0, bArr3, 0, i);
        j1aVar.a(bArr, 0, bArr.length, bArr3, j1aVar.b, bArrA, true);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return z85.N(this.d, bArr3, this.b.a(z85.N(bArr2, bArr3, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8))));
    }
}
