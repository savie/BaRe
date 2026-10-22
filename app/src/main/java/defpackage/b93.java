package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b93 extends OutputStream {
    public static final l15 d = o15.b(b93.class);
    public su6 a;
    public boolean b;
    public a93 c;

    public final void a() {
        su6 su6Var = this.a;
        a93 a93Var = this.c;
        su6Var.getClass();
        while (true) {
            wn6 wn6Var = a93Var.b;
            if (wn6Var == null || wn6Var.d <= 0) {
                return;
            }
            su6.d.m(su6Var.c, Long.valueOf(a93Var.a), "Writing to {} from offset {}");
            wm2 wm2Var = su6Var.a;
            nr6 nr6Var = su6Var.b;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a93 a93Var = this.c;
        while (true) {
            wn6 wn6Var = a93Var.b;
            if (wn6Var == null || wn6Var.d <= 0) {
                break;
            } else {
                a();
            }
        }
        a93Var.b = null;
        this.b = true;
        this.a = null;
        d.D(Long.valueOf(a93Var.a), "EOF, {} bytes written");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (this.b) {
            y5.m("Stream is closed");
            return;
        }
        wn6 wn6Var = this.c.b;
        if (wn6Var == null || wn6Var.d <= 0) {
            return;
        }
        a();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        wn6 wn6Var;
        byte[] bArr2;
        int i3;
        a93 a93Var = this.c;
        if (this.b) {
            y5.m("Stream is closed");
            return;
        }
        do {
            int iMin = Math.min(i2, a93Var.b.a.length);
            while (true) {
                wn6Var = a93Var.b;
                bArr2 = wn6Var.a;
                if (iMin > bArr2.length) {
                    throw new IllegalArgumentException("RingBuffer of length " + bArr2.length + " cannot accomodate " + iMin + " bytes.");
                }
                i3 = wn6Var.d;
                if (i3 + iMin > bArr2.length) {
                    flush();
                }
            }
            if (i3 != bArr2.length) {
                wn6Var.a(bArr, i, iMin);
            }
            i += iMin;
            i2 -= iMin;
        } while (i2 > 0);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        if (!this.b) {
            a93 a93Var = this.c;
            wn6 wn6Var = a93Var.b;
            if (wn6Var.d == wn6Var.a.length) {
                flush();
            }
            wn6 wn6Var2 = a93Var.b;
            if (wn6Var2.d == wn6Var2.a.length) {
                return;
            }
            wn6Var2.a(new byte[]{(byte) i}, 0, 1);
            return;
        }
        y5.m("Stream is closed");
    }
}
