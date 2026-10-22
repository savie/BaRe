package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tl7 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ vl7 a;

    public tl7(vl7 vl7Var) {
        this.a = vl7Var;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        vl7 vl7Var = this.a;
        uc5 uc5Var = vl7Var.p;
        if (!vl7Var.a() || uc5Var.Q) {
            return;
        }
        View view = vl7Var.y;
        if (view == null || !view.isShown()) {
            vl7Var.dismiss();
        } else {
            uc5Var.b();
        }
    }
}
