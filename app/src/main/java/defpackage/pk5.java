package defpackage;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pk5 extends InputStream {
    public final kx7 a;
    public final NativeGCMCipher b;
    public byte[] c;
    public boolean d = false;

    public pk5(InputStream inputStream, NativeGCMCipher nativeGCMCipher) {
        this.a = new kx7(inputStream);
        this.b = nativeGCMCipher;
    }

    public final void a() throws l {
        NativeGCMCipher nativeGCMCipher = this.b;
        if (this.d) {
            return;
        }
        this.d = true;
        try {
            kx7 kx7Var = this.a;
            if (kx7Var.c != kx7Var.b) {
                throw new IOException("Not enough tail data");
            }
            byte[] bArr = kx7Var.a;
            nativeGCMCipher.a(bArr, bArr.length);
            nativeGCMCipher.c();
        } catch (Throwable th) {
            nativeGCMCipher.c();
            throw th;
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        kx7 kx7Var = this.a;
        try {
            a();
        } finally {
            kx7Var.close();
        }
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        if (bArr.length < i3) {
            throw new ArrayIndexOutOfBoundsException(i3);
        }
        int i4 = this.a.read(bArr, i, i2);
        if (i4 != -1) {
            return this.b.h(bArr, i, i4, bArr, i);
        }
        a();
        return -1;
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        if (this.c == null) {
            this.c = new byte[256];
        }
        long j2 = 0;
        while (j > 0) {
            int i = read(this.c, 0, (int) Math.min(j, 256L));
            if (i < 0) {
                break;
            }
            long j3 = i;
            j2 += j3;
            j -= j3;
        }
        if (j2 == 0) {
            return -1L;
        }
        return j2;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read() {
        throw new UnsupportedOperationException();
    }
}
