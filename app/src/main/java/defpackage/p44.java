package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p44 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ HideViewOnScrollBehavior a;

    public p44(HideViewOnScrollBehavior hideViewOnScrollBehavior) {
        this.a = hideViewOnScrollBehavior;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        HideViewOnScrollBehavior hideViewOnScrollBehavior = this.a;
        o44 o44Var = hideViewOnScrollBehavior.c;
        if (o44Var == null || (accessibilityManager = hideViewOnScrollBehavior.b) == null) {
            return;
        }
        accessibilityManager.removeTouchExplorationStateChangeListener(o44Var);
        hideViewOnScrollBehavior.c = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
