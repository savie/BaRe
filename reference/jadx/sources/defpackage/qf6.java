package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qf6 extends OutputStream {
    public final /* synthetic */ rf6 a;

    public qf6(rf6 rf6Var) {
        this.a = rf6Var;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        rf6 rf6Var = this.a;
        if (rf6Var.c) {
            return;
        }
        rf6Var.flush();
    }

    public final String toString() {
        return this.a + ".outputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        rf6 rf6Var = this.a;
        if (rf6Var.c) {
            y5.m("closed");
        } else {
            rf6Var.b.m75write(bArr, i, i2);
            rf6Var.a();
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        rf6 rf6Var = this.a;
        if (!rf6Var.c) {
            rf6Var.b.J((byte) i);
            rf6Var.a();
        } else {
            y5.m("closed");
        }
    }
}
