package defpackage;

import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qv2 extends q61 {
    public static final qv2 e = new qv2();

    @Override // defpackage.q61, defpackage.qn5
    public final m61 D(m61 m61Var) {
        return null;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 O(m61 m61Var, qn5 qn5Var) {
        if (!qn5Var.isEmpty()) {
            m61 m61Var2 = m61.d;
            if (!m61Var.equals(m61Var2)) {
                oa4 r50Var = new r50(q61.d);
                boolean zEquals = m61Var.equals(m61Var2);
                qv2 qv2Var = e;
                if (!zEquals) {
                    if (r50Var.c(m61Var)) {
                        r50Var = r50Var.o(m61Var);
                    }
                    if (!qn5Var.isEmpty()) {
                        r50Var = r50Var.l(qn5Var, m61Var);
                    }
                    if (!r50Var.isEmpty()) {
                        return new q61(r50Var, qv2Var);
                    }
                } else if (!r50Var.isEmpty()) {
                    return new q61(r50Var, qn5Var);
                }
                return qv2Var;
            }
        }
        return this;
    }

    @Override // defpackage.q61, java.lang.Comparable
    /* JADX INFO: renamed from: c */
    public final int compareTo(qn5 qn5Var) {
        return qn5Var.isEmpty() ? 0 : -1;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final boolean c0(m61 m61Var) {
        return false;
    }

    @Override // defpackage.q61
    public final boolean equals(Object obj) {
        if (obj instanceof qv2) {
            return true;
        }
        if (!(obj instanceof qn5)) {
            return false;
        }
        qn5 qn5Var = (qn5) obj;
        return qn5Var.isEmpty() && equals(qn5Var.n());
    }

    @Override // defpackage.q61, defpackage.qn5
    public final Object g0(boolean z) {
        return null;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final Object getValue() {
        return null;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 h0(gy5 gy5Var, qn5 qn5Var) {
        return gy5Var.isEmpty() ? qn5Var : O(gy5Var.k(), h0(gy5Var.p(), qn5Var));
    }

    @Override // defpackage.q61
    public final int hashCode() {
        return 0;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final boolean isEmpty() {
        return true;
    }

    @Override // defpackage.q61, java.lang.Iterable
    public final Iterator iterator() {
        return Collections.EMPTY_LIST.iterator();
    }

    @Override // defpackage.q61, defpackage.qn5
    public final Iterator k0() {
        return Collections.EMPTY_LIST.iterator();
    }

    @Override // defpackage.q61, defpackage.qn5
    public final String r0() {
        return "";
    }

    @Override // defpackage.q61
    public final String toString() {
        return "<Empty Node>";
    }

    @Override // defpackage.q61, defpackage.qn5
    public final String v(int i) {
        return "";
    }

    @Override // defpackage.q61, defpackage.qn5
    public final int z() {
        return 0;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 n() {
        return this;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 U(gy5 gy5Var) {
        return this;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 m(m61 m61Var) {
        return this;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 q(qn5 qn5Var) {
        return this;
    }
}
