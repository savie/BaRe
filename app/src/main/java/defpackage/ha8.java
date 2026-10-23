package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ha8 extends aa8 {
    public ia8 a;

    @Override // defpackage.aa8, defpackage.v98
    public final void a(y98 y98Var) {
        ia8 ia8Var = this.a;
        if (ia8Var.Z) {
            return;
        }
        ia8Var.M();
        ia8Var.Z = true;
    }

    @Override // defpackage.aa8, defpackage.v98
    public final void c(y98 y98Var) {
        ia8 ia8Var = this.a;
        int i = ia8Var.Y - 1;
        ia8Var.Y = i;
        if (i == 0) {
            ia8Var.Z = false;
            ia8Var.n();
        }
        y98Var.C(this);
    }
}
