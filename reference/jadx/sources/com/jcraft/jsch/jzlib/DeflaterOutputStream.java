package com.jcraft.jsch.jzlib;

import defpackage.c6;
import defpackage.dj7;
import defpackage.l0;
import defpackage.y5;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class DeflaterOutputStream extends FilterOutputStream {
    public final Deflater a;
    public final byte[] b;
    public boolean c;
    public final byte[] d;
    public final boolean e;
    public final boolean f;

    public DeflaterOutputStream(OutputStream outputStream, Deflater deflater, int i, boolean z) throws IOException {
        super(outputStream);
        this.c = false;
        this.d = new byte[1];
        this.e = false;
        this.f = true;
        if (outputStream == null || deflater == null) {
            throw null;
        }
        if (i <= 0) {
            c6.f("buffer size must be greater than 0");
            throw null;
        }
        this.a = deflater;
        this.b = new byte[i];
        this.f = z;
    }

    public final int a(int i) throws IOException {
        byte[] bArr = this.b;
        int length = bArr.length;
        Deflater deflater = this.a;
        deflater.e = bArr;
        deflater.f = 0;
        deflater.g = length;
        int iC = deflater.c(i);
        if (iC == -5 ? deflater.c > 0 || i == 4 : !(iC == 0 || iC == 1)) {
            StringBuilder sbR = dj7.r(iC, "failed to deflate: error=", " avail_out=");
            sbR.append(deflater.g);
            throw new IOException(sbR.toString());
        }
        int i2 = deflater.f;
        if (i2 > 0) {
            ((FilterOutputStream) this).out.write(bArr, 0, i2);
        }
        return iC;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Deflater deflater;
        if (this.c) {
            return;
        }
        while (true) {
            deflater = this.a;
            if (deflater.m) {
                break;
            } else {
                a(4);
            }
        }
        if (this.e) {
            deflater.d();
        }
        if (this.f) {
            ((FilterOutputStream) this).out.close();
        }
        this.c = true;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        Deflater deflater = this.a;
        if (deflater.m) {
            y5.m("finished");
            return;
        }
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            l0.a();
        } else {
            if (i2 == 0) {
                return;
            }
            deflater.b(bArr, i, i2);
            while (deflater.c > 0 && a(0) != 1) {
            }
        }
    }

    public DeflaterOutputStream(OutputStream outputStream, Deflater deflater) throws IOException {
        this(outputStream, deflater, 512, true);
    }

    public DeflaterOutputStream(OutputStream outputStream, Deflater deflater, int i) throws IOException {
        this(outputStream, deflater, i, true);
    }

    public DeflaterOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, new Deflater(-1), 512, true);
        this.e = true;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.d;
        bArr[0] = (byte) (i & 255);
        write(bArr, 0, 1);
    }
}
