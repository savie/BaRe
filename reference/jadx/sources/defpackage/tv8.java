package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tv8 {
    public static final tv8 b;
    public final qv8 a;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            b = ov8.w;
        } else if (i >= 30) {
            b = mv8.v;
        } else {
            b = qv8.b;
        }
    }

    public tv8(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 35) {
            this.a = new pv8(this, windowInsets);
            return;
        }
        if (i >= 34) {
            this.a = new ov8(this, windowInsets);
            return;
        }
        if (i >= 31) {
            this.a = new nv8(this, windowInsets);
            return;
        }
        if (i >= 30) {
            this.a = new mv8(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.a = new lv8(this, windowInsets);
        } else if (i >= 28) {
            this.a = new kv8(this, windowInsets);
        } else {
            this.a = new jv8(this, windowInsets);
        }
    }

    public static vc4 e(vc4 vc4Var, int i, int i2, int i3, int i4) {
        int iMax = Math.max(0, vc4Var.a - i);
        int iMax2 = Math.max(0, vc4Var.b - i2);
        int iMax3 = Math.max(0, vc4Var.c - i3);
        int iMax4 = Math.max(0, vc4Var.d - i4);
        return (iMax == i && iMax2 == i2 && iMax3 == i3 && iMax4 == i4) ? vc4Var : vc4.c(iMax, iMax2, iMax3, iMax4);
    }

    public static tv8 h(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        tv8 tv8Var = new tv8(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = dl8.a;
            tv8 tv8VarA = vk8.a(view);
            qv8 qv8Var = tv8Var.a;
            qv8Var.v(tv8VarA);
            View rootView = view.getRootView();
            qv8Var.d(rootView);
            qv8Var.o(rootView);
            qv8Var.p();
            qv8Var.x(view.getWindowSystemUiVisibility());
        }
        return tv8Var;
    }

    public final int a() {
        return this.a.m().d;
    }

    public final int b() {
        return this.a.m().a;
    }

    public final int c() {
        return this.a.m().c;
    }

    public final int d() {
        return this.a.m().b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof tv8) {
            return Objects.equals(this.a, ((tv8) obj).a);
        }
        return false;
    }

    public final tv8 f(int i, int i2, int i3, int i4) {
        hv8 bv8Var;
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 36) {
            bv8Var = new gv8(this);
        } else if (i5 >= 35) {
            bv8Var = new fv8(this);
        } else if (i5 >= 34) {
            bv8Var = new ev8(this);
        } else if (i5 >= 31) {
            bv8Var = new dv8(this);
        } else if (i5 >= 30) {
            bv8Var = new cv8(this);
        } else {
            bv8Var = i5 >= 29 ? new bv8(this) : new zu8(this);
        }
        bv8Var.h(vc4.c(i, i2, i3, i4));
        return bv8Var.b();
    }

    public final WindowInsets g() {
        qv8 qv8Var = this.a;
        if (qv8Var instanceof iv8) {
            return ((iv8) qv8Var).c;
        }
        return null;
    }

    public final int hashCode() {
        qv8 qv8Var = this.a;
        if (qv8Var == null) {
            return 0;
        }
        return qv8Var.hashCode();
    }

    public tv8() {
        this.a = new qv8(this);
    }
}
