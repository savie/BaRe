package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class kv1 extends ml0 {
    private final ox1 _context;
    private transient jv1 intercepted;

    public kv1(jv1 jv1Var) {
        this(jv1Var, jv1Var != null ? jv1Var.getContext() : null);
    }

    @Override // defpackage.jv1
    public ox1 getContext() {
        ox1 ox1Var = this._context;
        ox1Var.getClass();
        return ox1Var;
    }

    public final jv1 intercepted() {
        jv1 jv1Var = this.intercepted;
        if (jv1Var != null) {
            return jv1Var;
        }
        rx1 rx1Var = (rx1) getContext().get(lv1.b);
        jv1 ym2Var = rx1Var != null ? new ym2(rx1Var, this) : this;
        this.intercepted = ym2Var;
        return ym2Var;
    }

    @Override // defpackage.ml0
    public void releaseIntercepted() {
        jv1 jv1Var = this.intercepted;
        if (jv1Var != null && jv1Var != this) {
            mx1 mx1Var = getContext().get(lv1.b);
            mx1Var.getClass();
            ym2 ym2Var = (ym2) jv1Var;
            ym2Var.k();
            o21 o21VarM = ym2Var.m();
            if (o21VarM != null) {
                o21VarM.o();
            }
        }
        this.intercepted = kn1.a;
    }

    public kv1(jv1 jv1Var, ox1 ox1Var) {
        super(jv1Var);
        this._context = ox1Var;
    }
}
