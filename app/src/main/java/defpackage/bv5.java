package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bv5 implements ev5 {
    public fv5 a;
    public l22 b;
    public iv5 c;
    public String d;
    public int e;

    @Override // defpackage.ev5
    public final int a() {
        return this.e;
    }

    @Override // defpackage.ev5
    public final x46 c() {
        return null;
    }

    @Override // defpackage.ev5
    public final void commit() throws sn5 {
        iv5 iv5Var = this.c;
        if (iv5Var.isEmpty()) {
            throw new sn5("No root node");
        }
        (iv5Var.size() <= 0 ? null : (ev5) iv5Var.get(0)).commit();
    }

    @Override // defpackage.ev5
    public final void g(boolean z) {
        if (z) {
            this.e = 1;
        } else {
            this.e = 2;
        }
    }

    @Override // defpackage.ev5
    public final xn5 getAttributes() {
        return this.a;
    }

    @Override // defpackage.pn5
    public final String getName() {
        return null;
    }

    @Override // defpackage.ev5
    public final ev5 getParent() {
        return null;
    }

    @Override // defpackage.ev5
    public final String getPrefix() {
        return null;
    }

    @Override // defpackage.pn5
    public final String getValue() {
        return this.d;
    }

    @Override // defpackage.ev5
    public final String h(boolean z) {
        return null;
    }

    @Override // defpackage.ev5
    public final ev5 i(String str) {
        return this.b.l(this, str);
    }

    @Override // defpackage.ev5
    public final boolean j() {
        return this.c.isEmpty();
    }

    @Override // defpackage.ev5
    public final void remove() throws sn5 {
        iv5 iv5Var = this.c;
        if (iv5Var.isEmpty()) {
            throw new sn5("No root node");
        }
        (iv5Var.size() <= 0 ? null : (ev5) iv5Var.get(0)).remove();
    }

    @Override // defpackage.ev5
    public final ev5 setAttribute(String str, String str2) {
        return this.a.A(str, str2);
    }

    @Override // defpackage.ev5
    public final void setValue(String str) {
        this.d = str;
    }

    @Override // defpackage.ev5
    public final void e(String str) {
    }

    @Override // defpackage.ev5
    public final void setName(String str) {
    }
}
