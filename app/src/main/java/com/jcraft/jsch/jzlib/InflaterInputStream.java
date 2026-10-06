package com.jcraft.jsch.jzlib;

import defpackage.c6;
import defpackage.l0;
import defpackage.y5;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class InflaterInputStream extends FilterInputStream {
    public final Inflater a;
    public final byte[] b;
    public boolean c;
    public boolean d;
    public final boolean e;
    public final boolean f;
    public final byte[] k;
    public final byte[] n;

    public InflaterInputStream(InputStream inputStream, Inflater inflater, int i, boolean z) throws IOException {
        super(inputStream);
        this.c = false;
        this.d = false;
        this.e = true;
        this.f = false;
        this.k = new byte[1];
        this.n = new byte[512];
        if (inputStream == null || inflater == null) {
            throw null;
        }
        if (i <= 0) {
            c6.f("buffer size must be greater than 0");
            throw null;
        }
        this.a = inflater;
        this.b = new byte[i];
        this.e = z;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        if (!this.c) {
            return this.d ? 0 : 1;
        }
        y5.m("Stream closed");
        return 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        Inflate inflate;
        InfBlocks infBlocks;
        if (this.c) {
            return;
        }
        if (this.f && (inflate = this.a.k) != null && (infBlocks = inflate.f) != null) {
            infBlocks.b();
            infBlocks.s = null;
            infBlocks.r = null;
        }
        if (this.e) {
            ((FilterInputStream) this).in.close();
        }
        this.c = true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.c) {
            y5.m("Stream closed");
            return 0;
        }
        bArr.getClass();
        if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
            l0.a();
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        if (!this.d) {
            Inflater inflater = this.a;
            inflater.e = bArr;
            inflater.f = i;
            inflater.g = i2;
            int i3 = 0;
            while (!this.d) {
                if (this.a.c == 0) {
                    if (this.c) {
                        y5.m("Stream closed");
                        return 0;
                    }
                    InputStream inputStream = ((FilterInputStream) this).in;
                    byte[] bArr2 = this.b;
                    int i4 = inputStream.read(bArr2, 0, bArr2.length);
                    if (i4 == -1) {
                        Inflate inflate = this.a.k;
                        if (inflate.d != 0 || inflate.a == 12) {
                            if (inflate.b == -1) {
                                throw new EOFException("Unexpected end of ZLIB input stream");
                            }
                            y5.m("footer is not found");
                            return 0;
                        }
                        this.b[0] = 0;
                        i4 = 1;
                    }
                    this.a.b(this.b, 0, i4);
                }
                int iC = this.a.c(0);
                Inflater inflater2 = this.a;
                int i5 = inflater2.f;
                i3 += i5 - i;
                if (iC == -3) {
                    y5.m(inflater2.i);
                    return 0;
                }
                if (iC == 1 || iC == 2) {
                    this.d = true;
                    if (iC == 2) {
                    }
                }
                if (inflater2.g == 0) {
                    return i3;
                }
                i = i5;
            }
            return i3;
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        if (j < 0) {
            c6.f("negative skip length");
            return 0L;
        }
        if (this.c) {
            y5.m("Stream closed");
            return 0L;
        }
        int iMin = (int) Math.min(j, 2147483647L);
        int i = 0;
        while (i < iMin) {
            int length = iMin - i;
            byte[] bArr = this.n;
            if (length > bArr.length) {
                length = bArr.length;
            }
            int i2 = read(bArr, 0, length);
            if (i2 == -1) {
                this.d = true;
                break;
            }
            i += i2;
        }
        return i;
    }

    public InflaterInputStream(InputStream inputStream, boolean z) throws IOException {
        this(inputStream, new Inflater(z));
        this.f = true;
    }

    public InflaterInputStream(InputStream inputStream, Inflater inflater) throws IOException {
        this(inputStream, inflater, 512, true);
    }

    public InflaterInputStream(InputStream inputStream, Inflater inflater, int i) throws IOException {
        this(inputStream, inflater, i, true);
    }

    public InflaterInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (!this.c) {
            byte[] bArr = this.k;
            if (read(bArr, 0, 1) == -1) {
                return -1;
            }
            return bArr[0] & 255;
        }
        y5.m("Stream closed");
        return 0;
    }
}
