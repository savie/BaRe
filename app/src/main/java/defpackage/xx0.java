package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xx0 extends h58 {
    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws IOException {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (byteBuffer.hasArray()) {
            int iPosition = byteBuffer.position();
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + iPosition;
            int iLimit = byteBuffer.limit() - iPosition;
            fk4Var.getClass();
            fk4Var.j(cl0.a, bArrArray, iArrayOffset, iLimit);
            return;
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        px0 px0Var = new px0(byteBufferAsReadOnlyBuffer);
        int iRemaining = byteBufferAsReadOnlyBuffer.remaining();
        fk4Var.getClass();
        bl0 bl0Var = cl0.a;
        pw8 pw8Var = (pw8) fk4Var;
        char c = pw8Var.H;
        c84 c84Var = pw8Var.c;
        pw8Var.l0("write a binary value");
        int i = pw8Var.K;
        int i2 = pw8Var.L;
        if (i >= i2) {
            pw8Var.u0();
        }
        char[] cArr = pw8Var.I;
        int i3 = pw8Var.K;
        pw8Var.K = i3 + 1;
        cArr[i3] = c;
        if (c84Var.e != null) {
            l0.e("Trying to call same allocXxx() method second time");
            return;
        }
        qw0 qw0Var = c84Var.b;
        qw0Var.getClass();
        int i4 = qw0.c[3];
        if (i4 <= 0) {
            i4 = 0;
        }
        byte[] bArr = (byte[]) qw0Var.a.getAndSet(3, null);
        if (bArr == null || bArr.length < i4) {
            bArr = new byte[i4];
        }
        c84Var.e = bArr;
        try {
            if (iRemaining < 0) {
                pw8Var.y0(bl0Var, px0Var, bArr);
            } else {
                int iZ0 = pw8Var.z0(bl0Var, px0Var, bArr, iRemaining);
                if (iZ0 > 0) {
                    pw8Var.a("Too few bytes available: missing " + iZ0 + " bytes (out of " + iRemaining + ")");
                    throw null;
                }
            }
            c84Var.a(bArr);
            if (pw8Var.K >= i2) {
                pw8Var.u0();
            }
            char[] cArr2 = pw8Var.I;
            int i5 = pw8Var.K;
            pw8Var.K = i5 + 1;
            cArr2[i5] = c;
            px0Var.close();
        } catch (Throwable th) {
            c84Var.a(bArr);
            throw th;
        }
    }
}
