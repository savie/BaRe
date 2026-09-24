package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pt1 extends ot1 {
    public int A0;
    public i31[] B0;
    public i31[] C0;
    public int D0;
    public boolean E0;
    public boolean F0;
    public WeakReference G0;
    public WeakReference H0;
    public WeakReference I0;
    public WeakReference J0;
    public final HashSet K0;
    public final ap0 L0;
    public ArrayList q0 = new ArrayList();
    public final bp0 r0;
    public final mi2 s0;
    public int t0;
    public et1 u0;
    public boolean v0;
    public final bv4 w0;
    public int x0;
    public int y0;
    public int z0;

    public pt1() {
        bp0 bp0Var = new bp0();
        bp0Var.a = new ArrayList();
        bp0Var.b = new ap0();
        bp0Var.c = this;
        this.r0 = bp0Var;
        mi2 mi2Var = new mi2();
        mi2Var.a = true;
        mi2Var.b = true;
        mi2Var.e = new ArrayList();
        new ArrayList();
        mi2Var.g = null;
        mi2Var.h = new ap0();
        mi2Var.f = new ArrayList();
        mi2Var.c = this;
        mi2Var.d = this;
        this.s0 = mi2Var;
        this.u0 = null;
        this.v0 = false;
        this.w0 = new bv4();
        this.z0 = 0;
        this.A0 = 0;
        this.B0 = new i31[4];
        this.C0 = new i31[4];
        this.D0 = 257;
        this.E0 = false;
        this.F0 = false;
        this.G0 = null;
        this.H0 = null;
        this.I0 = null;
        this.J0 = null;
        this.K0 = new HashSet();
        this.L0 = new ap0();
    }

    public static void V(ot1 ot1Var, et1 et1Var, ap0 ap0Var) {
        int i;
        int i2;
        if (et1Var == null) {
            return;
        }
        int i3 = ot1Var.g0;
        int[] iArr = ot1Var.t;
        if (i3 == 8 || (ot1Var instanceof b24) || (ot1Var instanceof al0)) {
            ap0Var.e = 0;
            ap0Var.f = 0;
            return;
        }
        int[] iArr2 = ot1Var.p0;
        ap0Var.a = iArr2[0];
        ap0Var.b = iArr2[1];
        ap0Var.c = ot1Var.q();
        ap0Var.d = ot1Var.k();
        ap0Var.i = false;
        ap0Var.j = 0;
        boolean z = ap0Var.a == 3;
        boolean z2 = ap0Var.b == 3;
        boolean z3 = z && ot1Var.W > 0.0f;
        boolean z4 = z2 && ot1Var.W > 0.0f;
        if (z && ot1Var.t(0) && ot1Var.r == 0 && !z3) {
            ap0Var.a = 2;
            if (z2 && ot1Var.s == 0) {
                ap0Var.a = 1;
            }
            z = false;
        }
        if (z2 && ot1Var.t(1) && ot1Var.s == 0 && !z4) {
            ap0Var.b = 2;
            if (z && ot1Var.r == 0) {
                ap0Var.b = 1;
            }
            z2 = false;
        }
        if (ot1Var.A()) {
            ap0Var.a = 1;
            z = false;
        }
        if (ot1Var.B()) {
            ap0Var.b = 1;
            z2 = false;
        }
        if (z3) {
            if (iArr[0] == 4) {
                ap0Var.a = 1;
            } else if (!z2) {
                if (ap0Var.b == 1) {
                    i2 = ap0Var.d;
                } else {
                    ap0Var.a = 2;
                    et1Var.b(ot1Var, ap0Var);
                    i2 = ap0Var.f;
                }
                ap0Var.a = 1;
                ap0Var.c = (int) (ot1Var.W * i2);
            }
        }
        if (z4) {
            if (iArr[1] == 4) {
                ap0Var.b = 1;
            } else if (!z) {
                if (ap0Var.a == 1) {
                    i = ap0Var.c;
                } else {
                    ap0Var.b = 2;
                    et1Var.b(ot1Var, ap0Var);
                    i = ap0Var.e;
                }
                ap0Var.b = 1;
                int i4 = ot1Var.X;
                float f = ot1Var.W;
                if (i4 == -1) {
                    ap0Var.d = (int) (i / f);
                } else {
                    ap0Var.d = (int) (f * i);
                }
            }
        }
        et1Var.b(ot1Var, ap0Var);
        ot1Var.O(ap0Var.e);
        ot1Var.L(ap0Var.f);
        ot1Var.E = ap0Var.h;
        ot1Var.I(ap0Var.g);
        ap0Var.j = 0;
    }

    @Override // defpackage.ot1
    public final void C() {
        this.w0.t();
        this.x0 = 0;
        this.y0 = 0;
        this.q0.clear();
        super.C();
    }

    @Override // defpackage.ot1
    public final void F(gh ghVar) {
        super.F(ghVar);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((ot1) this.q0.get(i)).F(ghVar);
        }
    }

    @Override // defpackage.ot1
    public final void P(boolean z, boolean z2) {
        super.P(z, z2);
        int size = this.q0.size();
        for (int i = 0; i < size; i++) {
            ((ot1) this.q0.get(i)).P(z, z2);
        }
    }

    public final void R(ot1 ot1Var, int i) {
        if (i == 0) {
            int i2 = this.z0 + 1;
            i31[] i31VarArr = this.C0;
            if (i2 >= i31VarArr.length) {
                this.C0 = (i31[]) Arrays.copyOf(i31VarArr, i31VarArr.length * 2);
            }
            i31[] i31VarArr2 = this.C0;
            int i3 = this.z0;
            i31VarArr2[i3] = new i31(ot1Var, 0, this.v0);
            this.z0 = i3 + 1;
            return;
        }
        if (i == 1) {
            int i4 = this.A0 + 1;
            i31[] i31VarArr3 = this.B0;
            if (i4 >= i31VarArr3.length) {
                this.B0 = (i31[]) Arrays.copyOf(i31VarArr3, i31VarArr3.length * 2);
            }
            i31[] i31VarArr4 = this.B0;
            int i5 = this.A0;
            i31VarArr4[i5] = new i31(ot1Var, 1, this.v0);
            this.A0 = i5 + 1;
        }
    }

    public final void S(bv4 bv4Var) {
        pt1 pt1Var;
        bv4 bv4Var2;
        boolean zW = W(64);
        b(bv4Var, zW);
        int size = this.q0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            ot1 ot1Var = (ot1) this.q0.get(i);
            boolean[] zArr = ot1Var.S;
            zArr[0] = false;
            zArr[1] = false;
            if (ot1Var instanceof al0) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                ot1 ot1Var2 = (ot1) this.q0.get(i2);
                if (ot1Var2 instanceof al0) {
                    al0 al0Var = (al0) ot1Var2;
                    for (int i3 = 0; i3 < al0Var.r0; i3++) {
                        ot1 ot1Var3 = al0Var.q0[i3];
                        if (al0Var.t0 || ot1Var3.c()) {
                            int i4 = al0Var.s0;
                            if (i4 == 0 || i4 == 1) {
                                ot1Var3.S[0] = true;
                            } else if (i4 == 2 || i4 == 3) {
                                ot1Var3.S[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.K0;
        hashSet.clear();
        for (int i5 = 0; i5 < size; i5++) {
            ot1 ot1Var4 = (ot1) this.q0.get(i5);
            ot1Var4.getClass();
            boolean z2 = ot1Var4 instanceof ki3;
            if (z2 || (ot1Var4 instanceof b24)) {
                if (z2) {
                    hashSet.add(ot1Var4);
                } else {
                    ot1Var4.b(bv4Var, zW);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ki3 ki3Var = (ki3) ((ot1) it.next());
                for (int i6 = 0; i6 < ki3Var.r0; i6++) {
                    if (hashSet.contains(ki3Var.q0[i6])) {
                        ki3Var.b(bv4Var, zW);
                        hashSet.remove(ki3Var);
                        break;
                    }
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((ot1) it2.next()).b(bv4Var, zW);
                }
                hashSet.clear();
            }
        }
        if (bv4.q) {
            HashSet<ot1> hashSet2 = new HashSet();
            for (int i7 = 0; i7 < size; i7++) {
                ot1 ot1Var5 = (ot1) this.q0.get(i7);
                ot1Var5.getClass();
                if (!(ot1Var5 instanceof ki3) && !(ot1Var5 instanceof b24)) {
                    hashSet2.add(ot1Var5);
                }
            }
            pt1Var = this;
            bv4Var2 = bv4Var;
            pt1Var.a(this, bv4Var2, hashSet2, this.p0[0] == 2 ? 0 : 1, false);
            for (ot1 ot1Var6 : hashSet2) {
                sz8.g(pt1Var, bv4Var2, ot1Var6);
                ot1Var6.b(bv4Var2, zW);
            }
        } else {
            pt1Var = this;
            bv4Var2 = bv4Var;
            for (int i8 = 0; i8 < size; i8++) {
                ot1 ot1Var7 = (ot1) pt1Var.q0.get(i8);
                if (ot1Var7 instanceof pt1) {
                    int[] iArr = ot1Var7.p0;
                    int i9 = iArr[0];
                    int i10 = iArr[1];
                    if (i9 == 2) {
                        ot1Var7.M(1);
                    }
                    if (i10 == 2) {
                        ot1Var7.N(1);
                    }
                    ot1Var7.b(bv4Var2, zW);
                    if (i9 == 2) {
                        ot1Var7.M(i9);
                    }
                    if (i10 == 2) {
                        ot1Var7.N(i10);
                    }
                } else {
                    sz8.g(pt1Var, bv4Var2, ot1Var7);
                    if (!(ot1Var7 instanceof ki3) && !(ot1Var7 instanceof b24)) {
                        ot1Var7.b(bv4Var2, zW);
                    }
                }
            }
        }
        if (pt1Var.z0 > 0) {
            nc8.e(pt1Var, bv4Var2, null, 0);
        }
        if (pt1Var.A0 > 0) {
            nc8.e(pt1Var, bv4Var2, null, 1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009b  */
    public final boolean T(int i, boolean z) {
        boolean z2;
        mi2 mi2Var = this.s0;
        ArrayList<pr8> arrayList = (ArrayList) mi2Var.e;
        pt1 pt1Var = (pt1) mi2Var.c;
        boolean z3 = false;
        int iJ = pt1Var.j(0);
        int iJ2 = pt1Var.j(1);
        int iR = pt1Var.r();
        int iS = pt1Var.s();
        if (z && (iJ == 2 || iJ2 == 2)) {
            for (pr8 pr8Var : arrayList) {
                if (pr8Var.f == i && !pr8Var.k()) {
                    z = false;
                    break;
                }
            }
            if (i == 0) {
                if (z && iJ == 2) {
                    pt1Var.M(1);
                    pt1Var.O(mi2Var.e(pt1Var, 0));
                    pt1Var.d.e.d(pt1Var.q());
                }
            } else if (z && iJ2 == 2) {
                pt1Var.N(1);
                pt1Var.L(mi2Var.e(pt1Var, 1));
                pt1Var.e.e.d(pt1Var.k());
            }
        }
        int[] iArr = pt1Var.p0;
        if (i == 0) {
            int i2 = iArr[0];
            if (i2 == 1 || i2 == 4) {
                int iQ = pt1Var.q() + iR;
                pt1Var.d.i.d(iQ);
                pt1Var.d.e.d(iQ - iR);
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            int i3 = iArr[1];
            if (i3 == 1 || i3 == 4) {
                int iK = pt1Var.k() + iS;
                pt1Var.e.i.d(iK);
                pt1Var.e.e.d(iK - iS);
                z2 = true;
            } else {
                z2 = false;
            }
        }
        mi2Var.i();
        for (pr8 pr8Var2 : arrayList) {
            if (pr8Var2.f == i && (pr8Var2.b != pt1Var || pr8Var2.g)) {
                pr8Var2.e();
            }
        }
        for (pr8 pr8Var3 : arrayList) {
            if (pr8Var3.f == i && (z2 || pr8Var3.b != pt1Var)) {
                if (!pr8Var3.h.j || !pr8Var3.i.j || (!(pr8Var3 instanceof j31) && !pr8Var3.e.j)) {
                    pt1Var.M(iJ);
                    pt1Var.N(iJ2);
                    return z3;
                }
            }
        }
        z3 = true;
        pt1Var.M(iJ);
        pt1Var.N(iJ2);
        return z3;
    }

    /* JADX WARN: Code duplicated, block: B:227:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:361:0x061f  */
    /* JADX WARN: Code duplicated, block: B:375:0x064e  */
    /* JADX WARN: Code duplicated, block: B:400:0x0697  */
    /* JADX WARN: Code duplicated, block: B:405:0x06a8  */
    /* JADX WARN: Code duplicated, block: B:412:0x06b7  */
    /* JADX WARN: Code duplicated, block: B:415:0x06bf  */
    /* JADX WARN: Code duplicated, block: B:417:0x06cb  */
    /* JADX WARN: Code duplicated, block: B:421:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:424:0x06ee A[Catch: Exception -> 0x06fc, LOOP:12: B:423:0x06ec->B:424:0x06ee, LOOP_END, TryCatch #1 {Exception -> 0x06fc, blocks: (B:422:0x06e0, B:424:0x06ee, B:427:0x0703), top: B:541:0x06e0 }] */
    /* JADX WARN: Code duplicated, block: B:440:0x0735  */
    /* JADX WARN: Code duplicated, block: B:443:0x073b A[Catch: Exception -> 0x072b, TryCatch #3 {Exception -> 0x072b, blocks: (B:434:0x0724, B:441:0x0737, B:443:0x073b, B:445:0x0741, B:446:0x075b, B:448:0x075f, B:450:0x0765, B:454:0x077b, B:457:0x0786, B:459:0x078a, B:461:0x0790), top: B:545:0x0724 }] */
    /* JADX WARN: Code duplicated, block: B:448:0x075f A[Catch: Exception -> 0x072b, TryCatch #3 {Exception -> 0x072b, blocks: (B:434:0x0724, B:441:0x0737, B:443:0x073b, B:445:0x0741, B:446:0x075b, B:448:0x075f, B:450:0x0765, B:454:0x077b, B:457:0x0786, B:459:0x078a, B:461:0x0790), top: B:545:0x0724 }] */
    /* JADX WARN: Code duplicated, block: B:459:0x078a A[Catch: Exception -> 0x072b, TryCatch #3 {Exception -> 0x072b, blocks: (B:434:0x0724, B:441:0x0737, B:443:0x073b, B:445:0x0741, B:446:0x075b, B:448:0x075f, B:450:0x0765, B:454:0x077b, B:457:0x0786, B:459:0x078a, B:461:0x0790), top: B:545:0x0724 }] */
    /* JADX WARN: Code duplicated, block: B:473:0x07b4  */
    /* JADX WARN: Code duplicated, block: B:478:0x07d7  */
    /* JADX WARN: Code duplicated, block: B:480:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:482:0x0804  */
    /* JADX WARN: Code duplicated, block: B:484:0x0808  */
    /* JADX WARN: Code duplicated, block: B:487:0x0814  */
    /* JADX WARN: Code duplicated, block: B:489:0x081b A[LOOP:15: B:488:0x0819->B:489:0x081b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:493:0x082e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:498:0x083b A[LOOP:14: B:497:0x0839->B:498:0x083b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:501:0x0870  */
    /* JADX WARN: Code duplicated, block: B:505:0x0881  */
    /* JADX WARN: Code duplicated, block: B:510:0x08a0  */
    /* JADX WARN: Code duplicated, block: B:511:0x08ac  */
    /* JADX WARN: Code duplicated, block: B:514:0x08bf  */
    /* JADX WARN: Code duplicated, block: B:515:0x08c7  */
    /* JADX WARN: Code duplicated, block: B:517:0x08cb  */
    /* JADX WARN: Code duplicated, block: B:519:0x08d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:522:0x08da  */
    /* JADX WARN: Code duplicated, block: B:525:0x08e8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:530:0x0900  */
    /* JADX WARN: Code duplicated, block: B:532:0x0904  */
    /* JADX WARN: Code duplicated, block: B:536:0x0912  */
    /* JADX WARN: Code duplicated, block: B:597:0x06d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:600:0x0905 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x012c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v88 */
    /* JADX WARN: Type inference failed for: r0v89 */
    /* JADX WARN: Type inference failed for: r0v90 */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r0v92 */
    /* JADX WARN: Type inference failed for: r10v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v47 */
    /* JADX WARN: Type inference failed for: r13v48 */
    /* JADX WARN: Type inference failed for: r13v49 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r33v0, types: [ot1, pt1] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v126, types: [int] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v68 */
    /* JADX WARN: Type inference failed for: r3v94, types: [int] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v66, types: [int] */
    /* JADX WARN: Type inference failed for: r6v80, types: [int] */
    public final void U() {
        ?? r21;
        ys1 ys1Var;
        int i;
        boolean z;
        boolean z2;
        char c;
        boolean z3;
        int i2;
        boolean zW;
        ?? r13;
        int i3;
        boolean z4;
        int i4;
        boolean z5;
        boolean z6;
        int i5;
        boolean z7;
        int iMax;
        ?? r10;
        ?? r17;
        boolean z8;
        int iMax2;
        ?? r0;
        boolean z9;
        boolean z10;
        ?? r1;
        ?? r14;
        int i6;
        boolean z11;
        boolean z12;
        ?? r2;
        ?? r3;
        int i7;
        int iMax3;
        int iMax4;
        int iMax5;
        int iMax6;
        boolean zW2;
        int size;
        int i8;
        boolean z13;
        ot1 ot1Var;
        boolean z14;
        int i9;
        WeakReference weakReference;
        WeakReference weakReference2;
        WeakReference weakReference3;
        WeakReference weakReference4;
        ys1 ys1Var2;
        ot1 ot1Var2;
        or8 or8Var;
        or8 or8Var2;
        int iB;
        int i10;
        ArrayList arrayList;
        or8 or8Var3;
        or8 or8Var4;
        boolean z15;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int i11;
        boolean z16;
        boolean[] zArr = sz8.b;
        this.Y = 0;
        this.Z = 0;
        this.E0 = false;
        this.F0 = false;
        int size2 = this.q0.size();
        int iMax7 = Math.max(0, q());
        int iMax8 = Math.max(0, k());
        int[] iArr = this.p0;
        int i12 = iArr[1];
        int i13 = iArr[0];
        int i14 = this.t0;
        ys1 ys1Var3 = this.J;
        ys1 ys1Var4 = this.I;
        if (i14 == 0 && sz8.o(this.D0, 1)) {
            et1 et1Var = this.u0;
            int i15 = iArr[0];
            int i16 = iArr[1];
            E();
            ArrayList arrayList4 = this.q0;
            int size3 = arrayList4.size();
            for (int i17 = 0; i17 < size3; i17++) {
                ((ot1) arrayList4.get(i17)).E();
            }
            boolean z17 = this.v0;
            if (i15 == 1) {
                J(0, q());
            } else {
                ys1Var4.l(0);
                this.Y = 0;
            }
            int i18 = 0;
            boolean z18 = false;
            boolean z19 = false;
            while (i18 < size3) {
                int i19 = i18;
                ot1 ot1Var3 = (ot1) arrayList4.get(i18);
                int[] iArr2 = iArr;
                if (ot1Var3 instanceof b24) {
                    b24 b24Var = (b24) ot1Var3;
                    z16 = z18;
                    if (b24Var.u0 == 1) {
                        int i20 = b24Var.r0;
                        if (i20 != -1) {
                            b24Var.R(i20);
                        } else if (b24Var.s0 != -1 && A()) {
                            b24Var.R(q() - b24Var.s0);
                        } else if (A()) {
                            b24Var.R((int) ((b24Var.q0 * q()) + 0.5f));
                        }
                        z16 = true;
                    }
                } else {
                    z16 = z18;
                    if ((ot1Var3 instanceof al0) && ((al0) ot1Var3).U() == 0) {
                        z18 = z16;
                        z19 = true;
                    }
                    i18 = i19 + 1;
                    iArr = iArr2;
                }
                z18 = z16;
                i18 = i19 + 1;
                iArr = iArr2;
            }
            r21 = iArr;
            if (z18) {
                for (int i21 = 0; i21 < size3; i21 = i11 + 1) {
                    ot1 ot1Var4 = (ot1) arrayList4.get(i21);
                    if (ot1Var4 instanceof b24) {
                        b24 b24Var2 = (b24) ot1Var4;
                        i11 = i21;
                        if (b24Var2.u0 == 1) {
                            ms8.y(0, et1Var, b24Var2, z17);
                        }
                    } else {
                        i11 = i21;
                    }
                }
            }
            ms8.y(0, et1Var, this, z17);
            if (z19) {
                for (int i22 = 0; i22 < size3; i22++) {
                    ot1 ot1Var5 = (ot1) arrayList4.get(i22);
                    if (ot1Var5 instanceof al0) {
                        al0 al0Var = (al0) ot1Var5;
                        if (al0Var.U() == 0 && al0Var.T()) {
                            ms8.y(1, et1Var, al0Var, z17);
                        }
                    }
                }
            }
            if (i16 == 1) {
                K(0, k());
            } else {
                ys1Var3.l(0);
                this.Z = 0;
            }
            int i23 = 0;
            boolean z20 = false;
            boolean z21 = false;
            while (i23 < size3) {
                ot1 ot1Var6 = (ot1) arrayList4.get(i23);
                int i24 = i23;
                if (ot1Var6 instanceof b24) {
                    b24 b24Var3 = (b24) ot1Var6;
                    if (b24Var3.u0 == 0) {
                        int i25 = b24Var3.r0;
                        if (i25 != -1) {
                            b24Var3.R(i25);
                        } else if (b24Var3.s0 != -1 && B()) {
                            b24Var3.R(k() - b24Var3.s0);
                        } else if (B()) {
                            b24Var3.R((int) ((b24Var3.q0 * k()) + 0.5f));
                        }
                        z20 = true;
                    }
                } else if ((ot1Var6 instanceof al0) && ((al0) ot1Var6).U() == 1) {
                    z21 = true;
                }
                i23 = i24 + 1;
            }
            if (z20) {
                for (int i26 = 0; i26 < size3; i26++) {
                    ot1 ot1Var7 = (ot1) arrayList4.get(i26);
                    if (ot1Var7 instanceof b24) {
                        b24 b24Var4 = (b24) ot1Var7;
                        if (b24Var4.u0 == 0) {
                            ms8.Q(1, et1Var, b24Var4);
                        }
                    }
                }
            }
            ms8.Q(0, et1Var, this);
            if (z21) {
                for (int i27 = 0; i27 < size3; i27++) {
                    ot1 ot1Var8 = (ot1) arrayList4.get(i27);
                    if (ot1Var8 instanceof al0) {
                        al0 al0Var2 = (al0) ot1Var8;
                        if (al0Var2.U() == 1 && al0Var2.T()) {
                            ms8.Q(1, et1Var, al0Var2);
                        }
                    }
                }
            }
            for (int i28 = 0; i28 < size3; i28++) {
                ot1 ot1Var9 = (ot1) arrayList4.get(i28);
                if (ot1Var9.z() && ms8.g(ot1Var9)) {
                    V(ot1Var9, et1Var, ms8.a);
                    if (!(ot1Var9 instanceof b24)) {
                        ms8.y(0, et1Var, ot1Var9, z17);
                        ms8.Q(0, et1Var, ot1Var9);
                    } else if (((b24) ot1Var9).u0 == 0) {
                        ms8.Q(0, et1Var, ot1Var9);
                    } else {
                        ms8.y(0, et1Var, ot1Var9, z17);
                    }
                }
            }
            for (int i29 = 0; i29 < size2; i29++) {
                ot1 ot1Var10 = (ot1) this.q0.get(i29);
                if (ot1Var10.z() && !(ot1Var10 instanceof b24) && !(ot1Var10 instanceof al0) && !(ot1Var10 instanceof ki3) && !ot1Var10.F) {
                    int iJ = ot1Var10.j(0);
                    int iJ2 = ot1Var10.j(1);
                    if (iJ != 3 || ot1Var10.r == 1 || iJ2 != 3 || ot1Var10.s == 1) {
                        V(ot1Var10, this.u0, new ap0());
                    }
                }
            }
        } else {
            r21 = iArr;
        }
        bv4 bv4Var = this.w0;
        if (size2 > 2 && ((i13 == 2 || i12 == 2) && sz8.o(this.D0, 1024))) {
            et1 et1Var2 = this.u0;
            ArrayList arrayList5 = this.q0;
            int size4 = arrayList5.size();
            int i30 = 0;
            while (true) {
                if (i30 >= size4) {
                    ys1Var = ys1Var4;
                    int i31 = 0;
                    ArrayList arrayList6 = null;
                    ArrayList arrayList7 = null;
                    ArrayList arrayList8 = null;
                    ArrayList arrayList9 = null;
                    ArrayList arrayList10 = null;
                    ArrayList arrayList11 = null;
                    while (i31 < size4) {
                        int i32 = i31;
                        ot1 ot1Var11 = (ot1) arrayList5.get(i31);
                        ArrayList arrayList12 = arrayList6;
                        ?? r4 = r21[0];
                        ArrayList arrayList13 = arrayList7;
                        ?? r6 = r21[1];
                        ArrayList arrayList14 = arrayList8;
                        int[] iArr3 = ot1Var11.p0;
                        ArrayList arrayList15 = arrayList9;
                        if (!xh8.F(r4, r6, iArr3[0], iArr3[1])) {
                            V(ot1Var11, et1Var2, this.L0);
                        }
                        boolean z22 = ot1Var11 instanceof b24;
                        if (z22) {
                            b24 b24Var5 = (b24) ot1Var11;
                            if (b24Var5.u0 == 0) {
                                arrayList8 = arrayList14 == null ? new ArrayList() : arrayList14;
                                arrayList8.add(b24Var5);
                            } else {
                                arrayList8 = arrayList14;
                            }
                            z15 = z22;
                            if (b24Var5.u0 == 1) {
                                arrayList2 = arrayList12 == null ? new ArrayList() : arrayList12;
                                arrayList2.add(b24Var5);
                            } else {
                                arrayList2 = arrayList12;
                            }
                        } else {
                            z15 = z22;
                            arrayList2 = arrayList12;
                            arrayList8 = arrayList14;
                        }
                        if (ot1Var11 instanceof d44) {
                            if (ot1Var11 instanceof al0) {
                                al0 al0Var3 = (al0) ot1Var11;
                                if (al0Var3.U() == 0) {
                                    arrayList3 = arrayList13 == null ? new ArrayList() : arrayList13;
                                    arrayList3.add(al0Var3);
                                } else {
                                    arrayList3 = arrayList13;
                                }
                                if (al0Var3.U() == 1) {
                                    ArrayList arrayList16 = arrayList15 == null ? new ArrayList() : arrayList15;
                                    arrayList16.add(al0Var3);
                                    arrayList15 = arrayList16;
                                }
                                arrayList7 = arrayList3;
                            } else {
                                arrayList2 = arrayList2;
                                et1Var2 = et1Var2;
                                d44 d44Var = (d44) ot1Var11;
                                arrayList7 = arrayList13 == null ? new ArrayList() : arrayList13;
                                arrayList7.add(d44Var);
                                arrayList9 = arrayList15 == null ? new ArrayList() : arrayList15;
                                arrayList9.add(d44Var);
                            }
                            if (ot1Var11.I.f == null && ot1Var11.K.f == null && !z15 && !(ot1Var11 instanceof al0)) {
                                if (arrayList10 == null) {
                                    arrayList10 = new ArrayList();
                                }
                                ArrayList arrayList17 = arrayList10;
                                arrayList17.add(ot1Var11);
                                arrayList10 = arrayList17;
                            }
                            if (ot1Var11.J.f != null && ot1Var11.L.f == null && ot1Var11.M.f == null && !z15 && !(ot1Var11 instanceof al0)) {
                                if (arrayList11 == null) {
                                    arrayList11 = new ArrayList();
                                }
                                ArrayList arrayList18 = arrayList11;
                                arrayList18.add(ot1Var11);
                                arrayList11 = arrayList18;
                            }
                            i31 = i32 + 1;
                            arrayList6 = arrayList2;
                            et1Var2 = et1Var2;
                        } else {
                            arrayList7 = arrayList13;
                        }
                        arrayList9 = arrayList15;
                        if (ot1Var11.I.f == null) {
                            if (arrayList10 == null) {
                                arrayList10 = new ArrayList();
                            }
                            ArrayList arrayList19 = arrayList10;
                            arrayList19.add(ot1Var11);
                            arrayList10 = arrayList19;
                        }
                        if (ot1Var11.J.f != null) {
                        }
                        i31 = i32 + 1;
                        arrayList6 = arrayList2;
                        et1Var2 = et1Var2;
                    }
                    ArrayList arrayList20 = arrayList6;
                    ArrayList<d44> arrayList21 = arrayList7;
                    ArrayList arrayList22 = arrayList8;
                    ArrayList<d44> arrayList23 = arrayList9;
                    ArrayList<or8> arrayList24 = new ArrayList();
                    if (arrayList20 != null) {
                        Iterator it = arrayList20.iterator();
                        while (it.hasNext()) {
                            xh8.k((b24) it.next(), 0, arrayList24, null);
                        }
                    }
                    or8 or8Var5 = null;
                    int i33 = 0;
                    if (arrayList21 != null) {
                        for (d44 d44Var2 : arrayList21) {
                            or8 or8VarK = xh8.k(d44Var2, i33, arrayList24, or8Var5);
                            d44Var2.R(i33, or8VarK, arrayList24);
                            or8VarK.a(arrayList24);
                            or8Var5 = null;
                            i33 = 0;
                        }
                    }
                    HashSet hashSet = i(2).a;
                    if (hashSet != null) {
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            xh8.k(((ys1) it2.next()).d, 0, arrayList24, null);
                        }
                    }
                    HashSet hashSet2 = i(4).a;
                    if (hashSet2 != null) {
                        Iterator it3 = hashSet2.iterator();
                        while (it3.hasNext()) {
                            xh8.k(((ys1) it3.next()).d, 0, arrayList24, null);
                        }
                    }
                    HashSet hashSet3 = i(7).a;
                    if (hashSet3 != null) {
                        Iterator it4 = hashSet3.iterator();
                        while (it4.hasNext()) {
                            xh8.k(((ys1) it4.next()).d, 0, arrayList24, null);
                        }
                    }
                    or8 or8Var6 = null;
                    if (arrayList10 != null) {
                        Iterator it5 = arrayList10.iterator();
                        while (it5.hasNext()) {
                            xh8.k((ot1) it5.next(), 0, arrayList24, null);
                        }
                    }
                    if (arrayList22 != null) {
                        Iterator it6 = arrayList22.iterator();
                        while (it6.hasNext()) {
                            xh8.k((b24) it6.next(), 1, arrayList24, null);
                        }
                    }
                    int i34 = 1;
                    if (arrayList23 != null) {
                        for (d44 d44Var3 : arrayList23) {
                            or8 or8VarK2 = xh8.k(d44Var3, i34, arrayList24, or8Var6);
                            d44Var3.R(i34, or8VarK2, arrayList24);
                            or8VarK2.a(arrayList24);
                            or8Var6 = null;
                            i34 = 1;
                        }
                    }
                    HashSet hashSet4 = i(3).a;
                    if (hashSet4 != null) {
                        Iterator it7 = hashSet4.iterator();
                        while (it7.hasNext()) {
                            xh8.k(((ys1) it7.next()).d, 1, arrayList24, null);
                        }
                    }
                    HashSet hashSet5 = i(6).a;
                    if (hashSet5 != null) {
                        Iterator it8 = hashSet5.iterator();
                        while (it8.hasNext()) {
                            xh8.k(((ys1) it8.next()).d, 1, arrayList24, null);
                        }
                    }
                    HashSet hashSet6 = i(5).a;
                    if (hashSet6 != null) {
                        Iterator it9 = hashSet6.iterator();
                        while (it9.hasNext()) {
                            xh8.k(((ys1) it9.next()).d, 1, arrayList24, null);
                        }
                    }
                    HashSet hashSet7 = i(7).a;
                    if (hashSet7 != null) {
                        Iterator it10 = hashSet7.iterator();
                        while (it10.hasNext()) {
                            xh8.k(((ys1) it10.next()).d, 1, arrayList24, null);
                        }
                    }
                    boolean z23 = true;
                    if (arrayList11 != null) {
                        Iterator it11 = arrayList11.iterator();
                        while (it11.hasNext()) {
                            xh8.k((ot1) it11.next(), 1, arrayList24, null);
                        }
                    }
                    int i35 = 0;
                    while (i35 < size4) {
                        ot1 ot1Var12 = (ot1) arrayList5.get(i35);
                        int[] iArr4 = ot1Var12.p0;
                        boolean z24 = z23;
                        if (iArr4[0] == 3 && iArr4[z24 ? 1 : 0] == 3) {
                            int i36 = ot1Var12.n0;
                            int size5 = arrayList24.size();
                            int i37 = 0;
                            while (true) {
                                if (i37 >= size5) {
                                    i10 = i35;
                                    arrayList = arrayList5;
                                    or8Var3 = null;
                                    break;
                                }
                                i10 = i35;
                                or8Var3 = (or8) arrayList24.get(i37);
                                arrayList = arrayList5;
                                if (i36 == or8Var3.b) {
                                    break;
                                }
                                i37++;
                                arrayList5 = arrayList;
                                i35 = i10;
                            }
                            int i38 = ot1Var12.o0;
                            int size6 = arrayList24.size();
                            int i39 = 0;
                            while (true) {
                                if (i39 >= size6) {
                                    or8Var4 = null;
                                    break;
                                }
                                or8Var4 = (or8) arrayList24.get(i39);
                                if (i38 == or8Var4.b) {
                                    break;
                                } else {
                                    i39++;
                                }
                            }
                            if (or8Var3 != null && or8Var4 != null) {
                                or8Var3.c(0, or8Var4);
                                or8Var4.c = 2;
                                arrayList24.remove(or8Var3);
                            }
                        } else {
                            i10 = i35;
                            arrayList = arrayList5;
                        }
                        i35 = i10 + 1;
                        arrayList5 = arrayList;
                        z23 = true;
                    }
                    if (arrayList24.size() <= 1) {
                        break;
                    }
                    int i40 = 0;
                    if (r21[0] == 2) {
                        int i41 = 0;
                        or8Var = null;
                        for (or8 or8Var7 : arrayList24) {
                            if (or8Var7.c != 1) {
                                int iB2 = or8Var7.b(bv4Var, i40);
                                if (iB2 > i41) {
                                    or8Var = or8Var7;
                                    i41 = iB2;
                                }
                                i40 = 0;
                            }
                        }
                        if (or8Var != null) {
                            M(1);
                            O(i41);
                        } else {
                            or8Var = null;
                        }
                    } else {
                        or8Var = null;
                    }
                    if (r21[1] == 2) {
                        int i42 = 0;
                        or8Var2 = null;
                        for (or8 or8Var8 : arrayList24) {
                            if (or8Var8.c != 0 && (iB = or8Var8.b(bv4Var, 1)) > i42) {
                                or8Var2 = or8Var8;
                                i42 = iB;
                            }
                        }
                        if (or8Var2 != null) {
                            N(1);
                            L(i42);
                        } else {
                            or8Var2 = null;
                        }
                    } else {
                        or8Var2 = null;
                    }
                    if (or8Var != null || or8Var2 != null) {
                        if (i13 == 2) {
                            if (iMax7 >= q() || iMax7 <= 0) {
                                iMax7 = q();
                            } else {
                                O(iMax7);
                                this.E0 = true;
                            }
                        }
                        if (i12 == 2) {
                            if (iMax8 >= k() || iMax8 <= 0) {
                                iMax8 = k();
                            } else {
                                L(iMax8);
                                this.F0 = true;
                            }
                        }
                        i = iMax7;
                        z = true;
                        break;
                    }
                } else {
                    ot1 ot1Var13 = (ot1) arrayList5.get(i30);
                    ?? r5 = r21[0];
                    ?? r7 = r21[1];
                    int i43 = i30;
                    int[] iArr5 = ot1Var13.p0;
                    ys1Var = ys1Var4;
                    if (xh8.F(r5, r7, iArr5[0], iArr5[1]) && !(ot1Var13 instanceof ki3)) {
                        i30 = i43 + 1;
                        ys1Var4 = ys1Var;
                    }
                }
            }
            if (!W(64) || W(128)) {
                z2 = true;
            } else {
                z2 = false;
            }
            bv4Var.getClass();
            bv4Var.h = false;
            if (this.D0 == 0 && z2) {
                c = 1;
                bv4Var.h = true;
            } else {
                c = 1;
            }
            ArrayList arrayList25 = this.q0;
            if (r21[0] != 2 || r21[c] == 2) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.z0 = 0;
            this.A0 = 0;
            for (i2 = 0; i2 < size2; i2++) {
                ot1Var2 = (ot1) this.q0.get(i2);
                if (ot1Var2 instanceof pt1) {
                    ((pt1) ot1Var2).U();
                }
            }
            zW = W(64);
            r13 = z;
            i3 = 0;
            z4 = true;
            while (z4) {
                i4 = i3 + 1;
                try {
                    bv4Var.t();
                    this.z0 = 0;
                    this.A0 = 0;
                    g(bv4Var);
                    for (i9 = 0; i9 < size2; i9++) {
                        ((ot1) this.q0.get(i9)).g(bv4Var);
                    }
                    S(bv4Var);
                    try {
                        weakReference = this.G0;
                        if (weakReference != null || weakReference.get() == null) {
                            z5 = z3;
                        } else {
                            z5 = z3;
                            try {
                                bv4Var.f(bv4Var.k((ys1) this.G0.get()), bv4Var.k(ys1Var3), 0, 5);
                                this.G0 = null;
                            } catch (Exception e) {
                                e = e;
                                z14 = true;
                                e.printStackTrace();
                                System.out.println("EXCEPTION : " + e);
                                z6 = z14;
                                if (z6) {
                                    zArr[2] = false;
                                    zW2 = W(64);
                                    Q(bv4Var, zW2);
                                    size = this.q0.size();
                                    i8 = 0;
                                    z13 = false;
                                    while (i8 < size) {
                                        ot1Var = (ot1) this.q0.get(i8);
                                        ot1Var.Q(bv4Var, zW2);
                                        boolean z25 = zW2;
                                        int i44 = size;
                                        if (ot1Var.h == -1) {
                                            z13 = true;
                                        } else {
                                            z13 = true;
                                        }
                                        i8++;
                                        zW2 = z25;
                                        size = i44;
                                        z13 = z13;
                                    }
                                    z7 = z13;
                                } else {
                                    Q(bv4Var, zW);
                                    for (i5 = 0; i5 < size2; i5++) {
                                        ((ot1) this.q0.get(i5)).Q(bv4Var, zW);
                                    }
                                    z7 = false;
                                }
                                if (z5) {
                                    iMax3 = 0;
                                    iMax4 = 0;
                                    for (i7 = 0; i7 < size2; i7++) {
                                        ot1 ot1Var14 = (ot1) this.q0.get(i7);
                                        iMax4 = Math.max(iMax4, ot1Var14.q() + ot1Var14.Y);
                                        iMax3 = Math.max(iMax3, ot1Var14.k() + ot1Var14.Z);
                                    }
                                    iMax5 = Math.max(this.b0, iMax4);
                                    iMax6 = Math.max(this.c0, iMax3);
                                    r13 = r13;
                                    z7 = z7;
                                    if (i13 == 2) {
                                        r13 = r13;
                                        z7 = z7;
                                        O(iMax5);
                                        r21[0] = 2;
                                        r13 = 1;
                                        z7 = true;
                                    }
                                    if (i12 == 2) {
                                        L(iMax6);
                                        r21[1] = 2;
                                        r13 = 1;
                                        z7 = true;
                                    }
                                }
                                iMax = Math.max(this.b0, q());
                                if (iMax > q()) {
                                    O(iMax);
                                    r10 = 1;
                                    r21[0] = 1;
                                    z8 = true;
                                    r17 = 1;
                                } else {
                                    r10 = 1;
                                    r17 = r13;
                                    z8 = z7;
                                }
                                iMax2 = Math.max(this.c0, k());
                                if (iMax2 > k()) {
                                    L(iMax2);
                                    r21[r10] = r10;
                                    r3 = r10;
                                    z9 = r3 == true ? 1 : 0;
                                } else {
                                    r0 = r17;
                                }
                                if (r0 == 0) {
                                    z9 = z8;
                                    if (r21[0] == 2) {
                                        r2 = r0;
                                        z12 = z9;
                                        if (q() > i) {
                                            this.E0 = r10;
                                            r21[0] = r10;
                                            O(i);
                                            ?? r8 = r10;
                                            z12 = r8 == true ? 1 : 0;
                                            r2 = r8;
                                        }
                                    }
                                    r0 = r3;
                                    r2 = r0;
                                    r2 = r0;
                                    z12 = z9;
                                    z12 = z9;
                                    r1 = r2;
                                    r1 = r2;
                                    z10 = z12;
                                    z10 = z12;
                                    if (r21[r10] != 2) {
                                    }
                                    if (i4 > i6) {
                                        r1 = r2;
                                        z10 = z12;
                                        z11 = false;
                                    } else {
                                        r1 = r2;
                                        z10 = z12;
                                    }
                                    i3 = i4;
                                    z3 = z5;
                                    ys1Var3 = ys1Var3;
                                    r13 = r14;
                                    z4 = z11;
                                } else {
                                    z9 = z8;
                                    r0 = r3;
                                    r1 = r0;
                                    z10 = z9;
                                }
                                r1 = r2;
                                z10 = z12;
                                r14 = r1;
                                i6 = 8;
                                z11 = z10;
                                if (i4 > i6) {
                                    r1 = r2;
                                    z10 = z12;
                                    z11 = false;
                                } else {
                                    r1 = r2;
                                    z10 = z12;
                                }
                                i3 = i4;
                                z3 = z5;
                                ys1Var3 = ys1Var3;
                                r13 = r14;
                                z4 = z11;
                            }
                        }
                        weakReference2 = this.I0;
                        if (weakReference2 != null && weakReference2.get() != null) {
                            bv4Var.f(bv4Var.k(this.L), bv4Var.k((ys1) this.I0.get()), 0, 5);
                            this.I0 = null;
                        }
                        weakReference3 = this.H0;
                        if (weakReference3 != null && weakReference3.get() != null) {
                            ys1Var2 = ys1Var;
                            try {
                                ys1Var = ys1Var2;
                                bv4Var.f(bv4Var.k((ys1) this.H0.get()), bv4Var.k(ys1Var2), 0, 5);
                                this.H0 = null;
                            } catch (Exception e2) {
                                e = e2;
                                ys1Var = ys1Var2;
                                z14 = true;
                                e.printStackTrace();
                                System.out.println("EXCEPTION : " + e);
                                z6 = z14;
                                if (z6) {
                                    zArr[2] = false;
                                    zW2 = W(64);
                                    Q(bv4Var, zW2);
                                    size = this.q0.size();
                                    i8 = 0;
                                    z13 = false;
                                    while (i8 < size) {
                                        ot1Var = (ot1) this.q0.get(i8);
                                        ot1Var.Q(bv4Var, zW2);
                                        boolean z26 = zW2;
                                        int i45 = size;
                                        if (ot1Var.h == -1) {
                                            z13 = true;
                                        } else {
                                            z13 = true;
                                        }
                                        i8++;
                                        zW2 = z26;
                                        size = i45;
                                        z13 = z13;
                                    }
                                    z7 = z13;
                                } else {
                                    Q(bv4Var, zW);
                                    while (i5 < size2) {
                                        ((ot1) this.q0.get(i5)).Q(bv4Var, zW);
                                    }
                                    z7 = false;
                                }
                                if (z5) {
                                    iMax3 = 0;
                                    iMax4 = 0;
                                    while (i7 < size2) {
                                        ot1 ot1Var15 = (ot1) this.q0.get(i7);
                                        iMax4 = Math.max(iMax4, ot1Var15.q() + ot1Var15.Y);
                                        iMax3 = Math.max(iMax3, ot1Var15.k() + ot1Var15.Z);
                                    }
                                    iMax5 = Math.max(this.b0, iMax4);
                                    iMax6 = Math.max(this.c0, iMax3);
                                    r13 = r13;
                                    z7 = z7;
                                    if (i13 == 2) {
                                        r13 = r13;
                                        z7 = z7;
                                        O(iMax5);
                                        r21[0] = 2;
                                        r13 = 1;
                                        z7 = true;
                                    }
                                    if (i12 == 2) {
                                        L(iMax6);
                                        r21[1] = 2;
                                        r13 = 1;
                                        z7 = true;
                                    }
                                }
                                iMax = Math.max(this.b0, q());
                                if (iMax > q()) {
                                    O(iMax);
                                    r10 = 1;
                                    r21[0] = 1;
                                    z8 = true;
                                    r17 = 1;
                                } else {
                                    r10 = 1;
                                    r17 = r13;
                                    z8 = z7;
                                }
                                iMax2 = Math.max(this.c0, k());
                                if (iMax2 > k()) {
                                    L(iMax2);
                                    r21[r10] = r10;
                                    r3 = r10;
                                    z9 = r3 == true ? 1 : 0;
                                } else {
                                    r0 = r17;
                                }
                                if (r0 == 0) {
                                    z9 = z8;
                                    if (r21[0] == 2) {
                                        r2 = r0;
                                        z12 = z9;
                                        if (q() > i) {
                                            this.E0 = r10;
                                            r21[0] = r10;
                                            O(i);
                                            ?? r9 = r10;
                                            z12 = r9 == true ? 1 : 0;
                                            r2 = r9;
                                        }
                                    }
                                    r0 = r3;
                                    r2 = r0;
                                    r2 = r0;
                                    z12 = z9;
                                    z12 = z9;
                                    r1 = r2;
                                    r1 = r2;
                                    z10 = z12;
                                    z10 = z12;
                                    if (r21[r10] != 2) {
                                    }
                                    if (i4 > i6) {
                                        r1 = r2;
                                        z10 = z12;
                                        z11 = false;
                                    } else {
                                        r1 = r2;
                                        z10 = z12;
                                    }
                                    i3 = i4;
                                    z3 = z5;
                                    ys1Var3 = ys1Var3;
                                    r13 = r14;
                                    z4 = z11;
                                } else {
                                    z9 = z8;
                                    r0 = r3;
                                    r1 = r0;
                                    z10 = z9;
                                }
                                r1 = r2;
                                z10 = z12;
                                r14 = r1;
                                i6 = 8;
                                z11 = z10;
                                if (i4 > i6) {
                                    r1 = r2;
                                    z10 = z12;
                                    z11 = false;
                                } else {
                                    r1 = r2;
                                    z10 = z12;
                                }
                                i3 = i4;
                                z3 = z5;
                                ys1Var3 = ys1Var3;
                                r13 = r14;
                                z4 = z11;
                            }
                        }
                        weakReference4 = this.J0;
                        if (weakReference4 == null && weakReference4.get() != null) {
                            try {
                                try {
                                    bv4Var.f(bv4Var.k(this.K), bv4Var.k((ys1) this.J0.get()), 0, 5);
                                    try {
                                        this.J0 = null;
                                    } catch (Exception e3) {
                                        e = e3;
                                        z14 = true;
                                        e.printStackTrace();
                                        System.out.println("EXCEPTION : " + e);
                                        z6 = z14;
                                    }
                                } catch (Exception e4) {
                                    e = e4;
                                    z14 = true;
                                    e.printStackTrace();
                                    System.out.println("EXCEPTION : " + e);
                                    z6 = z14;
                                    if (z6) {
                                        zArr[2] = false;
                                        zW2 = W(64);
                                        Q(bv4Var, zW2);
                                        size = this.q0.size();
                                        i8 = 0;
                                        z13 = false;
                                        while (i8 < size) {
                                            ot1Var = (ot1) this.q0.get(i8);
                                            ot1Var.Q(bv4Var, zW2);
                                            boolean z27 = zW2;
                                            int i46 = size;
                                            if (ot1Var.h == -1) {
                                                z13 = true;
                                            } else {
                                                z13 = true;
                                            }
                                            i8++;
                                            zW2 = z27;
                                            size = i46;
                                            z13 = z13;
                                        }
                                        z7 = z13;
                                    } else {
                                        Q(bv4Var, zW);
                                        while (i5 < size2) {
                                            ((ot1) this.q0.get(i5)).Q(bv4Var, zW);
                                        }
                                        z7 = false;
                                    }
                                    if (z5) {
                                        iMax3 = 0;
                                        iMax4 = 0;
                                        while (i7 < size2) {
                                            ot1 ot1Var16 = (ot1) this.q0.get(i7);
                                            iMax4 = Math.max(iMax4, ot1Var16.q() + ot1Var16.Y);
                                            iMax3 = Math.max(iMax3, ot1Var16.k() + ot1Var16.Z);
                                        }
                                        iMax5 = Math.max(this.b0, iMax4);
                                        iMax6 = Math.max(this.c0, iMax3);
                                        r13 = r13;
                                        z7 = z7;
                                        if (i13 == 2) {
                                            r13 = r13;
                                            z7 = z7;
                                            O(iMax5);
                                            r21[0] = 2;
                                            r13 = 1;
                                            z7 = true;
                                        }
                                        if (i12 == 2) {
                                            L(iMax6);
                                            r21[1] = 2;
                                            r13 = 1;
                                            z7 = true;
                                        }
                                    }
                                    iMax = Math.max(this.b0, q());
                                    if (iMax > q()) {
                                        O(iMax);
                                        r10 = 1;
                                        r21[0] = 1;
                                        z8 = true;
                                        r17 = 1;
                                    } else {
                                        r10 = 1;
                                        r17 = r13;
                                        z8 = z7;
                                    }
                                    iMax2 = Math.max(this.c0, k());
                                    if (iMax2 > k()) {
                                        L(iMax2);
                                        r21[r10] = r10;
                                        r3 = r10;
                                        z9 = r3 == true ? 1 : 0;
                                    } else {
                                        r0 = r17;
                                    }
                                    if (r0 == 0) {
                                        z9 = z8;
                                        if (r21[0] == 2) {
                                            r2 = r0;
                                            z12 = z9;
                                            if (q() > i) {
                                                this.E0 = r10;
                                                r21[0] = r10;
                                                O(i);
                                                ?? r11 = r10;
                                                z12 = r11 == true ? 1 : 0;
                                                r2 = r11;
                                            }
                                        }
                                        r0 = r3;
                                        r2 = r0;
                                        r2 = r0;
                                        z12 = z9;
                                        z12 = z9;
                                        r1 = r2;
                                        r1 = r2;
                                        z10 = z12;
                                        z10 = z12;
                                        if (r21[r10] != 2) {
                                        }
                                        if (i4 > i6) {
                                            r1 = r2;
                                            z10 = z12;
                                            z11 = false;
                                        } else {
                                            r1 = r2;
                                            z10 = z12;
                                        }
                                        i3 = i4;
                                        z3 = z5;
                                        ys1Var3 = ys1Var3;
                                        r13 = r14;
                                        z4 = z11;
                                    } else {
                                        z9 = z8;
                                        r0 = r3;
                                        r1 = r0;
                                        z10 = z9;
                                    }
                                    r1 = r2;
                                    z10 = z12;
                                    r14 = r1;
                                    i6 = 8;
                                    z11 = z10;
                                    if (i4 > i6) {
                                        r1 = r2;
                                        z10 = z12;
                                        z11 = false;
                                    } else {
                                        r1 = r2;
                                        z10 = z12;
                                    }
                                    i3 = i4;
                                    z3 = z5;
                                    ys1Var3 = ys1Var3;
                                    r13 = r14;
                                    z4 = z11;
                                }
                            } catch (Exception e5) {
                                e = e5;
                            }
                        }
                        bv4Var.p();
                        z6 = true;
                    } catch (Exception e6) {
                        e = e6;
                        z5 = z3;
                    }
                } catch (Exception e7) {
                    e = e7;
                    z5 = z3;
                    z14 = z4;
                }
                if (z6) {
                    zArr[2] = false;
                    zW2 = W(64);
                    Q(bv4Var, zW2);
                    size = this.q0.size();
                    i8 = 0;
                    z13 = false;
                    while (i8 < size) {
                        ot1Var = (ot1) this.q0.get(i8);
                        ot1Var.Q(bv4Var, zW2);
                        boolean z28 = zW2;
                        int i47 = size;
                        if (ot1Var.h == -1 || ot1Var.i != -1) {
                            z13 = true;
                        }
                        i8++;
                        zW2 = z28;
                        size = i47;
                        z13 = z13;
                    }
                    z7 = z13;
                } else {
                    Q(bv4Var, zW);
                    while (i5 < size2) {
                        ((ot1) this.q0.get(i5)).Q(bv4Var, zW);
                    }
                    z7 = false;
                }
                if (z5 && i4 < 8 && zArr[2]) {
                    iMax3 = 0;
                    iMax4 = 0;
                    while (i7 < size2) {
                        ot1 ot1Var17 = (ot1) this.q0.get(i7);
                        iMax4 = Math.max(iMax4, ot1Var17.q() + ot1Var17.Y);
                        iMax3 = Math.max(iMax3, ot1Var17.k() + ot1Var17.Z);
                    }
                    iMax5 = Math.max(this.b0, iMax4);
                    iMax6 = Math.max(this.c0, iMax3);
                    r13 = r13;
                    z7 = z7;
                    if (i13 == 2 && q() < iMax5) {
                        r13 = r13;
                        z7 = z7;
                        O(iMax5);
                        r21[0] = 2;
                        r13 = 1;
                        z7 = true;
                    }
                    if (i12 == 2 && k() < iMax6) {
                        L(iMax6);
                        r21[1] = 2;
                        r13 = 1;
                        z7 = true;
                    }
                }
                iMax = Math.max(this.b0, q());
                if (iMax > q()) {
                    O(iMax);
                    r10 = 1;
                    r21[0] = 1;
                    z8 = true;
                    r17 = 1;
                } else {
                    r10 = 1;
                    r17 = r13;
                    z8 = z7;
                }
                iMax2 = Math.max(this.c0, k());
                if (iMax2 > k()) {
                    L(iMax2);
                    r21[r10] = r10;
                    r3 = r10;
                    z9 = r3 == true ? 1 : 0;
                } else {
                    r0 = r17;
                }
                if (r0 == 0) {
                    z9 = z8;
                    if (r21[0] == 2 && i > 0) {
                        r2 = r0;
                        z12 = z9;
                        if (q() > i) {
                            this.E0 = r10;
                            r21[0] = r10;
                            O(i);
                            ?? r12 = r10;
                            z12 = r12 == true ? 1 : 0;
                            r2 = r12;
                        }
                    }
                    r0 = r3;
                    r2 = r0;
                    r2 = r0;
                    z12 = z9;
                    z12 = z9;
                    r1 = r2;
                    r1 = r2;
                    z10 = z12;
                    z10 = z12;
                    if (r21[r10] != 2 && iMax8 > 0 && k() > iMax8) {
                        this.F0 = r10;
                        r21[r10] = r10;
                        L(iMax8);
                        i6 = 8;
                        r14 = 1;
                        z11 = true;
                    }
                    if (i4 > i6) {
                        r1 = r2;
                        z10 = z12;
                        z11 = false;
                    } else {
                        r1 = r2;
                        z10 = z12;
                    }
                    i3 = i4;
                    z3 = z5;
                    ys1Var3 = ys1Var3;
                    r13 = r14;
                    z4 = z11;
                } else {
                    z9 = z8;
                    r0 = r3;
                    r1 = r0;
                    z10 = z9;
                }
                r1 = r2;
                z10 = z12;
                r14 = r1;
                i6 = 8;
                z11 = z10;
                if (i4 > i6) {
                    r1 = r2;
                    z10 = z12;
                    z11 = false;
                } else {
                    r1 = r2;
                    z10 = z12;
                }
                i3 = i4;
                z3 = z5;
                ys1Var3 = ys1Var3;
                r13 = r14;
                z4 = z11;
            }
            this.q0 = arrayList25;
            if (r13 != 0) {
                r21[0] = i13;
                r21[1] = i12;
            }
            F(bv4Var.m);
        }
        ys1Var = ys1Var4;
        i = iMax7;
        z = false;
        if (W(64)) {
            z2 = true;
        } else {
            z2 = true;
        }
        bv4Var.getClass();
        bv4Var.h = false;
        if (this.D0 == 0) {
            c = 1;
        } else {
            c = 1;
        }
        ArrayList arrayList26 = this.q0;
        if (r21[0] != 2) {
            z3 = true;
        } else {
            z3 = true;
        }
        this.z0 = 0;
        this.A0 = 0;
        while (i2 < size2) {
            ot1Var2 = (ot1) this.q0.get(i2);
            if (ot1Var2 instanceof pt1) {
                ((pt1) ot1Var2).U();
            }
        }
        zW = W(64);
        r13 = z;
        i3 = 0;
        z4 = true;
        while (z4) {
            i4 = i3 + 1;
            bv4Var.t();
            this.z0 = 0;
            this.A0 = 0;
            g(bv4Var);
            while (i9 < size2) {
                ((ot1) this.q0.get(i9)).g(bv4Var);
            }
            S(bv4Var);
            weakReference = this.G0;
            if (weakReference != null) {
                z5 = z3;
                weakReference2 = this.I0;
                if (weakReference2 != null) {
                    bv4Var.f(bv4Var.k(this.L), bv4Var.k((ys1) this.I0.get()), 0, 5);
                    this.I0 = null;
                }
                weakReference3 = this.H0;
                if (weakReference3 != null) {
                    ys1Var2 = ys1Var;
                    ys1Var = ys1Var2;
                    bv4Var.f(bv4Var.k((ys1) this.H0.get()), bv4Var.k(ys1Var2), 0, 5);
                    this.H0 = null;
                }
                weakReference4 = this.J0;
                if (weakReference4 == null) {
                }
                bv4Var.p();
                z6 = true;
            } else {
                z5 = z3;
                weakReference2 = this.I0;
                if (weakReference2 != null) {
                    bv4Var.f(bv4Var.k(this.L), bv4Var.k((ys1) this.I0.get()), 0, 5);
                    this.I0 = null;
                }
                weakReference3 = this.H0;
                if (weakReference3 != null) {
                    ys1Var2 = ys1Var;
                    ys1Var = ys1Var2;
                    bv4Var.f(bv4Var.k((ys1) this.H0.get()), bv4Var.k(ys1Var2), 0, 5);
                    this.H0 = null;
                }
                weakReference4 = this.J0;
                if (weakReference4 == null) {
                }
                bv4Var.p();
                z6 = true;
            }
            if (z6) {
                zArr[2] = false;
                zW2 = W(64);
                Q(bv4Var, zW2);
                size = this.q0.size();
                i8 = 0;
                z13 = false;
                while (i8 < size) {
                    ot1Var = (ot1) this.q0.get(i8);
                    ot1Var.Q(bv4Var, zW2);
                    boolean z29 = zW2;
                    int i48 = size;
                    if (ot1Var.h == -1) {
                        z13 = true;
                    } else {
                        z13 = true;
                    }
                    i8++;
                    zW2 = z29;
                    size = i48;
                    z13 = z13;
                }
                z7 = z13;
            } else {
                Q(bv4Var, zW);
                while (i5 < size2) {
                    ((ot1) this.q0.get(i5)).Q(bv4Var, zW);
                }
                z7 = false;
            }
            if (z5) {
                iMax3 = 0;
                iMax4 = 0;
                while (i7 < size2) {
                    ot1 ot1Var18 = (ot1) this.q0.get(i7);
                    iMax4 = Math.max(iMax4, ot1Var18.q() + ot1Var18.Y);
                    iMax3 = Math.max(iMax3, ot1Var18.k() + ot1Var18.Z);
                }
                iMax5 = Math.max(this.b0, iMax4);
                iMax6 = Math.max(this.c0, iMax3);
                r13 = r13;
                z7 = z7;
                if (i13 == 2) {
                    r13 = r13;
                    z7 = z7;
                    O(iMax5);
                    r21[0] = 2;
                    r13 = 1;
                    z7 = true;
                }
                if (i12 == 2) {
                    L(iMax6);
                    r21[1] = 2;
                    r13 = 1;
                    z7 = true;
                }
            }
            iMax = Math.max(this.b0, q());
            if (iMax > q()) {
                O(iMax);
                r10 = 1;
                r21[0] = 1;
                z8 = true;
                r17 = 1;
            } else {
                r10 = 1;
                r17 = r13;
                z8 = z7;
            }
            iMax2 = Math.max(this.c0, k());
            if (iMax2 > k()) {
                L(iMax2);
                r21[r10] = r10;
                r3 = r10;
                z9 = r3 == true ? 1 : 0;
            } else {
                r0 = r17;
            }
            if (r0 == 0) {
                z9 = z8;
                if (r21[0] == 2) {
                    r2 = r0;
                    z12 = z9;
                    if (q() > i) {
                        this.E0 = r10;
                        r21[0] = r10;
                        O(i);
                        ?? r15 = r10;
                        z12 = r15 == true ? 1 : 0;
                        r2 = r15;
                    }
                }
                r0 = r3;
                r2 = r0;
                r2 = r0;
                z12 = z9;
                z12 = z9;
                r1 = r2;
                r1 = r2;
                z10 = z12;
                z10 = z12;
                if (r21[r10] != 2) {
                }
                if (i4 > i6) {
                    r1 = r2;
                    z10 = z12;
                    z11 = false;
                } else {
                    r1 = r2;
                    z10 = z12;
                }
                i3 = i4;
                z3 = z5;
                ys1Var3 = ys1Var3;
                r13 = r14;
                z4 = z11;
            } else {
                z9 = z8;
                r0 = r3;
                r1 = r0;
                z10 = z9;
            }
            r1 = r2;
            z10 = z12;
            r14 = r1;
            i6 = 8;
            z11 = z10;
            if (i4 > i6) {
                r1 = r2;
                z10 = z12;
                z11 = false;
            } else {
                r1 = r2;
                z10 = z12;
            }
            i3 = i4;
            z3 = z5;
            ys1Var3 = ys1Var3;
            r13 = r14;
            z4 = z11;
        }
        this.q0 = arrayList26;
        if (r13 != 0) {
            r21[0] = i13;
            r21[1] = i12;
        }
        F(bv4Var.m);
    }

    public final boolean W(int i) {
        return (this.D0 & i) == i;
    }

    @Override // defpackage.ot1
    public final void n(StringBuilder sb) {
        sb.append(this.j + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.U);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.V);
        sb.append("\n");
        Iterator it = this.q0.iterator();
        while (it.hasNext()) {
            ((ot1) it.next()).n(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }
}
