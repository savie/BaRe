package defpackage;

import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yo implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ ip a;

    public yo(ip ipVar) {
        this.a = ipVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ip ipVar = this.a;
        if (!ipVar.getInternalPopup().a()) {
            ipVar.f.n(ipVar.getTextDirection(), ipVar.getTextAlignment());
        }
        ViewTreeObserver viewTreeObserver = ipVar.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        }
    }
}
