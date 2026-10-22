package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu4 implements vn5 {
    public final ai5 a;
    public final nb4 b;
    public final int c;
    public final boolean d;

    public nu4(oc6 oc6Var) {
        this.a = new ai5(oc6Var);
        this.b = oc6Var.e;
        throw new IllegalArgumentException("Cannot get limit if limit has not been set");
    }

    @Override // defpackage.vn5
    public final zq8 f() {
        return (zq8) this.a.b;
    }

    @Override // defpackage.vn5
    public final boolean g() {
        return true;
    }

    @Override // defpackage.vn5
    public final nb4 getIndex() {
        return this.b;
    }

    @Override // defpackage.vn5
    public final sb4 i(sb4 sb4Var, m61 m61Var, qn5 qn5Var, gy5 gy5Var, un5 un5Var, vk9 vk9Var) {
        hk5 hk5Var;
        hk5 hk5Var2 = new hk5(m61Var, qn5Var);
        ai5 ai5Var = this.a;
        qn5 qn5Var2 = !ai5Var.u(hk5Var2) ? qv2.e : qn5Var;
        qn5 qn5Var3 = sb4Var.a;
        if (qn5Var3.m(m61Var).equals(qn5Var2)) {
            return sb4Var;
        }
        int iZ = qn5Var3.z();
        int i = this.c;
        if (iZ < i) {
            return ((zq8) ai5Var.b).i(sb4Var, m61Var, qn5Var2, gy5Var, un5Var, vk9Var);
        }
        qn5 qn5Var4 = qn5Var2;
        int iCompare = 1;
        zm5.s(qn5Var3.z() == i);
        hk5 hk5Var3 = new hk5(m61Var, qn5Var4);
        hk5 hk5Var4 = null;
        boolean z = this.d;
        if (z) {
            if (qn5Var3 instanceof q61) {
                sb4Var.c();
                if (x13.m(sb4Var.b, sb4.d)) {
                    m61 m61Var2 = (m61) ((q61) qn5Var3).a.g();
                    hk5Var = new hk5(m61Var2, qn5Var3.m(m61Var2));
                    hk5Var4 = hk5Var;
                } else {
                    hk5Var4 = (hk5) sb4Var.b.a.g();
                }
            }
        } else if (qn5Var3 instanceof q61) {
            sb4Var.c();
            if (x13.m(sb4Var.b, sb4.d)) {
                m61 m61Var3 = (m61) ((q61) qn5Var3).a.f();
                hk5Var = new hk5(m61Var3, qn5Var3.m(m61Var3));
                hk5Var4 = hk5Var;
            } else {
                hk5Var4 = (hk5) sb4Var.b.a.f();
            }
        }
        boolean zU = ai5Var.u(hk5Var3);
        boolean zC0 = qn5Var3.c0(m61Var);
        nb4 nb4Var = this.b;
        if (!zC0) {
            if (qn5Var4.isEmpty() || !zU) {
                return sb4Var;
            }
            if ((z ? nb4Var.compare(hk5Var3, hk5Var4) : nb4Var.compare(hk5Var4, hk5Var3)) < 0) {
                return sb4Var;
            }
            if (vk9Var != null) {
                vk9Var.p(new k31(1, sb4.d(hk5Var4.b), hk5Var4.a, null, null));
                vk9Var.p(new k31(2, sb4.d(qn5Var4), m61Var, null, null));
            }
            return sb4Var.e(m61Var, qn5Var4).e(hk5Var4.a, qv2.e);
        }
        qn5 qn5VarM = qn5Var3.m(m61Var);
        hk5 hk5VarH = un5Var.h(nb4Var, hk5Var4, z);
        while (hk5VarH != null) {
            m61 m61Var4 = hk5VarH.a;
            if (!m61Var4.equals(m61Var) && !qn5Var3.c0(m61Var4)) {
                break;
            }
            hk5VarH = un5Var.h(nb4Var, hk5VarH, z);
        }
        if (hk5VarH != null) {
            iCompare = z ? nb4Var.compare(hk5Var3, hk5VarH) : nb4Var.compare(hk5VarH, hk5Var3);
        }
        if (zU && !qn5Var4.isEmpty() && iCompare >= 0) {
            if (vk9Var != null) {
                vk9Var.p(new k31(4, sb4.d(qn5Var4), m61Var, null, sb4.d(qn5VarM)));
            }
            return sb4Var.e(m61Var, qn5Var4);
        }
        if (vk9Var != null) {
            vk9Var.p(new k31(1, sb4.d(qn5VarM), m61Var, null, null));
        }
        sb4 sb4VarE = sb4Var.e(m61Var, qv2.e);
        if (hk5VarH == null) {
            return sb4VarE;
        }
        qn5 qn5Var5 = hk5VarH.b;
        m61 m61Var5 = hk5VarH.a;
        if (!ai5Var.u(hk5VarH)) {
            return sb4VarE;
        }
        if (vk9Var != null) {
            vk9Var.p(new k31(2, sb4.d(qn5Var5), m61Var5, null, null));
        }
        return sb4VarE.e(m61Var5, qn5Var5);
    }

    @Override // defpackage.vn5
    public final sb4 l(sb4 sb4Var, sb4 sb4Var2, vk9 vk9Var) {
        sb4 sb4Var3;
        Iterator it;
        hk5 hk5Var;
        hk5 hk5Var2;
        int i;
        qn5 qn5Var = sb4Var2.a;
        boolean Z = qn5Var.Z();
        nb4 nb4Var = this.b;
        ai5 ai5Var = this.a;
        if (Z || qn5Var.isEmpty()) {
            sb4Var3 = new sb4(qv2.e, nb4Var);
        } else {
            sb4Var3 = new sb4(sb4Var2.a.q(qv2.e), sb4Var2.c, sb4Var2.b);
            if (this.d) {
                sb4Var2.c();
                it = x13.m(sb4Var2.b, sb4.d) ? qn5Var.k0() : new qa4(sb4Var2.b.a.k0());
                hk5Var = (hk5) ai5Var.e;
                hk5Var2 = (hk5) ai5Var.d;
                i = -1;
            } else {
                it = sb4Var2.iterator();
                hk5Var = (hk5) ai5Var.d;
                hk5Var2 = (hk5) ai5Var.e;
                i = 1;
            }
            boolean z = false;
            int i2 = 0;
            while (it.hasNext()) {
                hk5 hk5Var3 = (hk5) it.next();
                if (!z && nb4Var.compare(hk5Var, hk5Var3) * i <= 0) {
                    z = true;
                }
                if (!z || i2 >= this.c || nb4Var.compare(hk5Var3, hk5Var2) * i > 0) {
                    sb4Var3 = sb4Var3.e(hk5Var3.a, qv2.e);
                } else {
                    i2++;
                }
            }
        }
        ((zq8) ai5Var.b).l(sb4Var, sb4Var3, vk9Var);
        return sb4Var3;
    }

    @Override // defpackage.vn5
    public final sb4 c(sb4 sb4Var, qn5 qn5Var) {
        return sb4Var;
    }
}
