package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntToLongFunction;
import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lb7 implements Closeable {
    public final FileChannel a;
    public int c;
    public long f;
    public boolean k;
    public jb7 n;
    public iy1[] p;
    public final ArrayList b = new ArrayList();
    public final CRC32 d = new CRC32();
    public final CRC32 e = new CRC32();
    public List q = Collections.singletonList(new gb7(fb7.LZMA2, null));
    public final HashMap r = new HashMap();

    public lb7(FileChannel fileChannel) throws IOException {
        this.a = fileChannel;
        fileChannel.position(32L);
    }

    public static void j(DataOutputStream dataOutputStream, BitSet bitSet, int i) throws IOException {
        int i2 = 0;
        int i3 = 7;
        for (int i4 = 0; i4 < i; i4++) {
            i2 |= (bitSet.get(i4) ? 1 : 0) << i3;
            i3--;
            if (i3 < 0) {
                dataOutputStream.write(i2);
                i2 = 0;
                i3 = 7;
            }
        }
        if (i3 != 7) {
            dataOutputStream.write(i2);
        }
    }

    public static void m(DataOutput dataOutput, long j) throws IOException {
        int i = 0;
        int i2 = 128;
        int i3 = 0;
        while (i < 8) {
            int i4 = i + 1;
            if (j < (1 << (i4 * 7))) {
                i3 = (int) (((long) i3) | (j >>> (i * 8)));
                break;
            } else {
                i3 |= i2;
                i2 >>>= 1;
                i = i4;
            }
        }
        dataOutput.write(i3);
        while (i > 0) {
            dataOutput.write((int) (255 & j));
            j >>>= 8;
            i--;
        }
    }

    public final void a() throws IOException {
        long j;
        CRC32 crc32 = this.e;
        CRC32 crc33 = this.d;
        jb7 jb7Var = this.n;
        if (jb7Var != null) {
            jb7Var.flush();
            this.n.close();
        }
        wa7 wa7Var = (wa7) dj7.e(this.b, 1);
        if (this.f > 0) {
            wa7Var.b = true;
            this.c++;
            jb7 jb7Var2 = this.n;
            synchronized (jb7Var2) {
                j = jb7Var2.a;
            }
            wa7Var.p = j;
            wa7Var.q = this.f;
            wa7Var.n = crc33.getValue();
            wa7Var.o = crc32.getValue();
            wa7Var.m = true;
            iy1[] iy1VarArr = this.p;
            if (iy1VarArr != null) {
                long[] jArr = new long[iy1VarArr.length];
                Arrays.setAll(jArr, new IntToLongFunction() { // from class: ib7
                    @Override // java.util.function.IntToLongFunction
                    public final long applyAsLong(int i) {
                        long j2;
                        iy1 iy1Var = this.a.p[i];
                        synchronized (iy1Var) {
                            j2 = iy1Var.a;
                        }
                        return j2;
                    }
                });
                this.r.put(wa7Var, jArr);
            }
        } else {
            wa7Var.b = false;
            wa7Var.p = 0L;
            wa7Var.q = 0L;
            wa7Var.m = false;
        }
        this.n = null;
        this.p = null;
        crc33.reset();
        crc32.reset();
        this.f = 0L;
    }

    public final void b() throws IOException {
        int i;
        long j;
        if (this.k) {
            y5.m("This archive has already been finished");
            return;
        }
        this.k = true;
        FileChannel fileChannel = this.a;
        long jPosition = fileChannel.position();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.write(1);
        dataOutputStream.write(4);
        int i2 = this.c;
        int i3 = 0;
        ArrayList<wa7> arrayList = this.b;
        if (i2 > 0) {
            dataOutputStream.write(6);
            m(dataOutputStream, 0L);
            long j2 = 4294967295L;
            m(dataOutputStream, ((long) this.c) & 4294967295L);
            dataOutputStream.write(9);
            for (wa7 wa7Var : arrayList) {
                if (wa7Var.b) {
                    m(dataOutputStream, wa7Var.q);
                }
            }
            dataOutputStream.write(10);
            dataOutputStream.write(1);
            for (wa7 wa7Var2 : arrayList) {
                long j3 = j2;
                if (wa7Var2.b) {
                    dataOutputStream.writeInt(Integer.reverseBytes((int) wa7Var2.o));
                }
                j2 = j3;
            }
            j = j2;
            dataOutputStream.write(0);
            dataOutputStream.write(7);
            dataOutputStream.write(11);
            m(dataOutputStream, this.c);
            dataOutputStream.write(0);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                wa7 wa7Var3 = (wa7) it.next();
                if (wa7Var3.b) {
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    int i4 = i3;
                    for (gb7 gb7Var : g(wa7Var3)) {
                        i4++;
                        byte[] bArr = gb7Var.a.a;
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        byte[] bArrC = ((j3) tk1.a.get(gb7Var.a)).c(gb7Var.b);
                        int length = bArrCopyOf.length;
                        if (bArrC.length > 0) {
                            length |= 32;
                        }
                        byteArrayOutputStream2.write(length);
                        byteArrayOutputStream2.write(bArrCopyOf);
                        if (bArrC.length > 0) {
                            byteArrayOutputStream2.write(bArrC.length);
                            byteArrayOutputStream2.write(bArrC);
                        }
                    }
                    m(dataOutputStream, i4);
                    dataOutputStream.write(byteArrayOutputStream2.toByteArray());
                    long j4 = 0;
                    while (j4 < i4 - 1) {
                        long j5 = 1 + j4;
                        m(dataOutputStream, j5);
                        m(dataOutputStream, j4);
                        j4 = j5;
                    }
                }
                it = it;
                i3 = 0;
            }
            dataOutputStream.write(12);
            for (wa7 wa7Var4 : arrayList) {
                if (wa7Var4.b) {
                    long[] jArr = (long[]) this.r.get(wa7Var4);
                    if (jArr != null) {
                        for (long j6 : jArr) {
                            m(dataOutputStream, j6);
                        }
                    }
                    m(dataOutputStream, wa7Var4.p);
                }
            }
            dataOutputStream.write(10);
            dataOutputStream.write(1);
            for (wa7 wa7Var5 : arrayList) {
                if (wa7Var5.b) {
                    dataOutputStream.writeInt(Integer.reverseBytes((int) wa7Var5.n));
                }
            }
            i = 0;
            dataOutputStream.write(0);
        } else {
            i = 0;
            j = 4294967295L;
        }
        dataOutputStream.write(8);
        dataOutputStream.write(i);
        dataOutputStream.write(i);
        dataOutputStream.write(5);
        m(dataOutputStream, arrayList.size());
        if (arrayList.stream().anyMatch(new hb7())) {
            dataOutputStream.write(14);
            BitSet bitSet = new BitSet(arrayList.size());
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                bitSet.set(i5, !((wa7) arrayList.get(i5)).b);
            }
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream3);
            j(dataOutputStream2, bitSet, arrayList.size());
            dataOutputStream2.flush();
            byte[] byteArray = byteArrayOutputStream3.toByteArray();
            m(dataOutputStream, byteArray.length);
            dataOutputStream.write(byteArray);
        }
        BitSet bitSet2 = new BitSet(0);
        boolean z = false;
        int i6 = 0;
        for (wa7 wa7Var6 : arrayList) {
            if (!wa7Var6.b) {
                boolean z2 = !wa7Var6.c;
                bitSet2.set(i6, z2);
                z |= z2;
                i6++;
            }
        }
        if (z) {
            dataOutputStream.write(15);
            ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream3 = new DataOutputStream(byteArrayOutputStream4);
            j(dataOutputStream3, bitSet2, i6);
            dataOutputStream3.flush();
            byte[] byteArray2 = byteArrayOutputStream4.toByteArray();
            m(dataOutputStream, byteArray2.length);
            dataOutputStream.write(byteArray2);
        }
        BitSet bitSet3 = new BitSet(0);
        boolean z3 = false;
        int i7 = 0;
        for (wa7 wa7Var7 : arrayList) {
            if (!wa7Var7.b) {
                boolean z4 = wa7Var7.d;
                bitSet3.set(i7, z4);
                z3 |= z4;
                i7++;
            }
        }
        if (z3) {
            dataOutputStream.write(16);
            ByteArrayOutputStream byteArrayOutputStream5 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream4 = new DataOutputStream(byteArrayOutputStream5);
            j(dataOutputStream4, bitSet3, i7);
            dataOutputStream4.flush();
            byte[] byteArray3 = byteArrayOutputStream5.toByteArray();
            m(dataOutputStream, byteArray3.length);
            dataOutputStream.write(byteArray3);
        }
        dataOutputStream.write(17);
        ByteArrayOutputStream byteArrayOutputStream6 = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream5 = new DataOutputStream(byteArrayOutputStream6);
        dataOutputStream5.write(0);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            dataOutputStream5.write(((wa7) it2.next()).a.getBytes(StandardCharsets.UTF_16LE));
            dataOutputStream5.writeShort(0);
        }
        dataOutputStream5.flush();
        byte[] byteArray4 = byteArrayOutputStream6.toByteArray();
        m(dataOutputStream, byteArray4.length);
        dataOutputStream.write(byteArray4);
        Iterator it3 = arrayList.iterator();
        int i8 = 0;
        while (it3.hasNext()) {
            if (((wa7) it3.next()).e) {
                i8++;
            }
        }
        if (i8 > 0) {
            dataOutputStream.write(18);
            ByteArrayOutputStream byteArrayOutputStream7 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream6 = new DataOutputStream(byteArrayOutputStream7);
            if (i8 != arrayList.size()) {
                dataOutputStream6.write(0);
                BitSet bitSet4 = new BitSet(arrayList.size());
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    bitSet4.set(i9, ((wa7) arrayList.get(i9)).e);
                }
                j(dataOutputStream6, bitSet4, arrayList.size());
            } else {
                dataOutputStream6.write(1);
            }
            dataOutputStream6.write(0);
            for (wa7 wa7Var8 : arrayList) {
                boolean z5 = wa7Var8.e;
                if (z5) {
                    if (!z5) {
                        g84.j("The entry doesn't have this timestamp");
                        return;
                    }
                    dataOutputStream6.writeLong(Long.reverseBytes(ha3.b(wa7Var8.h)));
                }
            }
            dataOutputStream6.flush();
            byte[] byteArray5 = byteArrayOutputStream7.toByteArray();
            m(dataOutputStream, byteArray5.length);
            dataOutputStream.write(byteArray5);
        }
        Iterator it4 = arrayList.iterator();
        int i10 = 0;
        while (it4.hasNext()) {
            if (((wa7) it4.next()).g) {
                i10++;
            }
        }
        if (i10 > 0) {
            dataOutputStream.write(19);
            ByteArrayOutputStream byteArrayOutputStream8 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream7 = new DataOutputStream(byteArrayOutputStream8);
            if (i10 != arrayList.size()) {
                dataOutputStream7.write(0);
                BitSet bitSet5 = new BitSet(arrayList.size());
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    bitSet5.set(i11, ((wa7) arrayList.get(i11)).g);
                }
                j(dataOutputStream7, bitSet5, arrayList.size());
            } else {
                dataOutputStream7.write(1);
            }
            dataOutputStream7.write(0);
            for (wa7 wa7Var9 : arrayList) {
                boolean z6 = wa7Var9.g;
                if (z6) {
                    if (!z6) {
                        g84.j("The entry doesn't have this timestamp");
                        return;
                    }
                    dataOutputStream7.writeLong(Long.reverseBytes(ha3.b(wa7Var9.j)));
                }
            }
            dataOutputStream7.flush();
            byte[] byteArray6 = byteArrayOutputStream8.toByteArray();
            m(dataOutputStream, byteArray6.length);
            dataOutputStream.write(byteArray6);
        }
        Iterator it5 = arrayList.iterator();
        int i12 = 0;
        while (it5.hasNext()) {
            if (((wa7) it5.next()).f) {
                i12++;
            }
        }
        if (i12 > 0) {
            dataOutputStream.write(20);
            ByteArrayOutputStream byteArrayOutputStream9 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream8 = new DataOutputStream(byteArrayOutputStream9);
            if (i12 != arrayList.size()) {
                dataOutputStream8.write(0);
                BitSet bitSet6 = new BitSet(arrayList.size());
                for (int i13 = 0; i13 < arrayList.size(); i13++) {
                    bitSet6.set(i13, ((wa7) arrayList.get(i13)).f);
                }
                j(dataOutputStream8, bitSet6, arrayList.size());
            } else {
                dataOutputStream8.write(1);
            }
            dataOutputStream8.write(0);
            for (wa7 wa7Var10 : arrayList) {
                boolean z7 = wa7Var10.f;
                if (z7) {
                    if (!z7) {
                        g84.j("The entry doesn't have this timestamp");
                        return;
                    }
                    dataOutputStream8.writeLong(Long.reverseBytes(ha3.b(wa7Var10.i)));
                }
            }
            dataOutputStream8.flush();
            byte[] byteArray7 = byteArrayOutputStream9.toByteArray();
            m(dataOutputStream, byteArray7.length);
            dataOutputStream.write(byteArray7);
        }
        Iterator it6 = arrayList.iterator();
        int i14 = 0;
        while (it6.hasNext()) {
            if (((wa7) it6.next()).k) {
                i14++;
            }
        }
        if (i14 > 0) {
            dataOutputStream.write(21);
            ByteArrayOutputStream byteArrayOutputStream10 = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream9 = new DataOutputStream(byteArrayOutputStream10);
            if (i14 != arrayList.size()) {
                dataOutputStream9.write(0);
                BitSet bitSet7 = new BitSet(arrayList.size());
                for (int i15 = 0; i15 < arrayList.size(); i15++) {
                    bitSet7.set(i15, ((wa7) arrayList.get(i15)).k);
                }
                j(dataOutputStream9, bitSet7, arrayList.size());
            } else {
                dataOutputStream9.write(1);
            }
            dataOutputStream9.write(0);
            for (wa7 wa7Var11 : arrayList) {
                if (wa7Var11.k) {
                    dataOutputStream9.writeInt(Integer.reverseBytes(wa7Var11.l));
                }
            }
            dataOutputStream9.flush();
            byte[] byteArray8 = byteArrayOutputStream10.toByteArray();
            m(dataOutputStream, byteArray8.length);
            dataOutputStream.write(byteArray8);
        }
        dataOutputStream.write(0);
        dataOutputStream.write(0);
        dataOutputStream.flush();
        byte[] byteArray9 = byteArrayOutputStream.toByteArray();
        fileChannel.write(ByteBuffer.wrap(byteArray9));
        CRC32 crc32 = new CRC32();
        crc32.update(byteArray9);
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(32).order(ByteOrder.LITTLE_ENDIAN);
        fileChannel.position(0L);
        byteBufferOrder.put(eb7.q);
        byteBufferOrder.put((byte) 0).put((byte) 2);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putLong(jPosition - 32).putLong(((long) byteArray9.length) & j).putInt((int) crc32.getValue());
        crc32.reset();
        crc32.update(byteBufferOrder.array(), 12, 20);
        byteBufferOrder.putInt(8, (int) crc32.getValue());
        byteBufferOrder.flip();
        fileChannel.write(byteBufferOrder);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileChannel fileChannel = this.a;
        try {
            if (!this.k) {
                b();
            }
        } finally {
            fileChannel.close();
        }
    }

    public final Iterable g(wa7 wa7Var) {
        List list = wa7Var.r;
        return list == null ? this.q : list;
    }

    public final void h(byte[] bArr, int i) throws IOException {
        if (i > 0) {
            if (this.n == null) {
                ArrayList arrayList = this.b;
                if (arrayList.isEmpty()) {
                    l0.e("No current 7z entry");
                    return;
                }
                OutputStream kb7Var = new kb7(this);
                ArrayList arrayList2 = new ArrayList();
                boolean z = true;
                for (gb7 gb7Var : g((wa7) dj7.e(arrayList, 1))) {
                    if (!z) {
                        iy1 iy1Var = new iy1(kb7Var);
                        arrayList2.add(iy1Var);
                        kb7Var = iy1Var;
                    }
                    fb7 fb7Var = gb7Var.a;
                    Object obj = gb7Var.b;
                    j3 j3Var = (j3) tk1.a.get(fb7Var);
                    if (j3Var == null) {
                        c6.n(fb7Var, "Unsupported compression method ");
                        return;
                    } else {
                        kb7Var = j3Var.b(obj, kb7Var);
                        z = false;
                    }
                }
                if (!arrayList2.isEmpty()) {
                    this.p = (iy1[]) arrayList2.toArray(new iy1[0]);
                }
                this.n = new jb7(this, kb7Var);
            }
            this.n.write(bArr, 0, i);
        }
    }
}
