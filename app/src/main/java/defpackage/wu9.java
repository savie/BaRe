package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wu9 extends ks9 {
    public final /* synthetic */ tv9 n;

    public wu9(tv9 tv9Var) {
        this.n = tv9Var;
    }

    @Override // defpackage.ks9
    public final String a() {
        ct9 ct9Var = (ct9) this.n.a.get();
        return ct9Var == null ? "Completer object has been garbage collected, future will fail soon" : eq3.k("tag=[", String.valueOf(ct9Var.a), "]");
    }
}
