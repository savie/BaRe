package defpackage;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.StandardOpenOption;
import java.util.Arrays;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.zip.Inflater;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hz8 implements Closeable {
    public static final byte[] L;
    public static final long M;
    public final ByteBuffer G;
    public long H;
    public long I;
    public long J;
    public long K;
    public final LinkedList a;
    public final HashMap b;
    public final xm5 c;
    public final SeekableByteChannel d;
    public final boolean e;
    public volatile boolean f;
    public final boolean k;
    public final byte[] n;
    public final byte[] p;
    public final byte[] q;
    public final byte[] r;
    public final ByteBuffer t;
    public final ByteBuffer x;
    public final ByteBuffer y;

    static {
        StandardCharsets.UTF_8.name();
        EnumSet.of(StandardOpenOption.READ);
        L = new byte[1];
        M = wx3.j(ty8.c, 0, 4);
        Comparator.comparingLong(new zy8()).thenComparingLong(new az8());
    }

    public hz8(FileChannel fileChannel, String str, Charset charset, boolean z, boolean z2) {
        LinkedList linkedList = new LinkedList();
        this.a = linkedList;
        this.b = new HashMap(509);
        this.f = true;
        byte[] bArr = new byte[8];
        this.n = bArr;
        byte[] bArr2 = new byte[4];
        this.p = bArr2;
        byte[] bArr3 = new byte[42];
        this.q = bArr3;
        byte[] bArr4 = new byte[2];
        this.r = bArr4;
        this.t = ByteBuffer.wrap(bArr);
        this.x = ByteBuffer.wrap(bArr2);
        this.y = ByteBuffer.wrap(bArr3);
        this.G = ByteBuffer.wrap(bArr4);
        this.k = false;
        Charset charset2 = dz8.y;
        int i = g51.a;
        xm5 xm5Var = wy8.a;
        this.c = new xm5(charset == null ? Charset.defaultCharset() : charset);
        this.e = z;
        this.d = fileChannel;
        try {
            try {
                g(b());
                linkedList.forEach(new y00(this, 9));
                this.f = false;
            } catch (IOException e) {
                throw new IOException("Error reading Zip content from ".concat(str), e);
            }
        } catch (Throwable th) {
            this.f = true;
            if (z2) {
                n84.b(this.d);
            }
            throw th;
        }
    }

    public final InputStream a(ez8 ez8Var) throws IOException {
        int i = pz8.b;
        if (ez8Var.p.c) {
            throw new lf8(kf8.b, ez8Var);
        }
        int i2 = ez8Var.a;
        if (i2 != 0) {
            Map map = mz8.b;
            if (i2 != 1 && i2 != 6 && i2 != 8 && i2 != 9 && i2 != 12 && i2 != 93 && i2 != 20 && i2 != 95) {
                mz8 mz8Var = (mz8) mz8.b.get(Integer.valueOf(i2));
                if (mz8Var == null) {
                    throw new lf8(kf8.c, ez8Var);
                }
                throw new lf8(mz8Var, ez8Var);
            }
        }
        long j = ez8Var.r;
        if (j == -1) {
            h(ez8Var);
            j = ez8Var.r;
        }
        long j2 = j;
        InputStream cz8Var = null;
        if (j2 != -1) {
            long compressedSize = ez8Var.getCompressedSize();
            if (j2 < 0 || compressedSize < 0 || j2 + compressedSize < j2) {
                c6.f("Corrupted archive, stream boundaries are out of range");
                return null;
            }
            SeekableByteChannel seekableByteChannel = this.d;
            cz8Var = seekableByteChannel instanceof FileChannel ? new cz8(j2, compressedSize, (FileChannel) seekableByteChannel) : new xu0(j2, compressedSize, this.d);
        }
        BufferedInputStream bufferedInputStream = new BufferedInputStream(cz8Var);
        int i3 = ez8Var.a;
        Map map2 = mz8.b;
        int iOrdinal = ((mz8) map2.get(Integer.valueOf(i3))).ordinal();
        if (iOrdinal == 0) {
            return new gz8(bufferedInputStream);
        }
        if (iOrdinal == 1) {
            return new ff8(bufferedInputStream);
        }
        if (iOrdinal == 6) {
            try {
                vu3 vu3Var = ez8Var.p;
                return new m03(vu3Var.e, vu3Var.f, bufferedInputStream);
            } catch (IllegalArgumentException e) {
                throw new IOException("bad IMPLODE data", e);
            }
        }
        if (iOrdinal == 11) {
            return new uj0(bufferedInputStream);
        }
        if (iOrdinal == 8) {
            Inflater inflater = new Inflater(true);
            return new bz8(this, new SequenceInputStream(bufferedInputStream, new ByteArrayInputStream(L)), inflater, inflater);
        }
        if (iOrdinal == 9) {
            return new ng2(bufferedInputStream);
        }
        switch (iOrdinal) {
            case 13:
            case 14:
                return new rz8(bufferedInputStream);
            case 15:
                xx8 xx8Var = new xx8();
                xx8Var.t = -1;
                xx8Var.k = new y4(bufferedInputStream);
                return new yx8(xx8Var);
            default:
                throw new lf8((mz8) map2.get(Integer.valueOf(ez8Var.a)), ez8Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:169:0x0416  */
    /* JADX WARN: Code duplicated, block: B:171:0x0420  */
    /* JADX WARN: Code duplicated, block: B:174:0x0428 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:175:0x042a  */
    /* JADX WARN: Code duplicated, block: B:177:0x0437  */
    /* JADX WARN: Code duplicated, block: B:179:0x043f  */
    /* JADX WARN: Code duplicated, block: B:265:0x0424 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final HashMap b() throws IOException {
        boolean z;
        Object[] objArr;
        boolean zEquals;
        int i;
        boolean z2;
        HashMap map;
        boolean z3;
        xm5 xm5Var;
        boolean z4;
        long j;
        int i2;
        HashMap map2 = new HashMap();
        byte[] bArr = ty8.d;
        int i3 = 4;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        SeekableByteChannel seekableByteChannel = this.d;
        long size = seekableByteChannel.size() - 22;
        long jMax = Math.max(0L, seekableByteChannel.size() - 65557);
        int i4 = 2;
        boolean z5 = false;
        if (size >= 0) {
            while (true) {
                if (size >= jMax) {
                    seekableByteChannel.position(size);
                    try {
                        byteBufferAllocate.rewind();
                        y13.w(seekableByteChannel, byteBufferAllocate);
                        byteBufferAllocate.flip();
                        z = true;
                        if (byteBufferAllocate.get() == bArr[0] && byteBufferAllocate.get() == bArr[1] && byteBufferAllocate.get() == bArr[2] && byteBufferAllocate.get() == bArr[3]) {
                            objArr = true;
                        } else {
                            size--;
                        }
                    } catch (EOFException unused) {
                        z = true;
                        objArr = false;
                    }
                }
                z = true;
                objArr = false;
            }
        } else {
            z = true;
            objArr = false;
        }
        if (objArr != false) {
            seekableByteChannel.position(size);
        }
        if (objArr != true) {
            throw new ZipException("Archive is not a ZIP archive");
        }
        long jPosition = seekableByteChannel.position();
        if (jPosition > 20) {
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
            seekableByteChannel.position(seekableByteChannel.position() - 20);
            byteBufferAllocate2.rewind();
            y13.w(seekableByteChannel, byteBufferAllocate2);
            byteBufferAllocate2.flip();
            zEquals = byteBufferAllocate2.equals(ByteBuffer.wrap(ty8.f));
            if (zEquals) {
                seekableByteChannel.position(seekableByteChannel.position() - 4);
            } else {
                seekableByteChannel.position(jPosition);
            }
        } else {
            zEquals = false;
        }
        int i5 = 16;
        boolean z6 = this.k;
        ByteBuffer byteBuffer = this.x;
        byte[] bArr2 = this.p;
        if (zEquals) {
            i = 8;
            z2 = z6;
            j(4);
            byte[] bArr3 = this.n;
            ByteBuffer byteBuffer2 = this.t;
            if (z2) {
                byteBuffer.rewind();
                y13.w(seekableByteChannel, byteBuffer);
                long j2 = wx3.j(bArr2, 0, 4);
                byteBuffer2.rewind();
                y13.w(seekableByteChannel, byteBuffer2);
                ((oz8) seekableByteChannel).a(j2, uy8.b(bArr3, 0));
            } else {
                j(4);
                byteBuffer2.rewind();
                y13.w(seekableByteChannel, byteBuffer2);
                seekableByteChannel.position(uy8.b(bArr3, 0));
            }
            byteBuffer.rewind();
            y13.w(seekableByteChannel, byteBuffer);
            if (!Arrays.equals(bArr2, ty8.e)) {
                throw new ZipException("Archive's ZIP64 end of central directory locator is corrupt.");
            }
            if (z2) {
                j(16);
                byteBuffer.rewind();
                y13.w(seekableByteChannel, byteBuffer);
                this.H = wx3.j(bArr2, 0, 4);
                j(24);
                byteBuffer2.rewind();
                y13.w(seekableByteChannel, byteBuffer2);
                long jB = uy8.b(bArr3, 0);
                this.I = jB;
                ((oz8) seekableByteChannel).a(this.H, jB);
            } else {
                j(44);
                byteBuffer2.rewind();
                y13.w(seekableByteChannel, byteBuffer2);
                this.H = 0L;
                long jB2 = uy8.b(bArr3, 0);
                this.I = jB2;
                seekableByteChannel.position(jB2);
            }
        } else {
            long jPosition2 = seekableByteChannel.position();
            if (z6) {
                j(6);
                ByteBuffer byteBuffer3 = this.G;
                byteBuffer3.rewind();
                y13.w(seekableByteChannel, byteBuffer3);
                this.H = (int) wx3.j(this.r, 0, 2);
                j(8);
                byteBuffer.rewind();
                y13.w(seekableByteChannel, byteBuffer);
                long j3 = wx3.j(bArr2, 0, 4);
                this.I = j3;
                z2 = z6;
                ((oz8) seekableByteChannel).a(this.H, j3);
                i = 8;
            } else {
                z2 = z6;
                j(12);
                byteBuffer.rewind();
                y13.w(seekableByteChannel, byteBuffer);
                long j4 = wx3.j(bArr2, 0, 4);
                byteBuffer.rewind();
                y13.w(seekableByteChannel, byteBuffer);
                this.H = 0L;
                i = 8;
                long j5 = wx3.j(bArr2, 0, 4);
                this.I = j5;
                long jMax2 = Long.max((jPosition2 - j4) - j5, 0L);
                this.K = jMax2;
                seekableByteChannel.position(this.I + jMax2);
            }
        }
        this.J = seekableByteChannel.position();
        byteBuffer.rewind();
        y13.w(seekableByteChannel, byteBuffer);
        long j6 = wx3.j(bArr2, 0, 4);
        long j7 = M;
        if (j6 != j7) {
            map = null;
            seekableByteChannel.position(this.K);
            byteBuffer.rewind();
            y13.w(seekableByteChannel, byteBuffer);
            if (Arrays.equals(bArr2, ty8.b)) {
                y5.m("Central directory is empty, can't expand corrupt archive.");
                return null;
            }
        } else {
            map = null;
        }
        while (j6 == j7) {
            ByteBuffer byteBuffer4 = this.y;
            byteBuffer4.rewind();
            y13.w(seekableByteChannel, byteBuffer4);
            ez8 ez8Var = new ez8("");
            ez8Var.a = -1;
            ez8Var.b = -1L;
            ez8Var.d = z5 ? 1 : 0;
            HashMap map3 = map;
            ez8Var.p = new vu3();
            ez8Var.q = -1L;
            ez8Var.r = -1L;
            ez8Var.y = -1L;
            ez8Var.m("");
            byte[] bArr4 = this.q;
            ez8Var.d = (((int) wx3.j(bArr4, z5 ? 1 : 0, i4)) >> 8) & 15;
            wx3.j(bArr4, i4, i4);
            int iJ = (int) wx3.j(bArr4, i3, i4);
            vu3 vu3Var = new vu3();
            vu3Var.b = (iJ & 8) != 0 ? z : z5 ? 1 : 0;
            boolean z7 = (iJ & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? z : z5 ? 1 : 0;
            vu3Var.a = z7;
            if ((iJ & 64) != 0) {
                z5 = z;
            }
            vu3Var.d = z5;
            if (z5) {
                z3 = z;
                vu3Var.c = z3;
            } else {
                z3 = z;
            }
            if ((iJ & 1) == 0) {
                z3 = false;
            }
            vu3Var.c = z3;
            vu3Var.e = (iJ & 2) != 0 ? 8192 : 4096;
            vu3Var.f = (iJ & 4) != 0 ? 3 : i4;
            xm5 xm5Var2 = z7 ? wy8.a : this.c;
            ez8Var.p = vu3Var;
            wx3.j(bArr4, i3, i4);
            byte[] bArr5 = bArr2;
            ez8Var.setMethod((int) wx3.j(bArr4, 6, i4));
            ez8Var.setTime(pz8.b(wx3.j(bArr4, i, 4)));
            boolean z8 = z7;
            ez8Var.setCrc(wx3.j(bArr4, 12, 4));
            long j8 = wx3.j(bArr4, i5, 4);
            if (j8 < 0) {
                y5.m("broken archive, entry with negative compressed size");
                return map3;
            }
            ez8Var.setCompressedSize(j8);
            long j9 = wx3.j(bArr4, 20, 4);
            if (j9 < 0) {
                y5.m("broken archive, entry with negative size");
                return map3;
            }
            ez8Var.setSize(j9);
            int iJ2 = (int) wx3.j(bArr4, 24, i4);
            if (iJ2 < 0) {
                y5.m("broken archive, entry with negative fileNameLen");
                return map3;
            }
            int iJ3 = (int) wx3.j(bArr4, 26, i4);
            if (iJ3 < 0) {
                y5.m("broken archive, entry with negative extraLen");
                return map3;
            }
            int iJ4 = (int) wx3.j(bArr4, 28, i4);
            if (iJ4 < 0) {
                y5.m("broken archive, entry with negative commentLen");
                return map3;
            }
            ez8Var.t = (int) wx3.j(bArr4, 30, i4);
            ez8Var.c = (int) wx3.j(bArr4, 32, i4);
            ez8Var.e = wx3.j(bArr4, 34, 4);
            byte[] bArrY = y13.y(seekableByteChannel, iJ2);
            if (bArrY.length < iJ2) {
                d6.d();
                return map3;
            }
            ez8Var.m(xm5Var2.a(bArrY));
            ez8Var.q = wx3.j(bArr4, 38, 4) + this.K;
            this.a.add(ez8Var);
            byte[] bArrY2 = y13.y(seekableByteChannel, iJ3);
            if (bArrY2.length < iJ3) {
                d6.d();
                return map3;
            }
            try {
                try {
                    ez8Var.i(v13.b(bArrY2, false, sy8.b), false);
                    yy8 yy8VarD = ez8Var.d(py8.f);
                    if (yy8VarD != null && !(yy8VarD instanceof py8)) {
                        throw new ZipException("archive contains unparseable zip64 extra field");
                    }
                    py8 py8Var = (py8) yy8VarD;
                    if (py8Var != null) {
                        boolean z9 = ez8Var.b == 4294967295L;
                        boolean z10 = ez8Var.getCompressedSize() == 4294967295L;
                        boolean z11 = ez8Var.q == 4294967295L;
                        xm5Var = xm5Var2;
                        boolean z12 = ez8Var.t == 65535;
                        byte[] bArr6 = py8Var.e;
                        if (bArr6 != null) {
                            z4 = z10;
                            int i6 = (z9 ? 8 : 0) + (z10 ? 8 : 0) + (z11 ? 8 : 0) + (z12 ? 4 : 0);
                            if (bArr6.length < i6) {
                                StringBuilder sbR = dj7.r(i6, "Central directory zip64 extended information extra field's length doesn't match central directory data.  Expected length ", " but is ");
                                sbR.append(py8Var.e.length);
                                throw new ZipException(sbR.toString());
                            }
                            if (z9) {
                                py8Var.a = new uy8(py8Var.e, 0);
                                i2 = 8;
                            } else {
                                i2 = 0;
                            }
                            if (z4) {
                                py8Var.b = new uy8(py8Var.e, i2);
                                i2 += 8;
                            }
                            if (z11) {
                                py8Var.c = new uy8(py8Var.e, i2);
                                i2 += 8;
                            }
                            if (z12) {
                                py8Var.d = new lz8(py8Var.e, i2);
                            }
                        } else {
                            z4 = z10;
                            z9 = z9;
                        }
                        if (z9) {
                            long j10 = py8Var.a.a;
                            if (j10 < 0) {
                                y5.m("broken archive, entry with negative size");
                                return map3;
                            }
                            ez8Var.setSize(j10);
                        } else {
                            if (z4) {
                                py8Var.a = new uy8(ez8Var.b);
                            }
                            if (z4) {
                                j = py8Var.b.a;
                                if (j >= 0) {
                                    y5.m("broken archive, entry with negative compressed size");
                                    return map3;
                                }
                                ez8Var.setCompressedSize(j);
                            } else if (z9) {
                                py8Var.b = new uy8(ez8Var.getCompressedSize());
                            }
                            if (z11) {
                                ez8Var.q = py8Var.c.a;
                            }
                            if (z12) {
                                ez8Var.t = py8Var.d.a;
                            }
                        }
                        if (z4) {
                            j = py8Var.b.a;
                            if (j >= 0) {
                                y5.m("broken archive, entry with negative compressed size");
                                return map3;
                            }
                            ez8Var.setCompressedSize(j);
                        } else if (z9) {
                            py8Var.b = new uy8(ez8Var.getCompressedSize());
                        }
                        if (z11) {
                            ez8Var.q = py8Var.c.a;
                        }
                        if (z12) {
                            ez8Var.t = py8Var.d.a;
                        }
                    } else {
                        xm5Var = xm5Var2;
                    }
                    long j11 = ez8Var.t;
                    if (j11 < 0) {
                        y5.m("broken archive, entry with negative disk number");
                        return map3;
                    }
                    long j12 = ez8Var.q;
                    if (j12 < 0) {
                        y5.m("broken archive, entry with negative local file header offset");
                        return map3;
                    }
                    if (z2) {
                        long j13 = this.H;
                        if (j11 > j13) {
                            z5.i(ez8Var.getName(), " starts on a later disk than central directory", "local file header for ");
                            return map3;
                        }
                        if (j11 == j13 && j12 > this.I) {
                            z5.i(ez8Var.getName(), " starts after central directory", "local file header for ");
                            return map3;
                        }
                    } else if (j12 > this.J) {
                        z5.i(ez8Var.getName(), " starts after central directory", "local file header for ");
                        return map3;
                    }
                    byte[] bArrY3 = y13.y(seekableByteChannel, iJ4);
                    if (bArrY3.length < iJ4) {
                        d6.d();
                        return map3;
                    }
                    ez8Var.setComment(xm5Var.a(bArrY3));
                    if (!z8 && this.e) {
                        map2.put(ez8Var, new fz8(bArrY, bArrY3));
                    }
                    byteBuffer.rewind();
                    y13.w(seekableByteChannel, byteBuffer);
                    j6 = wx3.j(bArr5, 0, 4);
                    i3 = 4;
                    i5 = 16;
                    i4 = 2;
                    z = true;
                    i = 8;
                    z5 = false;
                    bArr2 = bArr5;
                    map = map3;
                } catch (ZipException e) {
                    throw new IllegalArgumentException(e.getMessage(), e);
                }
            } catch (RuntimeException e2) {
                throw ((ZipException) new ZipException("Invalid extra data in entry " + ez8Var.getName()).initCause(e2));
            }
        }
        return map2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f = true;
        this.d.close();
    }

    public final void finalize() throws Throwable {
        try {
            if (!this.f) {
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public final void g(HashMap map) throws IOException {
        for (ez8 ez8Var : this.a) {
            int[] iArrH = h(ez8Var);
            int i = iArrH[0];
            int i2 = iArrH[1];
            j(i);
            byte[] bArrY = y13.y(this.d, i2);
            if (bArrY.length < i2) {
                d6.d();
                return;
            }
            try {
                ez8Var.setExtra(bArrY);
                if (map.containsKey(ez8Var)) {
                    fz8 fz8Var = (fz8) map.get(ez8Var);
                    byte[] bArr = fz8Var.a;
                    byte[] bArr2 = fz8Var.b;
                    int i3 = pz8.b;
                    yy8 yy8VarD = ez8Var.d(zd8.d);
                    String strC = pz8.c(yy8VarD instanceof zd8 ? (zd8) yy8VarD : null, bArr);
                    if (strC != null) {
                        ez8Var.m(strC);
                    }
                    if (bArr2.length > 0) {
                        yy8 yy8VarD2 = ez8Var.d(yd8.d);
                        String strC2 = pz8.c(yy8VarD2 instanceof yd8 ? (yd8) yy8VarD2 : null, bArr2);
                        if (strC2 != null) {
                            ez8Var.setComment(strC2);
                        }
                    }
                }
            } catch (RuntimeException e) {
                String str = "Invalid extra data in entry " + ez8Var.getName();
                int i4 = pz8.b;
                throw ((ZipException) new ZipException(str).initCause(e));
            }
        }
    }

    public final int[] h(ez8 ez8Var) throws IOException {
        long jPosition = ez8Var.q;
        boolean z = this.k;
        SeekableByteChannel seekableByteChannel = this.d;
        if (z) {
            ((oz8) seekableByteChannel).a(ez8Var.t, jPosition + 26);
            jPosition = seekableByteChannel.position() - 26;
        } else {
            seekableByteChannel.position(26 + jPosition);
        }
        ByteBuffer byteBuffer = this.x;
        byteBuffer.rewind();
        y13.w(seekableByteChannel, byteBuffer);
        byteBuffer.flip();
        byte[] bArr = this.r;
        byteBuffer.get(bArr);
        int iJ = (int) wx3.j(bArr, 0, 2);
        byteBuffer.get(bArr);
        int iJ2 = (int) wx3.j(bArr, 0, 2);
        long j = jPosition + 30 + ((long) iJ) + ((long) iJ2);
        ez8Var.r = j;
        if (ez8Var.getCompressedSize() + j <= this.J) {
            return new int[]{iJ, iJ2};
        }
        z5.i(ez8Var.getName(), " overlaps with central directory.", "data for ");
        return null;
    }

    public final void j(int i) throws IOException {
        SeekableByteChannel seekableByteChannel = this.d;
        long jPosition = seekableByteChannel.position() + ((long) i);
        if (jPosition <= seekableByteChannel.size()) {
            seekableByteChannel.position(jPosition);
        } else {
            d6.d();
        }
    }
}
