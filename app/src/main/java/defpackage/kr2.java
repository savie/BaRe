package defpackage;

import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import com.google.android.material.internal.CheckableImageButton;

public final class kr2 implements AccessibilityManager.TouchExplorationStateChangeListener {
    public final lr2 a;
    public kr2(lr2 lr2Var) { this.a = lr2Var; }

    @Override
    public final void onTouchExplorationStateChanged(boolean z) {
        lr2 lr2Var = this.a;
        AutoCompleteTextView autoCompleteTextView = lr2Var.h;
        if (autoCompleteTextView == null) {
            return;
        }
        if (autoCompleteTextView.getInputType() != 0) {
            return;
        }
        CheckableImageButton checkableImageButton = lr2Var.d;
        checkableImageButton.setImportantForAccessibility(z ? 2 : 1);
    }
}
