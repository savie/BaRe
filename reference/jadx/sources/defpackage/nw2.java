package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nw2 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ pw2 a;

    public nw2(pw2 pw2Var) {
        this.a = pw2Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        pw2 pw2Var = this.a;
        AccessibilityManager accessibilityManager = pw2Var.L;
        if (pw2Var.M == null || accessibilityManager == null || !pw2Var.isAttachedToWindow()) {
            return;
        }
        accessibilityManager.addTouchExplorationStateChangeListener(pw2Var.M);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        pw2 pw2Var = this.a;
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = pw2Var.M;
        if (touchExplorationStateChangeListener == null || (accessibilityManager = pw2Var.L) == null) {
            return;
        }
        accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
    }
}
