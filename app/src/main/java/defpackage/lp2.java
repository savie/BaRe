package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lp2 extends w5 {
    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        int[] iArr = DrawerLayout.U;
        WeakHashMap weakHashMap = dl8.a;
        if (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) {
            accessibilityNodeInfo.setParent(null);
        }
    }
}
