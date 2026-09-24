package defpackage;

import android.os.DeadObjectException;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mz6 {
    public static final HashSet a = new HashSet();

    public static File A(q63 q63Var) {
        return new File(q63Var.v());
    }

    public static i17 B(op3 op3Var, zv1 zv1Var, iz6 iz6Var) {
        int i;
        int i2;
        char[] cArr;
        q63 q63Var = (q63) op3Var.a;
        cy0 cy0Var = (cy0) op3Var.e;
        String strV = q63Var.v();
        List<hz6> list = (List) op3Var.b;
        ArrayList arrayList = new ArrayList();
        for (hz6 hz6Var : list) {
            String strV2 = hz6Var.b.v();
            String strY = y(strV2, (iu) op3Var.c, iz6Var);
            String str = hz6Var.a;
            boolean z = hz6Var.c;
            List list2 = hz6Var.d;
            ArrayList arrayList2 = list2 != null ? new ArrayList(list2) : null;
            List list3 = hz6Var.e;
            arrayList.add(new j17(str, strY, z, arrayList2, list3 != null ? new ArrayList(list3) : null, !strY.equals(strV2) ? strV2 : null));
        }
        int i3 = kz6.b[((f27) op3Var.d).ordinal()];
        int i4 = 1;
        if (i3 == 1) {
            i = 0;
        } else {
            if (i3 != 2 && i3 != 3) {
                q.j();
                return null;
            }
            i = 1;
        }
        oy6 oy6Var = oy6.j;
        if (pe4.d(cy0Var, oy6Var)) {
            i4 = 0;
        } else if (!(cy0Var instanceof py6)) {
            q.j();
            return r8;
        }
        if (pe4.d(cy0Var, oy6Var)) {
            i2 = 0;
        } else {
            if (!(cy0Var instanceof py6)) {
                q.j();
                return r8;
            }
            i2 = ((py6) cy0Var).j;
        }
        vy6 vy6Var = vy6.m;
        if (zv1Var.equals(vy6Var)) {
            i4 = 0;
        } else if (!(zv1Var instanceof uy6)) {
            q.j();
            return r8;
        }
        if (zv1Var.equals(vy6Var)) {
            cArr = null;
        } else {
            if (!(zv1Var instanceof uy6)) {
                q.j();
                return r8;
            }
            cArr = ((uy6) zv1Var).m;
        }
        return new i17(strV, arrayList, i, i4, i2, i4, cArr, (String) op3Var.k, 2000L, iz6Var == iz6.Shizuku);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0042  */
    public static m17 C(jd0 jd0Var, char[] cArr, iz6 iz6Var) {
        int i;
        String strV = ((q63) jd0Var.b).v();
        String strY = y(((q63) jd0Var.c).v(), (iu) jd0Var.d, iz6Var);
        String str = (String) jd0Var.a;
        int i2 = kz6.b[((f27) jd0Var.e).ordinal()];
        int i3 = 1;
        if (i2 != 1) {
            i = 2;
            if (i2 != 2) {
                if (i2 != 3) {
                    q.j();
                    return null;
                }
            }
            List list = (List) jd0Var.k;
            return new m17(strV, strY, str, i, cArr, list != null ? new ArrayList(list) : null, 2000L, true);
        }
        i3 = 0;
        i = i3;
        List list2 = (List) jd0Var.k;
        return new m17(strV, strY, str, i, cArr, list2 != null ? new ArrayList(list2) : null, 2000L, true);
    }

    public static cy0 D(xp1 xp1Var) {
        if (xp1Var == null) {
            xp1.Companion.getClass();
            xp1Var = xp1.DEFAULT;
        }
        return xp1Var == xp1.NO_COMPRESSION ? oy6.j : new py6(xp1Var.getLevel());
    }

    public static o17 E(z84 z84Var, long j, String str, iz6 iz6Var, bt3 bt3Var) throws IOException {
        o17 sbaResult;
        int i;
        boolean z = false;
        long j2 = 20;
        while (true) {
            if (!z && ((Boolean) bt3Var.invoke()).booleanValue()) {
                z84Var.cancelSba(j);
                z = true;
            }
            sbaResult = z84Var.getSbaResult(j);
            i = sbaResult.b;
            if (i != 0 && i != 1) {
                break;
            }
            try {
                Thread.sleep(j2);
                j2 *= 2;
                if (j2 > 250) {
                    j2 = 250;
                }
            } catch (InterruptedException e) {
                if (!z) {
                    try {
                        z84Var.cancelSba(j);
                    } catch (Throwable th) {
                        yc9.a(e, th);
                    }
                }
                Thread.currentThread().interrupt();
                throw new zz6("SBA " + iz6Var + TokenAuthenticationScheme.SCHEME_DELIMITER + str + " interrupted", e);
            }
        }
        if (i == 2) {
            return sbaResult;
        }
        if (i == 4) {
            throw new zz6("SBA " + iz6Var + TokenAuthenticationScheme.SCHEME_DELIMITER + str + " cancelled", 2);
        }
        String str2 = sbaResult.e;
        int i2 = sbaResult.c;
        if (str2 == null) {
            str2 = "SBA " + iz6Var + TokenAuthenticationScheme.SCHEME_DELIMITER + str + " failed with state=" + i + " errorCode=" + i2;
        }
        if (i2 == 4) {
            int i3 = sbaResult.d;
            if (i3 == 1) {
                throw new pz6(str2, null);
            }
            if (i3 == 2) {
                throw new sz6(str2, null);
            }
            if (i3 == 4) {
                throw new rz6(str2, null);
            }
            if (i3 == 5) {
                throw new nz6(str2, null);
            }
            if (nq7.Z(str2, "integrity", true) || nq7.Z(str2, "CRC", true) || nq7.Z(str2, "checksum", true) || nq7.Z(str2, "authentication failed", true) || nq7.Z(str2, "decompression failed", true) || nq7.Z(str2, "truncated", true) || nq7.Z(str2, "byte count mismatch", true)) {
                throw new pz6(str2, null);
            }
            if (nq7.Z(str2, "password", true) || nq7.Z(str2, "archive key", true) || nq7.Z(str2, "key check", true)) {
                throw new sz6(str2, null);
            }
        }
        throw new IOException(str2);
    }

    public static final void a(int i, String str) {
        boolean zAdd;
        String str2 = str + ":" + i;
        HashSet hashSet = a;
        synchronized (hashSet) {
            zAdd = hashSet.add(str2);
        }
        if (zAdd) {
            vr6.w$default(vr6.INSTANCE, "SbaHelper", "Ignoring unknown SBA root progress " + str + "=" + i, null, 4, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x004d  */
    public static ez6 b(op3 op3Var) {
        String strName;
        ez6 ez6VarC;
        boolean z;
        q63 q63Var = (q63) op3Var.a;
        iu iuVar = (iu) op3Var.c;
        iz6 iz6VarW = (iz6) op3Var.n;
        List list = (List) op3Var.b;
        if (list.isEmpty()) {
            c6.f("SBA create requires at least one entry");
            return null;
        }
        if (kz6.a[iz6VarW.ordinal()] == 4) {
            boolean z2 = false;
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((hz6) it.next()).b.b()) {
                        }
                    } else if (q63Var.c()) {
                        z = false;
                    }
                    z = true;
                }
            } else if (q63Var.c()) {
                z = false;
            } else {
                z = true;
            }
            if (iuVar != null && iuVar != iu.APP) {
                z2 = true;
            }
            iz6VarW = w(iuVar, z, z2);
        }
        iz6 iz6Var = iz6VarW;
        if (iuVar == null || (strName = iuVar.name()) == null) {
            strName = "none";
        }
        String strV = q63Var.v();
        String strY0 = el1.Y0((List) op3Var.b, null, "[", "]", new nk(10), 25);
        StringBuilder sbP = u48.p("appPart=", strName, " output=", strV, " entries=");
        sbP.append(strY0);
        String string = sbP.toString();
        iu iuVar2 = (iu) op3Var.c;
        try {
            int i = kz6.a[iz6Var.ordinal()];
            if (i == 1) {
                ez6VarC = c(op3Var, iz6Var);
            } else if (i == 2) {
                ez6VarC = (ez6) z("create", (bt3) op3Var.p, new jx(20), new jf(7, op3Var, iz6Var));
            } else {
                if (i != 3) {
                    if (i != 4) {
                        throw new mn5();
                    }
                    throw new IllegalStateException("Auto execution mode must be resolved before SBA create");
                }
                ez6VarC = d(op3Var, iz6Var, v("create"));
            }
            q("create", iz6Var, string, ez6VarC.b);
            return ez6VarC;
        } catch (Throwable th) {
            r("create", "sba", iz6Var, iuVar2, string, th);
            throw th;
        }
    }

    public static ez6 c(op3 op3Var, iz6 iz6Var) {
        zv1 uy6Var;
        od2 od2Var = (od2) op3Var.f;
        char[] cArrCopyOf = null;
        if (pe4.d(od2Var, gz6.i)) {
            uy6Var = vy6.m;
        } else {
            if (!(od2Var instanceof fz6)) {
                q.j();
                return null;
            }
            char[] cArr = ((fz6) od2Var).i;
            cArrCopyOf = Arrays.copyOf(cArr, cArr.length);
            uy6Var = new uy6(cArrCopyOf);
        }
        zv1 zv1Var = uy6Var;
        try {
            lh6 lh6Var = new lh6();
            File fileA = A((q63) op3Var.a);
            List<hz6> list = (List) op3Var.b;
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            for (hz6 hz6Var : list) {
                arrayList.add(new ey6(hz6Var.a, A(hz6Var.b), hz6Var.c, hz6Var.d, hz6Var.e));
            }
            return new ez6(tu0.d(fileA, arrayList, (f27) op3Var.d, (cy0) op3Var.e, zv1Var, (String) op3Var.k, 2000L, new er1(op3Var), (h07) op3Var.q, new c7(lh6Var, 26), false), (String) lh6Var.a, iz6Var);
        } finally {
            if (cArrCopyOf != null) {
                Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            }
        }
    }

    public static ez6 d(op3 op3Var, iz6 iz6Var, z84 z84Var) {
        char[] cArr;
        zv1 uy6Var;
        od2 od2Var = (od2) op3Var.f;
        lz6 lz6Var = null;
        if (pe4.d(od2Var, gz6.i)) {
            uy6Var = vy6.m;
            cArr = null;
        } else {
            if (!(od2Var instanceof fz6)) {
                q.j();
                return null;
            }
            char[] cArr2 = ((fz6) od2Var).i;
            char[] cArrCopyOf = Arrays.copyOf(cArr2, cArr2.length);
            cArr = cArrCopyOf;
            uy6Var = new uy6(cArrCopyOf);
        }
        try {
            i17 i17VarB = B(op3Var, uy6Var, iz6Var);
            h07 h07Var = (h07) op3Var.q;
            if (h07Var != null) {
                lz6Var = new lz6(h07Var);
            }
            return new ez6(s(z84Var, (q63) op3Var.a), E(z84Var, z84Var.createSba(i17VarB, lz6Var), "create", iz6Var, (bt3) op3Var.p).p, iz6Var);
        } finally {
            if (cArr != null) {
                Arrays.fill(cArr, 0, cArr.length, (char) 0);
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x001b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(defpackage.q63 r16, defpackage.q63 r17, char[] r18, defpackage.xp1 r19, java.lang.String r20) {
        /*
            r0 = r18
            r1 = 0
            if (r0 == 0) goto L10
            int r2 = r0.length
            if (r2 != 0) goto L9
            r0 = r1
        L9:
            if (r0 == 0) goto L10
            int r1 = r0.length
            char[] r1 = java.util.Arrays.copyOf(r0, r1)
        L10:
            r2 = 0
            boolean r0 = r17.j()     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            if (r0 == 0) goto L1f
            r17.h()     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            goto L1f
        L1b:
            r0 = move-exception
            goto L63
        L1d:
            r0 = move-exception
            goto L5f
        L1f:
            hz6 r3 = new hz6     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            java.lang.String r4 = r16.p()     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            r8 = 0
            r9 = 24
            r6 = 1
            r7 = 0
            r5 = r16
            r3.<init>(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            java.util.List r6 = defpackage.nc8.I(r3)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            f27 r8 = defpackage.f27.Basic     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            cy0 r9 = D(r19)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            if (r1 == 0) goto L42
            fz6 r0 = new fz6     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
        L40:
            r10 = r0
            goto L45
        L42:
            gz6 r0 = defpackage.gz6.i     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            goto L40
        L45:
            iz6 r12 = defpackage.iz6.Auto     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            op3 r4 = new op3     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            r7 = 0
            r13 = 0
            r14 = 0
            r15 = 768(0x300, float:1.076E-42)
            r5 = r17
            r11 = r20
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            b(r4)     // Catch: java.lang.Throwable -> L1b java.lang.Exception -> L1d
            if (r1 == 0) goto L5e
            int r0 = r1.length
            java.util.Arrays.fill(r1, r2, r0, r2)
        L5e:
            return
        L5f:
            r17.h()     // Catch: java.lang.Throwable -> L1b
            throw r0     // Catch: java.lang.Throwable -> L1b
        L63:
            if (r1 == 0) goto L69
            int r3 = r1.length
            java.util.Arrays.fill(r1, r2, r3, r2)
        L69:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mz6.e(q63, q63, char[], xp1, java.lang.String):void");
    }

    public static jz6 f(jd0 jd0Var) {
        String strName;
        jz6 jz6VarH;
        q63 q63Var = (q63) jd0Var.c;
        q63 q63Var2 = (q63) jd0Var.b;
        iz6 iz6VarW = (iz6) jd0Var.n;
        iu iuVar = (iu) jd0Var.d;
        int[] iArr = kz6.a;
        if (iArr[iz6VarW.ordinal()] == 4) {
            boolean z = false;
            boolean z2 = q63Var2.b() || q63Var.c();
            if (iuVar != null && iuVar != iu.APP && iuVar != iu.MEDIA) {
                z = true;
            }
            iz6VarW = w(iuVar, z2, z);
        }
        iz6 iz6Var = iz6VarW;
        if (iuVar == null || (strName = iuVar.name()) == null) {
            strName = "none";
        }
        String strV = q63Var2.v();
        String strV2 = q63Var.v();
        String str = (String) jd0Var.a;
        if (str == null) {
            str = "auto";
        }
        String strN = eq3.n(u48.p("appPart=", strName, " archive=", strV, " target="), strV2, " entry=", str);
        iu iuVar2 = (iu) jd0Var.d;
        try {
            int i = iArr[iz6Var.ordinal()];
            if (i == 1) {
                jz6VarH = h(jd0Var, iz6Var);
            } else if (i == 2) {
                jz6VarH = (jz6) z("extract", (bt3) jd0Var.p, new qm(17), new nj2(5, jd0Var, iz6Var));
            } else {
                if (i != 3) {
                    if (i != 4) {
                        throw new mn5();
                    }
                    throw new IllegalStateException("Auto execution mode must be resolved before SBA extract");
                }
                jz6VarH = i(jd0Var, iz6Var, v("extract"));
            }
            q("extract", iz6Var, strN, jz6VarH.a);
            return jz6VarH;
        } catch (Throwable th) {
            r("extract", "sba", iz6Var, iuVar2, strN, th);
            throw th;
        }
    }

    public static qo6 g(mt3 mt3Var) {
        return new qo6(1, new hj(mt3Var, 23), new my6(e07.a));
    }

    public static jz6 h(jd0 jd0Var, iz6 iz6Var) {
        char[] cArr = (char[]) jd0Var.f;
        char[] cArrCopyOf = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
        try {
            lh6 lh6Var = new lh6();
            tu0.k(A((q63) jd0Var.b), A((q63) jd0Var.c), (String) jd0Var.a, (f27) jd0Var.e, cArrCopyOf, (List) jd0Var.k, 2000L, new bb(jd0Var, 6), (h07) jd0Var.q, new ro6(lh6Var), true);
            return new jz6((String) lh6Var.a, iz6Var);
        } finally {
            if (cArrCopyOf != null) {
                Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            }
        }
    }

    public static jz6 i(jd0 jd0Var, iz6 iz6Var, z84 z84Var) {
        char[] cArr = (char[]) jd0Var.f;
        lz6 lz6Var = null;
        char[] cArrCopyOf = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
        try {
            m17 m17VarC = C(jd0Var, cArrCopyOf, iz6Var);
            h07 h07Var = (h07) jd0Var.q;
            if (h07Var != null) {
                lz6Var = new lz6(h07Var);
            }
            return new jz6(E(z84Var, z84Var.extractSba(m17VarC, lz6Var), "extract", iz6Var, (bt3) jd0Var.p).p, iz6Var);
        } finally {
            if (cArrCopyOf != null) {
                Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
            }
        }
    }

    public static jz6 j(q63 q63Var, q63 q63Var2, ArrayList arrayList, List list) {
        q63Var.getClass();
        if (!m(q63Var)) {
            f6.g("Archive is not SBA: ".concat(q63Var.v()));
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (((char[]) obj).length != 0) {
                arrayList2.add(obj);
            }
        }
        boolean zIsEmpty = arrayList2.isEmpty();
        List<char[]> listI = arrayList2;
        if (zIsEmpty) {
            listI = null;
        }
        if (listI == null) {
            listI = nc8.I(null);
        }
        sz6 e = null;
        for (char[] cArr : listI) {
            char[] cArrCopyOf = cArr != null ? Arrays.copyOf(cArr, cArr.length) : null;
            try {
                jz6 jz6VarF = f(new jd0(q63Var, q63Var2, null, null, f27.Basic, cArrCopyOf, list, iz6.Auto, null, null, 768));
                if (cArrCopyOf != null) {
                    Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                }
                return jz6VarF;
            } catch (sz6 e2) {
                e = e2;
                if (cArrCopyOf != null) {
                    Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                }
            } catch (Throwable th) {
                if (cArrCopyOf != null) {
                    Arrays.fill(cArrCopyOf, 0, cArrCopyOf.length, (char) 0);
                }
                throw th;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new sz6("Invalid SBA password", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void k(q63 q63Var, q63 q63Var2, f27 f27Var, long j, iz6 iz6Var, final lx7 lx7Var) throws Throwable {
        iz6 iz6VarW;
        lx7 lx7Var2;
        cz6 cz6Var;
        Object obj;
        ov ovVar = new ov(14);
        q63Var.getClass();
        f27Var.getClass();
        iz6Var.getClass();
        int[] iArr = kz6.a;
        if (iArr[iz6Var.ordinal()] == 4) {
            iz6VarW = w(null, q63Var.b() || q63Var2.c(), false);
        } else {
            iz6VarW = iz6Var;
        }
        final Object obj2 = new Object();
        final kh6 kh6Var = new kh6();
        final kh6 kh6Var2 = new kh6();
        long j2 = j >= 1 ? j : 1L;
        if (lx7Var != null) {
            final long j3 = j2;
            h07 h07Var = new h07() { // from class: cz6
                @Override // defpackage.h07
                public final void a(f07 f07Var) {
                    long j4;
                    long j5 = j3;
                    Object obj3 = obj2;
                    rt3 rt3Var = lx7Var;
                    kh6 kh6Var3 = kh6Var2;
                    kh6 kh6Var4 = kh6Var;
                    if (f07Var.a != i07.Extract) {
                        return;
                    }
                    m07 m07Var = f07Var.d;
                    m07 m07Var2 = m07.Progress;
                    if (m07Var == m07Var2 || m07Var == m07.Completed) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        long jI = l73.i(f07Var.f, 0L, j5);
                        synchronized (obj3) {
                            try {
                                long j6 = kh6Var3.a;
                                long j7 = jCurrentTimeMillis - j6;
                                j4 = 0;
                                if (f07Var.d == m07Var2 && j6 > 0 && j7 > 0) {
                                    long j8 = jI - kh6Var4.a;
                                    if (j8 >= 0) {
                                        j4 = j8;
                                    }
                                    j4 = (j4 * 1000) / j7;
                                }
                                kh6Var4.a = jI;
                                kh6Var3.a = jCurrentTimeMillis;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        rt3Var.a(Long.valueOf(jI), Long.valueOf(j5), Long.valueOf(j4));
                    }
                }
            };
            lx7Var2 = lx7Var;
            cz6Var = h07Var;
        } else {
            lx7Var2 = lx7Var;
            cz6Var = 0;
        }
        String strConcat = "archive=".concat(q63Var.v());
        try {
            int i = iArr[iz6VarW.ordinal()];
            int i2 = 2;
            try {
                if (i == 1) {
                    obj2 = iz6VarW;
                    z85.h(A(q63Var), A(q63Var2), f27Var, null, 2000L, new nb(ovVar, i2), cz6Var);
                } else {
                    if (i != 2 && i != 3) {
                        if (i == 4) {
                            throw new IllegalStateException("Auto execution mode must be resolved before tar extract");
                        }
                        throw new mn5();
                    }
                    iz6 iz6Var2 = iz6VarW;
                    l(q63Var, q63Var2, f27Var, iz6Var2, ovVar, cz6Var);
                    obj2 = iz6Var2;
                }
                if (lx7Var2 != null) {
                    lx7Var2.a(Long.valueOf(j2), Long.valueOf(j2), 0L);
                }
            } catch (Throwable th) {
                th = th;
                obj = obj2;
                r("extract", "raw_tar", obj, null, strConcat, th);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            obj = iz6VarW;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0056  */
    public static d27 l(q63 q63Var, q63 q63Var2, f27 f27Var, iz6 iz6Var, bt3 bt3Var, cz6 cz6Var) throws IOException {
        z84 z84VarU;
        int i;
        int i2 = kz6.a[iz6Var.ordinal()];
        int i3 = 2;
        if (i2 == 2) {
            z84VarU = u("tar extract");
        } else {
            if (i2 != 3) {
                l0.k(iz6Var, "Unsupported privileged tar extract mode: ");
                return null;
            }
            z84VarU = v("tar extract");
        }
        z84 z84Var = z84VarU;
        String strV = q63Var.v();
        String strV2 = q63Var2.v();
        int i4 = kz6.b[f27Var.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                i = 1;
            } else if (i4 != 3) {
                q.j();
                return null;
            }
            o17 o17VarE = E(z84Var, z84Var.extractTar(new s17(strV, strV2, i, null, 2000L), cz6Var != null ? new lz6(cz6Var) : null), "tar extract", iz6Var, bt3Var);
            return new d27(o17VarE.k, o17VarE.q, o17VarE.r, o17VarE.t, o17VarE.x, o17VarE.y, o17VarE.G, o17VarE.H, o17VarE.I);
        }
        i3 = 0;
        i = i3;
        o17 o17VarE2 = E(z84Var, z84Var.extractTar(new s17(strV, strV2, i, null, 2000L), cz6Var != null ? new lz6(cz6Var) : null), "tar extract", iz6Var, bt3Var);
        return new d27(o17VarE2.k, o17VarE2.q, o17VarE2.r, o17VarE2.t, o17VarE2.x, o17VarE2.y, o17VarE2.G, o17VarE2.H, o17VarE2.I);
    }

    public static boolean m(q63 q63Var) {
        q63Var.getClass();
        int i = kz6.a[x(q63Var).ordinal()];
        if (i != 1) {
            if (i == 2) {
                return u("metadata").isSbaFile(q63Var.v());
            }
            if (i == 3) {
                return v("metadata").isSbaFile(q63Var.v());
            }
            if (i != 4) {
                q.j();
                return false;
            }
            l0.e("Auto execution mode must be resolved before SBA metadata read");
            return false;
        }
        File fileA = A(q63Var);
        long length = fileA.length();
        byte[] bArr = zv1.c;
        if (length >= 4) {
            try {
                FileInputStream fileInputStream = new FileInputStream(fileA);
                try {
                    byte[] bArr2 = new byte[4];
                    boolean z = fileInputStream.read(bArr2) == 4 && Arrays.equals(bArr2, bArr);
                    fileInputStream.close();
                    return z;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(fileInputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static List n(q63 q63Var) {
        q63Var.getClass();
        iz6 iz6VarX = x(q63Var);
        String strConcat = "archive=".concat(q63Var.v());
        try {
            int i = kz6.a[iz6VarX.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return s(u("entry listing"), q63Var).i;
                }
                if (i == 3) {
                    return s(v("entry listing"), q63Var).i;
                }
                if (i != 4) {
                    throw new mn5();
                }
                throw new IllegalStateException("Auto execution mode must be resolved before SBA entry listing");
            }
            z07 z07Var = new z07(A(q63Var));
            try {
                ArrayList arrayListJ = z07Var.j();
                z07Var.close();
                return arrayListJ;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(z07Var, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            r("list_entries", "sba", iz6VarX, null, strConcat, th3);
            throw th3;
        }
    }

    public static ArrayList o(q63 q63Var) {
        q63Var.getClass();
        iz6 iz6VarX = x(q63Var);
        String strConcat = "archive=".concat(q63Var.v());
        try {
            int i = kz6.a[iz6VarX.ordinal()];
            if (i == 1) {
                return z85.z(A(q63Var));
            }
            if (i == 2) {
                return p(u("tar listing"), q63Var);
            }
            if (i == 3) {
                return p(v("tar listing"), q63Var);
            }
            if (i != 4) {
                throw new mn5();
            }
            throw new IllegalStateException("Auto execution mode must be resolved before tar listing");
        } catch (Throwable th) {
            r("list_tar_entries", "raw_tar", iz6VarX, null, strConcat, th);
            throw th;
        }
    }

    public static ArrayList p(z84 z84Var, q63 q63Var) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i >= 0) {
            q17 q17VarListTarEntries = z84Var.listTarEntries(q63Var.v(), i, 128);
            q17VarListTarEntries.getClass();
            ArrayList arrayList2 = q17VarListTarEntries.a;
            ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (true) {
                c27 c27Var = null;
                if (!it.hasNext()) {
                    break;
                }
                p17 p17Var = (p17) it.next();
                String str = p17Var.a;
                String str2 = p17Var.b;
                for (c27 c27Var2 : c27.values()) {
                    if (pe4.d(c27Var2.name(), str2)) {
                        c27Var = c27Var2;
                        break;
                    }
                }
                if (c27Var == null) {
                    c27Var = c27.Other;
                }
                arrayList3.add(new z17(str, c27Var, p17Var.c, p17Var.d, p17Var.e, p17Var.f, p17Var.k, p17Var.n, p17Var.p));
                it = it;
            }
            el1.K0(arrayList3, arrayList);
            int i2 = q17VarListTarEntries.b;
            if (i2 >= 0 && i2 <= i) {
                f6.g(fz5.j(i2, "SBA root tar list did not advance: "));
                return null;
            }
            i = i2;
        }
        return arrayList;
    }

    public static void q(String str, iz6 iz6Var, String str2, String str3) {
        if (str3 == null || nq7.j0(str3) || !nq7.Z(str3, "warning", true)) {
            return;
        }
        vr6 vr6Var = vr6.INSTANCE;
        StringBuilder sb = new StringBuilder("SBA ");
        sb.append(str);
        sb.append(" warning mode=");
        sb.append(iz6Var);
        sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
        vr6.w$default(vr6Var, "SbaHelper", eq3.n(sb, str2, "\n", str3), null, 4, null);
    }

    public static void r(String str, String str2, iz6 iz6Var, iu iuVar, String str3, Throwable th) {
        String strName;
        String str4;
        String str5 = "SBA " + str + " failed mode=" + iz6Var + TokenAuthenticationScheme.SCHEME_DELIMITER + str3;
        boolean z = th instanceof zz6;
        if (z) {
            vr6.w$default(vr6.INSTANCE, "SbaHelper", dj7.k(str5, ": ", th.getMessage()), null, 4, null);
        } else {
            vr6.e$default(vr6.INSTANCE, "SbaHelper", str5, th, null, 8, null);
        }
        bz6 bz6Var = new bz6(2, n02.a, n02.class, "recordExceptionSafe", "recordExceptionSafe(Ljava/lang/Throwable;Ljava/util/Map;)V", 0);
        iz6Var.getClass();
        if (z || (th instanceof sz6)) {
            return;
        }
        if (str2.equals("raw_tar") && str.equals("list_tar_entries")) {
            return;
        }
        if (str.equals("extract") && ((th instanceof rz6) || (th instanceof nz6) || (th instanceof pz6))) {
            return;
        }
        pw5 pw5Var = new pw5("sba_container", str2);
        pw5 pw5Var2 = new pw5("sba_operation", str);
        pw5 pw5Var3 = new pw5("sba_execution_mode", iz6Var.name());
        if (iuVar == null || (strName = iuVar.name()) == null) {
            strName = "none";
        }
        pw5 pw5Var4 = new pw5("sba_app_part", strName);
        if ((th instanceof rz6) || (th instanceof nz6) || (th instanceof qz6) || (th instanceof pz6)) {
            str4 = "archive_validity";
        } else if ((th instanceof j27) || (th instanceof i27)) {
            str4 = "compatibility";
        } else if (th instanceof h27) {
            str4 = "archive_safety";
        } else {
            str4 = th instanceof IOException ? "runtime_io" : "internal";
        }
        try {
            bz6Var.invoke(new yz6("Unexpected SBA " + str + " failure", th), x65.r0(pw5Var, pw5Var2, pw5Var3, pw5Var4, new pw5("sba_failure_category", str4), new pw5("sba_exception_class", th.getClass().getSimpleName()), new pw5("sba_backend", "swifttar")));
        } catch (Throwable unused) {
        }
    }

    public static ky6 s(z84 z84Var, q63 q63Var) {
        uz6 uz6Var;
        f17 sbaInfoPage = z84Var.readSbaInfoPage(q63Var.v(), 0, 128);
        sbaInfoPage.getClass();
        int i = sbaInfoPage.q;
        String str = sbaInfoPage.a;
        String str2 = sbaInfoPage.b;
        int i2 = sbaInfoPage.c;
        long j = sbaInfoPage.d;
        String str3 = sbaInfoPage.e;
        d17 d17Var = sbaInfoPage.f;
        int i3 = d17Var.a;
        int i4 = d17Var.b;
        long j2 = d17Var.c;
        cy0 cy0VarC = d17Var.d.c();
        int i5 = d17Var.e;
        int i6 = d17Var.f;
        wy6 wy6VarD = wx3.D(Integer.valueOf(d17Var.n), d17Var.k);
        int i7 = d17Var.n;
        int i8 = d17Var.p;
        int i9 = d17Var.q;
        int i10 = d17Var.r;
        n17 n17Var = d17Var.t;
        String str4 = n17Var.a;
        int i11 = n17Var.b;
        uz6[] uz6VarArrValues = uz6.values();
        int length = uz6VarArrValues.length;
        int i12 = 0;
        while (true) {
            if (i12 >= length) {
                uz6Var = null;
                break;
            }
            uz6Var = uz6VarArrValues[i12];
            int i13 = i12;
            if (pe4.d(uz6Var.name(), str4)) {
                break;
            }
            i12 = i13 + 1;
        }
        if (uz6Var == null) {
            uz6Var = (i11 == 0 || i11 != 1) ? uz6.None : uz6.Argon2id;
        }
        gy6 gy6Var = new gy6(i3, i4, j2, cy0VarC, i5, i6, wy6VarD, i7, i8, i9, i10, new tz6(uz6Var, n17Var.b, n17Var.c, n17Var.d, n17Var.e));
        e17 e17Var = sbaInfoPage.k;
        hy6 hy6Var = new hy6(e17Var.a, e17Var.b, e17Var.c, e17Var.d, e17Var.e, e17Var.f);
        c17 c17Var = sbaInfoPage.n;
        fy6 fy6Var = new fy6(c17Var.b, c17Var.c, c17Var.a, c17Var.d);
        ArrayList arrayList = sbaInfoPage.p;
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((k17) it.next()).c());
        }
        ky6 ky6Var = new ky6(str, str2, i2, j, str3, gy6Var, hy6Var, fy6Var, arrayList2);
        if (i == -1) {
            int size = arrayList2.size();
            int i14 = hy6Var.f;
            if (size == i14) {
                return ky6Var;
            }
            f6.g(dj7.i("SBA root archive info entry count mismatch: expected=", i14, arrayList2.size(), " actual="));
            return null;
        }
        ArrayList arrayList3 = new ArrayList(arrayList2);
        while (i >= 0) {
            f17 sbaInfoPage2 = z84Var.readSbaInfoPage(q63Var.v(), i, 128);
            sbaInfoPage2.getClass();
            ArrayList arrayList4 = sbaInfoPage2.p;
            ArrayList arrayList5 = new ArrayList(hl1.G0(arrayList4, 10));
            Iterator it2 = arrayList4.iterator();
            while (it2.hasNext()) {
                arrayList5.add(((k17) it2.next()).c());
            }
            el1.K0(arrayList5, arrayList3);
            int i15 = sbaInfoPage2.q;
            if (i15 >= 0 && i15 <= i) {
                f6.g(fz5.j(i15, "SBA root archive info page did not advance: "));
                return null;
            }
            i = i15;
        }
        int size2 = arrayList3.size();
        hy6 hy6Var2 = ky6Var.g;
        int i16 = hy6Var2.f;
        if (size2 != i16) {
            f6.g(dj7.i("SBA root archive info entry count mismatch: expected=", i16, arrayList3.size(), " actual="));
            return null;
        }
        String str5 = ky6Var.a;
        str5.getClass();
        String str6 = ky6Var.b;
        str6.getClass();
        String str7 = ky6Var.e;
        str7.getClass();
        return new ky6(str5, str6, ky6Var.c, ky6Var.d, str7, ky6Var.f, hy6Var2, ky6Var.h, arrayList3);
    }

    public static ky6 t(q63 q63Var) {
        q63Var.getClass();
        iz6 iz6VarX = x(q63Var);
        String strConcat = "archive=".concat(q63Var.v());
        try {
            int i = kz6.a[iz6VarX.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return s(u("metadata"), q63Var);
                }
                if (i == 3) {
                    return s(v("metadata"), q63Var);
                }
                if (i != 4) {
                    throw new mn5();
                }
                throw new IllegalStateException("Auto execution mode must be resolved before SBA metadata read");
            }
            z07 z07Var = new z07(A(q63Var));
            try {
                ky6 ky6VarA = z07Var.A();
                z07Var.close();
                return ky6VarA;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(z07Var, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            r("read_info", "sba", iz6VarX, null, strConcat, th3);
            throw th3;
        }
    }

    public static z84 u(String str) {
        z84 z84VarC = aq6.c();
        if (z84VarC != null) {
            return z84VarC;
        }
        l0.e("RootService is unavailable for SBA ".concat(str));
        return null;
    }

    public static z84 v(String str) {
        z84 z84Var;
        Object obj = u17.c;
        synchronized (obj) {
            z84Var = u17.a;
            if (z84Var == null) {
                z84Var = null;
            } else if (!z84Var.asBinder().isBinderAlive()) {
                u17.a = null;
                z84Var = null;
            }
        }
        if (z84Var == null) {
            gv7 gv7Var = qe7.a;
            if (le7.f() && qe7.b()) {
                int iA = qe7.a();
                if (iA < 13) {
                    vr6.e$default(vr6.INSTANCE, "SbaShizukuServiceManager", fz5.j(iA, "SBA via Shizuku requires Shizuku v13+; current="), null, 4, null);
                } else {
                    synchronized (obj) {
                        try {
                            z84Var = u17.a;
                            if (z84Var == null) {
                                z84Var = null;
                            } else if (!z84Var.asBinder().isBinderAlive()) {
                                u17.a = null;
                                z84Var = null;
                            }
                            if (z84Var == null) {
                                if (!u17.b) {
                                    u17.a();
                                }
                                long jCurrentTimeMillis = System.currentTimeMillis() + 10000;
                                while (u17.a == null && u17.b) {
                                    long jCurrentTimeMillis2 = jCurrentTimeMillis - System.currentTimeMillis();
                                    if (jCurrentTimeMillis2 <= 0) {
                                        break;
                                    }
                                    try {
                                        u17.c.wait(jCurrentTimeMillis2);
                                    } catch (InterruptedException unused) {
                                        Thread.currentThread().interrupt();
                                        vr6.w$default(vr6.INSTANCE, "SbaShizukuServiceManager", "Interrupted while binding Shizuku SBA service", null, 4, null);
                                    }
                                }
                                if (u17.a == null && u17.b) {
                                    u17.b = false;
                                    vr6.e$default(vr6.INSTANCE, "SbaShizukuServiceManager", "Timed out binding Shizuku SBA service", null, 4, null);
                                }
                                z84Var = u17.a;
                                if (z84Var == null) {
                                    z84Var = null;
                                } else if (!z84Var.asBinder().isBinderAlive()) {
                                    u17.a = null;
                                    z84Var = null;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                z84Var = null;
            } else {
                z84Var = null;
            }
        }
        if (z84Var != null) {
            return z84Var;
        }
        l0.e("Shizuku SBA service is unavailable for SBA ".concat(str));
        return null;
    }

    public static iz6 w(iu iuVar, boolean z, boolean z2) {
        sk0 backupReq;
        String displayString;
        if (iuVar == null || (backupReq = iuVar.getBackupReq()) == null) {
            backupReq = sk0.NONE;
        }
        if (iuVar == null || (displayString = iuVar.toDisplayString(true)) == null) {
            displayString = "operation";
        }
        mp6 mp6Var = mp6.a;
        boolean z3 = mp6.g;
        boolean zG = mp6.g();
        backupReq.getClass();
        if (z2 && z3) {
            return iz6.Root;
        }
        if (backupReq == sk0.ROOT_OR_SHIZUKU) {
            if (z3) {
                return iz6.Root;
            }
            if (zG) {
                return iz6.Shizuku;
            }
            if (!z) {
                return iz6.Local;
            }
            l0.e("Privileged access is required for SBA ".concat(displayString));
            return null;
        }
        sk0 sk0Var = sk0.ROOT;
        if (backupReq != sk0Var && !z) {
            return iz6.Local;
        }
        if (z3) {
            return iz6.Root;
        }
        if (backupReq == sk0Var) {
            l0.e("Root access is required for SBA ".concat(displayString));
            return null;
        }
        if (zG) {
            return iz6.Shizuku;
        }
        l0.e("Privileged access is required for SBA ".concat(displayString));
        return null;
    }

    public static iz6 x(q63 q63Var) {
        if (!q63Var.b()) {
            return iz6.Local;
        }
        mp6 mp6Var = mp6.a;
        if (mp6.g) {
            return iz6.Root;
        }
        if (mp6.g()) {
            return iz6.Shizuku;
        }
        l0.e("Privileged access is required for SBA file read: ".concat(q63Var.v()));
        return null;
    }

    public static String y(String str, iu iuVar, iz6 iz6Var) {
        if (iz6Var != iz6.Root || iuVar == null || iuVar == iu.APP) {
            return str;
        }
        if (!uq7.V(str, "/storage/emulated/", false)) {
            return str;
        }
        String strQ0 = nq7.q0(str, "/storage/emulated/");
        String strD0 = nq7.D0(strQ0, '/');
        if (strD0.length() == 0) {
            return str;
        }
        for (int i = 0; i < strD0.length(); i++) {
            if (!Character.isDigit(strD0.charAt(i))) {
                return str;
            }
        }
        return "/data/media/".concat(strQ0);
    }

    public static Object z(String str, bt3 bt3Var, bt3 bt3Var2, mt3 mt3Var) throws zz6, DeadObjectException {
        bt3Var.getClass();
        try {
            return mt3Var.invoke(bt3Var2.invoke());
        } catch (DeadObjectException e) {
            if (((Boolean) bt3Var.invoke()).booleanValue()) {
                throw new zz6(eq3.k("SBA Root ", str, " cancelled after RootService disconnected"), e);
            }
            vr6.w$default(vr6.INSTANCE, "SbaHelper", eq3.k("RootService disconnected during SBA ", str, "; retrying once"), null, 4, null);
            Object objInvoke = bt3Var2.invoke();
            if (((Boolean) bt3Var.invoke()).booleanValue()) {
                throw new zz6(eq3.k("SBA Root ", str, " cancelled while reconnecting RootService"), e);
            }
            try {
                return mt3Var.invoke(objInvoke);
            } catch (DeadObjectException e2) {
                yc9.a(e2, e);
                throw e2;
            }
        }
    }
}
