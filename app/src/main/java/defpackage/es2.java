package defpackage;

import java.io.ByteArrayOutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class es2 extends ByteArrayOutputStream {
    public final synchronized byte[] a(cs2 cs2Var) {
        byte[] bArr;
        bArr = new byte[64];
        cs2Var.a(null, ((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, bArr);
        reset();
        return bArr;
    }

    public final synchronized boolean b(ds2 ds2Var, byte[] bArr) {
        if (64 != bArr.length) {
            reset();
            return false;
        }
        boolean zE = jb9.E(bArr, ds2Var.b, (byte) 0, ((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count);
        reset();
        return zE;
    }

    @Override // java.io.ByteArrayOutputStream
    public final synchronized void reset() {
        Arrays.fill(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, (byte) 0);
        ((ByteArrayOutputStream) this).count = 0;
    }
}
