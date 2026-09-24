package defpackage;

import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mw0 extends OutputStream {
    public final /* synthetic */ nw0 a;

    public mw0(nw0 nw0Var) {
        this.a = nw0Var;
    }

    public final String toString() {
        return this.a + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        this.a.m75write(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        this.a.J(i);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }
}
