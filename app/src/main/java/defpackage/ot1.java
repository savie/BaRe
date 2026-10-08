package defpackage;

import android.view.View;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ot1 {
    public int A;
    public float B;
    public final int[] C;
    public float D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public final ys1 I;
    public final ys1 J;
    public final ys1 K;
    public final ys1 L;
    public final ys1 M;
    public final ys1 N;
    public final ys1 O;
    public final ys1 P;
    public final ys1[] Q;
    public final ArrayList R;
    public final boolean[] S;
    public ot1 T;
    public int U;
    public int V;
    public float W;
    public int X;
    public int Y;
    public int Z;
    public int a0;
    public j31 b;
    public int b0;
    public j31 c;
    public int c0;
    public float d0;
    public float e0;
    public View f0;
    public int g0;
    public String h0;
    public int i0;
    public String j;
    public int j0;
    public boolean k;
    public final float[] k0;
    public boolean l;
    public final ot1[] l0;
    public boolean m;
    public final ot1[] m0;
    public boolean n;
    public int n0;
    public int o;
    public int o0;
    public int p;
    public final int[] p0;
    public int q;
    public int r;
    public int s;
    public final int[] t;
    public int u;
    public int v;
    public float w;
    public int x;
    public int y;
    public float z;
    public boolean a = false;
    public d64 d = null;
    public dk8 e = null;
    public final boolean[] f = {true, true};
    public boolean g = true;
    public int h = -1;
    public int i = -1;

    public ot1() {
        new HashMap();
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = -1;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.t = new int[2];
        this.u = 0;
        this.v = 0;
        this.w = 1.0f;
        this.x = 0;
        this.y = 0;
        this.z = 1.0f;
        this.A = -1;
        this.B = 1.0f;
        this.C = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.D = Float.NaN;
        this.E = false;
        this.F = false;
        this.G = 0;
        this.H = 0;
        ys1 ys1Var = new ys1(this, 2);
        this.I = ys1Var;
        ys1 ys1Var2 = new ys1(this, 3);
        this.J = ys1Var2;
        ys1 ys1Var3 = new ys1(this, 4);
        this.K = ys1Var3;
        ys1 ys1Var4 = new ys1(this, 5);
        this.L = ys1Var4;
        ys1 ys1Var5 = new ys1(this, 6);
        this.M = ys1Var5;
        ys1 ys1Var6 = new ys1(this, 8);
        this.N = ys1Var6;
        ys1 ys1Var7 = new ys1(this, 9);
        this.O = ys1Var7;
        ys1 ys1Var8 = new ys1(this, 7);
        this.P = ys1Var8;
        this.Q = new ys1[]{ys1Var, ys1Var3, ys1Var2, ys1Var4, ys1Var5, ys1Var8};
        ArrayList arrayList = new ArrayList();
        this.R = arrayList;
        this.S = new boolean[2];
        this.p0 = new int[]{1, 1};
        this.T = null;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        this.d0 = 0.5f;
        this.e0 = 0.5f;
        this.g0 = 0;
        this.h0 = null;
        this.i0 = 0;
        this.j0 = 0;
        this.k0 = new float[]{-1.0f, -1.0f};
        this.l0 = new ot1[]{null, null};
        this.m0 = new ot1[]{null, null};
        this.n0 = -1;
        this.o0 = -1;
        arrayList.add(ys1Var);
        arrayList.add(ys1Var2);
        arrayList.add(ys1Var3);
        arrayList.add(ys1Var4);
        arrayList.add(ys1Var6);
        arrayList.add(ys1Var7);
        arrayList.add(ys1Var8);
        arrayList.add(ys1Var5);
    }

    public static void G(int i, int i2, String str, StringBuilder sb) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    public static void H(StringBuilder sb, String str, float f, float f2) {
        if (f == f2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    public static void o(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, float f, int i6) {
        String str2;
        sb.append(str);
        sb.append(" :  {\n");
        if (i6 == 1) {
            str2 = "FIXED";
        } else if (i6 == 2) {
            str2 = "WRAP_CONTENT";
        } else if (i6 == 3) {
            str2 = "MATCH_CONSTRAINT";
        } else {
            if (i6 != 4) {
                throw null;
            }
            str2 = "MATCH_PARENT";
        }
        if (!"FIXED".equals(str2)) {
            xs1.t(sb, "      behavior", " :   ", str2, ",\n");
        }
        G(i, 0, "      size", sb);
        G(i2, 0, "      min", sb);
        G(i3, Integer.MAX_VALUE, "      max", sb);
        G(i4, 0, "      matchMin", sb);
        G(i5, 0, "      matchDef", sb);
        H(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    public static void p(StringBuilder sb, String str, ys1 ys1Var) {
        if (ys1Var.f == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(ys1Var.f);
        sb.append("'");
        if (ys1Var.h != Integer.MIN_VALUE || ys1Var.g != 0) {
            sb.append(",");
            sb.append(ys1Var.g);
            if (ys1Var.h != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(ys1Var.h);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public boolean A() {
        if (this.k) {
            return true;
        }
        return this.I.c && this.K.c;
    }

    public boolean B() {
        if (this.l) {
            return true;
        }
        return this.J.c && this.L.c;
    }

    public void C() {
        this.I.j();
        this.J.j();
        this.K.j();
        this.L.j();
        this.M.j();
        this.N.j();
        this.O.j();
        this.P.j();
        this.T = null;
        this.D = Float.NaN;
        this.U = 0;
        this.V = 0;
        this.W = 0.0f;
        this.X = -1;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        this.b0 = 0;
        this.c0 = 0;
        this.d0 = 0.5f;
        this.e0 = 0.5f;
        int[] iArr = this.p0;
        iArr[0] = 1;
        iArr[1] = 1;
        this.f0 = null;
        this.g0 = 0;
        this.i0 = 0;
        this.j0 = 0;
        float[] fArr = this.k0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.o = -1;
        this.p = -1;
        int[] iArr2 = this.C;
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        this.r = 0;
        this.s = 0;
        this.w = 1.0f;
        this.z = 1.0f;
        this.v = Integer.MAX_VALUE;
        this.y = Integer.MAX_VALUE;
        this.u = 0;
        this.x = 0;
        this.A = -1;
        this.B = 1.0f;
        boolean[] zArr = this.f;
        zArr[0] = true;
        zArr[1] = true;
        this.F = false;
        boolean[] zArr2 = this.S;
        zArr2[0] = false;
        zArr2[1] = false;
        this.g = true;
        int[] iArr3 = this.t;
        iArr3[0] = 0;
        iArr3[1] = 0;
        this.h = -1;
        this.i = -1;
    }

    public final void D() {
        ot1 ot1Var = this.T;
        if (ot1Var != null && (ot1Var instanceof pt1)) {
            ((pt1) ot1Var).getClass();
        }
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ys1) arrayList.get(i)).j();
        }
    }

    public final void E() {
        this.k = false;
        this.l = false;
        this.m = false;
        this.n = false;
        ArrayList arrayList = this.R;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ys1 ys1Var = (ys1) arrayList.get(i);
            ys1Var.c = false;
            ys1Var.b = 0;
        }
    }

    public void F(gh ghVar) {
        this.I.k();
        this.J.k();
        this.K.k();
        this.L.k();
        this.M.k();
        this.P.k();
        this.N.k();
        this.O.k();
    }

    public final void I(int i) {
        this.a0 = i;
        this.E = i > 0;
    }

    public final void J(int i, int i2) {
        if (this.k) {
            return;
        }
        this.I.l(i);
        this.K.l(i2);
        this.Y = i;
        this.U = i2 - i;
        this.k = true;
    }

    public final void K(int i, int i2) {
        if (this.l) {
            return;
        }
        this.J.l(i);
        this.L.l(i2);
        this.Z = i;
        this.V = i2 - i;
        if (this.E) {
            this.M.l(i + this.a0);
        }
        this.l = true;
    }

    public final void L(int i) {
        this.V = i;
        int i2 = this.c0;
        if (i < i2) {
            this.V = i2;
        }
    }

    public final void M(int i) {
        this.p0[0] = i;
    }

    public final void N(int i) {
        this.p0[1] = i;
    }

    public final void O(int i) {
        this.U = i;
        int i2 = this.b0;
        if (i < i2) {
            this.U = i2;
        }
    }

    public void P(boolean z, boolean z2) {
        int i;
        int i2;
        d64 d64Var = this.d;
        boolean z3 = z & d64Var.g;
        dk8 dk8Var = this.e;
        boolean z4 = z2 & dk8Var.g;
        int i3 = d64Var.h.g;
        int i4 = dk8Var.h.g;
        int i5 = d64Var.i.g;
        int i6 = dk8Var.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i6 = 0;
            i3 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (z3) {
            this.Y = i3;
        }
        if (z4) {
            this.Z = i4;
        }
        if (this.g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.p0;
        if (z3) {
            if (iArr[0] == 1 && i8 < (i2 = this.U)) {
                i8 = i2;
            }
            this.U = i8;
            int i10 = this.b0;
            if (i8 < i10) {
                this.U = i10;
            }
        }
        if (z4) {
            if (iArr[1] == 1 && i9 < (i = this.V)) {
                i9 = i;
            }
            this.V = i9;
            int i11 = this.c0;
            if (i9 < i11) {
                this.V = i11;
            }
        }
    }

    public void Q(bv4 bv4Var, boolean z) {
        int i;
        int i2;
        dk8 dk8Var;
        d64 d64Var;
        bv4Var.getClass();
        int iN = bv4.n(this.I);
        int iN2 = bv4.n(this.J);
        int iN3 = bv4.n(this.K);
        int iN4 = bv4.n(this.L);
        if (z && (d64Var = this.d) != null) {
            ni2 ni2Var = d64Var.h;
            if (ni2Var.j) {
                ni2 ni2Var2 = d64Var.i;
                if (ni2Var2.j) {
                    iN = ni2Var.g;
                    iN3 = ni2Var2.g;
                }
            }
        }
        if (z && (dk8Var = this.e) != null) {
            ni2 ni2Var3 = dk8Var.h;
            if (ni2Var3.j) {
                ni2 ni2Var4 = dk8Var.i;
                if (ni2Var4.j) {
                    iN2 = ni2Var3.g;
                    iN4 = ni2Var4.g;
                }
            }
        }
        int i3 = iN4 - iN2;
        if (iN3 - iN < 0 || i3 < 0 || iN == Integer.MIN_VALUE || iN == Integer.MAX_VALUE || iN2 == Integer.MIN_VALUE || iN2 == Integer.MAX_VALUE || iN3 == Integer.MIN_VALUE || iN3 == Integer.MAX_VALUE || iN4 == Integer.MIN_VALUE || iN4 == Integer.MAX_VALUE) {
            iN = 0;
            iN2 = 0;
            iN3 = 0;
            iN4 = 0;
        }
        int i4 = iN3 - iN;
        int i5 = iN4 - iN2;
        this.Y = iN;
        this.Z = iN2;
        if (this.g0 == 8) {
            this.U = 0;
            this.V = 0;
            return;
        }
        int[] iArr = this.p0;
        int i6 = iArr[0];
        if (i6 == 1 && i4 < (i2 = this.U)) {
            i4 = i2;
        }
        if (iArr[1] == 1 && i5 < (i = this.V)) {
            i5 = i;
        }
        this.U = i4;
        this.V = i5;
        int i7 = this.c0;
        if (i5 < i7) {
            this.V = i7;
        }
        int i8 = this.b0;
        if (i4 < i8) {
            this.U = i8;
        }
        int i9 = this.v;
        if (i9 > 0 && i6 == 3) {
            this.U = Math.min(this.U, i9);
        }
        int i10 = this.y;
        if (i10 > 0 && iArr[1] == 3) {
            this.V = Math.min(this.V, i10);
        }
        int i11 = this.U;
        if (i4 != i11) {
            this.h = i11;
        }
        int i12 = this.V;
        if (i5 != i12) {
            this.i = i12;
        }
    }

    public final void a(pt1 pt1Var, bv4 bv4Var, HashSet hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            sz8.g(pt1Var, bv4Var, this);
            hashSet.remove(this);
            b(bv4Var, pt1Var.W(64));
        }
        if (i == 0) {
            HashSet hashSet2 = this.I.a;
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    ((ys1) it.next()).d.a(pt1Var, bv4Var, hashSet, i, true);
                }
            }
            HashSet hashSet3 = this.K.a;
            if (hashSet3 != null) {
                Iterator it2 = hashSet3.iterator();
                while (it2.hasNext()) {
                    ((ys1) it2.next()).d.a(pt1Var, bv4Var, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet hashSet4 = this.J.a;
        if (hashSet4 != null) {
            Iterator it3 = hashSet4.iterator();
            while (it3.hasNext()) {
                ((ys1) it3.next()).d.a(pt1Var, bv4Var, hashSet, i, true);
            }
        }
        HashSet hashSet5 = this.L.a;
        if (hashSet5 != null) {
            Iterator it4 = hashSet5.iterator();
            while (it4.hasNext()) {
                ((ys1) it4.next()).d.a(pt1Var, bv4Var, hashSet, i, true);
            }
        }
        HashSet hashSet6 = this.M.a;
        if (hashSet6 != null) {
            Iterator it5 = hashSet6.iterator();
            while (it5.hasNext()) {
                ((ys1) it5.next()).d.a(pt1Var, bv4Var, hashSet, i, true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0204  */
    /* JADX WARN: Code duplicated, block: B:125:0x020c  */
    /* JADX WARN: Code duplicated, block: B:128:0x0215  */
    /* JADX WARN: Code duplicated, block: B:130:0x021b  */
    /* JADX WARN: Code duplicated, block: B:131:0x0226  */
    /* JADX WARN: Code duplicated, block: B:134:0x0232  */
    /* JADX WARN: Code duplicated, block: B:135:0x023b  */
    /* JADX WARN: Code duplicated, block: B:145:0x0261  */
    /* JADX WARN: Code duplicated, block: B:157:0x028b  */
    /* JADX WARN: Code duplicated, block: B:161:0x029a  */
    /* JADX WARN: Code duplicated, block: B:164:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:165:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:168:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:170:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:173:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:174:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:177:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:179:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:183:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:187:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:249:0x03ae A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:250:0x03b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:255:0x03c7 A[PHI: r13
      0x03c7: PHI (r13v37 int) = (r13v22 int), (r13v22 int), (r13v34 int), (r13v22 int), (r13v22 int), (r13v22 int), (r13v22 int), (r13v22 int) binds: [B:257:0x03cf, B:258:0x03d1, B:252:0x03bb, B:239:0x0390, B:245:0x039e, B:247:0x03a2, B:248:0x03a4, B:244:0x039a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:257:0x03cf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:258:0x03d1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:268:0x03f5  */
    /* JADX WARN: Code duplicated, block: B:26:0x006e  */
    /* JADX WARN: Code duplicated, block: B:272:0x040d  */
    /* JADX WARN: Code duplicated, block: B:274:0x0412 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:276:0x0416  */
    /* JADX WARN: Code duplicated, block: B:279:0x041a  */
    /* JADX WARN: Code duplicated, block: B:284:0x0426  */
    /* JADX WARN: Code duplicated, block: B:287:0x042e  */
    /* JADX WARN: Code duplicated, block: B:290:0x0434  */
    /* JADX WARN: Code duplicated, block: B:292:0x0437  */
    /* JADX WARN: Code duplicated, block: B:295:0x0453  */
    /* JADX WARN: Code duplicated, block: B:314:0x049a  */
    /* JADX WARN: Code duplicated, block: B:330:0x0537  */
    /* JADX WARN: Code duplicated, block: B:346:0x058a  */
    /* JADX WARN: Code duplicated, block: B:349:0x059c  */
    /* JADX WARN: Code duplicated, block: B:352:0x05a0  */
    /* JADX WARN: Code duplicated, block: B:389:0x0661  */
    /* JADX WARN: Code duplicated, block: B:38:0x0092  */
    /* JADX WARN: Code duplicated, block: B:391:0x0667  */
    /* JADX WARN: Code duplicated, block: B:393:0x0670  */
    /* JADX WARN: Code duplicated, block: B:394:0x0697  */
    /* JADX WARN: Code duplicated, block: B:397:0x06c3  */
    /* JADX WARN: Code duplicated, block: B:400:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x009e  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:57:0x00da  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:67:0x010f  */
    /* JADX WARN: Code duplicated, block: B:71:0x011f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0129  */
    /* JADX WARN: Code duplicated, block: B:79:0x0141  */
    /* JADX WARN: Code duplicated, block: B:82:0x014c  */
    /* JADX WARN: Code duplicated, block: B:86:0x0164  */
    /* JADX WARN: Code duplicated, block: B:89:0x016f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v25 */
    /* JADX WARN: Type inference failed for: r18v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v6 */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r27v8 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r4v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v25, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v44 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r58v0, types: [ot1] */
    public void b(bv4 bv4Var, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean[] zArr;
        int i5;
        int i6;
        boolean z2;
        HashSet hashSet;
        ot1 ot1Var;
        pt1 pt1Var;
        WeakReference weakReference;
        WeakReference weakReference2;
        ot1 ot1Var2;
        pt1 pt1Var2;
        WeakReference weakReference3;
        WeakReference weakReference4;
        boolean[] zArr2;
        ys1 ys1Var;
        boolean[] zArr3;
        boolean z3;
        boolean z4;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int[] iArr;
        int i12;
        boolean z5;
        int i13;
        boolean z6;
        float f;
        int i14;
        int i15;
        ys1 ys1Var2;
        int i16;
        int i17;
        int i18;
        boolean z7;
        int i19;
        boolean z8;
        boolean z9;
        ys1 ys1Var3;
        int i20;
        ys1 ys1Var4;
        ej7 ej7Var;
        ej7 ej7Var2;
        ej7 ej7Var3;
        boolean z10;
        ?? r3;
        ?? r4;
        int i21;
        ej7 ej7Var4;
        ej7 ej7Var5;
        ej7 ej7Var6;
        int i22;
        int i23;
        boolean z11;
        int i24;
        ej7 ej7Var7;
        int i25;
        float f2;
        ?? r27;
        dk8 dk8Var;
        boolean z12;
        d64 d64Var;
        int i26;
        int i27;
        boolean zX;
        int i28;
        boolean zY;
        d64 d64Var2;
        dk8 dk8Var2;
        boolean z13;
        ArrayList arrayList;
        int size;
        int i29;
        HashSet hashSet2;
        bv4 bv4Var2 = bv4Var;
        ys1 ys1Var5 = this.I;
        ej7 ej7VarK = bv4Var2.k(ys1Var5);
        ys1 ys1Var6 = this.K;
        ej7 ej7VarK2 = bv4Var2.k(ys1Var6);
        ys1 ys1Var7 = this.J;
        ej7 ej7VarK3 = bv4Var2.k(ys1Var7);
        ys1 ys1Var8 = this.L;
        ej7 ej7VarK4 = bv4Var2.k(ys1Var8);
        ys1 ys1Var9 = this.M;
        ej7 ej7VarK5 = bv4Var2.k(ys1Var9);
        ot1 ot1Var3 = this.T;
        if (ot1Var3 != null) {
            int[] iArr2 = ot1Var3.p0;
            i = 0;
            i3 = iArr2[0] == 2 ? 1 : 0;
            int i30 = iArr2[1] == 2 ? 1 : 0;
            int i31 = this.q;
            if (i31 != 1) {
                if (i31 == 2) {
                    i3 = 0;
                } else if (i31 != 3) {
                }
                i2 = i30;
            } else {
                i2 = 0;
            }
            i4 = this.g0;
            zArr = this.S;
            i5 = i2;
            if (i4 == 8) {
                arrayList = this.R;
                size = arrayList.size();
                i6 = i3;
                i29 = i;
                while (true) {
                    if (i29 < size) {
                        if (!zArr[i] || zArr[1]) {
                            break;
                            break;
                        }
                        return;
                    }
                    int i32 = size;
                    hashSet2 = ((ys1) arrayList.get(i29)).a;
                    if (hashSet2 != null && hashSet2.size() > 0) {
                        break;
                    }
                    i29++;
                    size = i32;
                }
            } else {
                i6 = i3;
            }
            z2 = this.k;
            if (z2 || this.l) {
                if (z2) {
                    bv4Var2.d(ej7VarK, this.Y);
                    bv4Var2.d(ej7VarK2, this.Y + this.U);
                    if (i6 != 0 && (ot1Var2 = this.T) != null) {
                        pt1Var2 = (pt1) ot1Var2;
                        weakReference3 = pt1Var2.H0;
                        if (weakReference3 != null || weakReference3.get() == null || ys1Var5.d() > ((ys1) pt1Var2.H0.get()).d()) {
                            pt1Var2.H0 = new WeakReference(ys1Var5);
                        }
                        weakReference4 = pt1Var2.J0;
                        if (weakReference4 != null || weakReference4.get() == null || ys1Var6.d() > ((ys1) pt1Var2.J0.get()).d()) {
                            pt1Var2.J0 = new WeakReference(ys1Var6);
                        }
                    }
                }
                if (this.l) {
                    bv4Var2.d(ej7VarK3, this.Z);
                    bv4Var2.d(ej7VarK4, this.Z + this.V);
                    hashSet = ys1Var9.a;
                    if (hashSet != null && hashSet.size() > 0) {
                        bv4Var2.d(ej7VarK5, this.Z + this.a0);
                    }
                    if (i5 != 0 && (ot1Var = this.T) != null) {
                        pt1Var = (pt1) ot1Var;
                        weakReference = pt1Var.G0;
                        if (weakReference != null || weakReference.get() == null || ys1Var7.d() > ((ys1) pt1Var.G0.get()).d()) {
                            pt1Var.G0 = new WeakReference(ys1Var7);
                        }
                        weakReference2 = pt1Var.I0;
                        if (weakReference2 != null || weakReference2.get() == null || ys1Var8.d() > ((ys1) pt1Var.I0.get()).d()) {
                            pt1Var.I0 = new WeakReference(ys1Var8);
                        }
                    }
                }
                if (this.k && this.l) {
                    ?? r12 = i;
                    this.k = r12;
                    this.l = r12;
                    return;
                }
            }
            zArr2 = this.f;
            if (z || (d64Var2 = this.d) == null || (dk8Var2 = this.e) == null) {
                ys1Var = ys1Var9;
                zArr3 = zArr2;
            } else {
                ys1Var = ys1Var9;
                ni2 ni2Var = d64Var2.h;
                zArr3 = zArr2;
                if (ni2Var.j && d64Var2.i.j && dk8Var2.h.j && dk8Var2.i.j) {
                    bv4Var2.d(ej7VarK, ni2Var.g);
                    bv4Var2.d(ej7VarK2, this.d.i.g);
                    bv4Var2.d(ej7VarK3, this.e.h.g);
                    bv4Var2.d(ej7VarK4, this.e.i.g);
                    bv4Var2.d(ej7VarK5, this.e.k.g);
                    if (this.T == null) {
                        z13 = false;
                    } else {
                        if (i6 != 0 && zArr3[0] && !x()) {
                            bv4Var2.f(bv4Var2.k(this.T.K), ej7VarK2, 0, 8);
                        }
                        if (i5 == 0 || !zArr3[1] || y()) {
                            z13 = false;
                        } else {
                            z13 = false;
                            bv4Var2.f(bv4Var2.k(this.T.L), ej7VarK4, 0, 8);
                        }
                    }
                    this.k = z13;
                    this.l = z13;
                    return;
                }
            }
            if (this.T != null) {
                if (w(0)) {
                    ((pt1) this.T).R(this, 0);
                    zX = true;
                    i28 = 1;
                } else {
                    zX = x();
                    i28 = 1;
                }
                if (w(i28)) {
                    ((pt1) this.T).R(this, i28);
                    zY = true;
                } else {
                    zY = y();
                }
                if (zX && i6 != 0 && this.g0 != 8 && ys1Var5.f == null && ys1Var6.f == null) {
                    bv4Var2.f(bv4Var2.k(this.T.K), ej7VarK2, 0, 1);
                }
                if (!zY && i5 != 0 && this.g0 != 8 && ys1Var7.f == null && ys1Var8.f == null && ys1Var == null) {
                    bv4Var2.f(bv4Var2.k(this.T.L), ej7VarK4, 0, 1);
                }
                z4 = zY;
                z3 = zX;
            } else {
                ys1Var5 = ys1Var5;
                z3 = false;
                z4 = false;
            }
            i7 = this.U;
            i8 = this.b0;
            if (i7 >= i8) {
                i8 = i7;
            }
            i9 = this.V;
            i10 = this.c0;
            if (i9 < i10) {
                i11 = i10;
            } else {
                i11 = i9;
            }
            iArr = this.p0;
            i12 = iArr[0];
            if (i12 != 3) {
                z5 = true;
            } else {
                z5 = false;
            }
            i13 = iArr[1];
            if (i13 != 3) {
                z6 = true;
            } else {
                z6 = false;
            }
            int i33 = this.X;
            this.A = i33;
            f = this.W;
            this.B = f;
            i14 = this.r;
            i15 = this.s;
            if (f > 0.0f) {
                ys1Var2 = ys1Var8;
                if (this.g0 != 8) {
                    if (i12 == 3 || i14 != 0) {
                        i17 = i14;
                    } else {
                        i17 = 3;
                    }
                    if (i13 == 3 || i15 != 0) {
                        i27 = i15;
                    } else {
                        i27 = 3;
                    }
                    if (i12 == 3 || i13 != 3 || i17 != 3 || i27 != 3) {
                        if (i12 != 3 && i17 == 3) {
                            this.A = 0;
                            i8 = (int) (f * i9);
                            if (i13 != 3) {
                                ys1Var = ys1Var;
                                i16 = i11;
                                i17 = 4;
                                z7 = false;
                            }
                            i18 = i27;
                            int[] iArr3 = this.t;
                            iArr3[0] = i17;
                            iArr3[1] = i18;
                            if (z7) {
                                int i34 = this.A;
                                i19 = -1;
                                if (i34 != 0) {
                                }
                                if (z7) {
                                    z8 = false;
                                } else {
                                    z8 = false;
                                }
                                if (iArr[0] == 2) {
                                    z9 = false;
                                } else {
                                    z9 = false;
                                }
                                if (z9) {
                                    i8 = 0;
                                }
                                ys1Var3 = this.P;
                                boolean z14 = !ys1Var3.h();
                                char c = '\b';
                                boolean z15 = zArr[0];
                                boolean z16 = zArr[1];
                                i20 = this.o;
                                int[] iArr4 = this.C;
                                if (i20 != 2) {
                                    ys1Var4 = ys1Var;
                                    ej7Var = ej7VarK;
                                    ej7Var2 = ej7VarK2;
                                    ej7Var3 = ej7VarK5;
                                    z10 = z3;
                                    r3 = i6;
                                    r4 = i5;
                                    i21 = i17;
                                } else {
                                    ys1Var4 = ys1Var;
                                    ej7Var = ej7VarK;
                                    ej7Var2 = ej7VarK2;
                                    ej7Var3 = ej7VarK5;
                                    z10 = z3;
                                    r3 = i6;
                                    r4 = i5;
                                    i21 = i17;
                                }
                                if (z) {
                                    ej7Var4 = r33;
                                    ej7Var5 = ej7VarK4;
                                    ej7Var6 = ej7Var3;
                                    i22 = 0;
                                    i23 = 8;
                                    z11 = true;
                                    i24 = 1;
                                } else {
                                    ej7Var4 = r33;
                                    ej7Var5 = ej7VarK4;
                                    ej7Var6 = ej7Var3;
                                    i22 = 0;
                                    i23 = 8;
                                    z11 = true;
                                    i24 = 1;
                                }
                                if (this.p == 2) {
                                    i24 = i22;
                                }
                                if (i24 != 0) {
                                    ej7Var7 = ej7Var4;
                                } else {
                                    ej7Var7 = ej7Var4;
                                }
                                if (z7) {
                                    i25 = this.A;
                                    f2 = this.B;
                                    if (i25 == 1) {
                                        m50 m50VarL = bv4Var2.l();
                                        m50VarL.d.g(ej7Var5, -1.0f);
                                        m50VarL.d.g(ej7Var7, 1.0f);
                                        m50VarL.d.g(ej7Var2, f2);
                                        m50VarL.d.g(ej7Var, -f2);
                                        bv4Var2.c(m50VarL);
                                    } else {
                                        m50 m50VarL2 = bv4Var2.l();
                                        m50VarL2.d.g(ej7Var2, -1.0f);
                                        m50VarL2.d.g(ej7Var, 1.0f);
                                        m50VarL2.d.g(ej7Var5, f2);
                                        m50VarL2.d.g(ej7Var7, -f2);
                                        bv4Var2.c(m50VarL2);
                                    }
                                }
                                if (ys1Var3.h()) {
                                    ot1 ot1Var4 = ys1Var3.f.d;
                                    float radians = (float) Math.toRadians(this.D + 90.0f);
                                    int iE = ys1Var3.e();
                                    ej7 ej7VarK6 = bv4Var2.k(i(2));
                                    ej7 ej7VarK7 = bv4Var2.k(i(3));
                                    ej7 ej7VarK8 = bv4Var2.k(i(4));
                                    ej7 ej7VarK9 = bv4Var2.k(i(5));
                                    ej7 ej7VarK10 = bv4Var2.k(ot1Var4.i(2));
                                    ej7 ej7VarK11 = bv4Var2.k(ot1Var4.i(3));
                                    ej7 ej7VarK12 = bv4Var2.k(ot1Var4.i(4));
                                    ej7 ej7VarK13 = bv4Var2.k(ot1Var4.i(5));
                                    m50 m50VarL3 = bv4Var2.l();
                                    double d = radians;
                                    double dSin = Math.sin(d);
                                    double d2 = iE;
                                    m50VarL3.d.g(ej7VarK11, 0.5f);
                                    m50VarL3.d.g(ej7VarK13, 0.5f);
                                    m50VarL3.d.g(ej7VarK7, -0.5f);
                                    m50VarL3.d.g(ej7VarK9, -0.5f);
                                    m50VarL3.b = -((float) (dSin * d2));
                                    bv4Var2.c(m50VarL3);
                                    m50 m50VarL4 = bv4Var2.l();
                                    float fCos = (float) (Math.cos(d) * d2);
                                    m50VarL4.d.g(ej7VarK10, 0.5f);
                                    m50VarL4.d.g(ej7VarK12, 0.5f);
                                    m50VarL4.d.g(ej7VarK6, -0.5f);
                                    m50VarL4.d.g(ej7VarK8, -0.5f);
                                    m50VarL4.b = -fCos;
                                    bv4Var2.c(m50VarL4);
                                }
                                this.k = false;
                                this.l = false;
                            }
                            i19 = -1;
                            if (z7) {
                                z8 = false;
                            } else {
                                z8 = false;
                            }
                            if (iArr[0] == 2) {
                                z9 = false;
                            } else {
                                z9 = false;
                            }
                            if (z9) {
                                i8 = 0;
                            }
                            ys1Var3 = this.P;
                            boolean z17 = !ys1Var3.h();
                            char c2 = '\b';
                            boolean z18 = zArr[0];
                            boolean z19 = zArr[1];
                            i20 = this.o;
                            int[] iArr5 = this.C;
                            if (i20 != 2) {
                                ys1Var4 = ys1Var;
                                ej7Var = ej7VarK;
                                ej7Var2 = ej7VarK2;
                                ej7Var3 = ej7VarK5;
                                z10 = z3;
                                r3 = i6;
                                r4 = i5;
                                i21 = i17;
                            } else {
                                ys1Var4 = ys1Var;
                                ej7Var = ej7VarK;
                                ej7Var2 = ej7VarK2;
                                ej7Var3 = ej7VarK5;
                                z10 = z3;
                                r3 = i6;
                                r4 = i5;
                                i21 = i17;
                            }
                            if (z) {
                                ej7Var4 = r33;
                                ej7Var5 = ej7VarK4;
                                ej7Var6 = ej7Var3;
                                i22 = 0;
                                i23 = 8;
                                z11 = true;
                                i24 = 1;
                            } else {
                                ej7Var4 = r33;
                                ej7Var5 = ej7VarK4;
                                ej7Var6 = ej7Var3;
                                i22 = 0;
                                i23 = 8;
                                z11 = true;
                                i24 = 1;
                            }
                            if (this.p == 2) {
                                i24 = i22;
                            }
                            if (i24 != 0) {
                                ej7Var7 = ej7Var4;
                            } else {
                                ej7Var7 = ej7Var4;
                            }
                            if (z7) {
                                i25 = this.A;
                                f2 = this.B;
                                if (i25 == 1) {
                                    m50 m50VarL5 = bv4Var2.l();
                                    m50VarL5.d.g(ej7Var5, -1.0f);
                                    m50VarL5.d.g(ej7Var7, 1.0f);
                                    m50VarL5.d.g(ej7Var2, f2);
                                    m50VarL5.d.g(ej7Var, -f2);
                                    bv4Var2.c(m50VarL5);
                                } else {
                                    m50 m50VarL6 = bv4Var2.l();
                                    m50VarL6.d.g(ej7Var2, -1.0f);
                                    m50VarL6.d.g(ej7Var, 1.0f);
                                    m50VarL6.d.g(ej7Var5, f2);
                                    m50VarL6.d.g(ej7Var7, -f2);
                                    bv4Var2.c(m50VarL6);
                                }
                            }
                            if (ys1Var3.h()) {
                                ot1 ot1Var5 = ys1Var3.f.d;
                                float radians2 = (float) Math.toRadians(this.D + 90.0f);
                                int iE2 = ys1Var3.e();
                                ej7 ej7VarK14 = bv4Var2.k(i(2));
                                ej7 ej7VarK15 = bv4Var2.k(i(3));
                                ej7 ej7VarK16 = bv4Var2.k(i(4));
                                ej7 ej7VarK17 = bv4Var2.k(i(5));
                                ej7 ej7VarK18 = bv4Var2.k(ot1Var5.i(2));
                                ej7 ej7VarK19 = bv4Var2.k(ot1Var5.i(3));
                                ej7 ej7VarK110 = bv4Var2.k(ot1Var5.i(4));
                                ej7 ej7VarK111 = bv4Var2.k(ot1Var5.i(5));
                                m50 m50VarL7 = bv4Var2.l();
                                double d3 = radians2;
                                double dSin2 = Math.sin(d3);
                                double d4 = iE2;
                                m50VarL7.d.g(ej7VarK19, 0.5f);
                                m50VarL7.d.g(ej7VarK111, 0.5f);
                                m50VarL7.d.g(ej7VarK15, -0.5f);
                                m50VarL7.d.g(ej7VarK17, -0.5f);
                                m50VarL7.b = -((float) (dSin2 * d4));
                                bv4Var2.c(m50VarL7);
                                m50 m50VarL8 = bv4Var2.l();
                                float fCos2 = (float) (Math.cos(d3) * d4);
                                m50VarL8.d.g(ej7VarK18, 0.5f);
                                m50VarL8.d.g(ej7VarK110, 0.5f);
                                m50VarL8.d.g(ej7VarK14, -0.5f);
                                m50VarL8.d.g(ej7VarK16, -0.5f);
                                m50VarL8.b = -fCos2;
                                bv4Var2.c(m50VarL8);
                            }
                            this.k = false;
                            this.l = false;
                        }
                        if (i13 != 3 && i27 == 3) {
                            this.A = 1;
                            if (i33 == -1) {
                                this.B = 1.0f / f;
                            }
                            i16 = (int) (this.B * i7);
                            if (i12 != 3) {
                                i17 = i17;
                                i18 = 4;
                            }
                        }
                        z7 = true;
                        i18 = i27;
                        int[] iArr6 = this.t;
                        iArr6[0] = i17;
                        iArr6[1] = i18;
                        if (z7) {
                            int i35 = this.A;
                            i19 = -1;
                            boolean z20 = i35 != 0 || i35 == -1;
                            if (z7 || !((i26 = this.A) == 1 || i26 == i19)) {
                                z8 = false;
                            } else {
                                z8 = true;
                            }
                            if (iArr[0] == 2 || !(this instanceof pt1)) {
                                z9 = false;
                            } else {
                                z9 = true;
                            }
                            if (z9) {
                                i8 = 0;
                            }
                            ys1Var3 = this.P;
                            boolean z110 = !ys1Var3.h();
                            char c3 = '\b';
                            boolean z111 = zArr[0];
                            boolean z112 = zArr[1];
                            i20 = this.o;
                            int[] iArr7 = this.C;
                            if (i20 != 2 || this.k) {
                                ys1Var4 = ys1Var;
                                ej7Var = ej7VarK;
                                ej7Var2 = ej7VarK2;
                                ej7Var3 = ej7VarK5;
                                z10 = z3;
                                r3 = i6;
                                r4 = i5;
                                i21 = i17;
                            } else {
                                if (z && (d64Var = this.d) != null) {
                                    ni2 ni2Var2 = d64Var.h;
                                    if (ni2Var2.j && d64Var.i.j) {
                                        if (z) {
                                            bv4Var2.d(ej7VarK, ni2Var2.g);
                                            bv4Var2.d(ej7VarK2, this.d.i.g);
                                            if (this.T != null && i6 != 0 && zArr3[0] && !x()) {
                                                bv4Var2.f(bv4Var2.k(this.T.K), ej7VarK2, 0, 8);
                                            }
                                        }
                                        ys1Var4 = ys1Var;
                                        ej7Var = ej7VarK;
                                        ej7Var2 = ej7VarK2;
                                        ej7Var3 = ej7VarK5;
                                        z10 = z3;
                                        r3 = i6;
                                        r4 = i5;
                                        i21 = i17;
                                    } else {
                                        c3 = '\b';
                                    }
                                }
                                ot1 ot1Var6 = this.T;
                                ej7 ej7VarK20 = ot1Var6 != null ? bv4Var2.k(ot1Var6.K) : null;
                                ot1 ot1Var7 = this.T;
                                ej7 ej7VarK21 = ot1Var7 != null ? bv4Var2.k(ot1Var7.I) : null;
                                ?? r5 = i6;
                                i21 = i17;
                                z10 = z3;
                                boolean z21 = z20;
                                ej7Var = ej7VarK;
                                ?? r6 = i5;
                                ej7Var2 = ej7VarK2;
                                ys1Var4 = ys1Var;
                                ej7Var3 = ej7VarK5;
                                bv4Var2 = bv4Var;
                                d(bv4Var2, true, r5, r6, zArr3[0], ej7VarK21, ej7VarK20, iArr[0], z9, this.I, this.K, this.Y, i8, this.b0, iArr7[0], this.d0, z21, iArr[1] == 3, z10, z4, z111, i21, i18, this.u, this.v, this.w, z110);
                                r3 = r5;
                                r4 = r6;
                            }
                            if (z || (dk8Var = this.e) == null) {
                                ej7Var4 = r33;
                                ej7Var5 = ej7VarK4;
                                ej7Var6 = ej7Var3;
                                i22 = 0;
                                i23 = 8;
                                z11 = true;
                                i24 = 1;
                            } else {
                                ni2 ni2Var3 = dk8Var.h;
                                if (ni2Var3.j && dk8Var.i.j) {
                                    int i36 = ni2Var3.g;
                                    ej7Var4 = ej7VarK3;
                                    bv4Var2.d(ej7Var4, i36);
                                    ej7Var5 = ej7VarK4;
                                    bv4Var2.d(ej7Var5, this.e.i.g);
                                    ej7Var6 = ej7Var3;
                                    bv4Var2.d(ej7Var6, this.e.k.g);
                                    ot1 ot1Var8 = this.T;
                                    if (ot1Var8 == null || z4 || r4 == 0) {
                                        i22 = 0;
                                        i23 = 8;
                                        z12 = true;
                                    } else {
                                        z12 = true;
                                        z12 = true;
                                        if (zArr3[1]) {
                                            i22 = 0;
                                            i23 = 8;
                                            bv4Var2.f(bv4Var2.k(ot1Var8.L), ej7Var5, 0, 8);
                                        } else {
                                            i22 = 0;
                                            i23 = 8;
                                        }
                                    }
                                    i24 = i22;
                                    z11 = z12;
                                } else {
                                    ej7Var4 = r33;
                                    ej7Var5 = ej7VarK4;
                                    ej7Var6 = ej7Var3;
                                    i22 = 0;
                                    i23 = 8;
                                    z11 = true;
                                    i24 = 1;
                                }
                            }
                            if (this.p == 2) {
                                i24 = i22;
                            }
                            if (i24 != 0 || this.l) {
                                ej7Var7 = ej7Var4;
                            } else {
                                int i37 = (iArr[z11 ? 1 : 0] == 2 && (this instanceof pt1)) ? z11 ? 1 : 0 : i22;
                                int i38 = i37 != 0 ? i22 : i16;
                                ot1 ot1Var9 = this.T;
                                ej7 ej7VarK22 = ot1Var9 != null ? bv4Var2.k(ot1Var9.L) : null;
                                ot1 ot1Var10 = this.T;
                                ej7 ej7VarK23 = ot1Var10 != null ? bv4Var2.k(ot1Var10.J) : null;
                                int i39 = this.a0;
                                if (i39 > 0 || this.g0 == i23) {
                                    r27 = z110;
                                    ys1 ys1Var10 = ys1Var4;
                                    if (ys1Var10.f != null) {
                                        bv4Var2.e(ej7Var6, ej7Var4, i39, i23);
                                        bv4Var2.e(ej7Var6, bv4Var2.k(ys1Var10.f), ys1Var10.e(), i23);
                                        if (r4 != 0) {
                                            bv4Var2.f(ej7VarK22, bv4Var2.k(ys1Var2), i22, 5);
                                        }
                                        r27 = i22;
                                    } else if (this.g0 == i23) {
                                        bv4Var2.e(ej7Var6, ej7Var4, ys1Var10.e(), i23);
                                        r27 = z110;
                                    } else {
                                        bv4Var2.e(ej7Var6, ej7Var4, i39, i23);
                                        r27 = z110;
                                    }
                                }
                                r27 = z110;
                                boolean z22 = zArr3[z11 ? 1 : 0];
                                int i40 = i22;
                                int i41 = iArr[z11 ? 1 : 0];
                                int i42 = this.Z;
                                int i43 = this.c0;
                                int i44 = iArr7[z11 ? 1 : 0];
                                float f3 = this.e0;
                                int i45 = iArr[i40];
                                boolean z23 = z11 ? 1 : 0;
                                ?? r18 = z11;
                                if (i45 != 3) {
                                    r18 = i40;
                                }
                                ej7Var7 = ej7Var4;
                                bv4Var2 = bv4Var;
                                d(bv4Var2, false, r4, r3, z22, ej7VarK23, ej7VarK22, i41, i37, this.J, this.L, i42, i38, i43, i44, f3, z8, r18, z4, z10, z112, i18, i21, this.x, this.y, this.z, r27);
                            }
                            if (z7) {
                                i25 = this.A;
                                f2 = this.B;
                                if (i25 == 1) {
                                    m50 m50VarL9 = bv4Var2.l();
                                    m50VarL9.d.g(ej7Var5, -1.0f);
                                    m50VarL9.d.g(ej7Var7, 1.0f);
                                    m50VarL9.d.g(ej7Var2, f2);
                                    m50VarL9.d.g(ej7Var, -f2);
                                    bv4Var2.c(m50VarL9);
                                } else {
                                    m50 m50VarL10 = bv4Var2.l();
                                    m50VarL10.d.g(ej7Var2, -1.0f);
                                    m50VarL10.d.g(ej7Var, 1.0f);
                                    m50VarL10.d.g(ej7Var5, f2);
                                    m50VarL10.d.g(ej7Var7, -f2);
                                    bv4Var2.c(m50VarL10);
                                }
                            }
                            if (ys1Var3.h()) {
                                ot1 ot1Var11 = ys1Var3.f.d;
                                float radians3 = (float) Math.toRadians(this.D + 90.0f);
                                int iE3 = ys1Var3.e();
                                ej7 ej7VarK112 = bv4Var2.k(i(2));
                                ej7 ej7VarK113 = bv4Var2.k(i(3));
                                ej7 ej7VarK114 = bv4Var2.k(i(4));
                                ej7 ej7VarK115 = bv4Var2.k(i(5));
                                ej7 ej7VarK116 = bv4Var2.k(ot1Var11.i(2));
                                ej7 ej7VarK117 = bv4Var2.k(ot1Var11.i(3));
                                ej7 ej7VarK118 = bv4Var2.k(ot1Var11.i(4));
                                ej7 ej7VarK119 = bv4Var2.k(ot1Var11.i(5));
                                m50 m50VarL11 = bv4Var2.l();
                                double d5 = radians3;
                                double dSin3 = Math.sin(d5);
                                double d6 = iE3;
                                m50VarL11.d.g(ej7VarK117, 0.5f);
                                m50VarL11.d.g(ej7VarK119, 0.5f);
                                m50VarL11.d.g(ej7VarK113, -0.5f);
                                m50VarL11.d.g(ej7VarK115, -0.5f);
                                m50VarL11.b = -((float) (dSin3 * d6));
                                bv4Var2.c(m50VarL11);
                                m50 m50VarL12 = bv4Var2.l();
                                float fCos3 = (float) (Math.cos(d5) * d6);
                                m50VarL12.d.g(ej7VarK116, 0.5f);
                                m50VarL12.d.g(ej7VarK118, 0.5f);
                                m50VarL12.d.g(ej7VarK112, -0.5f);
                                m50VarL12.d.g(ej7VarK114, -0.5f);
                                m50VarL12.b = -fCos3;
                                bv4Var2.c(m50VarL12);
                            }
                            this.k = false;
                            this.l = false;
                        }
                        i19 = -1;
                        if (z7) {
                            z8 = false;
                        } else {
                            z8 = false;
                        }
                        if (iArr[0] == 2) {
                            z9 = false;
                        } else {
                            z9 = false;
                        }
                        if (z9) {
                            i8 = 0;
                        }
                        ys1Var3 = this.P;
                        boolean z113 = !ys1Var3.h();
                        char c4 = '\b';
                        boolean z114 = zArr[0];
                        boolean z115 = zArr[1];
                        i20 = this.o;
                        int[] iArr8 = this.C;
                        if (i20 != 2) {
                            ys1Var4 = ys1Var;
                            ej7Var = ej7VarK;
                            ej7Var2 = ej7VarK2;
                            ej7Var3 = ej7VarK5;
                            z10 = z3;
                            r3 = i6;
                            r4 = i5;
                            i21 = i17;
                        } else {
                            ys1Var4 = ys1Var;
                            ej7Var = ej7VarK;
                            ej7Var2 = ej7VarK2;
                            ej7Var3 = ej7VarK5;
                            z10 = z3;
                            r3 = i6;
                            r4 = i5;
                            i21 = i17;
                        }
                        if (z) {
                            ej7Var4 = r33;
                            ej7Var5 = ej7VarK4;
                            ej7Var6 = ej7Var3;
                            i22 = 0;
                            i23 = 8;
                            z11 = true;
                            i24 = 1;
                        } else {
                            ej7Var4 = r33;
                            ej7Var5 = ej7VarK4;
                            ej7Var6 = ej7Var3;
                            i22 = 0;
                            i23 = 8;
                            z11 = true;
                            i24 = 1;
                        }
                        if (this.p == 2) {
                            i24 = i22;
                        }
                        if (i24 != 0) {
                            ej7Var7 = ej7Var4;
                        } else {
                            ej7Var7 = ej7Var4;
                        }
                        if (z7) {
                            i25 = this.A;
                            f2 = this.B;
                            if (i25 == 1) {
                                m50 m50VarL13 = bv4Var2.l();
                                m50VarL13.d.g(ej7Var5, -1.0f);
                                m50VarL13.d.g(ej7Var7, 1.0f);
                                m50VarL13.d.g(ej7Var2, f2);
                                m50VarL13.d.g(ej7Var, -f2);
                                bv4Var2.c(m50VarL13);
                            } else {
                                m50 m50VarL14 = bv4Var2.l();
                                m50VarL14.d.g(ej7Var2, -1.0f);
                                m50VarL14.d.g(ej7Var, 1.0f);
                                m50VarL14.d.g(ej7Var5, f2);
                                m50VarL14.d.g(ej7Var7, -f2);
                                bv4Var2.c(m50VarL14);
                            }
                        }
                        if (ys1Var3.h()) {
                            ot1 ot1Var12 = ys1Var3.f.d;
                            float radians4 = (float) Math.toRadians(this.D + 90.0f);
                            int iE4 = ys1Var3.e();
                            ej7 ej7VarK1110 = bv4Var2.k(i(2));
                            ej7 ej7VarK1111 = bv4Var2.k(i(3));
                            ej7 ej7VarK1112 = bv4Var2.k(i(4));
                            ej7 ej7VarK1113 = bv4Var2.k(i(5));
                            ej7 ej7VarK1114 = bv4Var2.k(ot1Var12.i(2));
                            ej7 ej7VarK1115 = bv4Var2.k(ot1Var12.i(3));
                            ej7 ej7VarK1116 = bv4Var2.k(ot1Var12.i(4));
                            ej7 ej7VarK1117 = bv4Var2.k(ot1Var12.i(5));
                            m50 m50VarL15 = bv4Var2.l();
                            double d7 = radians4;
                            double dSin4 = Math.sin(d7);
                            double d8 = iE4;
                            m50VarL15.d.g(ej7VarK1115, 0.5f);
                            m50VarL15.d.g(ej7VarK1117, 0.5f);
                            m50VarL15.d.g(ej7VarK1111, -0.5f);
                            m50VarL15.d.g(ej7VarK1113, -0.5f);
                            m50VarL15.b = -((float) (dSin4 * d8));
                            bv4Var2.c(m50VarL15);
                            m50 m50VarL16 = bv4Var2.l();
                            float fCos4 = (float) (Math.cos(d7) * d8);
                            m50VarL16.d.g(ej7VarK1114, 0.5f);
                            m50VarL16.d.g(ej7VarK1116, 0.5f);
                            m50VarL16.d.g(ej7VarK1110, -0.5f);
                            m50VarL16.d.g(ej7VarK1112, -0.5f);
                            m50VarL16.b = -fCos4;
                            bv4Var2.c(m50VarL16);
                        }
                        this.k = false;
                        this.l = false;
                    }
                    if (i33 == -1) {
                        if (z5 && !z6) {
                            this.A = 0;
                        } else if (!z5 && z6) {
                            this.A = 1;
                            if (i33 == -1) {
                                this.B = 1.0f / f;
                            }
                        }
                    }
                    if (this.A == 0 && (!ys1Var7.h() || !ys1Var2.h())) {
                        this.A = 1;
                    } else if (this.A == 1 && (!ys1Var5.h() || !ys1Var6.h())) {
                        this.A = 0;
                    }
                    if (this.A == -1 && (!ys1Var7.h() || !ys1Var2.h() || !ys1Var5.h() || !ys1Var6.h())) {
                        if (ys1Var7.h() && ys1Var2.h()) {
                            this.A = 0;
                        } else if (ys1Var5.h() && ys1Var6.h()) {
                            this.B = 1.0f / this.B;
                            this.A = 1;
                        }
                    }
                    if (this.A == -1) {
                        int i46 = this.u;
                        if (i46 > 0 && this.x == 0) {
                            this.A = 0;
                        } else if (i46 == 0 && this.x > 0) {
                            this.B = 1.0f / this.B;
                            this.A = 1;
                        }
                    }
                    i16 = i11;
                    z7 = true;
                    i18 = i27;
                    int[] iArr9 = this.t;
                    iArr9[0] = i17;
                    iArr9[1] = i18;
                    if (z7) {
                        int i310 = this.A;
                        i19 = -1;
                        if (i310 != 0) {
                        }
                        if (z7) {
                            z8 = false;
                        } else {
                            z8 = false;
                        }
                        if (iArr[0] == 2) {
                            z9 = false;
                        } else {
                            z9 = false;
                        }
                        if (z9) {
                            i8 = 0;
                        }
                        ys1Var3 = this.P;
                        boolean z116 = !ys1Var3.h();
                        char c5 = '\b';
                        boolean z117 = zArr[0];
                        boolean z118 = zArr[1];
                        i20 = this.o;
                        int[] iArr10 = this.C;
                        if (i20 != 2) {
                            ys1Var4 = ys1Var;
                            ej7Var = ej7VarK;
                            ej7Var2 = ej7VarK2;
                            ej7Var3 = ej7VarK5;
                            z10 = z3;
                            r3 = i6;
                            r4 = i5;
                            i21 = i17;
                        } else {
                            ys1Var4 = ys1Var;
                            ej7Var = ej7VarK;
                            ej7Var2 = ej7VarK2;
                            ej7Var3 = ej7VarK5;
                            z10 = z3;
                            r3 = i6;
                            r4 = i5;
                            i21 = i17;
                        }
                        if (z) {
                            ej7Var4 = r33;
                            ej7Var5 = ej7VarK4;
                            ej7Var6 = ej7Var3;
                            i22 = 0;
                            i23 = 8;
                            z11 = true;
                            i24 = 1;
                        } else {
                            ej7Var4 = r33;
                            ej7Var5 = ej7VarK4;
                            ej7Var6 = ej7Var3;
                            i22 = 0;
                            i23 = 8;
                            z11 = true;
                            i24 = 1;
                        }
                        if (this.p == 2) {
                            i24 = i22;
                        }
                        if (i24 != 0) {
                            ej7Var7 = ej7Var4;
                        } else {
                            ej7Var7 = ej7Var4;
                        }
                        if (z7) {
                            i25 = this.A;
                            f2 = this.B;
                            if (i25 == 1) {
                                m50 m50VarL17 = bv4Var2.l();
                                m50VarL17.d.g(ej7Var5, -1.0f);
                                m50VarL17.d.g(ej7Var7, 1.0f);
                                m50VarL17.d.g(ej7Var2, f2);
                                m50VarL17.d.g(ej7Var, -f2);
                                bv4Var2.c(m50VarL17);
                            } else {
                                m50 m50VarL18 = bv4Var2.l();
                                m50VarL18.d.g(ej7Var2, -1.0f);
                                m50VarL18.d.g(ej7Var, 1.0f);
                                m50VarL18.d.g(ej7Var5, f2);
                                m50VarL18.d.g(ej7Var7, -f2);
                                bv4Var2.c(m50VarL18);
                            }
                        }
                        if (ys1Var3.h()) {
                            ot1 ot1Var13 = ys1Var3.f.d;
                            float radians5 = (float) Math.toRadians(this.D + 90.0f);
                            int iE5 = ys1Var3.e();
                            ej7 ej7VarK1118 = bv4Var2.k(i(2));
                            ej7 ej7VarK1119 = bv4Var2.k(i(3));
                            ej7 ej7VarK11110 = bv4Var2.k(i(4));
                            ej7 ej7VarK11111 = bv4Var2.k(i(5));
                            ej7 ej7VarK11112 = bv4Var2.k(ot1Var13.i(2));
                            ej7 ej7VarK11113 = bv4Var2.k(ot1Var13.i(3));
                            ej7 ej7VarK11114 = bv4Var2.k(ot1Var13.i(4));
                            ej7 ej7VarK11115 = bv4Var2.k(ot1Var13.i(5));
                            m50 m50VarL19 = bv4Var2.l();
                            double d9 = radians5;
                            double dSin5 = Math.sin(d9);
                            double d10 = iE5;
                            m50VarL19.d.g(ej7VarK11113, 0.5f);
                            m50VarL19.d.g(ej7VarK11115, 0.5f);
                            m50VarL19.d.g(ej7VarK1119, -0.5f);
                            m50VarL19.d.g(ej7VarK11111, -0.5f);
                            m50VarL19.b = -((float) (dSin5 * d10));
                            bv4Var2.c(m50VarL19);
                            m50 m50VarL110 = bv4Var2.l();
                            float fCos5 = (float) (Math.cos(d9) * d10);
                            m50VarL110.d.g(ej7VarK11112, 0.5f);
                            m50VarL110.d.g(ej7VarK11114, 0.5f);
                            m50VarL110.d.g(ej7VarK1118, -0.5f);
                            m50VarL110.d.g(ej7VarK11110, -0.5f);
                            m50VarL110.b = -fCos5;
                            bv4Var2.c(m50VarL110);
                        }
                        this.k = false;
                        this.l = false;
                    }
                    i19 = -1;
                    if (z7) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (iArr[0] == 2) {
                        z9 = false;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        i8 = 0;
                    }
                    ys1Var3 = this.P;
                    boolean z119 = !ys1Var3.h();
                    char c6 = '\b';
                    boolean z1110 = zArr[0];
                    boolean z1111 = zArr[1];
                    i20 = this.o;
                    int[] iArr11 = this.C;
                    if (i20 != 2) {
                        ys1Var4 = ys1Var;
                        ej7Var = ej7VarK;
                        ej7Var2 = ej7VarK2;
                        ej7Var3 = ej7VarK5;
                        z10 = z3;
                        r3 = i6;
                        r4 = i5;
                        i21 = i17;
                    } else {
                        ys1Var4 = ys1Var;
                        ej7Var = ej7VarK;
                        ej7Var2 = ej7VarK2;
                        ej7Var3 = ej7VarK5;
                        z10 = z3;
                        r3 = i6;
                        r4 = i5;
                        i21 = i17;
                    }
                    if (z) {
                        ej7Var4 = r33;
                        ej7Var5 = ej7VarK4;
                        ej7Var6 = ej7Var3;
                        i22 = 0;
                        i23 = 8;
                        z11 = true;
                        i24 = 1;
                    } else {
                        ej7Var4 = r33;
                        ej7Var5 = ej7VarK4;
                        ej7Var6 = ej7Var3;
                        i22 = 0;
                        i23 = 8;
                        z11 = true;
                        i24 = 1;
                    }
                    if (this.p == 2) {
                        i24 = i22;
                    }
                    if (i24 != 0) {
                        ej7Var7 = ej7Var4;
                    } else {
                        ej7Var7 = ej7Var4;
                    }
                    if (z7) {
                        i25 = this.A;
                        f2 = this.B;
                        if (i25 == 1) {
                            m50 m50VarL111 = bv4Var2.l();
                            m50VarL111.d.g(ej7Var5, -1.0f);
                            m50VarL111.d.g(ej7Var7, 1.0f);
                            m50VarL111.d.g(ej7Var2, f2);
                            m50VarL111.d.g(ej7Var, -f2);
                            bv4Var2.c(m50VarL111);
                        } else {
                            m50 m50VarL112 = bv4Var2.l();
                            m50VarL112.d.g(ej7Var2, -1.0f);
                            m50VarL112.d.g(ej7Var, 1.0f);
                            m50VarL112.d.g(ej7Var5, f2);
                            m50VarL112.d.g(ej7Var7, -f2);
                            bv4Var2.c(m50VarL112);
                        }
                    }
                    if (ys1Var3.h()) {
                        ot1 ot1Var14 = ys1Var3.f.d;
                        float radians6 = (float) Math.toRadians(this.D + 90.0f);
                        int iE6 = ys1Var3.e();
                        ej7 ej7VarK11116 = bv4Var2.k(i(2));
                        ej7 ej7VarK11117 = bv4Var2.k(i(3));
                        ej7 ej7VarK11118 = bv4Var2.k(i(4));
                        ej7 ej7VarK11119 = bv4Var2.k(i(5));
                        ej7 ej7VarK111110 = bv4Var2.k(ot1Var14.i(2));
                        ej7 ej7VarK111111 = bv4Var2.k(ot1Var14.i(3));
                        ej7 ej7VarK111112 = bv4Var2.k(ot1Var14.i(4));
                        ej7 ej7VarK111113 = bv4Var2.k(ot1Var14.i(5));
                        m50 m50VarL113 = bv4Var2.l();
                        double d11 = radians6;
                        double dSin6 = Math.sin(d11);
                        double d12 = iE6;
                        m50VarL113.d.g(ej7VarK111111, 0.5f);
                        m50VarL113.d.g(ej7VarK111113, 0.5f);
                        m50VarL113.d.g(ej7VarK11117, -0.5f);
                        m50VarL113.d.g(ej7VarK11119, -0.5f);
                        m50VarL113.b = -((float) (dSin6 * d12));
                        bv4Var2.c(m50VarL113);
                        m50 m50VarL114 = bv4Var2.l();
                        float fCos6 = (float) (Math.cos(d11) * d12);
                        m50VarL114.d.g(ej7VarK111110, 0.5f);
                        m50VarL114.d.g(ej7VarK111112, 0.5f);
                        m50VarL114.d.g(ej7VarK11116, -0.5f);
                        m50VarL114.d.g(ej7VarK11118, -0.5f);
                        m50VarL114.b = -fCos6;
                        bv4Var2.c(m50VarL114);
                    }
                    this.k = false;
                    this.l = false;
                }
                z7 = false;
                int[] iArr12 = this.t;
                iArr12[0] = i17;
                iArr12[1] = i18;
                if (z7) {
                    int i311 = this.A;
                    i19 = -1;
                    if (i311 != 0) {
                    }
                    if (z7) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (iArr[0] == 2) {
                        z9 = false;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        i8 = 0;
                    }
                    ys1Var3 = this.P;
                    boolean z1112 = !ys1Var3.h();
                    char c7 = '\b';
                    boolean z1113 = zArr[0];
                    boolean z1114 = zArr[1];
                    i20 = this.o;
                    int[] iArr13 = this.C;
                    if (i20 != 2) {
                        ys1Var4 = ys1Var;
                        ej7Var = ej7VarK;
                        ej7Var2 = ej7VarK2;
                        ej7Var3 = ej7VarK5;
                        z10 = z3;
                        r3 = i6;
                        r4 = i5;
                        i21 = i17;
                    } else {
                        ys1Var4 = ys1Var;
                        ej7Var = ej7VarK;
                        ej7Var2 = ej7VarK2;
                        ej7Var3 = ej7VarK5;
                        z10 = z3;
                        r3 = i6;
                        r4 = i5;
                        i21 = i17;
                    }
                    if (z) {
                        ej7Var4 = r33;
                        ej7Var5 = ej7VarK4;
                        ej7Var6 = ej7Var3;
                        i22 = 0;
                        i23 = 8;
                        z11 = true;
                        i24 = 1;
                    } else {
                        ej7Var4 = r33;
                        ej7Var5 = ej7VarK4;
                        ej7Var6 = ej7Var3;
                        i22 = 0;
                        i23 = 8;
                        z11 = true;
                        i24 = 1;
                    }
                    if (this.p == 2) {
                        i24 = i22;
                    }
                    if (i24 != 0) {
                        ej7Var7 = ej7Var4;
                    } else {
                        ej7Var7 = ej7Var4;
                    }
                    if (z7) {
                        i25 = this.A;
                        f2 = this.B;
                        if (i25 == 1) {
                            m50 m50VarL115 = bv4Var2.l();
                            m50VarL115.d.g(ej7Var5, -1.0f);
                            m50VarL115.d.g(ej7Var7, 1.0f);
                            m50VarL115.d.g(ej7Var2, f2);
                            m50VarL115.d.g(ej7Var, -f2);
                            bv4Var2.c(m50VarL115);
                        } else {
                            m50 m50VarL116 = bv4Var2.l();
                            m50VarL116.d.g(ej7Var2, -1.0f);
                            m50VarL116.d.g(ej7Var, 1.0f);
                            m50VarL116.d.g(ej7Var5, f2);
                            m50VarL116.d.g(ej7Var7, -f2);
                            bv4Var2.c(m50VarL116);
                        }
                    }
                    if (ys1Var3.h()) {
                        ot1 ot1Var15 = ys1Var3.f.d;
                        float radians7 = (float) Math.toRadians(this.D + 90.0f);
                        int iE7 = ys1Var3.e();
                        ej7 ej7VarK111114 = bv4Var2.k(i(2));
                        ej7 ej7VarK111115 = bv4Var2.k(i(3));
                        ej7 ej7VarK111116 = bv4Var2.k(i(4));
                        ej7 ej7VarK111117 = bv4Var2.k(i(5));
                        ej7 ej7VarK111118 = bv4Var2.k(ot1Var15.i(2));
                        ej7 ej7VarK111119 = bv4Var2.k(ot1Var15.i(3));
                        ej7 ej7VarK1111110 = bv4Var2.k(ot1Var15.i(4));
                        ej7 ej7VarK1111111 = bv4Var2.k(ot1Var15.i(5));
                        m50 m50VarL117 = bv4Var2.l();
                        double d13 = radians7;
                        double dSin7 = Math.sin(d13);
                        double d14 = iE7;
                        m50VarL117.d.g(ej7VarK111119, 0.5f);
                        m50VarL117.d.g(ej7VarK1111111, 0.5f);
                        m50VarL117.d.g(ej7VarK111115, -0.5f);
                        m50VarL117.d.g(ej7VarK111117, -0.5f);
                        m50VarL117.b = -((float) (dSin7 * d14));
                        bv4Var2.c(m50VarL117);
                        m50 m50VarL118 = bv4Var2.l();
                        float fCos7 = (float) (Math.cos(d13) * d14);
                        m50VarL118.d.g(ej7VarK111118, 0.5f);
                        m50VarL118.d.g(ej7VarK1111110, 0.5f);
                        m50VarL118.d.g(ej7VarK111114, -0.5f);
                        m50VarL118.d.g(ej7VarK111116, -0.5f);
                        m50VarL118.b = -fCos7;
                        bv4Var2.c(m50VarL118);
                    }
                    this.k = false;
                    this.l = false;
                }
                i19 = -1;
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (iArr[0] == 2) {
                    z9 = false;
                } else {
                    z9 = false;
                }
                if (z9) {
                    i8 = 0;
                }
                ys1Var3 = this.P;
                boolean z1115 = !ys1Var3.h();
                char c8 = '\b';
                boolean z1116 = zArr[0];
                boolean z1117 = zArr[1];
                i20 = this.o;
                int[] iArr14 = this.C;
                if (i20 != 2) {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                } else {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                }
                if (z) {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                } else {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                }
                if (this.p == 2) {
                    i24 = i22;
                }
                if (i24 != 0) {
                    ej7Var7 = ej7Var4;
                } else {
                    ej7Var7 = ej7Var4;
                }
                if (z7) {
                    i25 = this.A;
                    f2 = this.B;
                    if (i25 == 1) {
                        m50 m50VarL119 = bv4Var2.l();
                        m50VarL119.d.g(ej7Var5, -1.0f);
                        m50VarL119.d.g(ej7Var7, 1.0f);
                        m50VarL119.d.g(ej7Var2, f2);
                        m50VarL119.d.g(ej7Var, -f2);
                        bv4Var2.c(m50VarL119);
                    } else {
                        m50 m50VarL1110 = bv4Var2.l();
                        m50VarL1110.d.g(ej7Var2, -1.0f);
                        m50VarL1110.d.g(ej7Var, 1.0f);
                        m50VarL1110.d.g(ej7Var5, f2);
                        m50VarL1110.d.g(ej7Var7, -f2);
                        bv4Var2.c(m50VarL1110);
                    }
                }
                if (ys1Var3.h()) {
                    ot1 ot1Var16 = ys1Var3.f.d;
                    float radians8 = (float) Math.toRadians(this.D + 90.0f);
                    int iE8 = ys1Var3.e();
                    ej7 ej7VarK1111112 = bv4Var2.k(i(2));
                    ej7 ej7VarK1111113 = bv4Var2.k(i(3));
                    ej7 ej7VarK1111114 = bv4Var2.k(i(4));
                    ej7 ej7VarK1111115 = bv4Var2.k(i(5));
                    ej7 ej7VarK1111116 = bv4Var2.k(ot1Var16.i(2));
                    ej7 ej7VarK1111117 = bv4Var2.k(ot1Var16.i(3));
                    ej7 ej7VarK1111118 = bv4Var2.k(ot1Var16.i(4));
                    ej7 ej7VarK1111119 = bv4Var2.k(ot1Var16.i(5));
                    m50 m50VarL1111 = bv4Var2.l();
                    double d15 = radians8;
                    double dSin8 = Math.sin(d15);
                    double d16 = iE8;
                    m50VarL1111.d.g(ej7VarK1111117, 0.5f);
                    m50VarL1111.d.g(ej7VarK1111119, 0.5f);
                    m50VarL1111.d.g(ej7VarK1111113, -0.5f);
                    m50VarL1111.d.g(ej7VarK1111115, -0.5f);
                    m50VarL1111.b = -((float) (dSin8 * d16));
                    bv4Var2.c(m50VarL1111);
                    m50 m50VarL1112 = bv4Var2.l();
                    float fCos8 = (float) (Math.cos(d15) * d16);
                    m50VarL1112.d.g(ej7VarK1111116, 0.5f);
                    m50VarL1112.d.g(ej7VarK1111118, 0.5f);
                    m50VarL1112.d.g(ej7VarK1111112, -0.5f);
                    m50VarL1112.d.g(ej7VarK1111114, -0.5f);
                    m50VarL1112.b = -fCos8;
                    bv4Var2.c(m50VarL1112);
                }
                this.k = false;
                this.l = false;
            }
            ys1Var2 = ys1Var8;
            ej7VarK4 = ej7VarK4;
            i16 = i11;
            i17 = i14;
            i18 = i15;
            z7 = false;
            int[] iArr15 = this.t;
            iArr15[0] = i17;
            iArr15[1] = i18;
            if (z7) {
                int i312 = this.A;
                i19 = -1;
                if (i312 != 0) {
                }
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (iArr[0] == 2) {
                    z9 = false;
                } else {
                    z9 = false;
                }
                if (z9) {
                    i8 = 0;
                }
                ys1Var3 = this.P;
                boolean z1118 = !ys1Var3.h();
                char c9 = '\b';
                boolean z1119 = zArr[0];
                boolean z11110 = zArr[1];
                i20 = this.o;
                int[] iArr16 = this.C;
                if (i20 != 2) {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                } else {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                }
                if (z) {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                } else {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                }
                if (this.p == 2) {
                    i24 = i22;
                }
                if (i24 != 0) {
                    ej7Var7 = ej7Var4;
                } else {
                    ej7Var7 = ej7Var4;
                }
                if (z7) {
                    i25 = this.A;
                    f2 = this.B;
                    if (i25 == 1) {
                        m50 m50VarL1113 = bv4Var2.l();
                        m50VarL1113.d.g(ej7Var5, -1.0f);
                        m50VarL1113.d.g(ej7Var7, 1.0f);
                        m50VarL1113.d.g(ej7Var2, f2);
                        m50VarL1113.d.g(ej7Var, -f2);
                        bv4Var2.c(m50VarL1113);
                    } else {
                        m50 m50VarL1114 = bv4Var2.l();
                        m50VarL1114.d.g(ej7Var2, -1.0f);
                        m50VarL1114.d.g(ej7Var, 1.0f);
                        m50VarL1114.d.g(ej7Var5, f2);
                        m50VarL1114.d.g(ej7Var7, -f2);
                        bv4Var2.c(m50VarL1114);
                    }
                }
                if (ys1Var3.h()) {
                    ot1 ot1Var17 = ys1Var3.f.d;
                    float radians9 = (float) Math.toRadians(this.D + 90.0f);
                    int iE9 = ys1Var3.e();
                    ej7 ej7VarK11111110 = bv4Var2.k(i(2));
                    ej7 ej7VarK11111111 = bv4Var2.k(i(3));
                    ej7 ej7VarK11111112 = bv4Var2.k(i(4));
                    ej7 ej7VarK11111113 = bv4Var2.k(i(5));
                    ej7 ej7VarK11111114 = bv4Var2.k(ot1Var17.i(2));
                    ej7 ej7VarK11111115 = bv4Var2.k(ot1Var17.i(3));
                    ej7 ej7VarK11111116 = bv4Var2.k(ot1Var17.i(4));
                    ej7 ej7VarK11111117 = bv4Var2.k(ot1Var17.i(5));
                    m50 m50VarL1115 = bv4Var2.l();
                    double d17 = radians9;
                    double dSin9 = Math.sin(d17);
                    double d18 = iE9;
                    m50VarL1115.d.g(ej7VarK11111115, 0.5f);
                    m50VarL1115.d.g(ej7VarK11111117, 0.5f);
                    m50VarL1115.d.g(ej7VarK11111111, -0.5f);
                    m50VarL1115.d.g(ej7VarK11111113, -0.5f);
                    m50VarL1115.b = -((float) (dSin9 * d18));
                    bv4Var2.c(m50VarL1115);
                    m50 m50VarL1116 = bv4Var2.l();
                    float fCos9 = (float) (Math.cos(d17) * d18);
                    m50VarL1116.d.g(ej7VarK11111114, 0.5f);
                    m50VarL1116.d.g(ej7VarK11111116, 0.5f);
                    m50VarL1116.d.g(ej7VarK11111110, -0.5f);
                    m50VarL1116.d.g(ej7VarK11111112, -0.5f);
                    m50VarL1116.b = -fCos9;
                    bv4Var2.c(m50VarL1116);
                }
                this.k = false;
                this.l = false;
            }
            i19 = -1;
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (iArr[0] == 2) {
                z9 = false;
            } else {
                z9 = false;
            }
            if (z9) {
                i8 = 0;
            }
            ys1Var3 = this.P;
            boolean z11111 = !ys1Var3.h();
            char c10 = '\b';
            boolean z11112 = zArr[0];
            boolean z11113 = zArr[1];
            i20 = this.o;
            int[] iArr17 = this.C;
            if (i20 != 2) {
                ys1Var4 = ys1Var;
                ej7Var = ej7VarK;
                ej7Var2 = ej7VarK2;
                ej7Var3 = ej7VarK5;
                z10 = z3;
                r3 = i6;
                r4 = i5;
                i21 = i17;
            } else {
                ys1Var4 = ys1Var;
                ej7Var = ej7VarK;
                ej7Var2 = ej7VarK2;
                ej7Var3 = ej7VarK5;
                z10 = z3;
                r3 = i6;
                r4 = i5;
                i21 = i17;
            }
            if (z) {
                ej7Var4 = r33;
                ej7Var5 = ej7VarK4;
                ej7Var6 = ej7Var3;
                i22 = 0;
                i23 = 8;
                z11 = true;
                i24 = 1;
            } else {
                ej7Var4 = r33;
                ej7Var5 = ej7VarK4;
                ej7Var6 = ej7Var3;
                i22 = 0;
                i23 = 8;
                z11 = true;
                i24 = 1;
            }
            if (this.p == 2) {
                i24 = i22;
            }
            if (i24 != 0) {
                ej7Var7 = ej7Var4;
            } else {
                ej7Var7 = ej7Var4;
            }
            if (z7) {
                i25 = this.A;
                f2 = this.B;
                if (i25 == 1) {
                    m50 m50VarL1117 = bv4Var2.l();
                    m50VarL1117.d.g(ej7Var5, -1.0f);
                    m50VarL1117.d.g(ej7Var7, 1.0f);
                    m50VarL1117.d.g(ej7Var2, f2);
                    m50VarL1117.d.g(ej7Var, -f2);
                    bv4Var2.c(m50VarL1117);
                } else {
                    m50 m50VarL1118 = bv4Var2.l();
                    m50VarL1118.d.g(ej7Var2, -1.0f);
                    m50VarL1118.d.g(ej7Var, 1.0f);
                    m50VarL1118.d.g(ej7Var5, f2);
                    m50VarL1118.d.g(ej7Var7, -f2);
                    bv4Var2.c(m50VarL1118);
                }
            }
            if (ys1Var3.h()) {
                ot1 ot1Var18 = ys1Var3.f.d;
                float radians10 = (float) Math.toRadians(this.D + 90.0f);
                int iE10 = ys1Var3.e();
                ej7 ej7VarK11111118 = bv4Var2.k(i(2));
                ej7 ej7VarK11111119 = bv4Var2.k(i(3));
                ej7 ej7VarK111111110 = bv4Var2.k(i(4));
                ej7 ej7VarK111111111 = bv4Var2.k(i(5));
                ej7 ej7VarK111111112 = bv4Var2.k(ot1Var18.i(2));
                ej7 ej7VarK111111113 = bv4Var2.k(ot1Var18.i(3));
                ej7 ej7VarK111111114 = bv4Var2.k(ot1Var18.i(4));
                ej7 ej7VarK111111115 = bv4Var2.k(ot1Var18.i(5));
                m50 m50VarL1119 = bv4Var2.l();
                double d19 = radians10;
                double dSin10 = Math.sin(d19);
                double d110 = iE10;
                m50VarL1119.d.g(ej7VarK111111113, 0.5f);
                m50VarL1119.d.g(ej7VarK111111115, 0.5f);
                m50VarL1119.d.g(ej7VarK11111119, -0.5f);
                m50VarL1119.d.g(ej7VarK111111111, -0.5f);
                m50VarL1119.b = -((float) (dSin10 * d110));
                bv4Var2.c(m50VarL1119);
                m50 m50VarL11110 = bv4Var2.l();
                float fCos10 = (float) (Math.cos(d19) * d110);
                m50VarL11110.d.g(ej7VarK111111112, 0.5f);
                m50VarL11110.d.g(ej7VarK111111114, 0.5f);
                m50VarL11110.d.g(ej7VarK11111118, -0.5f);
                m50VarL11110.d.g(ej7VarK111111110, -0.5f);
                m50VarL11110.b = -fCos10;
                bv4Var2.c(m50VarL11110);
            }
            this.k = false;
            this.l = false;
        }
        i = 0;
        i2 = i;
        i3 = i2;
        i4 = this.g0;
        zArr = this.S;
        i5 = i2;
        if (i4 == 8) {
            arrayList = this.R;
            size = arrayList.size();
            i6 = i3;
            i29 = i;
            while (true) {
                if (i29 < size) {
                    if (!zArr[i]) {
                        break;
                    } else {
                        return;
                    }
                }
                int i313 = size;
                hashSet2 = ((ys1) arrayList.get(i29)).a;
                if (hashSet2 != null) {
                    break;
                    break;
                }
                i29++;
                size = i313;
            }
        } else {
            i6 = i3;
        }
        z2 = this.k;
        if (z2) {
            if (z2) {
                bv4Var2.d(ej7VarK, this.Y);
                bv4Var2.d(ej7VarK2, this.Y + this.U);
                if (i6 != 0) {
                    pt1Var2 = (pt1) ot1Var2;
                    weakReference3 = pt1Var2.H0;
                    if (weakReference3 != null) {
                        pt1Var2.H0 = new WeakReference(ys1Var5);
                    } else {
                        pt1Var2.H0 = new WeakReference(ys1Var5);
                    }
                    weakReference4 = pt1Var2.J0;
                    if (weakReference4 != null) {
                        pt1Var2.J0 = new WeakReference(ys1Var6);
                    } else {
                        pt1Var2.J0 = new WeakReference(ys1Var6);
                    }
                }
            }
            if (this.l) {
                bv4Var2.d(ej7VarK3, this.Z);
                bv4Var2.d(ej7VarK4, this.Z + this.V);
                hashSet = ys1Var9.a;
                if (hashSet != null) {
                    bv4Var2.d(ej7VarK5, this.Z + this.a0);
                }
                if (i5 != 0) {
                    pt1Var = (pt1) ot1Var;
                    weakReference = pt1Var.G0;
                    if (weakReference != null) {
                        pt1Var.G0 = new WeakReference(ys1Var7);
                    } else {
                        pt1Var.G0 = new WeakReference(ys1Var7);
                    }
                    weakReference2 = pt1Var.I0;
                    if (weakReference2 != null) {
                        pt1Var.I0 = new WeakReference(ys1Var8);
                    } else {
                        pt1Var.I0 = new WeakReference(ys1Var8);
                    }
                }
            }
            if (this.k) {
                ?? r13 = i;
                this.k = r13;
                this.l = r13;
                return;
            }
        } else {
            if (z2) {
                bv4Var2.d(ej7VarK, this.Y);
                bv4Var2.d(ej7VarK2, this.Y + this.U);
                if (i6 != 0) {
                    pt1Var2 = (pt1) ot1Var2;
                    weakReference3 = pt1Var2.H0;
                    if (weakReference3 != null) {
                        pt1Var2.H0 = new WeakReference(ys1Var5);
                    } else {
                        pt1Var2.H0 = new WeakReference(ys1Var5);
                    }
                    weakReference4 = pt1Var2.J0;
                    if (weakReference4 != null) {
                        pt1Var2.J0 = new WeakReference(ys1Var6);
                    } else {
                        pt1Var2.J0 = new WeakReference(ys1Var6);
                    }
                }
            }
            if (this.l) {
                bv4Var2.d(ej7VarK3, this.Z);
                bv4Var2.d(ej7VarK4, this.Z + this.V);
                hashSet = ys1Var9.a;
                if (hashSet != null) {
                    bv4Var2.d(ej7VarK5, this.Z + this.a0);
                }
                if (i5 != 0) {
                    pt1Var = (pt1) ot1Var;
                    weakReference = pt1Var.G0;
                    if (weakReference != null) {
                        pt1Var.G0 = new WeakReference(ys1Var7);
                    } else {
                        pt1Var.G0 = new WeakReference(ys1Var7);
                    }
                    weakReference2 = pt1Var.I0;
                    if (weakReference2 != null) {
                        pt1Var.I0 = new WeakReference(ys1Var8);
                    } else {
                        pt1Var.I0 = new WeakReference(ys1Var8);
                    }
                }
            }
            if (this.k) {
                ?? r14 = i;
                this.k = r14;
                this.l = r14;
                return;
            }
        }
        zArr2 = this.f;
        if (z) {
            ys1Var = ys1Var9;
            zArr3 = zArr2;
        } else {
            ys1Var = ys1Var9;
            zArr3 = zArr2;
        }
        if (this.T != null) {
            if (w(0)) {
                ((pt1) this.T).R(this, 0);
                zX = true;
                i28 = 1;
            } else {
                zX = x();
                i28 = 1;
            }
            if (w(i28)) {
                ((pt1) this.T).R(this, i28);
                zY = true;
            } else {
                zY = y();
            }
            if (zX) {
            }
            if (!zY) {
                bv4Var2.f(bv4Var2.k(this.T.L), ej7VarK4, 0, 1);
            }
            z4 = zY;
            z3 = zX;
        } else {
            ys1Var5 = ys1Var5;
            z3 = false;
            z4 = false;
        }
        i7 = this.U;
        i8 = this.b0;
        if (i7 >= i8) {
            i8 = i7;
        }
        i9 = this.V;
        i10 = this.c0;
        if (i9 < i10) {
            i11 = i10;
        } else {
            i11 = i9;
        }
        iArr = this.p0;
        i12 = iArr[0];
        if (i12 != 3) {
            z5 = true;
        } else {
            z5 = false;
        }
        i13 = iArr[1];
        if (i13 != 3) {
            z6 = true;
        } else {
            z6 = false;
        }
        int i314 = this.X;
        this.A = i314;
        f = this.W;
        this.B = f;
        i14 = this.r;
        i15 = this.s;
        if (f > 0.0f) {
            ys1Var2 = ys1Var8;
            if (this.g0 != 8) {
                if (i12 == 3) {
                    i17 = i14;
                } else {
                    i17 = i14;
                }
                if (i13 == 3) {
                    i27 = i15;
                } else {
                    i27 = i15;
                }
                if (i12 == 3) {
                    if (i12 != 3) {
                        if (i13 != 3) {
                            i16 = i11;
                        } else {
                            i16 = i11;
                        }
                        z7 = true;
                    } else {
                        if (i13 != 3) {
                            i16 = i11;
                        } else {
                            i16 = i11;
                        }
                        z7 = true;
                    }
                } else if (i12 != 3) {
                    if (i13 != 3) {
                        i16 = i11;
                    } else {
                        i16 = i11;
                    }
                    z7 = true;
                } else {
                    if (i13 != 3) {
                        i16 = i11;
                    } else {
                        i16 = i11;
                    }
                    z7 = true;
                }
                i18 = i27;
                int[] iArr18 = this.t;
                iArr18[0] = i17;
                iArr18[1] = i18;
                if (z7) {
                    int i315 = this.A;
                    i19 = -1;
                    if (i315 != 0) {
                    }
                    if (z7) {
                        z8 = false;
                    } else {
                        z8 = false;
                    }
                    if (iArr[0] == 2) {
                        z9 = false;
                    } else {
                        z9 = false;
                    }
                    if (z9) {
                        i8 = 0;
                    }
                    ys1Var3 = this.P;
                    boolean z11114 = !ys1Var3.h();
                    char c11 = '\b';
                    boolean z11115 = zArr[0];
                    boolean z11116 = zArr[1];
                    i20 = this.o;
                    int[] iArr19 = this.C;
                    if (i20 != 2) {
                        ys1Var4 = ys1Var;
                        ej7Var = ej7VarK;
                        ej7Var2 = ej7VarK2;
                        ej7Var3 = ej7VarK5;
                        z10 = z3;
                        r3 = i6;
                        r4 = i5;
                        i21 = i17;
                    } else {
                        ys1Var4 = ys1Var;
                        ej7Var = ej7VarK;
                        ej7Var2 = ej7VarK2;
                        ej7Var3 = ej7VarK5;
                        z10 = z3;
                        r3 = i6;
                        r4 = i5;
                        i21 = i17;
                    }
                    if (z) {
                        ej7Var4 = r33;
                        ej7Var5 = ej7VarK4;
                        ej7Var6 = ej7Var3;
                        i22 = 0;
                        i23 = 8;
                        z11 = true;
                        i24 = 1;
                    } else {
                        ej7Var4 = r33;
                        ej7Var5 = ej7VarK4;
                        ej7Var6 = ej7Var3;
                        i22 = 0;
                        i23 = 8;
                        z11 = true;
                        i24 = 1;
                    }
                    if (this.p == 2) {
                        i24 = i22;
                    }
                    if (i24 != 0) {
                        ej7Var7 = ej7Var4;
                    } else {
                        ej7Var7 = ej7Var4;
                    }
                    if (z7) {
                        i25 = this.A;
                        f2 = this.B;
                        if (i25 == 1) {
                            m50 m50VarL11111 = bv4Var2.l();
                            m50VarL11111.d.g(ej7Var5, -1.0f);
                            m50VarL11111.d.g(ej7Var7, 1.0f);
                            m50VarL11111.d.g(ej7Var2, f2);
                            m50VarL11111.d.g(ej7Var, -f2);
                            bv4Var2.c(m50VarL11111);
                        } else {
                            m50 m50VarL11112 = bv4Var2.l();
                            m50VarL11112.d.g(ej7Var2, -1.0f);
                            m50VarL11112.d.g(ej7Var, 1.0f);
                            m50VarL11112.d.g(ej7Var5, f2);
                            m50VarL11112.d.g(ej7Var7, -f2);
                            bv4Var2.c(m50VarL11112);
                        }
                    }
                    if (ys1Var3.h()) {
                        ot1 ot1Var19 = ys1Var3.f.d;
                        float radians11 = (float) Math.toRadians(this.D + 90.0f);
                        int iE11 = ys1Var3.e();
                        ej7 ej7VarK111111116 = bv4Var2.k(i(2));
                        ej7 ej7VarK111111117 = bv4Var2.k(i(3));
                        ej7 ej7VarK111111118 = bv4Var2.k(i(4));
                        ej7 ej7VarK111111119 = bv4Var2.k(i(5));
                        ej7 ej7VarK1111111110 = bv4Var2.k(ot1Var19.i(2));
                        ej7 ej7VarK1111111111 = bv4Var2.k(ot1Var19.i(3));
                        ej7 ej7VarK1111111112 = bv4Var2.k(ot1Var19.i(4));
                        ej7 ej7VarK1111111113 = bv4Var2.k(ot1Var19.i(5));
                        m50 m50VarL11113 = bv4Var2.l();
                        double d111 = radians11;
                        double dSin11 = Math.sin(d111);
                        double d112 = iE11;
                        m50VarL11113.d.g(ej7VarK1111111111, 0.5f);
                        m50VarL11113.d.g(ej7VarK1111111113, 0.5f);
                        m50VarL11113.d.g(ej7VarK111111117, -0.5f);
                        m50VarL11113.d.g(ej7VarK111111119, -0.5f);
                        m50VarL11113.b = -((float) (dSin11 * d112));
                        bv4Var2.c(m50VarL11113);
                        m50 m50VarL11114 = bv4Var2.l();
                        float fCos11 = (float) (Math.cos(d111) * d112);
                        m50VarL11114.d.g(ej7VarK1111111110, 0.5f);
                        m50VarL11114.d.g(ej7VarK1111111112, 0.5f);
                        m50VarL11114.d.g(ej7VarK111111116, -0.5f);
                        m50VarL11114.d.g(ej7VarK111111118, -0.5f);
                        m50VarL11114.b = -fCos11;
                        bv4Var2.c(m50VarL11114);
                    }
                    this.k = false;
                    this.l = false;
                }
                i19 = -1;
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (iArr[0] == 2) {
                    z9 = false;
                } else {
                    z9 = false;
                }
                if (z9) {
                    i8 = 0;
                }
                ys1Var3 = this.P;
                boolean z11117 = !ys1Var3.h();
                char c12 = '\b';
                boolean z11118 = zArr[0];
                boolean z11119 = zArr[1];
                i20 = this.o;
                int[] iArr110 = this.C;
                if (i20 != 2) {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                } else {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                }
                if (z) {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                } else {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                }
                if (this.p == 2) {
                    i24 = i22;
                }
                if (i24 != 0) {
                    ej7Var7 = ej7Var4;
                } else {
                    ej7Var7 = ej7Var4;
                }
                if (z7) {
                    i25 = this.A;
                    f2 = this.B;
                    if (i25 == 1) {
                        m50 m50VarL11115 = bv4Var2.l();
                        m50VarL11115.d.g(ej7Var5, -1.0f);
                        m50VarL11115.d.g(ej7Var7, 1.0f);
                        m50VarL11115.d.g(ej7Var2, f2);
                        m50VarL11115.d.g(ej7Var, -f2);
                        bv4Var2.c(m50VarL11115);
                    } else {
                        m50 m50VarL11116 = bv4Var2.l();
                        m50VarL11116.d.g(ej7Var2, -1.0f);
                        m50VarL11116.d.g(ej7Var, 1.0f);
                        m50VarL11116.d.g(ej7Var5, f2);
                        m50VarL11116.d.g(ej7Var7, -f2);
                        bv4Var2.c(m50VarL11116);
                    }
                }
                if (ys1Var3.h()) {
                    ot1 ot1Var110 = ys1Var3.f.d;
                    float radians12 = (float) Math.toRadians(this.D + 90.0f);
                    int iE12 = ys1Var3.e();
                    ej7 ej7VarK1111111114 = bv4Var2.k(i(2));
                    ej7 ej7VarK1111111115 = bv4Var2.k(i(3));
                    ej7 ej7VarK1111111116 = bv4Var2.k(i(4));
                    ej7 ej7VarK1111111117 = bv4Var2.k(i(5));
                    ej7 ej7VarK1111111118 = bv4Var2.k(ot1Var110.i(2));
                    ej7 ej7VarK1111111119 = bv4Var2.k(ot1Var110.i(3));
                    ej7 ej7VarK11111111110 = bv4Var2.k(ot1Var110.i(4));
                    ej7 ej7VarK11111111111 = bv4Var2.k(ot1Var110.i(5));
                    m50 m50VarL11117 = bv4Var2.l();
                    double d113 = radians12;
                    double dSin12 = Math.sin(d113);
                    double d114 = iE12;
                    m50VarL11117.d.g(ej7VarK1111111119, 0.5f);
                    m50VarL11117.d.g(ej7VarK11111111111, 0.5f);
                    m50VarL11117.d.g(ej7VarK1111111115, -0.5f);
                    m50VarL11117.d.g(ej7VarK1111111117, -0.5f);
                    m50VarL11117.b = -((float) (dSin12 * d114));
                    bv4Var2.c(m50VarL11117);
                    m50 m50VarL11118 = bv4Var2.l();
                    float fCos12 = (float) (Math.cos(d113) * d114);
                    m50VarL11118.d.g(ej7VarK1111111118, 0.5f);
                    m50VarL11118.d.g(ej7VarK11111111110, 0.5f);
                    m50VarL11118.d.g(ej7VarK1111111114, -0.5f);
                    m50VarL11118.d.g(ej7VarK1111111116, -0.5f);
                    m50VarL11118.b = -fCos12;
                    bv4Var2.c(m50VarL11118);
                }
                this.k = false;
                this.l = false;
            }
            z7 = false;
            int[] iArr111 = this.t;
            iArr111[0] = i17;
            iArr111[1] = i18;
            if (z7) {
                int i316 = this.A;
                i19 = -1;
                if (i316 != 0) {
                }
                if (z7) {
                    z8 = false;
                } else {
                    z8 = false;
                }
                if (iArr[0] == 2) {
                    z9 = false;
                } else {
                    z9 = false;
                }
                if (z9) {
                    i8 = 0;
                }
                ys1Var3 = this.P;
                boolean z111110 = !ys1Var3.h();
                char c13 = '\b';
                boolean z111111 = zArr[0];
                boolean z111112 = zArr[1];
                i20 = this.o;
                int[] iArr112 = this.C;
                if (i20 != 2) {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                } else {
                    ys1Var4 = ys1Var;
                    ej7Var = ej7VarK;
                    ej7Var2 = ej7VarK2;
                    ej7Var3 = ej7VarK5;
                    z10 = z3;
                    r3 = i6;
                    r4 = i5;
                    i21 = i17;
                }
                if (z) {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                } else {
                    ej7Var4 = r33;
                    ej7Var5 = ej7VarK4;
                    ej7Var6 = ej7Var3;
                    i22 = 0;
                    i23 = 8;
                    z11 = true;
                    i24 = 1;
                }
                if (this.p == 2) {
                    i24 = i22;
                }
                if (i24 != 0) {
                    ej7Var7 = ej7Var4;
                } else {
                    ej7Var7 = ej7Var4;
                }
                if (z7) {
                    i25 = this.A;
                    f2 = this.B;
                    if (i25 == 1) {
                        m50 m50VarL11119 = bv4Var2.l();
                        m50VarL11119.d.g(ej7Var5, -1.0f);
                        m50VarL11119.d.g(ej7Var7, 1.0f);
                        m50VarL11119.d.g(ej7Var2, f2);
                        m50VarL11119.d.g(ej7Var, -f2);
                        bv4Var2.c(m50VarL11119);
                    } else {
                        m50 m50VarL111110 = bv4Var2.l();
                        m50VarL111110.d.g(ej7Var2, -1.0f);
                        m50VarL111110.d.g(ej7Var, 1.0f);
                        m50VarL111110.d.g(ej7Var5, f2);
                        m50VarL111110.d.g(ej7Var7, -f2);
                        bv4Var2.c(m50VarL111110);
                    }
                }
                if (ys1Var3.h()) {
                    ot1 ot1Var111 = ys1Var3.f.d;
                    float radians13 = (float) Math.toRadians(this.D + 90.0f);
                    int iE13 = ys1Var3.e();
                    ej7 ej7VarK11111111112 = bv4Var2.k(i(2));
                    ej7 ej7VarK11111111113 = bv4Var2.k(i(3));
                    ej7 ej7VarK11111111114 = bv4Var2.k(i(4));
                    ej7 ej7VarK11111111115 = bv4Var2.k(i(5));
                    ej7 ej7VarK11111111116 = bv4Var2.k(ot1Var111.i(2));
                    ej7 ej7VarK11111111117 = bv4Var2.k(ot1Var111.i(3));
                    ej7 ej7VarK11111111118 = bv4Var2.k(ot1Var111.i(4));
                    ej7 ej7VarK11111111119 = bv4Var2.k(ot1Var111.i(5));
                    m50 m50VarL111111 = bv4Var2.l();
                    double d115 = radians13;
                    double dSin13 = Math.sin(d115);
                    double d116 = iE13;
                    m50VarL111111.d.g(ej7VarK11111111117, 0.5f);
                    m50VarL111111.d.g(ej7VarK11111111119, 0.5f);
                    m50VarL111111.d.g(ej7VarK11111111113, -0.5f);
                    m50VarL111111.d.g(ej7VarK11111111115, -0.5f);
                    m50VarL111111.b = -((float) (dSin13 * d116));
                    bv4Var2.c(m50VarL111111);
                    m50 m50VarL111112 = bv4Var2.l();
                    float fCos13 = (float) (Math.cos(d115) * d116);
                    m50VarL111112.d.g(ej7VarK11111111116, 0.5f);
                    m50VarL111112.d.g(ej7VarK11111111118, 0.5f);
                    m50VarL111112.d.g(ej7VarK11111111112, -0.5f);
                    m50VarL111112.d.g(ej7VarK11111111114, -0.5f);
                    m50VarL111112.b = -fCos13;
                    bv4Var2.c(m50VarL111112);
                }
                this.k = false;
                this.l = false;
            }
            i19 = -1;
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (iArr[0] == 2) {
                z9 = false;
            } else {
                z9 = false;
            }
            if (z9) {
                i8 = 0;
            }
            ys1Var3 = this.P;
            boolean z111113 = !ys1Var3.h();
            char c14 = '\b';
            boolean z111114 = zArr[0];
            boolean z111115 = zArr[1];
            i20 = this.o;
            int[] iArr113 = this.C;
            if (i20 != 2) {
                ys1Var4 = ys1Var;
                ej7Var = ej7VarK;
                ej7Var2 = ej7VarK2;
                ej7Var3 = ej7VarK5;
                z10 = z3;
                r3 = i6;
                r4 = i5;
                i21 = i17;
            } else {
                ys1Var4 = ys1Var;
                ej7Var = ej7VarK;
                ej7Var2 = ej7VarK2;
                ej7Var3 = ej7VarK5;
                z10 = z3;
                r3 = i6;
                r4 = i5;
                i21 = i17;
            }
            if (z) {
                ej7Var4 = r33;
                ej7Var5 = ej7VarK4;
                ej7Var6 = ej7Var3;
                i22 = 0;
                i23 = 8;
                z11 = true;
                i24 = 1;
            } else {
                ej7Var4 = r33;
                ej7Var5 = ej7VarK4;
                ej7Var6 = ej7Var3;
                i22 = 0;
                i23 = 8;
                z11 = true;
                i24 = 1;
            }
            if (this.p == 2) {
                i24 = i22;
            }
            if (i24 != 0) {
                ej7Var7 = ej7Var4;
            } else {
                ej7Var7 = ej7Var4;
            }
            if (z7) {
                i25 = this.A;
                f2 = this.B;
                if (i25 == 1) {
                    m50 m50VarL111113 = bv4Var2.l();
                    m50VarL111113.d.g(ej7Var5, -1.0f);
                    m50VarL111113.d.g(ej7Var7, 1.0f);
                    m50VarL111113.d.g(ej7Var2, f2);
                    m50VarL111113.d.g(ej7Var, -f2);
                    bv4Var2.c(m50VarL111113);
                } else {
                    m50 m50VarL111114 = bv4Var2.l();
                    m50VarL111114.d.g(ej7Var2, -1.0f);
                    m50VarL111114.d.g(ej7Var, 1.0f);
                    m50VarL111114.d.g(ej7Var5, f2);
                    m50VarL111114.d.g(ej7Var7, -f2);
                    bv4Var2.c(m50VarL111114);
                }
            }
            if (ys1Var3.h()) {
                ot1 ot1Var112 = ys1Var3.f.d;
                float radians14 = (float) Math.toRadians(this.D + 90.0f);
                int iE14 = ys1Var3.e();
                ej7 ej7VarK111111111110 = bv4Var2.k(i(2));
                ej7 ej7VarK111111111111 = bv4Var2.k(i(3));
                ej7 ej7VarK111111111112 = bv4Var2.k(i(4));
                ej7 ej7VarK111111111113 = bv4Var2.k(i(5));
                ej7 ej7VarK111111111114 = bv4Var2.k(ot1Var112.i(2));
                ej7 ej7VarK111111111115 = bv4Var2.k(ot1Var112.i(3));
                ej7 ej7VarK111111111116 = bv4Var2.k(ot1Var112.i(4));
                ej7 ej7VarK111111111117 = bv4Var2.k(ot1Var112.i(5));
                m50 m50VarL111115 = bv4Var2.l();
                double d117 = radians14;
                double dSin14 = Math.sin(d117);
                double d118 = iE14;
                m50VarL111115.d.g(ej7VarK111111111115, 0.5f);
                m50VarL111115.d.g(ej7VarK111111111117, 0.5f);
                m50VarL111115.d.g(ej7VarK111111111111, -0.5f);
                m50VarL111115.d.g(ej7VarK111111111113, -0.5f);
                m50VarL111115.b = -((float) (dSin14 * d118));
                bv4Var2.c(m50VarL111115);
                m50 m50VarL111116 = bv4Var2.l();
                float fCos14 = (float) (Math.cos(d117) * d118);
                m50VarL111116.d.g(ej7VarK111111111114, 0.5f);
                m50VarL111116.d.g(ej7VarK111111111116, 0.5f);
                m50VarL111116.d.g(ej7VarK111111111110, -0.5f);
                m50VarL111116.d.g(ej7VarK111111111112, -0.5f);
                m50VarL111116.b = -fCos14;
                bv4Var2.c(m50VarL111116);
            }
            this.k = false;
            this.l = false;
        }
        ys1Var2 = ys1Var8;
        ej7VarK4 = ej7VarK4;
        i16 = i11;
        i17 = i14;
        i18 = i15;
        z7 = false;
        int[] iArr114 = this.t;
        iArr114[0] = i17;
        iArr114[1] = i18;
        if (z7) {
            int i317 = this.A;
            i19 = -1;
            if (i317 != 0) {
            }
            if (z7) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (iArr[0] == 2) {
                z9 = false;
            } else {
                z9 = false;
            }
            if (z9) {
                i8 = 0;
            }
            ys1Var3 = this.P;
            boolean z111116 = !ys1Var3.h();
            char c15 = '\b';
            boolean z111117 = zArr[0];
            boolean z111118 = zArr[1];
            i20 = this.o;
            int[] iArr115 = this.C;
            if (i20 != 2) {
                ys1Var4 = ys1Var;
                ej7Var = ej7VarK;
                ej7Var2 = ej7VarK2;
                ej7Var3 = ej7VarK5;
                z10 = z3;
                r3 = i6;
                r4 = i5;
                i21 = i17;
            } else {
                ys1Var4 = ys1Var;
                ej7Var = ej7VarK;
                ej7Var2 = ej7VarK2;
                ej7Var3 = ej7VarK5;
                z10 = z3;
                r3 = i6;
                r4 = i5;
                i21 = i17;
            }
            if (z) {
                ej7Var4 = r33;
                ej7Var5 = ej7VarK4;
                ej7Var6 = ej7Var3;
                i22 = 0;
                i23 = 8;
                z11 = true;
                i24 = 1;
            } else {
                ej7Var4 = r33;
                ej7Var5 = ej7VarK4;
                ej7Var6 = ej7Var3;
                i22 = 0;
                i23 = 8;
                z11 = true;
                i24 = 1;
            }
            if (this.p == 2) {
                i24 = i22;
            }
            if (i24 != 0) {
                ej7Var7 = ej7Var4;
            } else {
                ej7Var7 = ej7Var4;
            }
            if (z7) {
                i25 = this.A;
                f2 = this.B;
                if (i25 == 1) {
                    m50 m50VarL111117 = bv4Var2.l();
                    m50VarL111117.d.g(ej7Var5, -1.0f);
                    m50VarL111117.d.g(ej7Var7, 1.0f);
                    m50VarL111117.d.g(ej7Var2, f2);
                    m50VarL111117.d.g(ej7Var, -f2);
                    bv4Var2.c(m50VarL111117);
                } else {
                    m50 m50VarL111118 = bv4Var2.l();
                    m50VarL111118.d.g(ej7Var2, -1.0f);
                    m50VarL111118.d.g(ej7Var, 1.0f);
                    m50VarL111118.d.g(ej7Var5, f2);
                    m50VarL111118.d.g(ej7Var7, -f2);
                    bv4Var2.c(m50VarL111118);
                }
            }
            if (ys1Var3.h()) {
                ot1 ot1Var113 = ys1Var3.f.d;
                float radians15 = (float) Math.toRadians(this.D + 90.0f);
                int iE15 = ys1Var3.e();
                ej7 ej7VarK111111111118 = bv4Var2.k(i(2));
                ej7 ej7VarK111111111119 = bv4Var2.k(i(3));
                ej7 ej7VarK1111111111110 = bv4Var2.k(i(4));
                ej7 ej7VarK1111111111111 = bv4Var2.k(i(5));
                ej7 ej7VarK1111111111112 = bv4Var2.k(ot1Var113.i(2));
                ej7 ej7VarK1111111111113 = bv4Var2.k(ot1Var113.i(3));
                ej7 ej7VarK1111111111114 = bv4Var2.k(ot1Var113.i(4));
                ej7 ej7VarK1111111111115 = bv4Var2.k(ot1Var113.i(5));
                m50 m50VarL111119 = bv4Var2.l();
                double d119 = radians15;
                double dSin15 = Math.sin(d119);
                double d1110 = iE15;
                m50VarL111119.d.g(ej7VarK1111111111113, 0.5f);
                m50VarL111119.d.g(ej7VarK1111111111115, 0.5f);
                m50VarL111119.d.g(ej7VarK111111111119, -0.5f);
                m50VarL111119.d.g(ej7VarK1111111111111, -0.5f);
                m50VarL111119.b = -((float) (dSin15 * d1110));
                bv4Var2.c(m50VarL111119);
                m50 m50VarL1111110 = bv4Var2.l();
                float fCos15 = (float) (Math.cos(d119) * d1110);
                m50VarL1111110.d.g(ej7VarK1111111111112, 0.5f);
                m50VarL1111110.d.g(ej7VarK1111111111114, 0.5f);
                m50VarL1111110.d.g(ej7VarK111111111118, -0.5f);
                m50VarL1111110.d.g(ej7VarK1111111111110, -0.5f);
                m50VarL1111110.b = -fCos15;
                bv4Var2.c(m50VarL1111110);
            }
            this.k = false;
            this.l = false;
        }
        i19 = -1;
        if (z7) {
            z8 = false;
        } else {
            z8 = false;
        }
        if (iArr[0] == 2) {
            z9 = false;
        } else {
            z9 = false;
        }
        if (z9) {
            i8 = 0;
        }
        ys1Var3 = this.P;
        boolean z111119 = !ys1Var3.h();
        char c16 = '\b';
        boolean z1111110 = zArr[0];
        boolean z1111111 = zArr[1];
        i20 = this.o;
        int[] iArr116 = this.C;
        if (i20 != 2) {
            ys1Var4 = ys1Var;
            ej7Var = ej7VarK;
            ej7Var2 = ej7VarK2;
            ej7Var3 = ej7VarK5;
            z10 = z3;
            r3 = i6;
            r4 = i5;
            i21 = i17;
        } else {
            ys1Var4 = ys1Var;
            ej7Var = ej7VarK;
            ej7Var2 = ej7VarK2;
            ej7Var3 = ej7VarK5;
            z10 = z3;
            r3 = i6;
            r4 = i5;
            i21 = i17;
        }
        if (z) {
            ej7Var4 = r33;
            ej7Var5 = ej7VarK4;
            ej7Var6 = ej7Var3;
            i22 = 0;
            i23 = 8;
            z11 = true;
            i24 = 1;
        } else {
            ej7Var4 = r33;
            ej7Var5 = ej7VarK4;
            ej7Var6 = ej7Var3;
            i22 = 0;
            i23 = 8;
            z11 = true;
            i24 = 1;
        }
        if (this.p == 2) {
            i24 = i22;
        }
        if (i24 != 0) {
            ej7Var7 = ej7Var4;
        } else {
            ej7Var7 = ej7Var4;
        }
        if (z7) {
            i25 = this.A;
            f2 = this.B;
            if (i25 == 1) {
                m50 m50VarL1111111 = bv4Var2.l();
                m50VarL1111111.d.g(ej7Var5, -1.0f);
                m50VarL1111111.d.g(ej7Var7, 1.0f);
                m50VarL1111111.d.g(ej7Var2, f2);
                m50VarL1111111.d.g(ej7Var, -f2);
                bv4Var2.c(m50VarL1111111);
            } else {
                m50 m50VarL1111112 = bv4Var2.l();
                m50VarL1111112.d.g(ej7Var2, -1.0f);
                m50VarL1111112.d.g(ej7Var, 1.0f);
                m50VarL1111112.d.g(ej7Var5, f2);
                m50VarL1111112.d.g(ej7Var7, -f2);
                bv4Var2.c(m50VarL1111112);
            }
        }
        if (ys1Var3.h()) {
            ot1 ot1Var114 = ys1Var3.f.d;
            float radians16 = (float) Math.toRadians(this.D + 90.0f);
            int iE16 = ys1Var3.e();
            ej7 ej7VarK1111111111116 = bv4Var2.k(i(2));
            ej7 ej7VarK1111111111117 = bv4Var2.k(i(3));
            ej7 ej7VarK1111111111118 = bv4Var2.k(i(4));
            ej7 ej7VarK1111111111119 = bv4Var2.k(i(5));
            ej7 ej7VarK11111111111110 = bv4Var2.k(ot1Var114.i(2));
            ej7 ej7VarK11111111111111 = bv4Var2.k(ot1Var114.i(3));
            ej7 ej7VarK11111111111112 = bv4Var2.k(ot1Var114.i(4));
            ej7 ej7VarK11111111111113 = bv4Var2.k(ot1Var114.i(5));
            m50 m50VarL1111113 = bv4Var2.l();
            double d1111 = radians16;
            double dSin16 = Math.sin(d1111);
            double d1112 = iE16;
            m50VarL1111113.d.g(ej7VarK11111111111111, 0.5f);
            m50VarL1111113.d.g(ej7VarK11111111111113, 0.5f);
            m50VarL1111113.d.g(ej7VarK1111111111117, -0.5f);
            m50VarL1111113.d.g(ej7VarK1111111111119, -0.5f);
            m50VarL1111113.b = -((float) (dSin16 * d1112));
            bv4Var2.c(m50VarL1111113);
            m50 m50VarL1111114 = bv4Var2.l();
            float fCos16 = (float) (Math.cos(d1111) * d1112);
            m50VarL1111114.d.g(ej7VarK11111111111110, 0.5f);
            m50VarL1111114.d.g(ej7VarK11111111111112, 0.5f);
            m50VarL1111114.d.g(ej7VarK1111111111116, -0.5f);
            m50VarL1111114.d.g(ej7VarK1111111111118, -0.5f);
            m50VarL1111114.b = -fCos16;
            bv4Var2.c(m50VarL1111114);
        }
        this.k = false;
        this.l = false;
    }

    public boolean c() {
        return this.g0 != 8;
    }

    /* JADX WARN: Code duplicated, block: B:220:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:222:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:229:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:231:0x0402  */
    /* JADX WARN: Code duplicated, block: B:240:0x041f  */
    /* JADX WARN: Code duplicated, block: B:257:0x0452  */
    /* JADX WARN: Code duplicated, block: B:259:0x0458  */
    /* JADX WARN: Code duplicated, block: B:270:0x046d  */
    /* JADX WARN: Code duplicated, block: B:275:0x0477  */
    /* JADX WARN: Code duplicated, block: B:277:0x047b  */
    /* JADX WARN: Code duplicated, block: B:278:0x047d  */
    /* JADX WARN: Code duplicated, block: B:281:0x0485  */
    /* JADX WARN: Code duplicated, block: B:287:0x0493 A[PHI: r0
      0x0493: PHI (r0v15 int) = (r0v14 int), (r0v19 int), (r0v19 int), (r0v19 int) binds: [B:280:0x0483, B:282:0x0489, B:283:0x048b, B:285:0x048f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:290:0x04a5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:291:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:292:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:294:0x04af  */
    /* JADX WARN: Code duplicated, block: B:303:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:337:0x0521  */
    public final void d(bv4 bv4Var, boolean z, boolean z2, boolean z3, boolean z4, ej7 ej7Var, ej7 ej7Var2, int i, boolean z5, ys1 ys1Var, ys1 ys1Var2, int i2, int i3, int i4, int i5, float f, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i6, int i7, int i8, int i9, float f2, boolean z11) {
        boolean z12;
        boolean z13;
        int iMin;
        boolean z14;
        int i10;
        int i11;
        boolean z15;
        ej7 ej7VarK;
        ej7 ej7VarK2;
        ys1 ys1Var3;
        ej7 ej7Var3;
        int i12;
        int i13;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        ot1 ot1Var;
        boolean z20;
        int iMin2;
        boolean z21;
        int i14;
        int iE;
        int i15;
        int i16;
        HashSet hashSet;
        boolean z22;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z23;
        boolean z24;
        int i22;
        bv4Var = bv4Var;
        int i23 = i8;
        int i24 = i9;
        ej7 ej7VarK3 = bv4Var.k(ys1Var);
        ej7 ej7VarK4 = bv4Var.k(ys1Var2);
        ej7 ej7VarK5 = bv4Var.k(ys1Var.f);
        ej7 ej7VarK6 = bv4Var.k(ys1Var2.f);
        boolean zH = ys1Var.h();
        boolean zH2 = ys1Var2.h();
        boolean zH3 = this.P.h();
        int i25 = zH2 ? (zH ? 1 : 0) + 1 : zH ? 1 : 0;
        if (zH3) {
            i25++;
        }
        int i26 = i25;
        int i27 = z6 ? 3 : i6;
        int iA = dj7.A(i);
        boolean z25 = (iA == 0 || iA == 1 || iA != 2 || i27 == 4) ? false : true;
        int i28 = this.h;
        if (i28 == -1 || !z) {
            i28 = i3;
            z12 = z25;
        } else {
            this.h = -1;
            z12 = false;
        }
        int i29 = this.i;
        if (i29 == -1 || z) {
            z13 = z12;
        } else {
            this.i = -1;
            i28 = i29;
            z13 = false;
        }
        boolean z26 = z13;
        if (this.g0 == 8) {
            z14 = false;
            iMin = 0;
        } else {
            iMin = i28;
            z14 = z26;
        }
        if (z11) {
            if (!zH && !zH2 && !zH3) {
                bv4Var.d(ej7VarK3, i2);
            } else if (zH && !zH2) {
                i10 = 8;
                bv4Var.e(ej7VarK3, ej7VarK5, ys1Var.e(), 8);
            }
            i10 = 8;
        } else {
            i10 = 8;
        }
        if (z14 != 0) {
            if (i26 == 2 || z6 || !(i27 == 1 || i27 == 0)) {
                if (i23 == -2) {
                    i23 = iMin;
                }
                if (i24 == -2) {
                    i24 = iMin;
                }
                if (iMin > 0 && i27 != 1) {
                    iMin = 0;
                }
                if (i23 > 0) {
                    bv4Var.f(ej7VarK4, ej7VarK3, i23, 8);
                    iMin = Math.max(iMin, i23);
                }
                if (i24 > 0) {
                    if (!z2 || i27 != 1) {
                        bv4Var.g(ej7VarK4, ej7VarK3, i24, 8);
                    }
                    iMin = Math.min(iMin, i24);
                }
                if (i27 == 1) {
                    if (z2) {
                        bv4Var.e(ej7VarK4, ej7VarK3, iMin, 8);
                    } else if (z8) {
                        bv4Var.e(ej7VarK4, ej7VarK3, iMin, 5);
                        bv4Var.g(ej7VarK4, ej7VarK3, iMin, 8);
                    } else {
                        bv4Var.e(ej7VarK4, ej7VarK3, iMin, 5);
                        bv4Var.g(ej7VarK4, ej7VarK3, iMin, 8);
                    }
                } else if (i27 == 2) {
                    int i30 = ys1Var.e;
                    if (i30 == 3 || i30 == 5) {
                        ej7VarK = bv4Var.k(this.T.i(3));
                        ej7VarK2 = bv4Var.k(this.T.i(5));
                    } else {
                        ej7VarK = bv4Var.k(this.T.i(2));
                        ej7VarK2 = bv4Var.k(this.T.i(4));
                    }
                    m50 m50VarL = bv4Var.l();
                    int i31 = i23;
                    m50VarL.d.g(ej7VarK4, -1.0f);
                    m50VarL.d.g(ej7VarK3, 1.0f);
                    m50VarL.d.g(ej7VarK2, f2);
                    m50VarL.d.g(ej7VarK, -f2);
                    bv4Var.c(m50VarL);
                    if (z2) {
                        z14 = false;
                    }
                    z15 = z4;
                    i11 = i31;
                } else {
                    i11 = i23;
                    z15 = true;
                }
            } else {
                int iMax = Math.max(i23, iMin);
                if (i24 > 0) {
                    iMax = Math.min(i24, iMax);
                }
                bv4Var.e(ej7VarK4, ej7VarK3, iMax, 8);
                z15 = z4;
                i11 = i23;
                z14 = false;
            }
            if (z11 || z8) {
                boolean z27 = z15;
                if (i26 >= 2 && z2 && z27) {
                    bv4Var.f(ej7VarK3, ej7Var, 0, 8);
                    ys1 ys1Var4 = this.M;
                    boolean z28 = z || ys1Var4.f == null;
                    if (!z && (ys1Var3 = ys1Var4.f) != null) {
                        ot1 ot1Var2 = ys1Var3.d;
                        if (ot1Var2.W != 0.0f) {
                            int[] iArr = ot1Var2.p0;
                            if (iArr[0] == 3 && iArr[1] == 3) {
                                z28 = true;
                            } else {
                                z28 = false;
                            }
                        } else {
                            z28 = false;
                        }
                    }
                    if (z28) {
                        bv4Var.f(ej7Var2, ej7VarK4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
            if (zH || zH2 || zH3) {
                if (zH && !zH2) {
                    ys1Var2 = ys1Var2;
                    ej7VarK4 = ej7VarK4;
                    z15 = z15;
                    ej7Var3 = ej7VarK6;
                    z20 = z2;
                    i22 = (z2 && (ys1Var.f.d instanceof al0)) ? 8 : 5;
                } else if (zH || !zH2) {
                    ej7Var3 = ej7VarK6;
                    if (zH && zH2) {
                        ot1 ot1Var3 = ys1Var.f.d;
                        ot1 ot1Var4 = ys1Var2.f.d;
                        z15 = z15;
                        ot1 ot1Var5 = this.T;
                        int i32 = 6;
                        if (z14) {
                            if (i27 == 0) {
                                if (i24 != 0 || i11 != 0) {
                                    i20 = 5;
                                    i21 = 5;
                                    z23 = true;
                                    z24 = false;
                                    z17 = true;
                                } else if (ej7VarK5.f && ej7Var3.f) {
                                    bv4Var.e(ej7VarK3, ej7VarK5, ys1Var.e(), 8);
                                    bv4Var.e(ej7VarK4, ej7Var3, -ys1Var2.e(), 8);
                                    return;
                                } else {
                                    i20 = 8;
                                    i21 = 8;
                                    z23 = false;
                                    z24 = true;
                                    z17 = false;
                                }
                                if ((ot1Var3 instanceof al0) || (ot1Var4 instanceof al0)) {
                                    bv4Var = bv4Var;
                                    i27 = i27;
                                    ej7VarK3 = ej7VarK3;
                                    ej7VarK4 = ej7VarK4;
                                    z18 = z24;
                                    ej7Var2 = ej7Var2;
                                    i12 = i20;
                                    ej7VarK5 = ej7VarK5;
                                    i32 = 6;
                                    z16 = z23;
                                    i13 = 4;
                                } else {
                                    bv4Var = bv4Var;
                                    ej7VarK3 = ej7VarK3;
                                    ej7VarK4 = ej7VarK4;
                                    z18 = z24;
                                    i12 = i20;
                                    ej7VarK5 = ej7VarK5;
                                    i32 = 6;
                                    z16 = z23;
                                    i13 = i21;
                                    i27 = i27;
                                    ej7Var2 = ej7Var2;
                                }
                            } else {
                                if (i27 == 2) {
                                    if ((ot1Var3 instanceof al0) || (ot1Var4 instanceof al0)) {
                                        i12 = 5;
                                    } else {
                                        bv4Var = bv4Var;
                                        i27 = i27;
                                        ej7VarK3 = ej7VarK3;
                                        ej7VarK4 = ej7VarK4;
                                        ej7VarK5 = ej7VarK5;
                                        i32 = 6;
                                        i12 = 5;
                                        i13 = 5;
                                    }
                                    z16 = true;
                                    z17 = true;
                                    z18 = false;
                                    ej7Var2 = ej7Var2;
                                } else if (i27 == 1) {
                                    i12 = 8;
                                } else if (i27 == 3) {
                                    i27 = i27;
                                    if (this.A != -1) {
                                        if (z6) {
                                            if (i7 == 2 || i7 == 1) {
                                                i18 = 5;
                                                i19 = 4;
                                            } else {
                                                i18 = 8;
                                                i19 = 5;
                                            }
                                            i13 = i19;
                                            z16 = true;
                                            z17 = true;
                                            z18 = true;
                                        } else {
                                            if (i24 > 0) {
                                                bv4Var = bv4Var;
                                                ej7Var2 = ej7Var2;
                                                ej7VarK3 = ej7VarK3;
                                                ej7VarK4 = ej7VarK4;
                                                ej7VarK5 = ej7VarK5;
                                                i32 = 6;
                                                i12 = 5;
                                            } else if (i24 != 0 || i11 != 0) {
                                                bv4Var = bv4Var;
                                                ej7Var2 = ej7Var2;
                                                ej7VarK3 = ej7VarK3;
                                                ej7VarK4 = ej7VarK4;
                                                ej7VarK5 = ej7VarK5;
                                                i32 = 6;
                                                i12 = 5;
                                                i13 = 4;
                                            } else if (z9) {
                                                i18 = (ot1Var3 == ot1Var5 || ot1Var4 == ot1Var5) ? 5 : 4;
                                                i13 = 4;
                                                z16 = true;
                                                z17 = true;
                                                z18 = true;
                                            } else {
                                                bv4Var = bv4Var;
                                                ej7Var2 = ej7Var2;
                                                ej7VarK3 = ej7VarK3;
                                                ej7VarK4 = ej7VarK4;
                                                ej7VarK5 = ej7VarK5;
                                                i32 = 6;
                                                i12 = 5;
                                                i13 = 8;
                                            }
                                            z16 = true;
                                            z17 = true;
                                            z18 = true;
                                        }
                                        i12 = i18;
                                        bv4Var = bv4Var;
                                    } else if (z9) {
                                        bv4Var = bv4Var;
                                        ej7Var2 = ej7Var2;
                                        ej7VarK3 = ej7VarK3;
                                        ej7VarK4 = ej7VarK4;
                                        ej7VarK5 = ej7VarK5;
                                        i12 = 8;
                                        i32 = z2 ? 5 : 4;
                                    } else {
                                        bv4Var = bv4Var;
                                        ej7Var2 = ej7Var2;
                                        ej7VarK3 = ej7VarK3;
                                        ej7VarK4 = ej7VarK4;
                                        ej7VarK5 = ej7VarK5;
                                        i12 = 8;
                                        i32 = 8;
                                    }
                                    i13 = 5;
                                    z16 = true;
                                    z17 = true;
                                    z18 = true;
                                } else {
                                    i12 = 5;
                                    i13 = 4;
                                    z16 = false;
                                    z17 = false;
                                }
                                i13 = 4;
                                z16 = true;
                                z17 = true;
                                z18 = false;
                                ej7Var2 = ej7Var2;
                            }
                            if (z17 || ej7VarK5 != ej7Var3 || ot1Var3 == ot1Var5) {
                                z19 = true;
                            } else {
                                z17 = false;
                                z19 = false;
                            }
                            if (z16) {
                                if (z14 && !z7 && !z9 && ej7VarK5 == ej7Var && ej7Var3 == ej7Var2) {
                                    i32 = 8;
                                    z20 = false;
                                    i17 = 8;
                                    z22 = false;
                                } else {
                                    z20 = z2;
                                    z22 = z19;
                                    i17 = i12;
                                }
                                ej7 ej7Var4 = ej7VarK5;
                                ot1Var = ot1Var4;
                                bv4Var.b(ej7VarK3, ej7Var4, ys1Var.e(), f, ej7Var3, ej7VarK4, ys1Var2.e(), i32);
                                ej7VarK5 = ej7Var4;
                                i12 = i17;
                                z19 = z22;
                            } else {
                                ot1Var = ot1Var4;
                                z20 = z2;
                            }
                            if (this.g0 != 8 && ((hashSet = ys1Var2.a) == null || hashSet.size() <= 0)) {
                                return;
                            }
                            if (z17) {
                                if (z20 && ej7VarK5 != ej7Var3 && !z14 && ((ot1Var3 instanceof al0) || (ot1Var instanceof al0))) {
                                    i12 = 6;
                                }
                                bv4Var.f(ej7VarK3, ej7VarK5, ys1Var.e(), i12);
                                bv4Var.g(ej7VarK4, ej7Var3, -ys1Var2.e(), i12);
                            }
                            if (z20 || !z10 || (ot1Var3 instanceof al0) || (ot1Var instanceof al0) || ot1Var == ot1Var5) {
                                iMin2 = i13;
                                z21 = z19;
                            } else {
                                iMin2 = 6;
                                i12 = 6;
                                z21 = true;
                            }
                            if (z21) {
                                if (z18 && (!z9 || z3)) {
                                    if (ot1Var3 != ot1Var5 && ot1Var != ot1Var5) {
                                        i32 = iMin2;
                                    }
                                    if ((ot1Var3 instanceof b24) || (ot1Var instanceof b24)) {
                                        i32 = 5;
                                    }
                                    if ((ot1Var3 instanceof al0) || (ot1Var instanceof al0)) {
                                        i32 = 5;
                                    }
                                    if (z9) {
                                        i16 = 5;
                                    } else {
                                        i16 = i32;
                                    }
                                    iMin2 = Math.max(i16, iMin2);
                                }
                                if (z20) {
                                    iMin2 = Math.min(i12, iMin2);
                                    if (z6 || z9 || !(ot1Var3 == ot1Var5 || ot1Var == ot1Var5)) {
                                        i15 = iMin2;
                                    } else {
                                        i15 = 4;
                                    }
                                } else {
                                    i15 = iMin2;
                                }
                                bv4Var.e(ej7VarK3, ej7VarK5, ys1Var.e(), i15);
                                bv4Var.e(ej7VarK4, ej7Var3, -ys1Var2.e(), i15);
                            }
                            if (z20) {
                                if (ej7Var == ej7VarK5) {
                                    iE = ys1Var.e();
                                } else {
                                    iE = 0;
                                }
                                if (ej7VarK5 != ej7Var) {
                                    bv4Var.f(ej7VarK3, ej7Var, iE, 5);
                                }
                            }
                            if (z20 || !z14 || i4 != 0 || i11 != 0) {
                                i14 = 5;
                            } else if (z14 && i27 == 3) {
                                bv4Var.f(ej7VarK4, ej7VarK3, 0, 8);
                                i14 = 5;
                            } else {
                                i14 = 5;
                                bv4Var.f(ej7VarK4, ej7VarK3, 0, 5);
                            }
                        } else {
                            if (ej7VarK5.f && ej7Var3.f) {
                                bv4Var.b(ej7VarK3, ej7VarK5, ys1Var.e(), f, ej7Var3, ej7VarK4, ys1Var2.e(), 8);
                                if (z2 && z15) {
                                    int iE2 = ys1Var2.f != null ? ys1Var2.e() : 0;
                                    if (ej7Var3 != ej7Var2) {
                                        bv4Var.f(ej7Var2, ej7VarK4, iE2, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i12 = 5;
                            i13 = 4;
                            z16 = true;
                            z17 = true;
                        }
                        z18 = false;
                        if (z17) {
                            z19 = true;
                        } else {
                            z19 = true;
                        }
                        if (z16) {
                            if (z14) {
                                z20 = z2;
                                z22 = z19;
                                i17 = i12;
                            } else {
                                z20 = z2;
                                z22 = z19;
                                i17 = i12;
                            }
                            ej7 ej7Var5 = ej7VarK5;
                            ot1Var = ot1Var4;
                            bv4Var.b(ej7VarK3, ej7Var5, ys1Var.e(), f, ej7Var3, ej7VarK4, ys1Var2.e(), i32);
                            ej7VarK5 = ej7Var5;
                            i12 = i17;
                            z19 = z22;
                        } else {
                            ot1Var = ot1Var4;
                            z20 = z2;
                        }
                        if (this.g0 != 8) {
                        }
                        if (z17) {
                            if (z20) {
                                i12 = 6;
                            }
                            bv4Var.f(ej7VarK3, ej7VarK5, ys1Var.e(), i12);
                            bv4Var.g(ej7VarK4, ej7Var3, -ys1Var2.e(), i12);
                        }
                        if (z20) {
                            iMin2 = i13;
                            z21 = z19;
                        } else {
                            iMin2 = i13;
                            z21 = z19;
                        }
                        if (z21) {
                            if (z18) {
                                if (ot1Var3 != ot1Var5) {
                                    i32 = iMin2;
                                }
                                if (ot1Var3 instanceof b24) {
                                    i32 = 5;
                                } else {
                                    i32 = 5;
                                }
                                if (ot1Var3 instanceof al0) {
                                    i32 = 5;
                                } else {
                                    i32 = 5;
                                }
                                if (z9) {
                                    i16 = 5;
                                } else {
                                    i16 = i32;
                                }
                                iMin2 = Math.max(i16, iMin2);
                            }
                            if (z20) {
                                iMin2 = Math.min(i12, iMin2);
                                if (z6) {
                                    i15 = iMin2;
                                } else {
                                    i15 = iMin2;
                                }
                            } else {
                                i15 = iMin2;
                            }
                            bv4Var.e(ej7VarK3, ej7VarK5, ys1Var.e(), i15);
                            bv4Var.e(ej7VarK4, ej7Var3, -ys1Var2.e(), i15);
                        }
                        if (z20) {
                            if (ej7Var == ej7VarK5) {
                                iE = ys1Var.e();
                            } else {
                                iE = 0;
                            }
                            if (ej7VarK5 != ej7Var) {
                                bv4Var.f(ej7VarK3, ej7Var, iE, 5);
                            }
                        }
                        if (z20) {
                            i14 = 5;
                        } else {
                            i14 = 5;
                        }
                    }
                    i22 = i14;
                } else {
                    ej7Var3 = ej7VarK6;
                    bv4Var.e(ej7VarK4, ej7Var3, -ys1Var2.e(), 8);
                    if (z2) {
                        bv4Var.f(ej7VarK3, ej7Var, 0, 5);
                        ys1Var2 = ys1Var2;
                        i14 = 5;
                        ej7VarK4 = ej7VarK4;
                        z15 = z15;
                    }
                    z20 = z2;
                    i22 = i14;
                }
                if (z20 || !z15) {
                    return;
                }
                int iE3 = ys1Var2.f != null ? ys1Var2.e() : 0;
                if (ej7Var3 != ej7Var2) {
                    bv4Var.f(ej7Var2, ej7VarK4, iE3, i22);
                    return;
                }
                return;
            }
            ej7Var3 = ej7VarK6;
            i14 = 5;
            z20 = z2;
            i22 = i14;
            if (z20) {
                return;
            } else {
                return;
            }
        }
        if (z5) {
            bv4Var.e(ej7VarK4, ej7VarK3, 0, 3);
            if (i4 > 0) {
                bv4Var.f(ej7VarK4, ej7VarK3, i4, i10);
            }
            if (i5 < Integer.MAX_VALUE) {
                bv4Var.g(ej7VarK4, ej7VarK3, i5, i10);
            }
        } else {
            bv4Var.e(ej7VarK4, ej7VarK3, iMin, i10);
        }
        z15 = z4;
        i11 = i23;
        if (z11) {
        }
        boolean z29 = z15;
        if (i26 >= 2) {
        }
    }

    public final void e(int i, ot1 ot1Var, int i2, int i3) {
        boolean z;
        if (i == 7) {
            if (i2 != 7) {
                if (i2 == 2 || i2 == 4) {
                    e(2, ot1Var, i2, 0);
                    e(4, ot1Var, i2, 0);
                    i(7).a(ot1Var.i(i2), 0);
                    return;
                } else {
                    if (i2 == 3 || i2 == 5) {
                        e(3, ot1Var, i2, 0);
                        e(5, ot1Var, i2, 0);
                        i(7).a(ot1Var.i(i2), 0);
                        return;
                    }
                    return;
                }
            }
            ys1 ys1VarI = i(2);
            ys1 ys1VarI2 = i(4);
            ys1 ys1VarI3 = i(3);
            ys1 ys1VarI4 = i(5);
            boolean z2 = true;
            if ((ys1VarI == null || !ys1VarI.h()) && (ys1VarI2 == null || !ys1VarI2.h())) {
                e(2, ot1Var, 2, 0);
                e(4, ot1Var, 4, 0);
                z = true;
            } else {
                z = false;
            }
            if ((ys1VarI3 == null || !ys1VarI3.h()) && (ys1VarI4 == null || !ys1VarI4.h())) {
                e(3, ot1Var, 3, 0);
                e(5, ot1Var, 5, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                i(7).a(ot1Var.i(7), 0);
                return;
            } else if (z) {
                i(8).a(ot1Var.i(8), 0);
                return;
            } else {
                if (z2) {
                    i(9).a(ot1Var.i(9), 0);
                    return;
                }
                return;
            }
        }
        if (i == 8 && (i2 == 2 || i2 == 4)) {
            ys1 ys1VarI5 = i(2);
            ys1 ys1VarI6 = ot1Var.i(i2);
            ys1 ys1VarI7 = i(4);
            ys1VarI5.a(ys1VarI6, 0);
            ys1VarI7.a(ys1VarI6, 0);
            i(8).a(ys1VarI6, 0);
            return;
        }
        if (i == 9 && (i2 == 3 || i2 == 5)) {
            ys1 ys1VarI8 = ot1Var.i(i2);
            i(3).a(ys1VarI8, 0);
            i(5).a(ys1VarI8, 0);
            i(9).a(ys1VarI8, 0);
            return;
        }
        if (i == 8 && i2 == 8) {
            i(2).a(ot1Var.i(2), 0);
            i(4).a(ot1Var.i(4), 0);
            i(8).a(ot1Var.i(i2), 0);
            return;
        }
        if (i == 9 && i2 == 9) {
            i(3).a(ot1Var.i(3), 0);
            i(5).a(ot1Var.i(5), 0);
            i(9).a(ot1Var.i(i2), 0);
            return;
        }
        ys1 ys1VarI9 = i(i);
        ys1 ys1VarI10 = ot1Var.i(i2);
        if (ys1VarI9.i(ys1VarI10)) {
            if (i == 6) {
                ys1 ys1VarI11 = i(3);
                ys1 ys1VarI12 = i(5);
                if (ys1VarI11 != null) {
                    ys1VarI11.j();
                }
                if (ys1VarI12 != null) {
                    ys1VarI12.j();
                }
            } else if (i == 3 || i == 5) {
                ys1 ys1VarI13 = i(6);
                if (ys1VarI13 != null) {
                    ys1VarI13.j();
                }
                ys1 ys1VarI14 = i(7);
                if (ys1VarI14.f != ys1VarI10) {
                    ys1VarI14.j();
                }
                ys1 ys1VarF = i(i).f();
                ys1 ys1VarI15 = i(9);
                if (ys1VarI15.h()) {
                    ys1VarF.j();
                    ys1VarI15.j();
                }
            } else if (i == 2 || i == 4) {
                ys1 ys1VarI16 = i(7);
                if (ys1VarI16.f != ys1VarI10) {
                    ys1VarI16.j();
                }
                ys1 ys1VarF2 = i(i).f();
                ys1 ys1VarI17 = i(8);
                if (ys1VarI17.h()) {
                    ys1VarF2.j();
                    ys1VarI17.j();
                }
            }
            ys1VarI9.a(ys1VarI10, i3);
        }
    }

    public final void f(ys1 ys1Var, ys1 ys1Var2, int i) {
        if (ys1Var.d == this) {
            e(ys1Var.e, ys1Var2.d, ys1Var2.e, i);
        }
    }

    public final void g(bv4 bv4Var) {
        bv4Var.k(this.I);
        bv4Var.k(this.J);
        bv4Var.k(this.K);
        bv4Var.k(this.L);
        if (this.a0 > 0) {
            bv4Var.k(this.M);
        }
    }

    public final void h() {
        if (this.d == null) {
            d64 d64Var = new d64(this);
            d64Var.h.e = 4;
            d64Var.i.e = 5;
            d64Var.f = 0;
            this.d = d64Var;
        }
        if (this.e == null) {
            dk8 dk8Var = new dk8(this);
            ni2 ni2Var = new ni2(dk8Var);
            dk8Var.k = ni2Var;
            dk8Var.l = null;
            dk8Var.h.e = 6;
            dk8Var.i.e = 7;
            ni2Var.e = 8;
            dk8Var.f = 1;
            this.e = dk8Var;
        }
    }

    public ys1 i(int i) {
        switch (dj7.A(i)) {
            case 0:
                return null;
            case 1:
                return this.I;
            case 2:
                return this.J;
            case 3:
                return this.K;
            case 4:
                return this.L;
            case 5:
                return this.M;
            case 6:
                return this.P;
            case 7:
                return this.N;
            case 8:
                return this.O;
            default:
                e6.e(xs1.u(i));
                return null;
        }
    }

    public final int j(int i) {
        int[] iArr = this.p0;
        if (i == 0) {
            return iArr[0];
        }
        if (i == 1) {
            return iArr[1];
        }
        return 0;
    }

    public final int k() {
        if (this.g0 == 8) {
            return 0;
        }
        return this.V;
    }

    public final ot1 l(int i) {
        ys1 ys1Var;
        ys1 ys1Var2;
        if (i != 0) {
            if (i == 1 && (ys1Var2 = (ys1Var = this.L).f) != null && ys1Var2.f == ys1Var) {
                return ys1Var2.d;
            }
            return null;
        }
        ys1 ys1Var3 = this.K;
        ys1 ys1Var4 = ys1Var3.f;
        if (ys1Var4 == null || ys1Var4.f != ys1Var3) {
            return null;
        }
        return ys1Var4.d;
    }

    public final ot1 m(int i) {
        ys1 ys1Var;
        ys1 ys1Var2;
        if (i != 0) {
            if (i == 1 && (ys1Var2 = (ys1Var = this.J).f) != null && ys1Var2.f == ys1Var) {
                return ys1Var2.d;
            }
            return null;
        }
        ys1 ys1Var3 = this.I;
        ys1 ys1Var4 = ys1Var3.f;
        if (ys1Var4 == null || ys1Var4.f != ys1Var3) {
            return null;
        }
        return ys1Var4.d;
    }

    public void n(StringBuilder sb) {
        sb.append("  " + this.j + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.U);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.V);
        sb.append("\n");
        sb.append("    actualLeft:" + this.Y);
        sb.append("\n");
        sb.append("    actualTop:" + this.Z);
        sb.append("\n");
        p(sb, "left", this.I);
        p(sb, "top", this.J);
        p(sb, "right", this.K);
        p(sb, "bottom", this.L);
        p(sb, "baseline", this.M);
        p(sb, "centerX", this.N);
        p(sb, "centerY", this.O);
        int i = this.U;
        int i2 = this.b0;
        int[] iArr = this.C;
        int i3 = iArr[0];
        int i4 = this.u;
        int i5 = this.r;
        float f = this.w;
        int[] iArr2 = this.p0;
        int i6 = iArr2[0];
        float[] fArr = this.k0;
        float f2 = fArr[0];
        o(sb, "    width", i, i2, i3, i4, i5, f, i6);
        int i7 = this.V;
        int i8 = this.c0;
        int i9 = iArr[1];
        int i10 = this.x;
        int i11 = this.s;
        float f3 = this.z;
        int i12 = iArr2[1];
        float f4 = fArr[1];
        o(sb, "    height", i7, i8, i9, i10, i11, f3, i12);
        float f5 = this.W;
        int i13 = this.X;
        if (f5 != 0.0f) {
            sb.append("    dimensionRatio");
            sb.append(" :  [");
            sb.append(f5);
            sb.append(",");
            sb.append(i13);
            sb.append("");
            sb.append("],\n");
        }
        H(sb, "    horizontalBias", this.d0, 0.5f);
        H(sb, "    verticalBias", this.e0, 0.5f);
        G(this.i0, 0, "    horizontalChainStyle", sb);
        G(this.j0, 0, "    verticalChainStyle", sb);
        sb.append("  }");
    }

    public final int q() {
        if (this.g0 == 8) {
            return 0;
        }
        return this.U;
    }

    public final int r() {
        ot1 ot1Var = this.T;
        return (ot1Var == null || !(ot1Var instanceof pt1)) ? this.Y : ((pt1) ot1Var).x0 + this.Y;
    }

    public final int s() {
        ot1 ot1Var = this.T;
        return (ot1Var == null || !(ot1Var instanceof pt1)) ? this.Z : ((pt1) ot1Var).y0 + this.Z;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x003a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x003b A[RETURN] */
    public final boolean t(int i) {
        if (i == 0) {
            if ((this.I.f != null ? 1 : 0) + (this.K.f != null ? 1 : 0) < 2) {
                return true;
            }
            return false;
        }
        if ((this.J.f != null ? 1 : 0) + (this.L.f != null ? 1 : 0) + (this.M.f != null ? 1 : 0) < 2) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder sbS = dj7.s("");
        sbS.append(this.h0 != null ? dj7.n(new StringBuilder("id: "), this.h0, TokenAuthenticationScheme.SCHEME_DELIMITER) : "");
        sbS.append("(");
        sbS.append(this.Y);
        sbS.append(", ");
        sbS.append(this.Z);
        sbS.append(") - (");
        sbS.append(this.U);
        sbS.append(" x ");
        return xs1.m(sbS, this.V, ")");
    }

    public final boolean u(int i, int i2) {
        ys1 ys1Var;
        ys1 ys1Var2;
        ys1 ys1Var3;
        ys1 ys1Var4;
        if (i == 0) {
            ys1 ys1Var5 = this.I;
            ys1 ys1Var6 = ys1Var5.f;
            if (ys1Var6 == null || !ys1Var6.c || (ys1Var4 = (ys1Var3 = this.K).f) == null || !ys1Var4.c) {
                return false;
            }
            return (ys1Var4.d() - ys1Var3.e()) - (ys1Var5.e() + ys1Var5.f.d()) >= i2;
        }
        ys1 ys1Var7 = this.J;
        ys1 ys1Var8 = ys1Var7.f;
        if (ys1Var8 == null || !ys1Var8.c || (ys1Var2 = (ys1Var = this.L).f) == null || !ys1Var2.c) {
            return false;
        }
        return (ys1Var2.d() - ys1Var.e()) - (ys1Var7.e() + ys1Var7.f.d()) >= i2;
    }

    public final void v(int i, int i2, int i3, int i4, ot1 ot1Var) {
        i(i).b(ot1Var.i(i2), i3, i4, true);
    }

    public final boolean w(int i) {
        ys1 ys1Var;
        ys1 ys1Var2;
        int i2 = i * 2;
        ys1[] ys1VarArr = this.Q;
        ys1 ys1Var3 = ys1VarArr[i2];
        ys1 ys1Var4 = ys1Var3.f;
        return (ys1Var4 == null || ys1Var4.f == ys1Var3 || (ys1Var2 = (ys1Var = ys1VarArr[i2 + 1]).f) == null || ys1Var2.f != ys1Var) ? false : true;
    }

    public final boolean x() {
        ys1 ys1Var = this.I;
        ys1 ys1Var2 = ys1Var.f;
        if (ys1Var2 != null && ys1Var2.f == ys1Var) {
            return true;
        }
        ys1 ys1Var3 = this.K;
        ys1 ys1Var4 = ys1Var3.f;
        return ys1Var4 != null && ys1Var4.f == ys1Var3;
    }

    public final boolean y() {
        ys1 ys1Var = this.J;
        ys1 ys1Var2 = ys1Var.f;
        if (ys1Var2 != null && ys1Var2.f == ys1Var) {
            return true;
        }
        ys1 ys1Var3 = this.L;
        ys1 ys1Var4 = ys1Var3.f;
        return ys1Var4 != null && ys1Var4.f == ys1Var3;
    }

    public final boolean z() {
        return this.g && this.g0 != 8;
    }
}
