package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

public final class o44 implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final HideViewOnScrollBehavior a;
    public final View b;

    public o44(HideViewOnScrollBehavior behavior, View view) {
        this.a = behavior;
        this.b = view;
    }

    @Override
    public final void onTouchExplorationStateChanged(boolean enabled) {
        if (enabled && this.a.j == 1) {
            this.a.x(this.b);
        }
    }
}
