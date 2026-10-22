package defpackage;

import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.microsoft.identity.common.internal.ui.DualScreenActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class os2 {
    public static final int a = Color.argb(230, 255, 255, 255);
    public static final int b = Color.argb(128, 27, 27, 27);
    public static ps2 c;

    public static final void a(DualScreenActivity dualScreenActivity, mv7 mv7Var, mv7 mv7Var2) {
        View decorView = dualScreenActivity.getWindow().getDecorView();
        decorView.getClass();
        ps2 qs2Var = c;
        if (qs2Var == null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 35) {
                qs2Var = new ts2();
            } else if (i >= 30) {
                qs2Var = new ss2();
            } else if (i >= 29) {
                qs2Var = new rs2();
            } else {
                qs2Var = i >= 28 ? new qs2() : new ps2();
            }
            c = qs2Var;
        }
        ps2 ps2Var = qs2Var;
        ms2 ms2Var = new ms2(ps2Var, mv7Var, mv7Var2, dualScreenActivity, decorView);
        ViewGroup viewGroup = (ViewGroup) decorView;
        int i2 = 0;
        while (true) {
            if (!(i2 < viewGroup.getChildCount())) {
                ns2 ns2Var = new ns2(ms2Var, viewGroup.getContext());
                ns2Var.setTag(ps2Var);
                ns2Var.setVisibility(8);
                ns2Var.setWillNotDraw(true);
                viewGroup.addView(ns2Var);
                break;
            }
            int i3 = i2 + 1;
            View childAt = viewGroup.getChildAt(i2);
            if (childAt == null) {
                l0.a();
                return;
            } else if (childAt.getTag() instanceof ps2) {
                break;
            } else {
                i2 = i3;
            }
        }
        ms2Var.run();
        Window window = dualScreenActivity.getWindow();
        window.getClass();
        ps2Var.a(window);
    }
}
