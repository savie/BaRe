package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ba5 {
    public final ea5 a;

    public ba5(ea5 ea5Var) {
        this.a = ea5Var;
    }

    public final ni1 a(gh ghVar) {
        fl4 fl4Var = new fl4();
        fl4Var.u("a", "uq");
        fl4Var.t("xfer", 1);
        fl4Var.t("strg", 1);
        fl4Var.t("src", -1);
        fl4Var.t("v", 2);
        fl4 fl4VarI = this.a.b(fl4Var, (String) ghVar.a, da5.READ_SAFE).i();
        qj4 qj4VarX = fl4VarI.x("cstrg");
        Long lValueOf = qj4VarX != null ? Long.valueOf(qj4VarX.l()) : null;
        qj4 qj4VarX2 = fl4VarI.x("mstrg");
        return new ni1(lValueOf, qj4VarX2 != null ? Long.valueOf(qj4VarX2.l()) : null);
    }
}
