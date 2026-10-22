package defpackage;

import java.io.Serializable;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public final class mh0 implements Serializable {
    public final TreeMap a;
    public final transient long b;

    /* JADX WARN: Code duplicated, block: B:33:0x010f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, mh0] */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    public mh0(kx8 kx8Var, long j, byte[] bArr, byte[] bArr2) {
        long j2;
        mh0 mh0Var;
        kx8 kx8Var2 = kx8Var;
        ?? obj = new Object();
        obj.a = new TreeMap();
        long j3 = 1;
        obj.b = (1 << kx8Var2.c) - 1;
        long j4 = 0;
        mh0 mh0Var2 = obj;
        while (j4 < j) {
            TreeMap treeMap = mh0Var2.a;
            rx8 rx8Var = kx8Var2.b;
            int i = rx8Var.b;
            long j5 = j3;
            long j6 = j4 >> i;
            long j7 = (j5 << i) - j5;
            int i2 = (int) (j4 & j7);
            tq5 tq5Var = new tq5();
            tq5Var.b = j6;
            tq5Var.e = i2;
            uq5 uq5Var = new uq5(tq5Var);
            int i3 = 1 << i;
            int i4 = i3 - 1;
            if (i2 < i4) {
                if (((lh0) treeMap.get(0)) == null || i2 == 0) {
                    treeMap.put(0, new lh0(rx8Var, bArr, bArr2, uq5Var));
                }
                TreeMap treeMap2 = mh0Var2.a;
                lh0 lh0Var = (lh0) treeMap2.get(0);
                lh0Var.getClass();
            }
            int i5 = 1;
            long j8 = j6;
            ?? r0 = mh0Var2;
            while (i5 < kx8Var2.d) {
                long j9 = j8;
                int i6 = (int) (j9 & j7);
                long j10 = j4;
                long j11 = j9 >> i;
                tq5 tq5Var2 = new tq5();
                tq5Var2.c = i5;
                tq5Var2.b = j11;
                tq5Var2.e = i6;
                uq5 uq5Var2 = new uq5(tq5Var2);
                if (treeMap.get(Integer.valueOf(i5)) != null) {
                    j2 = j11;
                    if (j10 != 0 && j10 % ((long) Math.pow(i3, i5 + 1)) == 0) {
                    }
                    if (i6 < i4 || j10 == 0 || (j10 + j5) % ((long) Math.pow(i3, i5)) != 0) {
                        mh0Var = this;
                    } else {
                        mh0Var = this;
                        TreeMap treeMap3 = mh0Var.a;
                        Integer numValueOf = Integer.valueOf(i5);
                        lh0 lh0Var2 = (lh0) treeMap3.get(Integer.valueOf(i5));
                        lh0Var2.getClass();
                    }
                    i5++;
                    kx8Var2 = kx8Var;
                    j8 = j2;
                    j4 = j10;
                    r0 = mh0Var;
                } else {
                    j2 = j11;
                }
                treeMap.put(Integer.valueOf(i5), new lh0(rx8Var, bArr, bArr2, uq5Var2));
                if (i6 < i4) {
                    mh0Var = this;
                } else {
                    mh0Var = this;
                }
                i5++;
                kx8Var2 = kx8Var;
                j8 = j2;
                j4 = j10;
                r0 = mh0Var;
            }
            j4 += j5;
            kx8Var2 = kx8Var;
            j3 = j5;
            mh0Var2 = r0;
        }
    }

    public final mh0 a(f1 f1Var) {
        mh0 mh0Var = new mh0(this.b);
        TreeMap treeMap = this.a;
        for (Integer num : treeMap.keySet()) {
            lh0 lh0Var = (lh0) treeMap.get(num);
            lh0Var.getClass();
            mh0Var.a.put(num, new lh0(lh0Var, f1Var));
        }
        return mh0Var;
    }

    public mh0(mh0 mh0Var, long j) {
        this.a = new TreeMap();
        for (Integer num : mh0Var.a.keySet()) {
            this.a.put(num, new lh0((lh0) mh0Var.a.get(num)));
        }
        this.b = j;
    }

    public mh0(long j) {
        this.a = new TreeMap();
        this.b = j;
    }
}
