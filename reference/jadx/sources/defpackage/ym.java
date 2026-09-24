package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ym implements bt5 {
    public final /* synthetic */ zm a;

    public ym(zm zmVar) {
        this.a = zmVar;
    }

    @Override // defpackage.bt5
    public final void a(io1 io1Var) {
        zm zmVar = this.a;
        nn delegate = zmVar.getDelegate();
        delegate.a();
        zmVar.getSavedStateRegistry().c("androidx:appcompat");
        delegate.d();
    }
}
