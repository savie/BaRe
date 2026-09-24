package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zm6 extends ml0 {
    public zm6(jv1 jv1Var) {
        super(jv1Var);
        if (jv1Var == null || jv1Var.getContext() == lv2.a) {
            return;
        }
        c6.f("Coroutines with restricted suspension must have EmptyCoroutineContext");
        throw null;
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return lv2.a;
    }
}
