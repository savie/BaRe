package defpackage;

import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dp implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ fp a;

    public dp(fp fpVar) {
        this.a = fpVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        fp fpVar = this.a;
        ip ipVar = fpVar.Y;
        if (!ipVar.isAttachedToWindow() || !ipVar.getGlobalVisibleRect(fpVar.W)) {
            fpVar.dismiss();
        } else {
            fpVar.s();
            fpVar.b();
        }
    }
}
