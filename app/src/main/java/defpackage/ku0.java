package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ku0 extends w5 {
    public final /* synthetic */ u35 d;

    public ku0(u35 u35Var) {
        this.d = u35Var;
    }

    @Override // defpackage.w5
    public final void d(View view, m6 m6Var) {
        AccessibilityNodeInfo accessibilityNodeInfo = m6Var.a;
        this.a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        if (!this.d.r) {
            accessibilityNodeInfo.setDismissable(false);
        } else {
            m6Var.a(1048576);
            accessibilityNodeInfo.setDismissable(true);
        }
    }

    @Override // defpackage.w5
    public final boolean g(View view, int i, Bundle bundle) {
        if (i == 1048576) {
            u35 u35Var = this.d;
            if (u35Var.r) {
                u35Var.cancel();
                return true;
            }
        }
        return super.g(view, i, bundle);
    }
}
