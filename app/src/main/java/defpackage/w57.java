package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class w57 extends o3 implements zx1 {
    public final jv1 f;

    public w57(jv1 jv1Var, ox1 ox1Var) {
        super(ox1Var, true);
        this.f = jv1Var;
    }

    @Override // defpackage.ci4
    public final boolean F() {
        return true;
    }

    @Override // defpackage.zx1
    public final zx1 getCallerFrame() {
        jv1 jv1Var = this.f;
        if (jv1Var instanceof zx1) {
            return (zx1) jv1Var;
        }
        return null;
    }

    @Override // defpackage.ci4
    public void i(Object obj) throws xm2 {
        ly8.L(nc8.D(this.f), sz8.T(obj));
    }

    @Override // defpackage.ci4
    public void j(Object obj) {
        this.f.resumeWith(sz8.T(obj));
    }

    public void b0() {
    }
}
