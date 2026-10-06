package defpackage;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uc5 extends ky4 implements hc5 {
    public static final Method V;
    public zq8 U;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                V = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // defpackage.hc5
    public final void d(fc5 fc5Var, MenuItem menuItem) {
        zq8 zq8Var = this.U;
        if (zq8Var != null) {
            zq8Var.d(fc5Var, menuItem);
        }
    }

    @Override // defpackage.hc5
    public final void j(fc5 fc5Var, ic5 ic5Var) {
        zq8 zq8Var = this.U;
        if (zq8Var != null) {
            zq8Var.j(fc5Var, ic5Var);
        }
    }

    @Override // defpackage.ky4
    public final bq2 q(Context context, boolean z) {
        tc5 tc5Var = new tc5(context, z);
        tc5Var.setHoverListener(this);
        return tc5Var;
    }
}
