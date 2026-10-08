package defpackage;

import com.facebook.crypto.cipher.NativeGCMCipher;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qk5 extends OutputStream {
    public final OutputStream a;
    public final NativeGCMCipher b;
    public final int c;
    public final byte[] d;
    public boolean f = false;
    public final byte[] e = new byte[16];

    public qk5(OutputStream outputStream, NativeGCMCipher nativeGCMCipher) {
        this.a = outputStream;
        this.b = nativeGCMCipher;
        int iG = nativeGCMCipher.g();
        byte[] bArr = new byte[iG + 256];
        this.c = bArr.length - iG;
        this.d = bArr;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        OutputStream outputStream = this.a;
        try {
            byte[] bArr = this.e;
            NativeGCMCipher nativeGCMCipher = this.b;
            if (!this.f) {
                this.f = true;
                try {
                    nativeGCMCipher.d(bArr, bArr.length);
                    outputStream.write(bArr);
                    nativeGCMCipher.c();
                } catch (Throwable th) {
                    nativeGCMCipher.c();
                    throw th;
                }
            }
            outputStream.close();
        } catch (Throwable th2) {
            outputStream.close();
            throw th2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2;
        OutputStream outputStream;
        int i3 = i + i2;
        if (bArr.length < i3) {
            throw new ArrayIndexOutOfBoundsException(i3);
        }
        int i4 = this.c;
        int i5 = i2 / i4;
        int i6 = i2 % i4;
        int i7 = i;
        int i8 = 0;
        while (true) {
            bArr2 = this.d;
            outputStream = this.a;
            if (i8 >= i5) {
                break;
            }
            int i9 = i7;
            outputStream.write(bArr2, 0, this.b.h(bArr, i9, this.c, this.d, 0));
            i7 = i9 + i4;
            i8++;
        }
        if (i6 > 0) {
            outputStream.write(bArr2, 0, this.b.h(bArr, i7, i6, this.d, 0));
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }
}
