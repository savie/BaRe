package defpackage;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sn9 implements w99 {
    public final /* synthetic */ int a = 0;
    public final Object b;
    public final Object c;

    public sn9(byte[] bArr, byte[] bArr2) {
        this.b = new en9(bArr);
        this.c = bArr2;
    }

    @Override // defpackage.w99
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int i = this.a;
        byte[] bArrA = null;
        Object obj = this.c;
        switch (i) {
            case 0:
                Iterator it = ((it9) obj).a(bArr).iterator();
                while (it.hasNext()) {
                    try {
                        bArrA = ((on9) it.next()).a.a(bArr, bArr2);
                        return bArrA;
                    } catch (GeneralSecurityException unused) {
                    }
                }
                m0.h("decryption failed");
                return bArrA;
            default:
                byte[] bArr3 = (byte[]) obj;
                if (bArr3.length == 0) {
                    return c(bArr, bArr2);
                }
                if (au9.b(bArr3, bArr)) {
                    return c(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
                }
                m0.h("Decryption failed (OutputPrefix mismatch).");
                return null;
        }
    }

    @Override // defpackage.w99
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                byte[] bArrB = ((on9) obj).a.b(bArr, bArr2);
                int length = bArr.length;
                return bArrB;
            default:
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + 28);
                byte[] bArrA = rt9.a(12);
                byteBufferAllocate.put(bArrA);
                ((en9) obj).s(byteBufferAllocate, bArrA, bArr, bArr2);
                byte[] bArrArray = byteBufferAllocate.array();
                byte[] bArr3 = (byte[]) this.c;
                return bArr3.length == 0 ? bArrArray : z85.N(bArr3, bArrArray);
        }
    }

    public byte[] c(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length < 28) {
            m0.h("ciphertext too short");
            return null;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, 12);
        return ((en9) this.b).t(ByteBuffer.wrap(bArr, 12, bArr.length - 12), bArrCopyOf, bArr2);
    }

    public sn9(on9 on9Var, it9 it9Var) {
        this.b = on9Var;
        this.c = it9Var;
    }
}
