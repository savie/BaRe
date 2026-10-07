package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;

public final class i44 implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final HideBottomViewOnScrollBehavior a;
    public final View b;

    public i44(HideBottomViewOnScrollBehavior behavior, View view) {
        this.a = behavior;
        this.b = view;
    }

    @Override
    public final void onTouchExplorationStateChanged(boolean enabled) {
        if (enabled && this.a.j == 1) {
            this.a.w(this.b);
        }
    }
}
