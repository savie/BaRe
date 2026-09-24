package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a93 implements Closeable {
    public long a;
    public wn6 b;

    public final int a() {
        return this.b.d;
    }

    public final int b(byte[] bArr) {
        wn6 wn6Var = this.b;
        byte[] bArr2 = wn6Var.a;
        int length = wn6Var.d;
        if (length >= bArr.length) {
            length = bArr.length;
        }
        int i = wn6Var.c;
        if (i + length <= bArr2.length) {
            System.arraycopy(bArr2, i, bArr, 0, length);
        } else {
            int length2 = bArr2.length - i;
            System.arraycopy(bArr2, i, bArr, 0, length2);
            System.arraycopy(bArr2, 0, bArr, length2, length - length2);
        }
        wn6Var.c = (wn6Var.c + length) % bArr2.length;
        wn6Var.d -= length;
        return length;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
