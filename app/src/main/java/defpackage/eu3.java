package defpackage;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class eu3 implements d {
    public j a;
    public ro b;
    public k40 c;
    public boolean d;
    public boolean e;
    public int f;
    public byte[] g;
    public byte[] h;
    public byte[] i;
    public byte[] j;
    public byte[] k;
    public byte[] l;
    public byte[] m;
    public byte[] n;
    public byte[] o;
    public byte[] p;
    public byte[] q;
    public int r;
    public int s;
    public long t;
    public byte[] u;
    public int v;
    public long w;
    public long x;

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // defpackage.d
    public final void a(boolean z, z61 z61Var) {
        byte[] bArrK;
        oo4 oo4Var;
        byte b;
        byte[] bArr;
        ro roVar = this.b;
        j jVar = this.a;
        this.d = z;
        this.m = null;
        byte b2 = 1;
        this.e = true;
        if (z61Var instanceof e) {
            e eVar = (e) z61Var;
            bArrK = ms8.k(eVar.b);
            this.i = ms8.k(eVar.a);
            int i = eVar.d;
            if (i < 32 || i > 128 || i % 8 != 0) {
                c6.f(fz5.j(i, "Invalid value for MAC size: "));
                return;
            } else {
                this.f = i / 8;
                oo4Var = eVar.c;
            }
        } else {
            if (!(z61Var instanceof vw5)) {
                c6.f("invalid parameters passed to GCM");
                return;
            }
            vw5 vw5Var = (vw5) z61Var;
            bArrK = vw5Var.a;
            this.i = null;
            this.f = 16;
            oo4Var = (oo4) vw5Var.b;
        }
        this.l = new byte[z ? 16 : this.f + 16];
        if (bArrK == null || bArrK.length < 1) {
            c6.f("IV must be at least 1 byte");
            return;
        }
        if (z && (bArr = this.h) != null && Arrays.equals(bArr, bArrK)) {
            if (oo4Var == null) {
                c6.f("cannot reuse nonce for GCM encryption");
                return;
            }
            byte[] bArr2 = this.g;
            if (bArr2 != null && Arrays.equals(bArr2, oo4Var.a)) {
                c6.f("cannot reuse nonce for GCM encryption");
                return;
            }
        }
        this.h = bArrK;
        if (oo4Var != null) {
            this.g = oo4Var.a;
        }
        if (oo4Var != null) {
            jVar.a(true, oo4Var);
            byte[] bArr3 = new byte[16];
            this.j = bArr3;
            jVar.j(bArr3, bArr3, 0, 0);
            byte[] bArr4 = this.j;
            int i2 = 2;
            if (((long[][]) roVar.c) == null) {
                roVar.c = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 256, 2);
            } else {
                byte[] bArr5 = (byte[]) roVar.b;
                int i3 = 0;
                for (int i4 = 0; i4 < 16; i4++) {
                    i3 |= bArr5[i4] ^ bArr4[i4];
                }
                if (((byte) ((((i3 >>> 1) | (i3 & 1)) - 1) >> 31)) != 0) {
                    b = 1;
                }
                this.c = null;
            }
            byte[] bArr6 = new byte[16];
            roVar.b = bArr6;
            for (int i5 = 0; i5 < 16; i5++) {
                bArr6[i5] = bArr4[i5];
            }
            byte[] bArr7 = (byte[]) roVar.b;
            long[] jArr = ((long[][]) roVar.c)[1];
            int i6 = 0;
            int i7 = 0;
            while (i6 < i2) {
                jArr[i6] = ((((long) xx3.a(bArr7, i7)) & 4294967295L) << 32) | (((long) xx3.a(bArr7, i7 + 4)) & 4294967295L);
                i7 += 8;
                i6++;
                i2 = i2;
                b2 = b2;
            }
            b = b2;
            int i8 = i2;
            long[] jArr2 = ((long[][]) roVar.c)[b];
            long j = jArr2[0];
            long j2 = jArr2[b];
            long j3 = j2 << 57;
            jArr2[0] = ((((j >>> 7) ^ j3) ^ (j3 >>> b)) ^ (j3 >>> i8)) ^ (j3 >>> 7);
            jArr2[b] = (j << 57) | (j2 >>> 7);
            int i9 = i8;
            for (int i10 = 256; i9 < i10; i10 = 256) {
                long[][] jArr3 = (long[][]) roVar.c;
                long[] jArr4 = jArr3[i9 >> 1];
                long[] jArr5 = jArr3[i9];
                long j4 = jArr4[0];
                long j5 = jArr4[b];
                long j6 = j4 >> 63;
                long j7 = ((j4 ^ (j6 & (-2233785415175766016L))) << b) | (j5 >>> 63);
                jArr5[0] = j7;
                long j8 = (-j6) | (j5 << b);
                jArr5[b] = j8;
                long[] jArr6 = jArr3[b];
                long[] jArr7 = jArr3[i9 + 1];
                jArr7[0] = j7 ^ jArr6[0];
                jArr7[b] = j8 ^ jArr6[b];
                i9 += 2;
            }
            this.c = null;
        } else {
            b = 1;
            if (this.j == null) {
                c6.f("Key must be specified in initial init");
                return;
            }
        }
        byte[] bArr8 = new byte[16];
        this.k = bArr8;
        byte[] bArr9 = this.h;
        if (bArr9.length == 12) {
            System.arraycopy(bArr9, 0, bArr8, 0, bArr9.length);
            this.k[15] = b;
        } else {
            int length = bArr9.length;
            for (int i11 = 0; i11 < length; i11 += 16) {
                i(bArr8, bArr9, i11, Math.min(length - i11, 16));
            }
            byte[] bArr10 = new byte[16];
            xx3.u(8, ((long) this.h.length) * 8, bArr10);
            byte[] bArr11 = this.k;
            ly8.S(bArr11, bArr10);
            roVar.p(bArr11);
        }
        this.n = new byte[16];
        this.o = new byte[16];
        this.p = new byte[16];
        this.u = new byte[16];
        this.v = 0;
        this.w = 0L;
        this.x = 0L;
        this.q = ms8.k(this.k);
        this.r = -2;
        this.s = 0;
        this.t = 0L;
        byte[] bArr12 = this.i;
        if (bArr12 != null) {
            d(bArr12, bArr12.length);
        }
    }

    @Override // defpackage.d
    public final int b(int i, byte[] bArr, byte[] bArr2) {
        int i2;
        int i3;
        f();
        if (bArr.length < i) {
            throw new ua2("Input buffer too short");
        }
        if (bArr == bArr2) {
            int iC = c(i);
            if (i > 0 && iC > 0 && iC > 0 && i > 0) {
                bArr = new byte[i];
                System.arraycopy(bArr2, 0, bArr, 0, i);
            }
        }
        int i4 = 16;
        if (this.d) {
            int i5 = this.s;
            if (i5 > 0) {
                i3 = 16 - i5;
                byte[] bArr3 = this.l;
                if (i < i3) {
                    System.arraycopy(bArr, 0, bArr3, i5, i);
                } else {
                    System.arraycopy(bArr, 0, bArr3, i5, i3);
                    h(this.l, bArr2, 0, 0);
                    i -= i3;
                }
            } else {
                i4 = 0;
                i3 = 0;
            }
            int i6 = i + i3;
            int i7 = i6 - 16;
            while (i3 <= i7) {
                h(bArr, bArr2, i3, i4);
                i3 += 16;
                i4 += 16;
            }
            int i8 = i6 - i3;
            this.s = i8;
            System.arraycopy(bArr, i3, this.l, 0, i8);
            return i4;
        }
        byte[] bArr4 = this.l;
        int length = bArr4.length;
        int i9 = this.s;
        int i10 = length - i9;
        if (i >= i10) {
            if (i9 >= 16) {
                g(bArr4, bArr2, 0, 0);
                byte[] bArr5 = this.l;
                int i11 = this.s - 16;
                this.s = i11;
                System.arraycopy(bArr5, 16, bArr5, 0, i11);
                if (i < i10 + 16) {
                    System.arraycopy(bArr, 0, this.l, this.s, i);
                    this.s += i;
                    return 16;
                }
                i2 = 16;
            } else {
                i2 = 0;
            }
            byte[] bArr6 = this.l;
            int length2 = i - bArr6.length;
            int i12 = this.s;
            int i13 = 16 - i12;
            System.arraycopy(bArr, 0, bArr6, i12, i13);
            g(this.l, bArr2, 0, i2);
            int i14 = i2 + 16;
            while (i13 <= length2) {
                g(bArr, bArr2, i13, i14);
                i13 += 16;
                i14 += 16;
            }
            byte[] bArr7 = this.l;
            int length3 = (bArr7.length + length2) - i13;
            this.s = length3;
            System.arraycopy(bArr, i13, bArr7, 0, length3);
            return i14;
        }
        System.arraycopy(bArr, 0, bArr4, i9, i);
        this.s += i;
        return 0;
    }

    @Override // defpackage.d
    public final int c(int i) {
        int i2 = i + this.s;
        if (!this.d) {
            int i3 = this.f;
            if (i2 < i3) {
                return 0;
            }
            i2 -= i3;
        }
        return i2 - (i2 % 16);
    }

    @Override // defpackage.d
    public final void d(byte[] bArr, int i) {
        int i2;
        ro roVar = this.b;
        f();
        int i3 = this.v;
        if (i3 > 0) {
            i2 = 16 - i3;
            byte[] bArr2 = this.u;
            if (i < i2) {
                System.arraycopy(bArr, 0, bArr2, i3, i);
                this.v += i;
                return;
            }
            System.arraycopy(bArr, 0, bArr2, i3, i2);
            byte[] bArr3 = this.o;
            ly8.S(bArr3, this.u);
            roVar.p(bArr3);
            this.w += 16;
            i -= i2;
        } else {
            i2 = 0;
        }
        int i4 = i + i2;
        int i5 = i4 - 16;
        while (i2 <= i5) {
            byte[] bArr4 = this.o;
            ly8.R(i2, bArr4, bArr);
            roVar.p(bArr4);
            this.w += 16;
            i2 += 16;
        }
        int i6 = i4 - i2;
        this.v = i6;
        System.arraycopy(bArr, i2, this.u, 0, i6);
    }

    /* JADX WARN: Failed to calculate best type for var: r1v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r1v10 ??, new type: long
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
    /* JADX WARN: Failed to calculate best type for var: r7v0 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v0 ??, new type: long
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
    /* JADX WARN: Failed to calculate best type for var: r7v1 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v1 ??, new type: long
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
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r22v0 ??, new type: long
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
    @Override // defpackage.d
    public final int doFinal(byte[] r38, int r39) {
        /*
            Method dump skipped, instruction units count: 679
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eu3.doFinal(byte[], int):int");
    }

    @Override // defpackage.d
    public final int e(int i) {
        int i2 = i + this.s;
        boolean z = this.d;
        int i3 = this.f;
        if (z) {
            return i2 + i3;
        }
        if (i2 < i3) {
            return 0;
        }
        return i2 - i3;
    }

    public final void f() {
        if (this.e) {
            return;
        }
        l0.e(this.d ? "GCM cipher cannot be reused for encryption" : "GCM cipher needs to be initialised");
    }

    public final void g(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (bArr2.length - i2 < 16) {
            throw new dv5("Output buffer too short");
        }
        if (this.t == 0) {
            k();
        }
        byte[] bArr3 = new byte[16];
        j(bArr3);
        byte[] bArr4 = this.n;
        ly8.R(i, bArr4, bArr);
        this.b.p(bArr4);
        int i3 = 0;
        do {
            bArr2[i2 + i3] = (byte) (bArr3[i3] ^ bArr[i + i3]);
            int i4 = i3 + 1;
            bArr2[i2 + i4] = (byte) (bArr[i4 + i] ^ bArr3[i4]);
            int i5 = i3 + 2;
            bArr2[i2 + i5] = (byte) (bArr[i5 + i] ^ bArr3[i5]);
            int i6 = i3 + 3;
            bArr2[i2 + i6] = (byte) (bArr[i6 + i] ^ bArr3[i6]);
            i3 += 4;
        } while (i3 < 16);
        this.t += 16;
    }

    public final void h(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (bArr2.length - i2 < 16) {
            throw new dv5("Output buffer too short");
        }
        if (this.t == 0) {
            k();
        }
        byte[] bArr3 = new byte[16];
        j(bArr3);
        ly8.R(i, bArr3, bArr);
        byte[] bArr4 = this.n;
        ly8.S(bArr4, bArr3);
        this.b.p(bArr4);
        System.arraycopy(bArr3, 0, bArr2, i2, 16);
        this.t += 16;
    }

    public final void i(byte[] bArr, byte[] bArr2, int i, int i2) {
        while (true) {
            i2--;
            if (i2 < 0) {
                this.b.p(bArr);
                return;
            }
            bArr[i2] = (byte) (bArr[i2] ^ bArr2[i + i2]);
        }
    }

    public final void j(byte[] bArr) {
        int i = this.r;
        if (i == 0) {
            l0.e("Attempt to process too many blocks");
            return;
        }
        this.r = i - 1;
        byte[] bArr2 = this.q;
        int i2 = (bArr2[15] & 255) + 1;
        bArr2[15] = (byte) i2;
        int i3 = (i2 >>> 8) + (bArr2[14] & 255);
        bArr2[14] = (byte) i3;
        int i4 = (i3 >>> 8) + (bArr2[13] & 255);
        bArr2[13] = (byte) i4;
        bArr2[12] = (byte) ((i4 >>> 8) + (bArr2[12] & 255));
        this.a.j(bArr2, bArr, 0, 0);
    }

    public final void k() {
        if (this.w > 0) {
            System.arraycopy(this.o, 0, this.p, 0, 16);
            this.x = this.w;
        }
        int i = this.v;
        if (i > 0) {
            i(this.p, this.u, 0, i);
            this.x += (long) this.v;
        }
        if (this.x > 0) {
            System.arraycopy(this.p, 0, this.n, 0, 16);
        }
    }
}
