package defpackage;

import com.jcraft.jsch.SftpATTRS;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ic2 implements fb2 {
    public final x93 a;
    public final nh b;
    public final xx1 c;
    public int f;
    public bl7 g;
    public final kb2 i;
    public final gv7 j;
    public final gv7 k;
    public final kc l;
    public final tr9 d = new tr9(new pb2(this, null), 15);
    public final mj5 e = new mj5();
    public final tr9 h = new tr9(5);

    public ic2(x93 x93Var, List list, nh nhVar, xx1 xx1Var) {
        this.a = x93Var;
        this.b = nhVar;
        this.c = xx1Var;
        this.i = new kb2(this, list);
        int i = 1;
        this.j = new gv7(new cg1(this, i));
        this.k = new gv7(new k7(this, i));
        this.l = new kc(xx1Var, new ec2(this), new fc2(this, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(ic2 ic2Var, kv1 kv1Var) {
        qb2 qb2Var;
        mj5 mj5Var;
        if (kv1Var instanceof qb2) {
            qb2Var = (qb2) kv1Var;
            int i = qb2Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                qb2Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                qb2Var = new qb2(ic2Var, kv1Var);
            }
        } else {
            qb2Var = new qb2(ic2Var, kv1Var);
        }
        Object obj = qb2Var.c;
        int i2 = qb2Var.e;
        if (i2 == 0) {
            lg7.H(obj);
            mj5Var = ic2Var.e;
            qb2Var.a = ic2Var;
            qb2Var.b = mj5Var;
            qb2Var.e = 1;
            Object objA = mj5Var.a(qb2Var);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mj5 mj5Var2 = qb2Var.b;
            ic2 ic2Var2 = qb2Var.a;
            lg7.H(obj);
            mj5Var = mj5Var2;
            ic2Var = ic2Var2;
        }
        try {
            int i3 = ic2Var.f - 1;
            ic2Var.f = i3;
            if (i3 == 0) {
                bl7 bl7Var = ic2Var.g;
                if (bl7Var != null) {
                    bl7Var.cancel(null);
                }
                ic2Var.g = null;
            }
            return be8.a;
        } finally {
            mj5Var.b(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
    
        if (r9 == r6) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0072, code lost:
    
        r8 = r11;
        r11 = r9;
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b3, code lost:
    
        if (r9 == r6) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [ic2] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v25 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6, types: [ic2] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(defpackage.ic2 r9, defpackage.fd5 r10, defpackage.kv1 r11) {
        /*
            Method dump skipped, instruction units count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ic2.c(ic2, fd5, kv1):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object d(ic2 ic2Var, kv1 kv1Var) {
        tb2 tb2Var;
        mj5 mj5Var;
        if (kv1Var instanceof tb2) {
            tb2Var = (tb2) kv1Var;
            int i = tb2Var.e;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                tb2Var.e = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                tb2Var = new tb2(ic2Var, kv1Var);
            }
        } else {
            tb2Var = new tb2(ic2Var, kv1Var);
        }
        Object obj = tb2Var.c;
        int i2 = tb2Var.e;
        int i3 = 1;
        jv1 jv1Var = null;
        if (i2 == 0) {
            lg7.H(obj);
            mj5Var = ic2Var.e;
            tb2Var.a = ic2Var;
            tb2Var.b = mj5Var;
            tb2Var.e = 1;
            Object objA = mj5Var.a(tb2Var);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            mj5 mj5Var2 = tb2Var.b;
            ic2 ic2Var2 = tb2Var.a;
            lg7.H(obj);
            mj5Var = mj5Var2;
            ic2Var = ic2Var2;
        }
        try {
            int i4 = ic2Var.f + 1;
            ic2Var.f = i4;
            if (i4 == 1) {
                ic2Var.g = l73.v(ic2Var.c, null, new mg1(ic2Var, jv1Var, i3), 3);
            }
            return be8.a;
        } finally {
            mj5Var.b(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(ic2 ic2Var, boolean z, jv1 jv1Var) {
        wb2 wb2Var;
        ic2 ic2Var2;
        em7 em7Var;
        ic2 ic2Var3;
        pw5 pw5Var;
        em7 em7Var2;
        if (jv1Var instanceof wb2) {
            wb2Var = (wb2) jv1Var;
            int i = wb2Var.f;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                wb2Var.f = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                wb2Var = new wb2(ic2Var, jv1Var);
            }
        } else {
            wb2Var = new wb2(ic2Var, jv1Var);
        }
        Object objD = wb2Var.d;
        int i2 = wb2Var.f;
        yx1 yx1Var = yx1.a;
        if (i2 == 0) {
            lg7.H(objD);
            em7 em7VarC = ic2Var.h.c();
            if (em7VarC instanceof od8) {
                l0.e("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                return null;
            }
            sd4 sd4VarG = ic2Var.g();
            wb2Var.a = ic2Var;
            wb2Var.b = em7VarC;
            wb2Var.c = z;
            wb2Var.f = 1;
            Object objB = sd4VarG.b(wb2Var);
            if (objB != yx1Var) {
                ic2Var2 = ic2Var;
                em7Var = em7VarC;
                objD = objB;
            }
            return yx1Var;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ic2Var3 = wb2Var.a;
                lg7.H(objD);
                pw5Var = (pw5) objD;
                em7Var2 = (em7) pw5Var.a;
                if (((Boolean) pw5Var.b).booleanValue()) {
                    ic2Var3.h.f(em7Var2);
                }
                return em7Var2;
            }
            if (i2 != 3) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ic2Var3 = wb2Var.a;
            lg7.H(objD);
            pw5Var = (pw5) objD;
            em7Var2 = (em7) pw5Var.a;
            if (((Boolean) pw5Var.b).booleanValue()) {
                ic2Var3.h.f(em7Var2);
            }
            return em7Var2;
        }
        z = wb2Var.c;
        em7Var = wb2Var.b;
        ic2Var2 = wb2Var.a;
        lg7.H(objD);
        int iIntValue = ((Number) objD).intValue();
        boolean z2 = em7Var instanceof ga2;
        int i3 = z2 ? em7Var.a : -1;
        if (z2 && iIntValue == i3) {
            return em7Var;
        }
        if (z) {
            sd4 sd4VarG2 = ic2Var2.g();
            xb2 xb2Var = new xb2(ic2Var2, null);
            wb2Var.a = ic2Var2;
            wb2Var.b = null;
            wb2Var.f = 2;
            objD = sd4VarG2.a(xb2Var, wb2Var);
            if (objD != yx1Var) {
                ic2Var3 = ic2Var2;
                pw5Var = (pw5) objD;
                em7Var2 = (em7) pw5Var.a;
                if (((Boolean) pw5Var.b).booleanValue()) {
                    ic2Var3.h.f(em7Var2);
                }
                return em7Var2;
            }
        } else {
            sd4 sd4VarG3 = ic2Var2.g();
            yb2 yb2Var = new yb2(ic2Var2, i3, null);
            wb2Var.a = ic2Var2;
            wb2Var.b = null;
            wb2Var.f = 3;
            objD = sd4VarG3.d(yb2Var, wb2Var);
            if (objD != yx1Var) {
                ic2Var3 = ic2Var2;
                pw5Var = (pw5) objD;
                em7Var2 = (em7) pw5Var.a;
                if (((Boolean) pw5Var.b).booleanValue()) {
                    ic2Var3.h.f(em7Var2);
                }
                return em7Var2;
            }
        }
        return yx1Var;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x009d A[Catch: dy1 -> 0x005d, TryCatch #3 {dy1 -> 0x005d, blocks: (B:19:0x0058, B:54:0x00fc, B:24:0x0066, B:51:0x00de, B:32:0x0083, B:40:0x009d, B:42:0x00a3, B:36:0x008c, B:48:0x00cb), top: B:83:0x0020 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:63:0x013d A[Catch: all -> 0x0169, TryCatch #1 {all -> 0x0169, blocks: (B:61:0x012b, B:63:0x013d, B:64:0x0145), top: B:80:0x012b }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0145 A[Catch: all -> 0x0169, TRY_LEAVE, TryCatch #1 {all -> 0x0169, blocks: (B:61:0x012b, B:63:0x013d, B:64:0x0145), top: B:80:0x012b }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0155  */
    /* JADX WARN: Code duplicated, block: B:70:0x015d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object f(ic2 ic2Var, boolean z, kv1 kv1Var) {
        zb2 zb2Var;
        lh6 lh6Var;
        dy1 dy1Var;
        ic2 ic2Var2;
        boolean z2;
        lh6 lh6Var2;
        jh6 jh6Var;
        dy1 dy1Var2;
        bc2 bc2Var;
        Object objA;
        jh6 jh6Var2;
        lh6 lh6Var3;
        int iHashCode;
        Object objB;
        ic2 ic2Var3;
        int i;
        Object obj;
        if (kv1Var instanceof zb2) {
            zb2Var = (zb2) kv1Var;
            int i2 = zb2Var.p;
            if ((i2 & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                zb2Var.p = i2 - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zb2Var = new zb2(ic2Var, kv1Var);
            }
        } else {
            zb2Var = new zb2(ic2Var, kv1Var);
        }
        Object objB2 = zb2Var.k;
        int i3 = zb2Var.p;
        Object ga2Var = yx1.a;
        try {
            switch (i3) {
                case 0:
                    lg7.H(objB2);
                    if (z) {
                        zb2Var.a = ic2Var;
                        zb2Var.e = z;
                        zb2Var.p = 1;
                        objB2 = ic2Var.i(zb2Var);
                        if (objB2 != ga2Var) {
                            if (objB2 != null) {
                                iHashCode = objB2.hashCode();
                            } else {
                                iHashCode = 0;
                            }
                            sd4 sd4VarG = ic2Var.g();
                            zb2Var.a = ic2Var;
                            zb2Var.b = objB2;
                            zb2Var.e = z;
                            zb2Var.f = iHashCode;
                            zb2Var.p = 2;
                            objB = sd4VarG.b(zb2Var);
                            if (objB != ga2Var) {
                                ic2Var3 = ic2Var;
                                i = iHashCode;
                                obj = objB2;
                                objB2 = objB;
                                return new ga2(obj, i, ((Number) objB2).intValue());
                            }
                        }
                    } else {
                        sd4 sd4VarG2 = ic2Var.g();
                        zb2Var.a = ic2Var;
                        zb2Var.e = z;
                        zb2Var.p = 3;
                        objB2 = sd4VarG2.b(zb2Var);
                        if (objB2 != ga2Var) {
                            int iIntValue = ((Number) objB2).intValue();
                            sd4 sd4VarG3 = ic2Var.g();
                            ac2 ac2Var = new ac2(ic2Var, iIntValue, null);
                            zb2Var.a = ic2Var;
                            zb2Var.e = z;
                            zb2Var.p = 4;
                            objB2 = sd4VarG3.d(ac2Var, zb2Var);
                            if (objB2 == ga2Var) {
                            }
                            return (ga2) objB2;
                        }
                    }
                    return ga2Var;
                case 1:
                    z = zb2Var.e;
                    ic2Var = (ic2) zb2Var.a;
                    lg7.H(objB2);
                    if (objB2 != null) {
                        iHashCode = objB2.hashCode();
                    } else {
                        iHashCode = 0;
                    }
                    sd4 sd4VarG4 = ic2Var.g();
                    zb2Var.a = ic2Var;
                    zb2Var.b = objB2;
                    zb2Var.e = z;
                    zb2Var.f = iHashCode;
                    zb2Var.p = 2;
                    objB = sd4VarG4.b(zb2Var);
                    if (objB != ga2Var) {
                        ic2Var3 = ic2Var;
                        i = iHashCode;
                        obj = objB2;
                        objB2 = objB;
                        return new ga2(obj, i, ((Number) objB2).intValue());
                    }
                    return ga2Var;
                case 2:
                    i = zb2Var.f;
                    z = zb2Var.e;
                    obj = zb2Var.b;
                    ic2Var3 = (ic2) zb2Var.a;
                    try {
                        lg7.H(objB2);
                        return new ga2(obj, i, ((Number) objB2).intValue());
                    } catch (dy1 e) {
                        e = e;
                        ic2Var = ic2Var3;
                        lh6Var = new lh6();
                        nh nhVar = ic2Var.b;
                        zb2Var.a = ic2Var;
                        zb2Var.b = e;
                        zb2Var.c = lh6Var;
                        zb2Var.d = lh6Var;
                        zb2Var.e = z;
                        zb2Var.p = 5;
                        Object objInvoke = ((mt3) nhVar.b).invoke(e);
                        if (objInvoke != ga2Var) {
                            dy1Var = e;
                            objB2 = objInvoke;
                            ic2Var2 = ic2Var;
                            z2 = z;
                            lh6Var2 = lh6Var;
                            lh6Var2.a = objB2;
                            jh6Var = new jh6();
                            try {
                                bc2Var = new bc2(lh6Var, ic2Var2, jh6Var, null);
                                zb2Var.a = dy1Var;
                                zb2Var.b = lh6Var;
                                zb2Var.c = jh6Var;
                                zb2Var.d = null;
                                zb2Var.p = 6;
                                if (z2) {
                                    ic2Var2.getClass();
                                    objA = bc2Var.invoke(zb2Var);
                                } else {
                                    objA = ic2Var2.g().a(new rb2(bc2Var, null), zb2Var);
                                }
                                if (objA != ga2Var) {
                                    jh6Var2 = jh6Var;
                                    lh6Var3 = lh6Var;
                                    Object obj2 = lh6Var3.a;
                                    ga2Var = new ga2(obj2, obj2 != null ? obj2.hashCode() : 0, jh6Var2.a);
                                }
                            } catch (Throwable th) {
                                th = th;
                                dy1Var2 = dy1Var;
                                yc9.a(dy1Var2, th);
                                throw dy1Var2;
                            }
                        }
                        return ga2Var;
                    }
                case 3:
                    z = zb2Var.e;
                    ic2Var = (ic2) zb2Var.a;
                    lg7.H(objB2);
                    int iIntValue2 = ((Number) objB2).intValue();
                    sd4 sd4VarG5 = ic2Var.g();
                    ac2 ac2Var2 = new ac2(ic2Var, iIntValue2, null);
                    zb2Var.a = ic2Var;
                    zb2Var.e = z;
                    zb2Var.p = 4;
                    objB2 = sd4VarG5.d(ac2Var2, zb2Var);
                    if (objB2 == ga2Var) {
                        return ga2Var;
                    }
                    return (ga2) objB2;
                case 4:
                    boolean z3 = zb2Var.e;
                    lg7.H(objB2);
                    return (ga2) objB2;
                case 5:
                    z2 = zb2Var.e;
                    lh6Var2 = zb2Var.d;
                    lh6Var = (lh6) zb2Var.c;
                    dy1Var = (dy1) zb2Var.b;
                    ic2Var2 = (ic2) zb2Var.a;
                    lg7.H(objB2);
                    lh6Var2.a = objB2;
                    jh6Var = new jh6();
                    bc2Var = new bc2(lh6Var, ic2Var2, jh6Var, null);
                    zb2Var.a = dy1Var;
                    zb2Var.b = lh6Var;
                    zb2Var.c = jh6Var;
                    zb2Var.d = null;
                    zb2Var.p = 6;
                    if (z2) {
                        ic2Var2.getClass();
                        objA = bc2Var.invoke(zb2Var);
                    } else {
                        objA = ic2Var2.g().a(new rb2(bc2Var, null), zb2Var);
                    }
                    if (objA != ga2Var) {
                        jh6Var2 = jh6Var;
                        lh6Var3 = lh6Var;
                        Object obj3 = lh6Var3.a;
                        ga2Var = new ga2(obj3, obj3 != null ? obj3.hashCode() : 0, jh6Var2.a);
                    }
                    return ga2Var;
                case 6:
                    jh6Var2 = (jh6) zb2Var.c;
                    lh6Var3 = (lh6) zb2Var.b;
                    dy1Var2 = (dy1) zb2Var.a;
                    try {
                        lg7.H(objB2);
                        Object obj4 = lh6Var3.a;
                        ga2Var = new ga2(obj4, obj4 != null ? obj4.hashCode() : 0, jh6Var2.a);
                        return ga2Var;
                    } catch (Throwable th2) {
                        th = th2;
                        yc9.a(dy1Var2, th);
                        throw dy1Var2;
                    }
                default:
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
            }
        } catch (dy1 e2) {
            e = e2;
        }
    }

    @Override // defpackage.fb2
    public final Object a(qt3 qt3Var, kv1 kv1Var) {
        pf8 pf8Var = (pf8) kv1Var.getContext().get(fo8.b);
        if (pf8Var != null) {
            pf8Var.b(this);
        }
        return l73.G(new pf8(pf8Var, this), new dc2(this, qt3Var, null), kv1Var);
    }

    public final sd4 g() {
        return (sd4) this.k.getValue();
    }

    @Override // defpackage.fb2
    public final ji3 getData() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r1.c(r0) == r4) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(defpackage.kv1 r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof defpackage.vb2
            if (r0 == 0) goto L13
            r0 = r7
            vb2 r0 = (defpackage.vb2) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            vb2 r0 = new vb2
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.c
            int r1 = r0.e
            r2 = 2
            r3 = 1
            yx1 r4 = defpackage.yx1.a
            if (r1 == 0) goto L3d
            if (r1 == r3) goto L37
            if (r1 != r2) goto L30
            int r6 = r0.b
            ic2 r0 = r0.a
            defpackage.lg7.H(r7)     // Catch: java.lang.Throwable -> L2e
            goto L64
        L2e:
            r7 = move-exception
            goto L6c
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            r6 = 0
            return r6
        L37:
            ic2 r6 = r0.a
            defpackage.lg7.H(r7)
            goto L4f
        L3d:
            defpackage.lg7.H(r7)
            sd4 r7 = r6.g()
            r0.a = r6
            r0.e = r3
            java.lang.Object r7 = r7.b(r0)
            if (r7 != r4) goto L4f
            goto L63
        L4f:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            kb2 r1 = r6.i     // Catch: java.lang.Throwable -> L67
            r0.a = r6     // Catch: java.lang.Throwable -> L67
            r0.b = r7     // Catch: java.lang.Throwable -> L67
            r0.e = r2     // Catch: java.lang.Throwable -> L67
            java.lang.Object r6 = r1.c(r0)     // Catch: java.lang.Throwable -> L67
            if (r6 != r4) goto L64
        L63:
            return r4
        L64:
            be8 r6 = defpackage.be8.a
            return r6
        L67:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L6c:
            tr9 r0 = r0.h
            jf6 r1 = new jf6
            r1.<init>(r6, r7)
            r0.f(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ic2.h(kv1):java.lang.Object");
    }

    public final Object i(kv1 kv1Var) {
        return ((aa3) this.j.getValue()).a(new bo7(3, null), kv1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(Object obj, boolean z, kv1 kv1Var) {
        gc2 gc2Var;
        jh6 jh6Var;
        if (kv1Var instanceof gc2) {
            gc2Var = (gc2) kv1Var;
            int i = gc2Var.d;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                gc2Var.d = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                gc2Var = new gc2(this, kv1Var);
            }
        } else {
            gc2Var = new gc2(this, kv1Var);
        }
        Object obj2 = gc2Var.b;
        int i2 = gc2Var.d;
        if (i2 == 0) {
            lg7.H(obj2);
            jh6 jh6Var2 = new jh6();
            aa3 aa3Var = (aa3) this.j.getValue();
            hc2 hc2Var = new hc2(jh6Var2, this, obj, z, null);
            gc2Var.a = jh6Var2;
            gc2Var.d = 1;
            Object objB = aa3Var.b(hc2Var, gc2Var);
            yx1 yx1Var = yx1.a;
            if (objB == yx1Var) {
                return yx1Var;
            }
            jh6Var = jh6Var2;
        } else {
            if (i2 != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            jh6Var = gc2Var.a;
            lg7.H(obj2);
        }
        return new Integer(jh6Var.a);
    }
}
