package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideViewOnScrollBehavior;
import defpackage.c6;
import defpackage.ed;
import defpackage.eq3;
import defpackage.ew1;
import defpackage.hw1;
import defpackage.ji8;
import defpackage.l44;
import defpackage.m44;
import defpackage.n44;
import defpackage.o44;
import defpackage.p44;
import defpackage.q44;
import defpackage.xs1;
import defpackage.zv1;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class HideViewOnScrollBehavior<V extends View> extends ew1 {
    public zv1 a;
    public AccessibilityManager b;
    public o44 c;
    public int e;
    public int f;
    public TimeInterpolator g;
    public TimeInterpolator h;
    public ViewPropertyAnimator k;
    public final LinkedHashSet d = new LinkedHashSet();
    public int i = 0;
    public int j = 2;
    public int l = 0;
    public int m = 0;

    public HideViewOnScrollBehavior() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.accessibility.AccessibilityManager$TouchExplorationStateChangeListener, o44] */
    @Override // defpackage.ew1
    public final boolean l(CoordinatorLayout coordinatorLayout, final View view, int i) {
        if (this.b == null) {
            this.b = (AccessibilityManager) view.getContext().getSystemService(AccessibilityManager.class);
        }
        AccessibilityManager accessibilityManager = this.b;
        if (accessibilityManager != 0 && this.c == null) {
            ?? r0 = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: o44
                @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
                public final void onTouchExplorationStateChanged(boolean z) {
                    if (z) {
                        HideViewOnScrollBehavior hideViewOnScrollBehavior = this.a;
                        if (hideViewOnScrollBehavior.j == 1) {
                            hideViewOnScrollBehavior.x(view);
                        }
                    }
                }
            };
            this.c = r0;
            accessibilityManager.addTouchExplorationStateChangeListener(r0);
            view.addOnAttachStateChangeListener(new p44(this));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i2 = ((hw1) view.getLayoutParams()).c;
        if (i2 == 80 || i2 == 81) {
            w(1);
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(i2, i);
            w((absoluteGravity == 3 || absoluteGravity == 19) ? 2 : 0);
        }
        this.i = this.a.h(view, marginLayoutParams);
        this.e = ji8.F(view.getContext(), R.attr.motionDurationLong2, 225);
        this.f = ji8.F(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.g = ji8.G(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, ed.d);
        this.h = ji8.G(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, ed.c);
        return false;
    }

    @Override // defpackage.ew1
    public final void p(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        if (i <= 0) {
            if (i < 0) {
                x(view);
                return;
            }
            return;
        }
        if (this.j == 1) {
            return;
        }
        AccessibilityManager accessibilityManager = this.b;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            ViewPropertyAnimator viewPropertyAnimator = this.k;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            y(view, 1);
            this.k = this.a.j(view, this.i).setInterpolator(this.h).setDuration(this.f).setListener(new q44(this, view));
        }
    }

    @Override // defpackage.ew1
    public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2) {
        return i == 2;
    }

    public final void w(int i) {
        zv1 zv1Var = this.a;
        if (zv1Var == null || zv1Var.i() != i) {
            if (i == 0) {
                this.a = new n44();
                return;
            }
            if (i == 1) {
                this.a = new l44();
            } else if (i == 2) {
                this.a = new m44();
            } else {
                c6.f(xs1.h(i, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
            }
        }
    }

    public final void x(View view) {
        if (this.j == 2) {
            return;
        }
        y(view, 2);
        ViewPropertyAnimator viewPropertyAnimator = this.k;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.a.getClass();
        this.k = this.a.j(view, 0).setInterpolator(this.g).setDuration(this.e).setListener(new q44(this, view));
    }

    public final void y(View view, int i) {
        this.j = i;
        if (i == 1) {
            if (view.hasFocus()) {
                view.clearFocus();
            }
            if (view.getImportantForAccessibility() != 4) {
                this.l = view.getImportantForAccessibility();
            }
            if (view.getVisibility() != 4) {
                this.m = view.getVisibility();
            }
            view.setImportantForAccessibility(4);
        } else if (i == 2) {
            if (view.getImportantForAccessibility() == 4) {
                view.setImportantForAccessibility(this.l);
            }
            if (view.getVisibility() == 4) {
                view.setVisibility(this.m);
            }
        }
        Iterator it = this.d.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
    }

    public HideViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
