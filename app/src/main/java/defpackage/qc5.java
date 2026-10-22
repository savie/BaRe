package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class qc5 {
    public final Context a;
    public final fc5 b;
    public final boolean c;
    public final int d;
    public final int e;
    public View f;
    public boolean h;
    public vc5 i;
    public oc5 j;
    public PopupWindow.OnDismissListener k;
    public int g = 8388611;
    public final pc5 l = new pc5(this, 0);

    public qc5(int i, int i2, fc5 fc5Var, Context context, View view, boolean z) {
        this.a = context;
        this.b = fc5Var;
        this.f = view;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public final oc5 a() {
        oc5 vl7Var;
        if (this.j == null) {
            Context context = this.a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int iMin = Math.min(point.x, point.y);
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width);
            Context context2 = this.a;
            if (iMin >= dimensionPixelSize) {
                vl7Var = new b31(context2, this.f, this.d, this.e, this.c);
            } else {
                View view = this.f;
                vl7Var = new vl7(this.d, this.e, this.b, context2, view, this.c);
            }
            vl7Var.n(this.b);
            vl7Var.t(this.l);
            vl7Var.p(this.f);
            vl7Var.i(this.i);
            vl7Var.q(this.h);
            vl7Var.r(this.g);
            this.j = vl7Var;
        }
        return this.j;
    }

    public final boolean b() {
        oc5 oc5Var = this.j;
        return oc5Var != null && oc5Var.a();
    }

    public void c() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i, int i2, boolean z, boolean z2) {
        oc5 oc5VarA = a();
        oc5VarA.u(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.g, this.f.getLayoutDirection()) & 7) == 5) {
                i -= this.f.getWidth();
            }
            oc5VarA.s(i);
            oc5VarA.v(i2);
            int i3 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            oc5VarA.a = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        oc5VarA.b();
    }
}
