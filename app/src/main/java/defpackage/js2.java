package defpackage;

import java.io.ByteArrayOutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class js2 extends ByteArrayOutputStream {
    public final synchronized byte[] a(hs2 hs2Var, byte[] bArr) {
        byte[] bArr2;
        bArr2 = new byte[114];
        hs2Var.a(bArr, ((ByteArrayOutputStream) this).buf, ((ByteArrayOutputStream) this).count, bArr2);
        reset();
        return bArr2;
    }

    public final synchronized boolean b(is2 is2Var, byte[] bArr, byte[] bArr2) {
        if (114 != bArr2.length) {
            reset();
            return false;
        }
        byte[] bArr3 = ((ByteArrayOutputStream) this).buf;
        int i = ((ByteArrayOutputStream) this).count;
        is2Var.getClass();
        if (bArr == null) {
            throw new NullPointerException("'ctx' cannot be null");
        }
        if (bArr.length > 255) {
            throw new IllegalArgumentException("ctx");
        }
        boolean zE = yc9.E(bArr2, is2Var.b, bArr, (byte) 0, bArr3, i);
        reset();
        return zE;
    }

    @Override // java.io.ByteArrayOutputStream
    public final synchronized void reset() {
        Arrays.fill(((ByteArrayOutputStream) this).buf, 0, ((ByteArrayOutputStream) this).count, (byte) 0);
        ((ByteArrayOutputStream) this).count = 0;
    }
}
