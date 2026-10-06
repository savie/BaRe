package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rp5 implements do4 {
    public final do4 a;
    public final q77 b;

    public rp5(do4 do4Var) {
        do4Var.getClass();
        this.a = do4Var;
        this.b = new q77(do4Var.d());
    }

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        if (np7Var.g()) {
            return np7Var.j(this.a);
        }
        return null;
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        if (obj != null) {
            op7Var.i(this.a, obj);
        } else {
            op7Var.f();
        }
    }

    @Override // defpackage.do4
    public final p77 d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && rp5.class == obj.getClass() && pe4.d(this.a, ((rp5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
