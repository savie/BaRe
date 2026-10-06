package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vc6 implements Closeable {
    public static final Logger k = Logger.getLogger(vc6.class.getName());
    public final RandomAccessFile a;
    public int b;
    public int c;
    public sc6 d;
    public sc6 e;
    public final byte[] f;

    public vc6(File file) throws IOException {
        byte[] bArr = new byte[16];
        this.f = bArr;
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr2 = new byte[16];
                int[] iArr = {4096, 0, 0, 0};
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    A(bArr2, i, iArr[i2]);
                    i += 4;
                }
                randomAccessFile.write(bArr2);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    y5.m("Rename failed!");
                    throw null;
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.a = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(bArr);
        int iM = m(bArr, 0);
        this.b = iM;
        if (iM <= randomAccessFile2.length()) {
            this.c = m(bArr, 4);
            int iM2 = m(bArr, 8);
            int iM3 = m(bArr, 12);
            this.d = j(iM2);
            this.e = j(iM3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.b + ", Actual length: " + randomAccessFile2.length());
    }

    public static void A(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public static int m(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    public final void a(byte[] bArr) {
        int iV;
        int length = bArr.length;
        synchronized (this) {
            if (length >= 0) {
                if (length <= bArr.length) {
                    b(length);
                    boolean zH = h();
                    if (zH) {
                        iV = 16;
                    } else {
                        sc6 sc6Var = this.e;
                        iV = v(sc6Var.b + 4 + sc6Var.c);
                    }
                    sc6 sc6Var2 = new sc6(iV, length);
                    A(this.f, 0, length);
                    r(this.f, iV, 4);
                    r(bArr, iV + 4, length);
                    z(this.b, this.c + 1, zH ? iV : this.d.b, iV);
                    this.e = sc6Var2;
                    this.c++;
                    if (zH) {
                        this.d = sc6Var2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public final void b(int i) throws IOException {
        int i2 = i + 4;
        int iU = this.b - u();
        if (iU >= i2) {
            return;
        }
        int i3 = this.b;
        do {
            iU += i3;
            i3 <<= 1;
        } while (iU < i2);
        RandomAccessFile randomAccessFile = this.a;
        randomAccessFile.setLength(i3);
        randomAccessFile.getChannel().force(true);
        sc6 sc6Var = this.e;
        int iV = v(sc6Var.b + 4 + sc6Var.c);
        if (iV < this.d.b) {
            FileChannel channel = randomAccessFile.getChannel();
            channel.position(this.b);
            long j = iV - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                e6.e("Copied insufficient number of bytes!");
                return;
            }
        }
        int i4 = this.e.b;
        int i5 = this.d.b;
        if (i4 < i5) {
            int i6 = (this.b + i4) - 16;
            z(i3, this.c, i5, i6);
            this.e = new sc6(i6, this.e.c);
        } else {
            z(i3, this.c, i5, i4);
        }
        this.b = i3;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.a.close();
    }

    public final synchronized void g(uc6 uc6Var) {
        int iV = this.d.b;
        for (int i = 0; i < this.c; i++) {
            sc6 sc6VarJ = j(iV);
            uc6Var.a(new tc6(this, sc6VarJ), sc6VarJ.c);
            iV = v(sc6VarJ.b + 4 + sc6VarJ.c);
        }
    }

    public final synchronized boolean h() {
        return this.c == 0;
    }

    public final sc6 j(int i) throws IOException {
        if (i == 0) {
            return sc6.d;
        }
        RandomAccessFile randomAccessFile = this.a;
        randomAccessFile.seek(i);
        return new sc6(i, randomAccessFile.readInt());
    }

    public final synchronized void n() {
        if (h()) {
            throw new NoSuchElementException();
        }
        if (this.c == 1) {
            synchronized (this) {
                z(4096, 0, 0, 0);
                this.c = 0;
                sc6 sc6Var = sc6.d;
                this.d = sc6Var;
                this.e = sc6Var;
                if (this.b > 4096) {
                    RandomAccessFile randomAccessFile = this.a;
                    randomAccessFile.setLength(4096L);
                    randomAccessFile.getChannel().force(true);
                }
                this.b = 4096;
            }
        } else {
            sc6 sc6Var2 = this.d;
            int iV = v(sc6Var2.b + 4 + sc6Var2.c);
            q(iV, this.f, 0, 4);
            int iM = m(this.f, 0);
            z(this.b, this.c - 1, iV, this.e.b);
            this.c--;
            this.d = new sc6(iV, iM);
        }
    }

    public final void q(int i, byte[] bArr, int i2, int i3) throws IOException {
        int iV = v(i);
        int i4 = iV + i3;
        int i5 = this.b;
        RandomAccessFile randomAccessFile = this.a;
        if (i4 <= i5) {
            randomAccessFile.seek(iV);
            randomAccessFile.readFully(bArr, i2, i3);
            return;
        }
        int i6 = i5 - iV;
        randomAccessFile.seek(iV);
        randomAccessFile.readFully(bArr, i2, i6);
        randomAccessFile.seek(16L);
        randomAccessFile.readFully(bArr, i2 + i6, i3 - i6);
    }

    public final void r(byte[] bArr, int i, int i2) throws IOException {
        int iV = v(i);
        int i3 = iV + i2;
        int i4 = this.b;
        RandomAccessFile randomAccessFile = this.a;
        if (i3 <= i4) {
            randomAccessFile.seek(iV);
            randomAccessFile.write(bArr, 0, i2);
            return;
        }
        int i5 = i4 - iV;
        randomAccessFile.seek(iV);
        randomAccessFile.write(bArr, 0, i5);
        randomAccessFile.seek(16L);
        randomAccessFile.write(bArr, i5, i2 - i5);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(vc6.class.getSimpleName());
        sb.append("[fileLength=");
        sb.append(this.b);
        sb.append(", size=");
        sb.append(this.c);
        sb.append(", first=");
        sb.append(this.d);
        sb.append(", last=");
        sb.append(this.e);
        sb.append(", element lengths=[");
        try {
            g(new rc6(sb));
        } catch (IOException e) {
            k.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    public final int u() {
        if (this.c == 0) {
            return 16;
        }
        sc6 sc6Var = this.e;
        int i = sc6Var.b;
        int i2 = this.d.b;
        return i >= i2 ? (i - i2) + 4 + sc6Var.c + 16 : (((i + 4) + sc6Var.c) + this.b) - i2;
    }

    public final int v(int i) {
        int i2 = this.b;
        return i < i2 ? i : (i + 16) - i2;
    }

    public final void z(int i, int i2, int i3, int i4) throws IOException {
        int[] iArr = {i, i2, i3, i4};
        int i5 = 0;
        int i6 = 0;
        while (true) {
            byte[] bArr = this.f;
            if (i5 >= 4) {
                RandomAccessFile randomAccessFile = this.a;
                randomAccessFile.seek(0L);
                randomAccessFile.write(bArr);
                return;
            } else {
                A(bArr, i6, iArr[i5]);
                i6 += 4;
                i5++;
            }
        }
    }
}
