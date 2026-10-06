package defpackage;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eb7 implements Closeable {
    public static final byte[] q = {55, 122, -68, -81, 39, 28};
    public final String a;
    public SeekableByteChannel b;
    public final g40 c;
    public InputStream f;
    public byte[] k;
    public final int p;
    public int d = -1;
    public int e = -1;
    public final ArrayList n = new ArrayList();

    public eb7(FileChannel fileChannel, String str, byte[] bArr, boolean z, int i) throws IOException {
        this.b = fileChannel;
        this.a = str;
        this.p = i;
        try {
            this.c = r(bArr);
            if (bArr != null) {
                this.k = Arrays.copyOf(bArr, bArr.length);
            } else {
                this.k = null;
            }
        } catch (Throwable th) {
            if (z) {
                this.b.close();
            }
            throw th;
        }
    }

    public static long D(long j, ByteBuffer byteBuffer) {
        if (j < 1) {
            return 0L;
        }
        int iPosition = byteBuffer.position();
        long jRemaining = byteBuffer.remaining();
        if (jRemaining < j) {
            j = jRemaining;
        }
        byteBuffer.position(iPosition + ((int) j));
        return j;
    }

    public static int a(long j, String str) throws IOException {
        if (j > 2147483647L || j < 0) {
            throw new IOException(String.format("Cannot handle % %,d", str, Long.valueOf(j)));
        }
        return (int) j;
    }

    public static db7 b() {
        db7 db7Var = new db7();
        db7Var.x = "unknown archive";
        db7Var.G = Integer.MAX_VALUE;
        return db7Var;
    }

    public static void g(ByteBuffer byteBuffer, int i) throws EOFException {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining < i) {
            throw new EOFException(String.format("remaining %,d < expectRemaining %,d", Integer.valueOf(iRemaining), Integer.valueOf(i)));
        }
    }

    public static void h(LinkedHashMap linkedHashMap, int i) {
        linkedHashMap.computeIfAbsent(Integer.valueOf(i), new ab7());
    }

    public static int m(ByteBuffer byteBuffer) throws EOFException {
        if (byteBuffer.hasRemaining()) {
            return byteBuffer.get() & 255;
        }
        d6.d();
        return 0;
    }

    public static BitSet n(ByteBuffer byteBuffer, int i) {
        if (m(byteBuffer) == 0) {
            return q(byteBuffer, i);
        }
        BitSet bitSet = new BitSet(i);
        for (int i2 = 0; i2 < i; i2++) {
            bitSet.set(i2, true);
        }
        return bitSet;
    }

    public static BitSet q(ByteBuffer byteBuffer, int i) throws EOFException {
        BitSet bitSet = new BitSet(i);
        int i2 = 0;
        int iM = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (i2 == 0) {
                iM = m(byteBuffer);
                i2 = 128;
            }
            bitSet.set(i3, (iM & i2) != 0);
            i2 >>>= 1;
        }
        return bitSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [int] */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6, types: [int] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [int] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    public static void u(ByteBuffer byteBuffer, g40 g40Var) throws IOException {
        long j;
        boolean z;
        long j2;
        boolean z2;
        int i;
        long jV;
        long jV2;
        byte[] bArr;
        int iM = m(byteBuffer);
        long j3 = 4294967295L;
        if (iM == 6) {
            g40Var.a = v(byteBuffer);
            int iV = (int) v(byteBuffer);
            int iM2 = m(byteBuffer);
            if (iM2 == 9) {
                g40Var.b = new long[iV];
                int i2 = 0;
                while (true) {
                    long[] jArr = g40Var.b;
                    if (i2 >= jArr.length) {
                        break;
                    }
                    jArr[i2] = v(byteBuffer);
                    i2++;
                }
                iM2 = m(byteBuffer);
            }
            if (iM2 == 10) {
                g40Var.c = n(byteBuffer, iV);
                g40Var.d = new long[iV];
                for (int i3 = 0; i3 < iV; i3++) {
                    if (g40Var.c.get(i3)) {
                        long[] jArr2 = g40Var.d;
                        g(byteBuffer, 4);
                        jArr2[i3] = ((long) byteBuffer.getInt()) & 4294967295L;
                    }
                }
                m(byteBuffer);
            }
            iM = m(byteBuffer);
        }
        if (iM == 7) {
            m(byteBuffer);
            int iV2 = (int) v(byteBuffer);
            hj3[] hj3VarArr = new hj3[iV2];
            g40Var.e = hj3VarArr;
            m(byteBuffer);
            int i4 = 0;
            while (i4 < iV2) {
                hj3 hj3Var = new hj3();
                long j4 = j3;
                int iV3 = (int) v(byteBuffer);
                kk1[] kk1VarArr = new kk1[iV3];
                long j5 = 0;
                int i5 = 0;
                long j6 = 0;
                while (i5 < iV3) {
                    long j7 = j4;
                    int iM3 = m(byteBuffer);
                    int i6 = iM3 & 15;
                    boolean z3 = (iM3 & 16) == 0;
                    boolean z4 = (iM3 & 32) != 0;
                    boolean z5 = (iM3 & 128) != 0;
                    byte[] bArr2 = new byte[i6];
                    g(byteBuffer, i6);
                    byteBuffer.get(bArr2);
                    if (z3) {
                        jV = 1;
                        jV2 = 1;
                    } else {
                        jV = v(byteBuffer);
                        jV2 = v(byteBuffer);
                    }
                    long j8 = j5 + jV;
                    j6 += jV2;
                    hj3[] hj3VarArr2 = hj3VarArr;
                    if (z4) {
                        int iV4 = (int) v(byteBuffer);
                        bArr = new byte[iV4];
                        g(byteBuffer, iV4);
                        byteBuffer.get(bArr);
                    } else {
                        bArr = null;
                    }
                    byte[] bArr3 = bArr;
                    if (z5) {
                        y5.m("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
                        return;
                    }
                    kk1VarArr[i5] = new kk1(bArr2, jV, jV2, bArr3);
                    i5++;
                    hj3VarArr = hj3VarArr2;
                    j5 = j8;
                    j4 = j7;
                }
                hj3[] hj3VarArr3 = hj3VarArr;
                long j9 = j4;
                hj3Var.a = kk1VarArr;
                hj3Var.b = j5;
                hj3Var.c = j6;
                long j10 = j6 - 1;
                int i7 = (int) j10;
                cr0[] cr0VarArr = new cr0[i7];
                int i8 = 0;
                while (i8 < i7) {
                    cr0VarArr[i8] = new cr0(v(byteBuffer), v(byteBuffer));
                    i8++;
                    hj3VarArr3 = hj3VarArr3;
                    j10 = j10;
                }
                hj3[] hj3VarArr4 = hj3VarArr3;
                hj3Var.d = cr0VarArr;
                long j11 = j5 - j10;
                int i9 = (int) j11;
                long[] jArr3 = new long[i9];
                if (j11 == 1) {
                    int i10 = 0;
                    while (i10 < ((int) j5)) {
                        if (hj3Var.d == null) {
                            i = -1;
                            break;
                        }
                        i = 0;
                        while (true) {
                            cr0[] cr0VarArr2 = hj3Var.d;
                            if (i >= cr0VarArr2.length) {
                                i = -1;
                                break;
                            } else if (cr0VarArr2[i].a == i10) {
                                break;
                            } else {
                                i++;
                            }
                        }
                        if (i < 0) {
                            break;
                        } else {
                            i10++;
                        }
                    }
                    jArr3[0] = i10;
                } else {
                    for (int i11 = 0; i11 < i9; i11++) {
                        jArr3[i11] = v(byteBuffer);
                    }
                }
                hj3Var.e = jArr3;
                hj3VarArr4[i4] = hj3Var;
                i4++;
                hj3VarArr = hj3VarArr4;
                j3 = j9;
            }
            hj3[] hj3VarArr5 = hj3VarArr;
            j = j3;
            boolean z6 = false;
            m(byteBuffer);
            for (int i12 = 0; i12 < iV2; i12++) {
                hj3 hj3Var2 = hj3VarArr5[i12];
                a(hj3Var2.c, "totalOutputStreams");
                hj3Var2.f = new long[(int) hj3Var2.c];
                for (int i13 = 0; i13 < hj3Var2.c; i13++) {
                    hj3Var2.f[i13] = v(byteBuffer);
                }
            }
            if (m(byteBuffer) == 10) {
                BitSet bitSetN = n(byteBuffer, iV2);
                int i14 = 0;
                while (i14 < iV2) {
                    if (bitSetN.get(i14)) {
                        hj3 hj3Var3 = hj3VarArr5[i14];
                        hj3Var3.g = true;
                        g(byteBuffer, 4);
                        hj3Var3.h = ((long) byteBuffer.getInt()) & j;
                        z2 = z6;
                    } else {
                        z2 = z6;
                        hj3VarArr5[i14].g = z2;
                    }
                    i14++;
                    z6 = z2;
                }
                z = z6;
                m(byteBuffer);
            } else {
                z = false;
            }
            iM = m(byteBuffer);
        } else {
            j = 4294967295L;
            z = false;
            g40Var.e = hj3.j;
        }
        if (iM == 8) {
            hj3[] hj3VarArr6 = g40Var.e;
            int length = hj3VarArr6.length;
            for (?? r4 = z; r4 < length; r4++) {
                hj3VarArr6[r4].i = 1;
            }
            long length2 = g40Var.e.length;
            int iM4 = m(byteBuffer);
            if (iM4 == 13) {
                hj3[] hj3VarArr7 = g40Var.e;
                int length3 = hj3VarArr7.length;
                long j12 = 0;
                for (?? r7 = z; r7 < length3; r7++) {
                    hj3 hj3Var4 = hj3VarArr7[r7];
                    long jV3 = v(byteBuffer);
                    hj3Var4.i = (int) jV3;
                    j12 += jV3;
                }
                long j13 = j12;
                iM4 = m(byteBuffer);
                length2 = j13;
            }
            l22 l22Var = new l22((int) length2);
            long[] jArr4 = (long[]) l22Var.d;
            BitSet bitSet = (BitSet) l22Var.c;
            long[] jArr5 = (long[]) l22Var.b;
            hj3[] hj3VarArr8 = g40Var.e;
            int length4 = hj3VarArr8.length;
            boolean z7 = z;
            ?? r12 = z7;
            ?? r10 = z7;
            while (r10 < length4) {
                hj3 hj3Var5 = hj3VarArr8[r10];
                if (hj3Var5.i != 0) {
                    if (iM4 == 9) {
                        j2 = 0;
                        r12 = r12;
                        for (?? r14 = z; r14 < hj3Var5.i - 1; r14++) {
                            long jV4 = v(byteBuffer);
                            int i15 = (r12 == true ? 1 : 0) + 1;
                            jArr5[r12 == true ? 1 : 0] = jV4;
                            j2 += jV4;
                            r12 = i15;
                        }
                    } else {
                        j2 = 0;
                    }
                    if (j2 > hj3Var5.b()) {
                        y5.m("sum of unpack sizes of folder exceeds total unpack size");
                        return;
                    } else {
                        jArr5[r12] = hj3Var5.b() - j2;
                        r12++;
                    }
                }
                z = false;
                r10++;
                r12 = r12;
            }
            if (iM4 == 9) {
                iM4 = m(byteBuffer);
            }
            int i16 = 0;
            for (hj3 hj3Var6 : g40Var.e) {
                int i17 = hj3Var6.i;
                if (i17 != 1 || !hj3Var6.g) {
                    i16 += i17;
                }
            }
            if (iM4 == 10) {
                BitSet bitSetN2 = n(byteBuffer, i16);
                long[] jArr6 = new long[i16];
                for (int i18 = 0; i18 < i16; i18++) {
                    if (bitSetN2.get(i18)) {
                        g(byteBuffer, 4);
                        jArr6[i18] = ((long) byteBuffer.getInt()) & j;
                    }
                }
                int i19 = 0;
                int i20 = 0;
                for (hj3 hj3Var7 : g40Var.e) {
                    if (hj3Var7.i == 1 && hj3Var7.g) {
                        bitSet.set(i19, true);
                        jArr4[i19] = hj3Var7.h;
                        i19++;
                    } else {
                        for (int i21 = 0; i21 < hj3Var7.i; i21++) {
                            bitSet.set(i19, bitSetN2.get(i20));
                            jArr4[i19] = jArr6[i20];
                            i19++;
                            i20++;
                        }
                    }
                }
                m(byteBuffer);
            }
            g40Var.f = l22Var;
            m(byteBuffer);
        }
    }

    public static long v(ByteBuffer byteBuffer) {
        long jM = m(byteBuffer);
        int i = 128;
        long jM2 = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            if ((((long) i) & jM) == 0) {
                return ((jM & ((long) (i - 1))) << (i2 * 8)) | jM2;
            }
            jM2 |= ((long) m(byteBuffer)) << (i2 * 8);
            i >>>= 1;
        }
        return jM2;
    }

    public final void A(ByteBuffer byteBuffer, cb7 cb7Var) throws IOException {
        long j;
        String str;
        int i;
        int iCardinality;
        BitSet bitSet;
        int iM = m(byteBuffer);
        if (iM == 6) {
            long jV = v(byteBuffer);
            if (jV >= 0) {
                long j2 = 32 + jV;
                if (j2 <= this.b.size() && j2 >= 0) {
                    cb7Var.a = a(v(byteBuffer), "numPackStreams");
                    int iM2 = m(byteBuffer);
                    if (iM2 == 9) {
                        long j3 = 0;
                        j = 0;
                        for (int i2 = 0; i2 < cb7Var.a; i2++) {
                            long jV2 = v(byteBuffer);
                            j3 += jV2;
                            long j4 = j2 + j3;
                            if (jV2 < 0 || j4 > this.b.size() || j4 < jV) {
                                y5.m(fz5.m("packSize (", ") is out of range", jV2));
                                return;
                            }
                        }
                        iM2 = m(byteBuffer);
                    } else {
                        j = 0;
                    }
                    if (iM2 == 10) {
                        long jCardinality = n(byteBuffer, cb7Var.a).cardinality() * 4;
                        if (D(jCardinality, byteBuffer) < jCardinality) {
                            y5.m("invalid number of CRCs in PackInfo");
                            return;
                        }
                        iM2 = m(byteBuffer);
                    }
                    if (iM2 != 0) {
                        y5.m(xs1.h(iM2, "Badly terminated PackInfo (", ")"));
                        return;
                    }
                    iM = m(byteBuffer);
                }
            }
            y5.m(fz5.m("packPos (", ") is out of range", jV));
            return;
        }
        j = 0;
        String str2 = "negative unpackSize";
        if (iM == 7) {
            int iM3 = m(byteBuffer);
            if (iM3 != 11) {
                y5.m(fz5.j(iM3, "Expected kFolder, got "));
                return;
            }
            cb7Var.f = a(v(byteBuffer), "numFolders");
            if (m(byteBuffer) != 0) {
                y5.m("External unsupported");
                return;
            }
            LinkedList linkedList = new LinkedList();
            int i3 = 0;
            while (true) {
                int i4 = cb7Var.f;
                if (i3 >= i4) {
                    str = str2;
                    i = 0;
                    if (cb7Var.d - (cb7Var.c - ((long) i4)) < cb7Var.a) {
                        y5.m("archive doesn't contain enough packed streams");
                        return;
                    }
                    int iM4 = m(byteBuffer);
                    if (iM4 != 12) {
                        y5.m(fz5.j(iM4, "Expected kCodersUnpackSize, got "));
                        return;
                    }
                    Iterator it = linkedList.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Integer) it.next()).intValue();
                        for (int i5 = 0; i5 < iIntValue; i5++) {
                            if (v(byteBuffer) < j) {
                                c6.f(str);
                                return;
                            }
                        }
                    }
                    int iM5 = m(byteBuffer);
                    if (iM5 == 10) {
                        BitSet bitSetN = n(byteBuffer, cb7Var.f);
                        cb7Var.g = bitSetN;
                        long jCardinality2 = bitSetN.cardinality() * 4;
                        if (D(jCardinality2, byteBuffer) < jCardinality2) {
                            y5.m("invalid number of CRCs in UnpackInfo");
                            return;
                        }
                        iM5 = m(byteBuffer);
                    }
                    if (iM5 == 0) {
                        iM = m(byteBuffer);
                        break;
                    } else {
                        y5.m("Badly terminated UnpackInfo");
                        return;
                    }
                }
                int iA = a(v(byteBuffer), "numCoders");
                if (iA == 0) {
                    y5.m("Folder without coders");
                    return;
                }
                cb7Var.b += (long) iA;
                long jA = j;
                long jA2 = jA;
                int i6 = 0;
                while (i6 < iA) {
                    int iM6 = m(byteBuffer);
                    int i7 = iM6 & 15;
                    g(byteBuffer, i7);
                    byteBuffer.get(new byte[i7]);
                    boolean z = (iM6 & 16) == 0;
                    boolean z2 = (iM6 & 32) != 0;
                    if ((iM6 & 128) != 0) {
                        y5.m("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
                        return;
                    }
                    if (z) {
                        jA++;
                        jA2++;
                    } else {
                        jA += (long) a(v(byteBuffer), "numInStreams");
                        jA2 += (long) a(v(byteBuffer), "numOutStreams");
                    }
                    if (z2) {
                        long jA3 = a(v(byteBuffer), "propertiesSize");
                        if (D(jA3, byteBuffer) < jA3) {
                            y5.m("invalid propertiesSize in folder");
                            return;
                        }
                    }
                    i6++;
                    iA = iA;
                }
                a(jA, "totalInStreams");
                a(jA2, "totalOutStreams");
                cb7Var.c += jA2;
                cb7Var.d += jA;
                if (jA2 == j) {
                    y5.m("Total output streams can't be 0");
                    return;
                }
                int iA2 = a(jA2 - 1, "numBindPairs");
                long j5 = iA2;
                if (jA < j5) {
                    y5.m("Total input streams can't be less than the number of bind pairs");
                    return;
                }
                BitSet bitSet2 = new BitSet((int) jA);
                int i8 = 0;
                while (i8 < iA2) {
                    int i9 = iA2;
                    int iA3 = a(v(byteBuffer), "inIndex");
                    int i10 = i3;
                    String str3 = str2;
                    if (jA <= iA3) {
                        y5.m("inIndex is bigger than number of inStreams");
                        return;
                    }
                    bitSet2.set(iA3);
                    if (jA2 <= a(v(byteBuffer), "outIndex")) {
                        y5.m("outIndex is bigger than number of outStreams");
                        return;
                    }
                    i8++;
                    str2 = str3;
                    i3 = i10;
                    iA2 = i9;
                }
                int i11 = i3;
                String str4 = str2;
                int iA4 = a(jA - j5, "numPackedStreams");
                if (iA4 != 1) {
                    for (int i12 = 0; i12 < iA4; i12++) {
                        if (a(v(byteBuffer), "packedStreamIndex") >= jA) {
                            y5.m("packedStreamIndex is bigger than number of totalInStreams");
                            return;
                        }
                    }
                } else if (bitSet2.nextClearBit(0) == -1) {
                    y5.m("Couldn't find stream's bind pair index");
                    return;
                }
                linkedList.add(Integer.valueOf((int) jA2));
                i3 = i11 + 1;
                str2 = str4;
            }
        } else {
            str = "negative unpackSize";
            i = 0;
        }
        if (iM == 8) {
            int iM7 = m(byteBuffer);
            LinkedList linkedList2 = new LinkedList();
            if (iM7 == 13) {
                for (int i13 = i; i13 < cb7Var.f; i13++) {
                    linkedList2.add(Integer.valueOf(a(v(byteBuffer), "numStreams")));
                }
                cb7Var.e = linkedList2.stream().mapToLong(new za7()).sum();
                iM7 = m(byteBuffer);
            } else {
                cb7Var.e = cb7Var.f;
            }
            a(cb7Var.e, "totalUnpackStreams");
            if (iM7 == 9) {
                Iterator it2 = linkedList2.iterator();
                while (it2.hasNext()) {
                    int iIntValue2 = ((Integer) it2.next()).intValue();
                    if (iIntValue2 != 0) {
                        for (int i14 = i; i14 < iIntValue2 - 1; i14++) {
                            if (v(byteBuffer) < j) {
                                y5.m(str);
                                return;
                            }
                        }
                    }
                }
                iM7 = m(byteBuffer);
            }
            if (linkedList2.isEmpty()) {
                BitSet bitSet3 = cb7Var.g;
                iCardinality = cb7Var.f;
                if (bitSet3 != null) {
                    iCardinality -= bitSet3.cardinality();
                }
            } else {
                Iterator it3 = linkedList2.iterator();
                int i15 = i;
                while (it3.hasNext()) {
                    int iIntValue3 = ((Integer) it3.next()).intValue();
                    if (iIntValue3 == 1 && (bitSet = cb7Var.g) != null) {
                        int i16 = i + 1;
                        if (bitSet.get(i)) {
                            i = i16;
                        } else {
                            i = i16;
                        }
                    }
                    i15 += iIntValue3;
                }
                iCardinality = i15;
            }
            if (iM7 == 10) {
                a(iCardinality, "numDigests");
                long jCardinality3 = n(byteBuffer, iCardinality).cardinality() * 4;
                if (D(jCardinality3, byteBuffer) < jCardinality3) {
                    y5.m("invalid number of missing CRCs in SubStreamInfo");
                    return;
                }
                iM7 = m(byteBuffer);
            }
            if (iM7 != 0) {
                y5.m("Badly terminated SubStreamsInfo");
                return;
            }
            iM = m(byteBuffer);
        }
        if (iM == 0) {
            return;
        }
        y5.m("Badly terminated StreamsInfo");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SeekableByteChannel seekableByteChannel = this.b;
        if (seekableByteChannel != null) {
            try {
                seekableByteChannel.close();
            } finally {
                this.b = null;
                byte[] bArr = this.k;
                if (bArr != null) {
                    Arrays.fill(bArr, (byte) 0);
                }
                this.k = null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:68:0x0149 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:70:0x014c  */
    /* JADX WARN: Code duplicated, block: B:72:0x0167  */
    public final InputStream j(wa7 wa7Var) throws IOException {
        wa7[] wa7VarArr;
        boolean z;
        int i;
        wa7 wa7Var2;
        InputStream inputStream;
        long j;
        int i2;
        wa7 wa7Var3;
        ka6 wu0Var;
        long j2;
        ArrayList arrayList = this.n;
        g40 g40Var = this.c;
        int i3 = 0;
        while (true) {
            wa7VarArr = g40Var.g;
            if (i3 >= wa7VarArr.length) {
                i3 = -1;
                break;
            }
            if (wa7Var == wa7VarArr[i3]) {
                break;
            }
            i3++;
        }
        if (i3 < 0) {
            d6.i("Can not find ", wa7Var.a, " in ", this.a);
            return null;
        }
        l40 l40Var = g40Var.h;
        if (l40Var == null) {
            y5.m("Archive doesn't contain stream information to read entries");
            return null;
        }
        int i4 = ((int[]) l40Var.e)[i3];
        if (i4 < 0) {
            arrayList.clear();
            i = 1;
            inputStream = null;
        } else {
            wa7 wa7Var4 = wa7VarArr[i3];
            if (this.e == i4) {
                if (i3 > 0) {
                    wa7Var4.a(wa7VarArr[i3 - 1].r);
                }
                if (wa7Var4.r == null) {
                    wa7Var4.a(g40Var.g[((int[]) g40Var.h.d)[i4]].r);
                }
                z = true;
            } else {
                this.e = i4;
                z(i4, wa7Var4);
                z = false;
            }
            wa7 wa7Var5 = g40Var.g[i3];
            if (this.d == i3) {
                if (arrayList.isEmpty()) {
                    i = 1;
                    wa7Var2 = wa7Var4;
                    inputStream = null;
                } else {
                    InputStream inputStream2 = (InputStream) dj7.e(arrayList, 1);
                    inputStream = null;
                    if (inputStream2 instanceof c61) {
                        c61 c61Var = (c61) inputStream2;
                        i = 1;
                        wa7Var2 = wa7Var4;
                        long j3 = c61Var.e;
                        synchronized (c61Var) {
                            j = -1;
                            j2 = c61Var.c;
                        }
                        if (j3 - j2 != g40Var.g[this.d].p) {
                        }
                    } else {
                        i = 1;
                        wa7Var2 = wa7Var4;
                        j = -1;
                        if (inputStream2 instanceof wu0) {
                            wu0 wu0Var2 = (wu0) inputStream2;
                            long j4 = wu0Var2.e;
                            if ((j4 == -1 ? Long.MAX_VALUE : Math.max(0L, j4 - wu0Var2.g())) != g40Var.g[this.d].p) {
                            }
                        }
                    }
                    if (this.d == i3 || i2 != 0) {
                        vu0 vu0VarB = wu0.b();
                        vu0VarB.J(this.f);
                        wa7Var3 = wa7Var2;
                        vu0VarB.K(wa7Var3.p);
                        vu0VarB.y = false;
                        wu0Var = new wu0(vu0VarB);
                        if (wa7Var3.m) {
                            int i5 = c61.f;
                            b61 b61Var = new b61();
                            b61Var.x = -1L;
                            b61Var.t = new CRC32();
                            b61Var.k = new y4(wu0Var);
                            b61Var.y = wa7Var3.n;
                            wu0Var = new c61(b61Var);
                        }
                        arrayList.add(wu0Var);
                    }
                }
                i2 = 0;
                if (this.d == i3) {
                    vu0 vu0VarB2 = wu0.b();
                    vu0VarB2.J(this.f);
                    wa7Var3 = wa7Var2;
                    vu0VarB2.K(wa7Var3.p);
                    vu0VarB2.y = false;
                    wu0Var = new wu0(vu0VarB2);
                    if (wa7Var3.m) {
                        int i6 = c61.f;
                        b61 b61Var2 = new b61();
                        b61Var2.x = -1L;
                        b61Var2.t = new CRC32();
                        b61Var2.k = new y4(wu0Var);
                        b61Var2.y = wa7Var3.n;
                        wu0Var = new c61(b61Var2);
                    }
                    arrayList.add(wu0Var);
                } else {
                    vu0 vu0VarB3 = wu0.b();
                    vu0VarB3.J(this.f);
                    wa7Var3 = wa7Var2;
                    vu0VarB3.K(wa7Var3.p);
                    vu0VarB3.y = false;
                    wu0Var = new wu0(vu0VarB3);
                    if (wa7Var3.m) {
                        int i7 = c61.f;
                        b61 b61Var3 = new b61();
                        b61Var3.x = -1L;
                        b61Var3.t = new CRC32();
                        b61Var3.k = new y4(wu0Var);
                        b61Var3.y = wa7Var3.n;
                        wu0Var = new c61(b61Var3);
                    }
                    arrayList.add(wu0Var);
                }
            } else {
                i = 1;
                wa7Var2 = wa7Var4;
                inputStream = null;
                j = -1;
            }
            int i8 = ((int[]) g40Var.h.d)[this.e];
            if (z) {
                int i9 = this.d;
                if (i9 < i3) {
                    i8 = i9 + 1;
                } else {
                    z(i4, wa7Var5);
                }
            }
            while (i8 < i3) {
                wa7 wa7Var6 = g40Var.g[i8];
                vu0 vu0VarB4 = wu0.b();
                vu0VarB4.J(this.f);
                vu0VarB4.K(wa7Var6.p);
                vu0VarB4.y = false;
                ka6 wu0Var3 = new wu0(vu0VarB4);
                if (wa7Var6.m) {
                    int i10 = c61.f;
                    b61 b61Var4 = new b61();
                    b61Var4.x = j;
                    b61Var4.t = new CRC32();
                    b61Var4.k = new y4(wu0Var3);
                    b61Var4.x = wa7Var6.p;
                    b61Var4.y = wa7Var6.n;
                    wu0Var3 = new c61(b61Var4);
                }
                arrayList.add(wu0Var3);
                wa7Var6.a(wa7Var5.r);
                i8++;
                j = -1;
            }
            i2 = i;
            if (this.d == i3) {
                vu0 vu0VarB5 = wu0.b();
                vu0VarB5.J(this.f);
                wa7Var3 = wa7Var2;
                vu0VarB5.K(wa7Var3.p);
                vu0VarB5.y = false;
                wu0Var = new wu0(vu0VarB5);
                if (wa7Var3.m) {
                    int i11 = c61.f;
                    b61 b61Var5 = new b61();
                    b61Var5.x = -1L;
                    b61Var5.t = new CRC32();
                    b61Var5.k = new y4(wu0Var);
                    b61Var5.y = wa7Var3.n;
                    wu0Var = new c61(b61Var5);
                }
                arrayList.add(wu0Var);
            } else {
                vu0 vu0VarB6 = wu0.b();
                vu0VarB6.J(this.f);
                wa7Var3 = wa7Var2;
                vu0VarB6.K(wa7Var3.p);
                vu0VarB6.y = false;
                wu0Var = new wu0(vu0VarB6);
                if (wa7Var3.m) {
                    int i12 = c61.f;
                    b61 b61Var6 = new b61();
                    b61Var6.x = -1L;
                    b61Var6.t = new CRC32();
                    b61Var6.k = new y4(wu0Var);
                    b61Var6.y = wa7Var3.n;
                    wu0Var = new c61(b61Var6);
                }
                arrayList.add(wu0Var);
            }
        }
        this.d = i3;
        this.e = ((int[]) g40Var.h.e)[i3];
        if (g40Var.g[i3].p == 0) {
            return new ByteArrayInputStream(wx3.a);
        }
        if (arrayList.isEmpty()) {
            l0.e("No current 7z entry (call getNextEntry() first).");
            return inputStream;
        }
        while (true) {
            int i13 = i;
            if (arrayList.size() <= i13) {
                return (InputStream) arrayList.get(0);
            }
            InputStream inputStream3 = (InputStream) arrayList.remove(0);
            try {
                n84.d(inputStream3, Long.MAX_VALUE, new i13(2));
                if (inputStream3 != null) {
                    inputStream3.close();
                }
                i = i13;
            } catch (Throwable th) {
                if (inputStream3 == null) {
                    throw th;
                }
                try {
                    inputStream3.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Failed to calculate best type for var: r0v16 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v16 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v17 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v17 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v20 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v20 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v25 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v25 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r0v38 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r0v38 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r10v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r10v9 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r17v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v6 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r17v6 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v6 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r17v7 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v7 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r17v8 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v8 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r17v9 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v9 ??, new type: long
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r6v5 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r6v5 ??, new type: long[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /* JADX WARN: Failed to calculate best type for var: r8v22 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r8v22 ??, new type: long[]
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r17v6 ??, new type: long
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    public final defpackage.g40 r(byte[] r26) {
        /*
            Method dump skipped, instruction units count: 1956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eb7.r(byte[]):g40");
    }

    public final String toString() {
        return this.c.toString();
    }

    public final void z(int i, wa7 wa7Var) throws IOException {
        fb7 fb7Var;
        long j;
        this.n.clear();
        InputStream inputStream = this.f;
        if (inputStream != null) {
            inputStream.close();
            this.f = null;
        }
        g40 g40Var = this.c;
        hj3 hj3Var = g40Var.e[i];
        l40 l40Var = g40Var.h;
        int i2 = ((int[]) l40Var.b)[i];
        this.b.position(g40Var.a + 32 + ((long[]) l40Var.c)[i2]);
        bb7 bb7Var = new bb7(this, new BufferedInputStream(new yu0(this.b, g40Var.b[i2])));
        LinkedList linkedList = new LinkedList();
        InputStream c61Var = bb7Var;
        for (kk1 kk1Var : hj3Var.a()) {
            if (kk1Var.b != 1 || kk1Var.c != 1) {
                y5.m("Multi input/output stream coders are not yet supported");
                return;
            }
            byte[] bArr = kk1Var.a;
            fb7[] fb7VarArr = (fb7[]) fb7.class.getEnumConstants();
            int length = fb7VarArr.length;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    fb7Var = null;
                    break;
                }
                fb7 fb7Var2 = fb7VarArr[i4];
                if (Arrays.equals(fb7Var2.a, bArr)) {
                    fb7Var = fb7Var2;
                    break;
                }
                i4++;
            }
            if (hj3Var.a == null) {
                j = 0;
                break;
                break;
            }
            while (true) {
                kk1[] kk1VarArr = hj3Var.a;
                if (i3 >= kk1VarArr.length) {
                    j = 0;
                    break;
                } else {
                    if (kk1VarArr[i3] == kk1Var) {
                        j = hj3Var.f[i3];
                        break;
                    }
                    i3++;
                }
            }
            c61Var = tk1.a(this.a, c61Var, j, kk1Var, this.k, this.p);
            linkedList.addFirst(new gb7(fb7Var, ((j3) tk1.a.get(fb7Var)).d(kk1Var)));
        }
        wa7Var.a(linkedList);
        if (hj3Var.g) {
            int i5 = c61.f;
            b61 b61Var = new b61();
            b61Var.x = -1L;
            b61Var.t = new CRC32();
            b61Var.J(c61Var);
            b61Var.x = hj3Var.b();
            b61Var.y = hj3Var.h;
            c61Var = new c61(b61Var);
        }
        this.f = c61Var;
    }
}
