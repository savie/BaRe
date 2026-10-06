package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.listitem.ListItemLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fx4 extends View.AccessibilityDelegate {
    public final /* synthetic */ ListItemLayout a;

    public fx4(ListItemLayout listItemLayout) {
        this.a = listItemLayout;
    }

    public static void a(ix4 ix4Var, m6 m6Var) {
        if (ix4Var != null) {
            for (int i = 0; i < ix4Var.getChildCount(); i++) {
                View childAt = ix4Var.getChildAt(i);
                if (childAt.isClickable() && childAt.getContentDescription() != null && childAt.isEnabled() && childAt.getVisibility() == 0) {
                    m6Var.b(new g6(childAt.getId(), childAt.getContentDescription()));
                }
            }
        }
    }

    public static boolean b(ix4 ix4Var, int i) {
        if (ix4Var != null) {
            for (int i2 = 0; i2 < ix4Var.getChildCount(); i2++) {
                View childAt = ix4Var.getChildAt(i2);
                if (childAt.getId() == i) {
                    return childAt.performClick();
                }
            }
        }
        return false;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        m6 m6Var = new m6(accessibilityNodeInfo);
        ListItemLayout listItemLayout = this.a;
        a(listItemLayout.k, m6Var);
        a(listItemLayout.n, m6Var);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        ListItemLayout listItemLayout = this.a;
        if (b(listItemLayout.k, i) || b(listItemLayout.n, i)) {
            return true;
        }
        return super.performAccessibilityAction(view, i, bundle);
    }
}
