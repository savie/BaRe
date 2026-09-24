package defpackage;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class rs2 extends qs2 {
    @Override // defpackage.ps2
    public void b(mv7 mv7Var, mv7 mv7Var2, Window window, View view, boolean z, boolean z2) {
        y13 vv8Var;
        mv7Var.getClass();
        mv7Var2.getClass();
        window.getClass();
        view.getClass();
        w13.r(window, false);
        window.setStatusBarColor(mv7Var.a(z));
        window.setNavigationBarColor(mv7Var2.a(z2));
        window.setStatusBarContrastEnforced(false);
        window.setNavigationBarContrastEnforced(mv7Var2.c == 0);
        ge geVar = new ge(view);
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            vv8Var = new xv8(window, geVar);
        } else {
            vv8Var = i >= 30 ? new vv8(window, geVar) : new uv8(window, geVar);
        }
        vv8Var.C(!z);
        vv8Var.B(!z2);
    }
}
