package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lg2 extends at4 {
    public final Map c;

    public lg2(Map map, qn5 qn5Var) {
        super(qn5Var);
        this.c = map;
    }

    @Override // defpackage.at4
    public final /* bridge */ /* synthetic */ int c(at4 at4Var) {
        return 0;
    }

    @Override // defpackage.at4
    public final int d() {
        return 1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof lg2)) {
            return false;
        }
        lg2 lg2Var = (lg2) obj;
        return this.c.equals(lg2Var.c) && this.a.equals(lg2Var.a);
    }

    @Override // defpackage.qn5
    public final Object getValue() {
        return this.c;
    }

    public final int hashCode() {
        return this.a.hashCode() + this.c.hashCode();
    }

    @Override // defpackage.qn5
    public final qn5 q(qn5 qn5Var) {
        zm5.s(xh8.v(qn5Var));
        return new lg2(this.c, qn5Var);
    }

    @Override // defpackage.qn5
    public final String v(int i) {
        return e(i) + "deferredValue:" + this.c;
    }
}
