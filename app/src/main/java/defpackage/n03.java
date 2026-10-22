package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.jcraft.jsch.SftpATTRS;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n03 extends zq8 {
    public final /* synthetic */ o03 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n03(o03 o03Var) {
        super(1);
        this.c = o03Var;
    }

    @Override // defpackage.zq8
    public final boolean A(int i, int i2, Bundle bundle) {
        int i3;
        o03 o03Var = this.c;
        View view = o03Var.i;
        if (i == -1) {
            return view.performAccessibilityAction(i2, bundle);
        }
        if (i2 == 1) {
            return o03Var.v(i);
        }
        if (i2 == 2) {
            return o03Var.j(i);
        }
        if (i2 != 64) {
            if (i2 != 128) {
                return o03Var.r(i, i2, bundle);
            }
            if (o03Var.k != i) {
                return false;
            }
            o03Var.k = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            view.invalidate();
            o03Var.w(i, 65536);
            return true;
        }
        AccessibilityManager accessibilityManager = o03Var.h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = o03Var.k) == i) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            o03Var.k = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            view.invalidate();
            o03Var.w(i3, 65536);
        }
        o03Var.k = i;
        view.invalidate();
        o03Var.w(i, 32768);
        return true;
    }

    @Override // defpackage.zq8
    public final m6 s(int i) {
        return new m6(AccessibilityNodeInfo.obtain(this.c.q(i).a));
    }

    @Override // defpackage.zq8
    public final m6 t(int i) {
        o03 o03Var = this.c;
        int i2 = i == 2 ? o03Var.k : o03Var.l;
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return s(i2);
    }
}
