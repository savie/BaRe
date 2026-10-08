package defpackage;

import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rd8 extends oe3 {
    public final v40 a;
    public pe3 b;
    public final DataOutputStream c;
    public final byte[] d;
    public int e = 0;
    public boolean f = true;
    public boolean k = false;
    public IOException n = null;
    public final byte[] p = new byte[1];

    public rd8(pe3 pe3Var, v40 v40Var) {
        this.b = pe3Var;
        this.c = new DataOutputStream(pe3Var);
        this.a = v40Var;
        this.d = v40Var.a(65536);
    }

    public final void a() throws IOException {
        IOException iOException = this.n;
        if (iOException != null) {
            throw iOException;
        }
        if (this.k) {
            throw new ay8("Stream finished or closed");
        }
        try {
            int i = this.e;
            byte[] bArr = this.d;
            if (i > 0) {
                DataOutputStream dataOutputStream = this.c;
                dataOutputStream.writeByte(this.f ? 1 : 2);
                dataOutputStream.writeShort(i - 1);
                dataOutputStream.write(bArr, 0, i);
                this.f = false;
                this.e = 0;
            }
            this.b.write(0);
            this.k = true;
            this.a.c(bArr);
        } catch (IOException e) {
            this.n = e;
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.b != null) {
            if (!this.k) {
                try {
                    a();
                } catch (IOException unused) {
                }
            }
            try {
                this.b.close();
            } catch (IOException e) {
                if (this.n == null) {
                    this.n = e;
                }
            }
            this.b = null;
        }
        IOException iOException = this.n;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        IOException iOException = this.n;
        if (iOException != null) {
            throw iOException;
        }
        if (this.k) {
            throw new ay8("Stream finished or closed");
        }
        try {
            int i = this.e;
            if (i > 0) {
                byte[] bArr = this.d;
                DataOutputStream dataOutputStream = this.c;
                dataOutputStream.writeByte(this.f ? 1 : 2);
                dataOutputStream.writeShort(i - 1);
                dataOutputStream.write(bArr, 0, i);
                this.f = false;
                this.e = 0;
            }
            this.b.flush();
        } catch (IOException e) {
            this.n = e;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        byte[] bArr2 = this.d;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return;
        }
        IOException iOException = this.n;
        if (iOException != null) {
            throw iOException;
        }
        if (this.k) {
            throw new ay8("Stream finished or closed");
        }
        while (i2 > 0) {
            try {
                int iMin = Math.min(65536 - this.e, i2);
                DataOutputStream dataOutputStream = this.c;
                if (iMin == 65536) {
                    dataOutputStream.writeByte(this.f ? 1 : 2);
                    dataOutputStream.writeShort(iMin - 1);
                    dataOutputStream.write(bArr, i, iMin);
                    this.f = false;
                } else {
                    System.arraycopy(bArr, i, bArr2, this.e, iMin);
                    int i4 = this.e + iMin;
                    this.e = i4;
                    if (i4 == 65536) {
                        dataOutputStream.writeByte(this.f ? 1 : 2);
                        dataOutputStream.writeShort(i4 - 1);
                        dataOutputStream.write(bArr2, 0, i4);
                        this.f = false;
                        this.e = 0;
                    }
                }
                i += iMin;
                i2 -= iMin;
            } catch (IOException e) {
                this.n = e;
                throw e;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.p;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
