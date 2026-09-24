package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fl0 extends ss5 {
    public final /* synthetic */ bt3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fl0(boolean z, bt3 bt3Var) {
        super(z);
        this.a = bt3Var;
    }

    @Override // defpackage.ss5
    public final void handleOnBackPressed() {
        this.a.invoke();
    }
}
