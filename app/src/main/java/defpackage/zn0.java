package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zn0 extends w5 {
    public final /* synthetic */ fo0 d;

    public zn0(fo0 fo0Var) {
        this.d = fo0Var;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        m6Var.a(1048576);
        accessibilityNodeInfo.setDismissable(true);
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        if (i != 1048576) {
            return super.g(view, i, bundle);
        }
        ((qi7) this.d).a(3);
        return true;
    }
}
