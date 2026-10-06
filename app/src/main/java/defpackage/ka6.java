package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ka6 extends FilterInputStream {
    public volatile boolean a;
    public final g84 b;

    public ka6(InputStream inputStream) {
        super(inputStream);
        this.b = g84.a;
    }

    public void a(int i) {
        this.b.getClass();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (((FilterInputStream) this).in == null || this.a) {
            return 0;
        }
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                throw e;
            } catch (Exception e2) {
                throw new IOException(e2);
            }
        }
        this.a = true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i) {
        if (((FilterInputStream) this).in != null) {
            ((FilterInputStream) this).in.mark(i);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return ((FilterInputStream) this).in != null && ((FilterInputStream) this).in.markSupported();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = ((FilterInputStream) this).in.read();
        a(i != -1 ? 1 : -1);
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        try {
            ((FilterInputStream) this).in.reset();
        } catch (IOException e) {
            throw e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        return ((FilterInputStream) this).in.skip(j);
    }

    public ka6(InputStream inputStream, ja6 ja6Var) {
        super(inputStream);
        this.b = g84.a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = n84.a;
        int i2 = ((FilterInputStream) this).in.read(bArr);
        a(i2);
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = ((FilterInputStream) this).in.read(bArr, i, i2);
        a(i3);
        return i3;
    }
}
