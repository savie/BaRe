package defpackage;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.SnackbarContentLayout;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fo0 {
    public final int a;
    public final int b;
    public final int c;
    public final TimeInterpolator d;
    public final TimeInterpolator e;
    public final TimeInterpolator f;
    public final ViewGroup g;
    public final Context h;
    public final eo0 i;
    public final SnackbarContentLayout j;
    public final u60 k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public final AccessibilityManager r;
    public final ao0 s = new ao0(this);
    public static final i53 t = ed.b;
    public static final LinearInterpolator u = ed.a;
    public static final yu4 v = ed.d;
    public static final int[] x = {R.attr.snackbarStyle};
    public static final String y = fo0.class.getSimpleName();
    public static final Handler w = new Handler(Looper.getMainLooper(), new yn0());

    public fo0(Context context, ViewGroup viewGroup, View view, SnackbarContentLayout snackbarContentLayout) {
        int i = 1;
        this.k = new u60(this, i);
        if (view == null) {
            c6.f("Transient bottom bar must have non-null content");
            throw null;
        }
        if (snackbarContentLayout == null) {
            c6.f("Transient bottom bar must have non-null callback");
            throw null;
        }
        this.g = viewGroup;
        this.j = snackbarContentLayout;
        this.h = context;
        jd4.f(context, jd4.g, "Theme.AppCompat");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(x);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        eo0 eo0Var = (eo0) layoutInflaterFrom.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
        this.i = eo0Var;
        eo0Var.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout2 = (SnackbarContentLayout) view;
            float actionTextColorAlpha = eo0Var.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout2.b.setTextColor(z85.x(actionTextColorAlpha, z85.C(snackbarContentLayout2.getContext(), jm1.U(snackbarContentLayout2, R.attr.colorSurface)), snackbarContentLayout2.b.getCurrentTextColor()));
            }
            snackbarContentLayout2.setMaxInlineActionWidth(eo0Var.getMaxInlineActionWidth());
        }
        eo0Var.addView(view);
        eo0Var.setAccessibilityLiveRegion(1);
        eo0Var.setImportantForAccessibility(1);
        eo0Var.setFitsSystemWindows(true);
        ke keVar = new ke(this, i);
        WeakHashMap weakHashMap = dl8.a;
        uk8.c(eo0Var, keVar);
        dl8.n(eo0Var, new zn0(this));
        this.r = (AccessibilityManager) context.getSystemService("accessibility");
        this.c = ji8.F(context, R.attr.motionDurationLong2, 250);
        this.a = ji8.F(context, R.attr.motionDurationLong2, 150);
        this.b = ji8.F(context, R.attr.motionDurationMedium1, 75);
        this.d = ji8.G(context, R.attr.motionEasingEmphasizedInterpolator, u);
        this.f = ji8.G(context, R.attr.motionEasingEmphasizedInterpolator, v);
        this.e = ji8.G(context, R.attr.motionEasingEmphasizedInterpolator, t);
    }

    public final void a(int i) {
        e38 e38VarD = e38.d();
        ao0 ao0Var = this.s;
        synchronized (e38VarD.b) {
            try {
                if (e38VarD.e(ao0Var)) {
                    e38VarD.b((ri7) e38VarD.d, i);
                } else {
                    ri7 ri7Var = (ri7) e38VarD.e;
                    if (ri7Var != null && ri7Var.a.get() == ao0Var) {
                        e38VarD.b((ri7) e38VarD.e, i);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        boolean z;
        e38 e38VarD = e38.d();
        ao0 ao0Var = this.s;
        synchronized (e38VarD.b) {
            z = true;
            if (!e38VarD.e(ao0Var)) {
                ri7 ri7Var = (ri7) e38VarD.e;
                if (!(ri7Var != null && ri7Var.a.get() == ao0Var)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final void c() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.i.getRootWindowInsets()) == null) {
            return;
        }
        this.o = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        g();
    }

    public final void d() {
        e38 e38VarD = e38.d();
        ao0 ao0Var = this.s;
        synchronized (e38VarD.b) {
            try {
                if (e38VarD.e(ao0Var)) {
                    e38VarD.d = null;
                    if (((ri7) e38VarD.e) != null) {
                        e38VarD.i();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ViewParent parent = this.i.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.i);
        }
    }

    public final void e() {
        e38 e38VarD = e38.d();
        ao0 ao0Var = this.s;
        synchronized (e38VarD.b) {
            try {
                if (e38VarD.e(ao0Var)) {
                    e38VarD.h((ri7) e38VarD.d);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        int i = 0;
        boolean z = true;
        AccessibilityManager accessibilityManager = this.r;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z = false;
        }
        eo0 eo0Var = this.i;
        if (z) {
            eo0Var.post(new bo0(this, i));
            return;
        }
        if (eo0Var.getParent() != null) {
            eo0Var.setVisibility(0);
        }
        e();
    }

    public final void g() {
        eo0 eo0Var = this.i;
        ViewGroup.LayoutParams layoutParams = eo0Var.getLayoutParams();
        boolean z = layoutParams instanceof ViewGroup.MarginLayoutParams;
        String str = y;
        if (!z) {
            Log.w(str, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (eo0Var.q == null) {
            Log.w(str, "Unable to update margins because original view margins are not set");
            return;
        }
        if (eo0Var.getParent() == null) {
            return;
        }
        int i = this.l;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = eo0Var.q;
        int i2 = rect.bottom + i;
        int i3 = rect.left + this.m;
        int i4 = rect.right + this.n;
        int i5 = rect.top;
        boolean z2 = (marginLayoutParams.bottomMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4 && marginLayoutParams.topMargin == i5) ? false : true;
        if (z2) {
            marginLayoutParams.bottomMargin = i2;
            marginLayoutParams.leftMargin = i3;
            marginLayoutParams.rightMargin = i4;
            marginLayoutParams.topMargin = i5;
            eo0Var.requestLayout();
        }
        if ((z2 || this.p != this.o) && Build.VERSION.SDK_INT >= 29 && this.o > 0) {
            ViewGroup.LayoutParams layoutParams2 = eo0Var.getLayoutParams();
            if ((layoutParams2 instanceof hw1) && (((hw1) layoutParams2).a instanceof SwipeDismissBehavior)) {
                u60 u60Var = this.k;
                eo0Var.removeCallbacks(u60Var);
                eo0Var.post(u60Var);
            }
        }
    }
}
