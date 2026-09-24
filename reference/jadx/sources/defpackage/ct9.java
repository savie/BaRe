package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ct9 {
    public Object a;
    public tv9 b;
    public xx9 c;
    public boolean d;

    public final void a(Object obj) {
        this.d = true;
        tv9 tv9Var = this.b;
        if (tv9Var != null) {
            wu9 wu9Var = tv9Var.b;
            wu9Var.getClass();
            if (obj == null) {
                obj = ks9.k;
            }
            if (ks9.f.S(wu9Var, null, obj)) {
                ks9.b(wu9Var);
                this.a = null;
                this.b = null;
                this.c = null;
            }
        }
    }

    public final void finalize() {
        xx9 xx9Var;
        tv9 tv9Var = this.b;
        if (tv9Var != null) {
            wu9 wu9Var = tv9Var.b;
            if (!wu9Var.isDone()) {
                if (ks9.f.S(wu9Var, null, new kj9(new b5("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.a)), 1)))) {
                    ks9.b(wu9Var);
                }
            }
        }
        if (this.d || (xx9Var = this.c) == null) {
            return;
        }
        xx9Var.g(null);
    }
}
