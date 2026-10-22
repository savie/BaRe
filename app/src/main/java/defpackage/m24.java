package defpackage;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m24 extends op4 {
    public final int b;
    public final boolean c;
    public final List d;
    public final List e;
    public final long f;
    public final long k;

    /* JADX WARN: Code duplicated, block: B:109:0x0243 A[EDGE_INSN: B:109:0x0243->B:51:0x0243 BREAK  A[LOOP:3: B:48:0x021a->B:50:0x0224], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0192 A[LOOP:2: B:45:0x0190->B:46:0x0192, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:50:0x0224 A[LOOP:3: B:48:0x021a->B:50:0x0224, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:56:0x0279 A[LOOP:4: B:54:0x0273->B:56:0x0279, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:59:0x0288  */
    /* JADX WARN: Code duplicated, block: B:61:0x029b  */
    /* JADX WARN: Code duplicated, block: B:62:0x029d  */
    /* JADX WARN: Code duplicated, block: B:65:0x02ba A[LOOP:6: B:64:0x02b8->B:65:0x02ba, LOOP_END] */
    public m24(qp4 qp4Var, long j, long j2) {
        List list;
        boolean z;
        int i;
        int i2;
        int i3;
        byte[][] bArr;
        int i4;
        byte[] bArr2;
        int i5;
        int i6;
        int i7;
        byte[] bArr3;
        hl2 hl2VarF;
        i67 i67Var;
        int i8;
        int i9;
        int i10;
        int i11;
        ByteArrayOutputStream byteArrayOutputStream;
        int i12;
        byte[] byteArray;
        int i13;
        boolean z2;
        int i14;
        boolean z3;
        int i15;
        int i16;
        super(true);
        this.k = 0L;
        this.b = 1;
        this.d = Collections.singletonList(qp4Var);
        this.e = Collections.EMPTY_LIST;
        long j3 = j;
        this.k = j3;
        this.f = j2;
        this.c = false;
        synchronized (this) {
            list = this.d;
        }
        int size = list.size();
        long[] jArr = new long[size];
        synchronized (this) {
        }
        for (int size2 = list.size() - 1; size2 >= 0; size2--) {
            int i17 = ((qp4) list.get(size2)).c.c;
            jArr[size2] = ((long) ((1 << i17) - 1)) & j3;
            j3 >>>= i17;
        }
        qp4[] qp4VarArr = (qp4[]) list.toArray(new qp4[list.size()]);
        List list2 = this.e;
        sp4[] sp4VarArr = (sp4[]) list2.toArray(new sp4[list2.size()]);
        qp4 qp4Var2 = (qp4) this.d.get(0);
        long jD = qp4VarArr[0].d() - 1;
        long j4 = jArr[0];
        if (jD != j4) {
            qp4VarArr[0] = od2.j(qp4Var2.c, qp4Var2.d, (int) j4, ms8.k(qp4Var2.b), ms8.k(qp4Var2.f));
            z = true;
        } else {
            z = false;
        }
        int i18 = 1;
        while (i18 < size) {
            int i19 = i18 - 1;
            qp4 qp4Var3 = qp4VarArr[i19];
            int i20 = qp4Var3.d.b;
            byte[] bArr4 = new byte[16];
            byte[] bArr5 = new byte[i20];
            i67 i67Var2 = new i67(ms8.k(qp4Var3.b), ms8.k(qp4Var3.f), xh8.o(qp4Var3.d));
            qp4[] qp4VarArr2 = qp4VarArr;
            sp4[] sp4VarArr2 = sp4VarArr;
            i67Var2.d = (int) jArr[i19];
            i67Var2.e = -2;
            i67Var2.a(0, true, bArr5);
            byte[] bArr6 = new byte[i20];
            i67Var2.a(0, false, bArr6);
            System.arraycopy(bArr6, 0, bArr4, 0, 16);
            boolean z4 = i18 >= size + (-1) ? jArr[i18] == ((long) qp4VarArr2[i18].d()) : jArr[i18] == ((long) (qp4VarArr2[i18].d() - 1));
            if (Arrays.equals(bArr4, ms8.k(qp4VarArr2[i18].b)) && Arrays.equals(bArr5, ms8.k(qp4VarArr2[i18].f))) {
                if (!z4) {
                    qp4VarArr2[i18] = od2.j(((qp4) list.get(i18)).c, ((qp4) list.get(i18)).d, (int) jArr[i18], bArr4, bArr5);
                    z = true;
                }
                z2 = true;
            } else {
                qp4 qp4VarJ = od2.j(((qp4) list.get(i18)).c, ((qp4) list.get(i18)).d, (int) jArr[i18], bArr4, bArr5);
                qp4VarArr2[i18] = qp4VarJ;
                qp4 qp4Var4 = qp4VarArr2[i19];
                byte[] bArrB = qp4VarJ.f().b();
                int i21 = qp4Var4.c.c;
                int iD = qp4Var4.d();
                try {
                    synchronized (qp4Var4) {
                        i = qp4Var4.q;
                        if (i >= qp4Var4.e) {
                            throw new vz2("ots private key exhausted");
                        }
                        lp4 lp4Var = qp4Var4.d;
                        byte[] bArr7 = qp4Var4.b;
                        byte[] bArr8 = qp4Var4.f;
                        synchronized (qp4Var4) {
                            i2 = 1;
                            qp4Var4.q++;
                        }
                        i3 = (1 << i21) + iD;
                        bArr = new byte[i21][];
                        i4 = 0;
                        while (i4 < i21) {
                            bArr[i4] = qp4Var4.b((i3 / (i2 << i4)) ^ 1);
                            i4++;
                            i21 = i21;
                            i2 = 1;
                        }
                        up4 up4Var = qp4Var4.c;
                        int i22 = lp4Var.b;
                        byte[] bArr9 = new byte[i22];
                        list = list;
                        i67 i67Var3 = new i67(bArr7, bArr8, xh8.f(i22, lp4Var.f));
                        i67Var3.d = i;
                        i67Var3.e = -3;
                        i67Var3.a(0, false, bArr9);
                        hl2 hl2VarF2 = xh8.f(lp4Var.b, lp4Var.f);
                        size = size;
                        hl2VarF2.update(bArr7, 0, bArr7.length);
                        nc8.q0(i, hl2VarF2);
                        hl2VarF2.a((byte) -127);
                        hl2VarF2.a((byte) -127);
                        hl2VarF2.update(bArr9, 0, i22);
                        hl2VarF2.update(bArrB, 0, bArrB.length);
                        bArr2 = new byte[34];
                        hl2VarF2.doFinal(bArr2, 0);
                        i5 = lp4Var.b;
                        i6 = lp4Var.d;
                        i7 = lp4Var.c;
                        bArr3 = new byte[i6 * i5];
                        hl2VarF = xh8.f(i5, lp4Var.f);
                        jArr = jArr;
                        i18 = i18;
                        i67Var = new i67(bArr7, bArr8, xh8.f(lp4Var.b, lp4Var.f));
                        i67Var.d = i;
                        i8 = (1 << i7) - 1;
                        i9 = 0;
                        i10 = 0;
                        while (true) {
                            i11 = i8;
                            if (i9 < (i5 * 8) / i7) {
                                break;
                            }
                            i10 = (i10 + i11) - ((bArr2[(i9 * i7) / 8] >>> (((~i9) & ((8 / i7) - 1)) * i7)) & i11);
                            i9++;
                            i8 = i11;
                        }
                        int i23 = i10 << lp4Var.e;
                        bArr2[i5] = (byte) ((i23 >>> 8) & 255);
                        bArr2[i5 + 1] = (byte) i23;
                        byteArrayOutputStream = new ByteArrayOutputStream();
                        byteArrayOutputStream.write(bArr7);
                        byteArrayOutputStream.write((byte) (i >>> 24));
                        byteArrayOutputStream.write((byte) (i >>> 16));
                        byteArrayOutputStream.write((byte) (i >>> 8));
                        byteArrayOutputStream.write((byte) i);
                        i12 = i5 + 23;
                        while (byteArrayOutputStream.size() < i12) {
                            byteArrayOutputStream.write(0);
                        }
                        byteArray = byteArrayOutputStream.toByteArray();
                        i67Var.e = 0;
                        i13 = 0;
                        while (i13 < i6) {
                            short s = (short) i13;
                            i14 = i6;
                            byteArray[20] = (byte) (s >>> 8);
                            byteArray[21] = (byte) s;
                            if (i13 < i14 - 1) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            i67Var.a(23, z3, byteArray);
                            i16 = 0;
                            for (i15 = (bArr2[(i13 * i7) / 8] >>> (((~i13) & ((8 / i7) - 1)) * i7)) & i11; i16 < i15; i15 = i15) {
                                byteArray[22] = (byte) i16;
                                hl2VarF.update(byteArray, 0, i12);
                                hl2VarF.doFinal(byteArray, 23);
                                i16++;
                            }
                            System.arraycopy(byteArray, 23, bArr3, i5 * i13, i5);
                            i13++;
                            i6 = i14;
                        }
                        z2 = true;
                        sp4VarArr2[i19] = new sp4(i, new mp4(lp4Var, bArr9, bArr3), up4Var, bArr);
                        z = true;
                    }
                    byteArrayOutputStream.write(bArr7);
                    byteArrayOutputStream.write((byte) (i >>> 24));
                    byteArrayOutputStream.write((byte) (i >>> 16));
                    byteArrayOutputStream.write((byte) (i >>> 8));
                    byteArrayOutputStream.write((byte) i);
                    i12 = i5 + 23;
                    while (byteArrayOutputStream.size() < i12) {
                        byteArrayOutputStream.write(0);
                    }
                    byteArray = byteArrayOutputStream.toByteArray();
                    i67Var.e = 0;
                    i13 = 0;
                    while (i13 < i6) {
                        short s2 = (short) i13;
                        i14 = i6;
                        byteArray[20] = (byte) (s2 >>> 8);
                        byteArray[21] = (byte) s2;
                        if (i13 < i14 - 1) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        i67Var.a(23, z3, byteArray);
                        i16 = 0;
                        while (i16 < i15) {
                            byteArray[22] = (byte) i16;
                            hl2VarF.update(byteArray, 0, i12);
                            hl2VarF.doFinal(byteArray, 23);
                            i16++;
                        }
                        System.arraycopy(byteArray, 23, bArr3, i5 * i13, i5);
                        i13++;
                        i6 = i14;
                    }
                    z2 = true;
                    sp4VarArr2[i19] = new sp4(i, new mp4(lp4Var, bArr9, bArr3), up4Var, bArr);
                    z = true;
                } catch (Exception e) {
                    e6.i(e.getMessage(), e);
                    throw null;
                }
                i3 = (1 << i21) + iD;
                bArr = new byte[i21][];
                i4 = 0;
                while (i4 < i21) {
                    bArr[i4] = qp4Var4.b((i3 / (i2 << i4)) ^ 1);
                    i4++;
                    i21 = i21;
                    i2 = 1;
                }
                up4 up4Var2 = qp4Var4.c;
                int i24 = lp4Var.b;
                byte[] bArr10 = new byte[i24];
                list = list;
                i67 i67Var4 = new i67(bArr7, bArr8, xh8.f(i24, lp4Var.f));
                i67Var4.d = i;
                i67Var4.e = -3;
                i67Var4.a(0, false, bArr10);
                hl2 hl2VarF3 = xh8.f(lp4Var.b, lp4Var.f);
                size = size;
                hl2VarF3.update(bArr7, 0, bArr7.length);
                nc8.q0(i, hl2VarF3);
                hl2VarF3.a((byte) -127);
                hl2VarF3.a((byte) -127);
                hl2VarF3.update(bArr10, 0, i24);
                hl2VarF3.update(bArrB, 0, bArrB.length);
                bArr2 = new byte[34];
                hl2VarF3.doFinal(bArr2, 0);
                i5 = lp4Var.b;
                i6 = lp4Var.d;
                i7 = lp4Var.c;
                bArr3 = new byte[i6 * i5];
                hl2VarF = xh8.f(i5, lp4Var.f);
                jArr = jArr;
                i18 = i18;
                i67Var = new i67(bArr7, bArr8, xh8.f(lp4Var.b, lp4Var.f));
                i67Var.d = i;
                i8 = (1 << i7) - 1;
                i9 = 0;
                i10 = 0;
                while (true) {
                    i11 = i8;
                    if (i9 < (i5 * 8) / i7) {
                        break;
                        break;
                    }
                    i10 = (i10 + i11) - ((bArr2[(i9 * i7) / 8] >>> (((~i9) & ((8 / i7) - 1)) * i7)) & i11);
                    i9++;
                    i8 = i11;
                }
                int i25 = i10 << lp4Var.e;
                bArr2[i5] = (byte) ((i25 >>> 8) & 255);
                bArr2[i5 + 1] = (byte) i25;
                byteArrayOutputStream = new ByteArrayOutputStream();
            }
            i18++;
            size = size;
            qp4VarArr = qp4VarArr2;
            sp4VarArr = sp4VarArr2;
            list = list;
            jArr = jArr;
        }
        qp4[] qp4VarArr3 = qp4VarArr;
        sp4[] sp4VarArr3 = sp4VarArr;
        if (z) {
            synchronized (this) {
                this.d = Collections.unmodifiableList(Arrays.asList(qp4VarArr3));
                this.e = Collections.unmodifiableList(Arrays.asList(sp4VarArr3));
            }
        }
    }

    public static m24 a(Object obj) {
        Throwable th;
        if (obj instanceof m24) {
            return (m24) obj;
        }
        DataInputStream dataInputStream = null;
        if (obj instanceof DataInputStream) {
            DataInputStream dataInputStream2 = (DataInputStream) obj;
            if (dataInputStream2.readInt() != 0) {
                l0.e("unknown version for hss private key");
                return null;
            }
            int i = dataInputStream2.readInt();
            long j = dataInputStream2.readLong();
            long j2 = dataInputStream2.readLong();
            boolean z = dataInputStream2.readBoolean();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(qp4.e(obj));
            }
            for (int i3 = 0; i3 < i - 1; i3++) {
                arrayList2.add(sp4.a(obj));
            }
            return new m24(i, arrayList, arrayList2, j, j2, z);
        }
        if (!(obj instanceof byte[])) {
            if (obj instanceof InputStream) {
                return a(iz1.v((InputStream) obj));
            }
            g84.k(obj, "cannot parse ");
            return null;
        }
        try {
            DataInputStream dataInputStream3 = new DataInputStream(new ByteArrayInputStream((byte[]) obj));
            try {
                try {
                    m24 m24VarA = a(dataInputStream3);
                    dataInputStream3.close();
                    return m24VarA;
                } catch (Throwable th2) {
                    th = th2;
                    dataInputStream = dataInputStream3;
                    if (dataInputStream == null) {
                        throw th;
                    }
                    dataInputStream.close();
                    throw th;
                }
            } catch (Exception unused) {
                qp4 qp4VarE = qp4.e(obj);
                m24 m24Var = new m24(qp4VarE, qp4VarE.d(), qp4VarE.e);
                dataInputStream3.close();
                return m24Var;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final Object clone() {
        try {
            return a(getEncoded());
        } catch (Exception e) {
            e6.i(e.getMessage(), e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m24.class != obj.getClass()) {
            return false;
        }
        m24 m24Var = (m24) obj;
        if (this.b == m24Var.b && this.c == m24Var.c && this.f == m24Var.f && this.k == m24Var.k && this.d.equals(m24Var.d)) {
            return this.e.equals(m24Var.e);
        }
        return false;
    }

    @Override // defpackage.wv2
    public final synchronized byte[] getEncoded() {
        ty3 ty3Var;
        try {
            ty3Var = new ty3(2);
            ty3Var.g(0);
            ty3Var.g(this.b);
            long j = this.k;
            ty3Var.g((int) (j >>> 32));
            ty3Var.g((int) j);
            long j2 = this.f;
            ty3Var.g((int) (j2 >>> 32));
            ty3Var.g((int) j2);
            ((ByteArrayOutputStream) ty3Var.a).write(this.c ? 1 : 0);
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ty3Var.a((qp4) it.next());
            }
            Iterator it2 = this.e.iterator();
            while (it2.hasNext()) {
                ty3Var.a((sp4) it2.next());
            }
        } catch (Throwable th) {
            throw th;
        }
        return ((ByteArrayOutputStream) ty3Var.a).toByteArray();
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + ((this.d.hashCode() + (((this.b * 31) + (this.c ? 1 : 0)) * 31)) * 31)) * 31;
        long j = this.f;
        int i = (iHashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.k;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }

    public m24(int i, ArrayList arrayList, ArrayList arrayList2, long j, long j2, boolean z) {
        super(true);
        this.k = 0L;
        this.b = i;
        this.d = Collections.unmodifiableList(arrayList);
        this.e = Collections.unmodifiableList(arrayList2);
        this.k = j;
        this.f = j2;
        this.c = z;
    }
}
