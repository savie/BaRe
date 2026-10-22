package defpackage;

import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ib2 {
    public final /* synthetic */ kj5 a;
    public final /* synthetic */ ih6 b;
    public final /* synthetic */ lh6 c;
    public final /* synthetic */ ic2 d;

    public ib2(kj5 kj5Var, ih6 ih6Var, lh6 lh6Var, ic2 ic2Var) {
        this.a = kj5Var;
        this.b = ih6Var;
        this.c = lh6Var;
        this.d = ic2Var;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b0 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x004e, B:35:0x00a8, B:37:0x00b0), top: B:52:0x004e }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(xa2 xa2Var, kv1 kv1Var) throws Throwable {
        hb2 hb2Var;
        kj5 kj5Var;
        ih6 ih6Var;
        lh6 lh6Var;
        ic2 ic2Var;
        qt3 qt3Var;
        kj5 kj5Var2;
        kj5 kj5Var3;
        lh6 lh6Var2;
        Object obj;
        if (kv1Var instanceof hb2) {
            hb2Var = (hb2) kv1Var;
            int i = hb2Var.n;
            if ((i & SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) != 0) {
                hb2Var.n = i - SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                hb2Var = new hb2(this, kv1Var);
            }
        } else {
            hb2Var = new hb2(this, kv1Var);
        }
        Object obj2 = hb2Var.f;
        int i2 = hb2Var.n;
        yx1 yx1Var = yx1.a;
        try {
            if (i2 == 0) {
                lg7.H(obj2);
                hb2Var.a = xa2Var;
                kj5Var = this.a;
                hb2Var.b = kj5Var;
                ih6Var = this.b;
                hb2Var.c = ih6Var;
                lh6Var = this.c;
                hb2Var.d = lh6Var;
                ic2Var = this.d;
                hb2Var.e = ic2Var;
                hb2Var.n = 1;
                if (kj5Var.a(hb2Var) != yx1Var) {
                }
                qt3Var = xa2Var;
                return yx1Var;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    obj = hb2Var.c;
                    lh6Var2 = (lh6) hb2Var.b;
                    kj5Var2 = (kj5) hb2Var.a;
                    try {
                        lg7.H(obj2);
                        lh6Var2.a = obj;
                        Object obj3 = lh6Var2.a;
                        kj5Var2.b(null);
                        return obj3;
                    } catch (Throwable th) {
                        th = th;
                        kj5Var2.b(null);
                        throw th;
                    }
                }
                ic2Var = (ic2) hb2Var.c;
                lh6Var2 = (lh6) hb2Var.b;
                kj5Var3 = (kj5) hb2Var.a;
                try {
                    lg7.H(obj2);
                    if (!pe4.d(obj2, lh6Var2.a)) {
                        hb2Var.a = kj5Var3;
                        hb2Var.b = lh6Var2;
                        hb2Var.c = obj2;
                        hb2Var.n = 3;
                        if (ic2Var.j(obj2, false, hb2Var) != yx1Var) {
                            obj = obj2;
                            kj5Var2 = kj5Var3;
                            lh6Var2.a = obj;
                        }
                        qt3Var = xa2Var;
                        return yx1Var;
                    }
                    kj5Var2 = kj5Var3;
                    Object obj4 = lh6Var2.a;
                    kj5Var2.b(null);
                    return obj4;
                } catch (Throwable th2) {
                    th = th2;
                    kj5Var2 = kj5Var3;
                    kj5Var2.b(null);
                    throw th;
                }
            }
            ic2Var = hb2Var.e;
            lh6 lh6Var3 = hb2Var.d;
            ih6Var = (ih6) hb2Var.c;
            kj5 kj5Var4 = (kj5) hb2Var.b;
            qt3 qt3Var2 = (qt3) hb2Var.a;
            lg7.H(obj2);
            lh6Var = lh6Var3;
            qt3Var = qt3Var2;
            kj5Var = kj5Var4;
            qt3Var = xa2Var;
            if (ih6Var.a) {
                throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
            }
            Object obj5 = lh6Var.a;
            hb2Var.a = kj5Var;
            hb2Var.b = lh6Var;
            hb2Var.c = ic2Var;
            hb2Var.d = null;
            hb2Var.e = null;
            hb2Var.n = 2;
            Object objInvoke = qt3Var.invoke(obj5, hb2Var);
            if (objInvoke != yx1Var) {
                kj5Var3 = kj5Var;
                obj2 = objInvoke;
                lh6Var2 = lh6Var;
                if (!pe4.d(obj2, lh6Var2.a)) {
                    hb2Var.a = kj5Var3;
                    hb2Var.b = lh6Var2;
                    hb2Var.c = obj2;
                    hb2Var.n = 3;
                    if (ic2Var.j(obj2, false, hb2Var) != yx1Var) {
                        obj = obj2;
                        kj5Var2 = kj5Var3;
                        lh6Var2.a = obj;
                    }
                } else {
                    kj5Var2 = kj5Var3;
                }
                Object obj6 = lh6Var2.a;
                kj5Var2.b(null);
                return obj6;
            }
            qt3Var = xa2Var;
            return yx1Var;
        } catch (Throwable th3) {
            th = th3;
            kj5Var2 = kj5Var;
            kj5Var2.b(null);
            throw th;
        }
    }
}
