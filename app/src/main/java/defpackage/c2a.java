package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c2a implements w99 {
    public final ln9 a;
    public final byte[] b;

    public c2a(byte[] bArr, byte[] bArr2) {
        this.a = new ln9(bArr);
        this.b = bArr2;
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.b;
        if (bArr3.length == 0) {
            return c(bArr, bArr2);
        }
        if (au9.b(bArr3, bArr)) {
            return c(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
        }
        m0.h("Decryption failed (OutputPrefix mismatch).");
        return null;
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 40);
        byte[] bArrA = rt9.a(24);
        byteBufferAllocate.put(bArrA);
        this.a.s(byteBufferAllocate, bArrA, bArr, bArr2);
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArr3 = this.b;
        return bArr3.length == 0 ? bArrArray : z85.N(bArr3, bArrArray);
    }

    public final byte[] c(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length < 40) {
            m0.h("ciphertext too short");
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 24);
        return this.a.t(ByteBuffer.wrap(bArr, 24, bArr.length - 24), bArrCopyOf, bArr2);
    }
}
