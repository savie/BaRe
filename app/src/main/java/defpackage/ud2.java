package defpackage;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ud2 {
    public final Class a;
    public final List b;
    public final am6 c;
    public final d36 d;
    public final String e;

    public ud2(Class cls, Class cls2, Class cls3, List list, am6 am6Var, d36 d36Var) {
        this.a = cls;
        this.b = list;
        this.c = am6Var;
        this.d = d36Var;
        this.e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final ll6 a(int i, int i2, za2 za2Var, rd2 rd2Var, ou5 ou5Var) {
        ll6 ll6VarA;
        l98 l98Var;
        int iQ;
        tl6 tl6VarA;
        ll6 ll6Var;
        boolean z;
        Object ia2Var;
        String str;
        d36 d36Var = this.d;
        Object objD = d36Var.d();
        ms8.j(objD, "Argument must not be null");
        List list = (List) objD;
        try {
            ll6 ll6VarB = b(za2Var, i, i2, ou5Var, list);
            d36Var.c(list);
            td2 td2Var = (td2) rd2Var.b;
            int i3 = rd2Var.a;
            qd2 qd2Var = td2Var.a;
            Class<?> cls = ll6VarB.get().getClass();
            if (i3 != 4) {
                l98 l98VarE = qd2Var.e(cls);
                l98Var = l98VarE;
                ll6VarA = l98VarE.a(td2Var.n, ll6VarB, td2Var.t, td2Var.x);
            } else {
                ll6VarA = ll6VarB;
                l98Var = null;
            }
            if (!ll6VarB.equals(ll6VarA)) {
                ll6VarB.b();
            }
            if (qd2Var.c.a().d.a(ll6VarA.d()) != null) {
                tl6VarA = qd2Var.c.a().d.a(ll6VarA.d());
                if (tl6VarA == null) {
                    throw new ki6(ll6VarA.d());
                }
                iQ = tl6VarA.q(td2Var.G);
            } else {
                iQ = 3;
                tl6VarA = null;
            }
            jo4 jo4Var = td2Var.M;
            ArrayList arrayListB = qd2Var.b();
            int size = arrayListB.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    ll6Var = null;
                    z = false;
                    break;
                }
                ll6Var = null;
                if (((bh5) arrayListB.get(i4)).a.equals(jo4Var)) {
                    z = true;
                    break;
                }
                i4++;
            }
            if (td2Var.y.d(i3, iQ, !z)) {
                if (tl6VarA == null) {
                    throw new ki6(ll6VarA.get().getClass());
                }
                int iA = dj7.A(iQ);
                if (iA == 0) {
                    ia2Var = new ia2(td2Var.M, td2Var.p);
                } else {
                    if (iA != 1) {
                        if (iQ == 1) {
                            str = "SOURCE";
                        } else if (iQ != 2) {
                            str = iQ != 3 ? "null" : "NONE";
                        } else {
                            str = "TRANSFORMED";
                        }
                        c6.f("Unknown strategy: ".concat(str));
                        return ll6Var;
                    }
                    ia2Var = new pl6(qd2Var.c.a, td2Var.M, td2Var.p, td2Var.t, td2Var.x, l98Var, cls, td2Var.G);
                }
                z05 z05Var = (z05) z05.e.d();
                z05Var.d = false;
                z05Var.c = true;
                z05Var.b = ll6VarA;
                x00 x00Var = td2Var.f;
                x00Var.b = ia2Var;
                x00Var.c = tl6VarA;
                x00Var.d = z05Var;
                ll6VarA = z05Var;
            }
            return this.c.m(ll6VarA, ou5Var);
        } catch (Throwable th) {
            d36Var.c(list);
            throw th;
        }
    }

    public final ll6 b(za2 za2Var, int i, int i2, ou5 ou5Var, List list) throws fy3 {
        List list2 = this.b;
        int size = list2.size();
        ll6 ll6VarB = null;
        for (int i3 = 0; i3 < size; i3++) {
            ql6 ql6Var = (ql6) list2.get(i3);
            try {
                if (ql6Var.a(za2Var.l(), ou5Var)) {
                    ll6VarB = ql6Var.b(za2Var.l(), i, i2, ou5Var);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + ql6Var, e);
                }
                list.add(e);
            }
            if (ll6VarB != null) {
                break;
            }
        }
        if (ll6VarB != null) {
            return ll6VarB;
        }
        throw new fy3(this.e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.a + ", decoders=" + this.b + ", transcoder=" + this.c + '}';
    }
}
