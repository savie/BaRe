package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gj8 implements lj6 {
    public final bw1 a;
    public final Object b;
    public final uq4 c;

    public gj8(bw1 bw1Var, uq4 uq4Var, Object obj) {
        this.a = bw1Var;
        this.b = obj;
        this.c = uq4Var;
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) {
        a(ev5Var, obj);
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) {
        return c(mc4Var, this.b);
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) throws kd5 {
        tr9 position = mc4Var.getPosition();
        String name = mc4Var.getName();
        bw1 bw1Var = this.a;
        if (bw1Var instanceof lj6) {
            return ((lj6) bw1Var).c(mc4Var, obj);
        }
        throw new kd5("Element '%s' is already used with %s at %s", name, this.c, position);
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) throws kd5 {
        tr9 position = mc4Var.getPosition();
        String name = mc4Var.getName();
        bw1 bw1Var = this.a;
        if (bw1Var instanceof lj6) {
            return ((lj6) bw1Var).d(mc4Var);
        }
        throw new kd5("Element '%s' declared twice at %s", name, position);
    }
}
