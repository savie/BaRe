package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class qh4 extends ci4 {
    public final boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qh4(oh4 oh4Var) {
        super(true);
        boolean z = true;
        C(oh4Var);
        g61 g61VarY = y();
        h61 h61Var = g61VarY instanceof h61 ? (h61) g61VarY : null;
        if (h61Var == null) {
            z = false;
            break;
        }
        ci4 ci4VarO = h61Var.o();
        while (!ci4VarO.v()) {
            g61 g61VarY2 = ci4VarO.y();
            h61 h61Var2 = g61VarY2 instanceof h61 ? (h61) g61VarY2 : null;
            if (h61Var2 == null) {
                z = false;
                break;
            }
            ci4VarO = h61Var2.o();
        }
        this.e = z;
    }

    @Override // defpackage.ci4
    public final boolean v() {
        return this.e;
    }

    @Override // defpackage.ci4
    public final boolean w() {
        return true;
    }
}
