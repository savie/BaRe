package androidx.fragment.app;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {
    public final /* synthetic */ o a;

    public /* synthetic */ i(o oVar) {
        this.a = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o oVar = this.a;
        f0 f0Var = oVar.mViewLifecycleOwner;
        f0Var.f.u(oVar.mSavedViewRegistryState);
        oVar.mSavedViewRegistryState = null;
    }
}
