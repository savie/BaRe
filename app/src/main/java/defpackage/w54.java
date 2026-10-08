package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w54 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 1;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w54(x54 x54Var, String str, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = x54Var;
        this.c = str;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new w54((x54) this.b, (String) obj2, jv1Var);
            default:
                w54 w54Var = new w54((kd7) obj2, jv1Var);
                w54Var.b = obj;
                return w54Var;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((w54) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
            default:
                return ((w54) create((q87) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        boolean z;
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                List listE = kz4.g.e();
                List listE2 = pz4.g.e();
                x54 x54Var = (x54) this.b;
                String str = (String) obj2;
                if (pe4.d(x54Var.h, str)) {
                    x54Var.e.k(x54Var.k(str, listE, listE2));
                }
                return be8.a;
            default:
                lg7.H(obj);
                q87 q87Var = (q87) this.b;
                kd7 kd7Var = (kd7) obj2;
                j76 j76Var = kd7Var.f;
                boolean zE = kd7Var.e(q87Var);
                Map mapB = q87Var.c;
                if (mapB != null) {
                    j76Var.getClass();
                    z = false;
                    if (!j76Var.f) {
                        ArrayList<k76> arrayListB = i6.b(j76Var.a);
                        ArrayList arrayList = new ArrayList();
                        for (k76 k76Var : arrayListB) {
                            i76 i76Var = (i76) mapB.get(k76Var.a);
                            pw5 pw5Var = i76Var != null ? new pw5(k76Var, i76Var) : null;
                            if (pw5Var != null) {
                                arrayList.add(pw5Var);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            z = true;
                        } else {
                            Iterator it = arrayList.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    pw5 pw5Var2 = (pw5) it.next();
                                    k76 k76Var2 = (k76) pw5Var2.a;
                                    i76 i76Var2 = (i76) pw5Var2.b;
                                    boolean zD = pe4.d(j76Var.a(), k76Var2.a);
                                    int i2 = k76Var2.b;
                                    if (zD) {
                                        if (i2 != i76Var2.a || !pe4.d((String) j76Var.d.getValue(), i76Var2.b)) {
                                        }
                                    } else if (i2 != i76Var2.a) {
                                    }
                                } else {
                                    z = true;
                                }
                            }
                        }
                    }
                    if (z) {
                        Log.d("FirebaseSessions", "Cold app start detected");
                    }
                } else {
                    Log.d("FirebaseSessions", "No process data map");
                    z = true;
                }
                boolean zD2 = kd7Var.d(q87Var);
                if (z) {
                    mapB = j76Var.b(pv2.a);
                } else if (zD2) {
                    mapB = j76Var.b(mapB);
                }
                u87 u87Var = z ? null : q87Var.a;
                if (!zE && !z) {
                    return zD2 ? q87.a(q87Var, null, null, j76Var.b(mapB), 3) : q87Var;
                }
                u87 u87VarA = kd7Var.b.a(u87Var);
                a97 a97Var = kd7Var.c;
                l73.v(l73.c(a97Var.e), null, new y87(a97Var, u87VarA, null), 3);
                j76Var.f = true;
                return new q87(u87VarA, null, mapB);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w54(kd7 kd7Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = kd7Var;
    }
}
