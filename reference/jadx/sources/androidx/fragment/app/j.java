package androidx.fragment.app;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Runnable {
    public final /* synthetic */ o a;

    public j(o oVar) {
        this.a = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o oVar = this.a;
        if (oVar.mAnimationInfo != null) {
            oVar.e().getClass();
        }
    }
}
