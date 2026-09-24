package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class hx5 {
    public final byte[] a;
    public final RandomAccessFile b;
    public final InputStream c;
    public final long d;
    public final long e;
    public int f;
    public final HashMap g;
    public long h;
    public int i;
    public byte[] j;
    public boolean k;

    public hx5(InputStream inputStream, Long l, long j, int i, y51.a... aVarArr) throws rg5 {
        this.a = new byte[16384];
        this.h = 0L;
        this.i = 0;
        this.j = null;
        Objects.requireNonNull(inputStream, "stream must not be null");
        this.c = inputStream;
        if (i == -1) {
            l = -1L;
        } else if (l.longValue() < 0) {
            c6.f("object size must be provided for part count");
            throw null;
        }
        i = i == 0 ? -1 : i;
        this.d = l.longValue();
        this.e = j;
        this.f = i;
        this.g = y51.d(aVarArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(ox0 ox0Var) {
        long j;
        InputStream inputStream;
        RandomAccessFile randomAccessFile;
        int i;
        long j2;
        int i2;
        int i3;
        if (ox0Var == null) {
            c6.f("valid buffer must be provided");
            return;
        }
        long j3 = ox0Var.a;
        if (this.k) {
            throw new rg5("EOF reached");
        }
        int i4 = this.i;
        int i5 = this.f;
        if (i4 == i5) {
            throw new rg5("data fully read");
        }
        long j4 = this.d;
        int i6 = 1;
        if (i5 != 1) {
            j4 = i4 == i5 - 1 ? j4 - this.h : this.e;
        }
        if (j3 < j4) {
            StringBuilder sbT = dj7.t("insufficient buffer size ", " for data size ", j3);
            sbT.append(j4);
            throw new IllegalArgumentException(sbT.toString());
        }
        HashMap map = this.g;
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                ((z51) ((Map.Entry) it.next()).getValue()).reset();
            }
        }
        byte[] bArr = this.j;
        if (bArr != null) {
            try {
                ox0Var.write(bArr, 0, bArr.length);
                if (map != null) {
                    byte[] bArr2 = this.j;
                    y51.f(map, bArr2, bArr2.length);
                }
                this.j = null;
                j = 1;
            } catch (IOException e) {
                throw new rg5(e);
            }
        } else {
            j = 0;
        }
        while (true) {
            inputStream = this.c;
            randomAccessFile = this.b;
            if (j >= j4) {
                i = i6;
                j2 = j;
                break;
            }
            byte[] bArr3 = this.a;
            i = i6;
            j2 = j;
            int iMin = (int) Math.min(j4 - j, bArr3.length);
            if (randomAccessFile != null) {
                try {
                    i3 = randomAccessFile.read(bArr3, 0, iMin);
                } catch (IOException e2) {
                    throw new rg5(e2);
                }
            } else {
                i3 = inputStream.read(bArr3, 0, iMin);
            }
            boolean z = i3 < 0 ? i : 0;
            this.k = z;
            if (z != 0) {
                if (this.f < 0) {
                    break;
                } else {
                    throw new rg5("unexpected EOF");
                }
            }
            try {
                ox0Var.write(bArr3, 0, i3);
                if (map != null) {
                    y51.f(map, bArr3, i3);
                }
                j = j2 + ((long) i3);
                i6 = i;
            } catch (IOException e3) {
                throw new rg5(e3);
            }
        }
        this.h += j2;
        this.i++;
        if (!this.k) {
            int i7 = i;
            byte[] bArr4 = new byte[i7];
            bArr4[0] = 0;
            this.j = bArr4;
            do {
                byte[] bArr5 = this.j;
                if (randomAccessFile != null) {
                    try {
                        i2 = randomAccessFile.read(bArr5);
                    } catch (IOException e4) {
                        throw new rg5(e4);
                    }
                } else {
                    i2 = inputStream.read(bArr5);
                }
            } while (i2 == 0);
            boolean z2 = i2 < 0 ? i7 : 0;
            this.k = z2;
            if (z2 != 0) {
                this.j = null;
            }
        }
        if (!this.k || this.f >= 0) {
            return;
        }
        this.f = this.i;
    }

    public hx5(RandomAccessFile randomAccessFile, long j, long j2, int i, y51.a... aVarArr) throws rg5 {
        this.a = new byte[16384];
        this.h = 0L;
        this.i = 0;
        this.j = null;
        Objects.requireNonNull(randomAccessFile, "file must not be null");
        this.b = randomAccessFile;
        if (j < 0) {
            c6.f("valid object size must be provided");
            throw null;
        }
        if (i >= 0) {
            i = i == 0 ? -1 : i;
            this.d = j;
            this.e = j2;
            this.f = i;
            this.g = y51.d(aVarArr);
            return;
        }
        c6.f("part count must be provided");
        throw null;
    }
}
