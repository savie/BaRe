package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c18 extends w5 {
    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setVisibleToUser(false);
    }
}
