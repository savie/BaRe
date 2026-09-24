package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j44 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ HideBottomViewOnScrollBehavior a;

    public j44(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.a = hideBottomViewOnScrollBehavior;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = this.a;
        i44 i44Var = hideBottomViewOnScrollBehavior.h;
        if (i44Var == null || (accessibilityManager = hideBottomViewOnScrollBehavior.g) == null) {
            return;
        }
        accessibilityManager.removeTouchExplorationStateChangeListener(i44Var);
        hideBottomViewOnScrollBehavior.h = null;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
