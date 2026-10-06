package defpackage;

import android.content.res.ColorStateList;
import android.os.Build;
import android.view.View;
import android.view.Window;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nu0 extends eu0 {
    public final Boolean a;
    public final tv8 b;
    public Window c;
    public boolean d;

    public nu0(View view, tv8 tv8Var) {
        this.b = tv8Var;
        c95 c95Var = BottomSheetBehavior.C(view).j;
        ColorStateList backgroundTintList = c95Var != null ? c95Var.b.c : view.getBackgroundTintList();
        boolean z = false;
        if (backgroundTintList != null) {
            int defaultColor = backgroundTintList.getDefaultColor();
            if (defaultColor != 0 && xl1.d(defaultColor) > 0.5d) {
                z = true;
            }
            this.a = Boolean.valueOf(z);
            return;
        }
        ColorStateList colorStateListD = du.d(view.getBackground());
        Integer numValueOf = colorStateListD != null ? Integer.valueOf(colorStateListD.getDefaultColor()) : null;
        if (numValueOf == null) {
            this.a = null;
            return;
        }
        int iIntValue = numValueOf.intValue();
        if (iIntValue != 0 && xl1.d(iIntValue) > 0.5d) {
            z = true;
        }
        this.a = Boolean.valueOf(z);
    }

    @Override // defpackage.eu0
    public final void a(View view) {
        d(view);
    }

    @Override // defpackage.eu0
    public final void b(View view) {
        d(view);
    }

    @Override // defpackage.eu0
    public final void c(View view, int i) {
        d(view);
    }

    public final void d(View view) {
        y13 vv8Var;
        y13 vv8Var2;
        int top = view.getTop();
        tv8 tv8Var = this.b;
        if (top < tv8Var.d()) {
            Window window = this.c;
            if (window != null) {
                Boolean bool = this.a;
                boolean zBooleanValue = bool == null ? this.d : bool.booleanValue();
                ge geVar = new ge(window.getDecorView());
                int i = Build.VERSION.SDK_INT;
                if (i >= 35) {
                    vv8Var2 = new xv8(window, geVar);
                } else {
                    vv8Var2 = i >= 30 ? new vv8(window, geVar) : new uv8(window, geVar);
                }
                vv8Var2.C(zBooleanValue);
            }
            view.setPadding(view.getPaddingLeft(), tv8Var.d() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            return;
        }
        if (view.getTop() != 0) {
            Window window2 = this.c;
            if (window2 != null) {
                boolean z = this.d;
                ge geVar2 = new ge(window2.getDecorView());
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 35) {
                    vv8Var = new xv8(window2, geVar2);
                } else {
                    vv8Var = i2 >= 30 ? new vv8(window2, geVar2) : new uv8(window2, geVar2);
                }
                vv8Var.C(z);
            }
            view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    public final void e(Window window) {
        y13 vv8Var;
        if (this.c == window) {
            return;
        }
        this.c = window;
        if (window != null) {
            ge geVar = new ge(window.getDecorView());
            int i = Build.VERSION.SDK_INT;
            if (i >= 35) {
                vv8Var = new xv8(window, geVar);
            } else {
                vv8Var = i >= 30 ? new vv8(window, geVar) : new uv8(window, geVar);
            }
            this.d = vv8Var.q();
        }
    }
}
