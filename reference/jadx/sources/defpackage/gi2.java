package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gi2 extends InputStream {
    public InputStream a;
    public final di2 b;
    public IOException c = null;
    public final byte[] d = new byte[1];

    public gi2(InputStream inputStream, int i) {
        inputStream.getClass();
        this.a = inputStream;
        this.b = new di2(i);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        InputStream inputStream = this.a;
        if (inputStream == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.c;
        if (iOException == null) {
            return inputStream.available();
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.a = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        InputStream inputStream = this.a;
        if (inputStream == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.c;
        if (iOException != null) {
            throw iOException;
        }
        try {
            int i3 = inputStream.read(bArr, i, i2);
            if (i3 == -1) {
                return -1;
            }
            di2 di2Var = this.b;
            byte[] bArr2 = (byte[]) di2Var.b;
            int i4 = di2Var.a;
            int iMin = Math.min(i3, i4);
            int i5 = 0;
            while (i5 < iMin) {
                int i6 = i + i5;
                bArr[i6] = (byte) (bArr[i6] + bArr2[i5]);
                i5++;
            }
            while (i5 < i3) {
                int i7 = i + i5;
                bArr[i7] = (byte) (bArr[i7] + bArr[i7 - i4]);
                i5++;
            }
            if (i3 >= i4) {
                System.arraycopy(bArr, (i + i3) - i4, bArr2, 0, i4);
                return i3;
            }
            int i8 = i4 - i5;
            System.arraycopy(bArr2, i5, bArr2, 0, i8);
            System.arraycopy(bArr, i, bArr2, i8, i3);
            return i3;
        } catch (IOException e) {
            this.c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.d;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
