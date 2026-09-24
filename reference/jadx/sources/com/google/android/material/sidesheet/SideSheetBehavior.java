package com.google.android.material.sidesheet;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import defpackage.a85;
import defpackage.bt4;
import defpackage.c6;
import defpackage.c95;
import defpackage.d95;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.e6;
import defpackage.e95;
import defpackage.ed;
import defpackage.ef7;
import defpackage.eq3;
import defpackage.ew1;
import defpackage.f3;
import defpackage.fz5;
import defpackage.g6;
import defpackage.gf7;
import defpackage.gl8;
import defpackage.hf7;
import defpackage.hw1;
import defpackage.i53;
import defpackage.k55;
import defpackage.sb7;
import defpackage.tb7;
import defpackage.td6;
import defpackage.tn6;
import defpackage.w6;
import defpackage.wn0;
import defpackage.x5;
import defpackage.xj0;
import defpackage.xs1;
import defpackage.yc9;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends ew1 implements a85 {
    public yc9 a;
    public final c95 b;
    public final ColorStateList c;
    public final tb7 d;
    public final hf7 e;
    public final float f;
    public final boolean g;
    public int h;
    public gl8 i;
    public boolean j;
    public final float k;
    public int l;
    public int m;
    public int n;
    public int o;
    public WeakReference p;
    public WeakReference q;
    public final int r;
    public VelocityTracker s;
    public e95 t;
    public int u;
    public final LinkedHashSet v;
    public final ef7 w;

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        this.e = new hf7(this);
        this.g = true;
        this.h = 5;
        this.k = 0.1f;
        this.r = -1;
        this.v = new LinkedHashSet();
        this.w = new ef7(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.R);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.c = k55.m(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.d = tb7.h(context, attributeSet, 0, R.style.Widget_Material3_SideSheet).a();
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.r = resourceId;
            WeakReference weakReference = this.q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.q = null;
            WeakReference weakReference2 = this.p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && view.isLaidOut()) {
                    view.requestLayout();
                }
            }
        }
        tb7 tb7Var = this.d;
        if (tb7Var != null) {
            c95 c95Var = new c95(tb7Var);
            this.b = c95Var;
            c95Var.p(context);
            ColorStateList colorStateList = this.c;
            if (colorStateList != null) {
                this.b.t(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.b.setTint(typedValue.data);
            }
        }
        this.f = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.g = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }

    public final void A() {
        View view;
        WeakReference weakReference = this.p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        dl8.k(view, 262144);
        dl8.h(view, 0);
        dl8.k(view, 1048576);
        dl8.h(view, 0);
        final int i = 5;
        if (this.h != 5) {
            dl8.l(view, g6.k, new w6() { // from class: cf7
                @Override // defpackage.w6
                public final boolean d(View view2) {
                    this.a.w(i);
                    return true;
                }
            });
        }
        final int i2 = 3;
        if (this.h != 3) {
            dl8.l(view, g6.j, new w6() { // from class: cf7
                @Override // defpackage.w6
                public final boolean d(View view2) {
                    this.a.w(i2);
                    return true;
                }
            });
        }
    }

    @Override // defpackage.a85
    public final void a() {
        int i;
        final ViewGroup.MarginLayoutParams marginLayoutParams;
        e95 e95Var = this.t;
        if (e95Var == null) {
            return;
        }
        xj0 xj0Var = e95Var.f;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        e95Var.f = null;
        int i2 = 5;
        if (xj0Var == null || Build.VERSION.SDK_INT < 34) {
            w(5);
            return;
        }
        yc9 yc9Var = this.a;
        if (yc9Var != null && yc9Var.B() != 0) {
            i2 = 3;
        }
        wn0 wn0Var = new wn0(this, 2);
        WeakReference weakReference = this.q;
        final View view = weakReference != null ? (View) weakReference.get() : null;
        if (view != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams()) != null) {
            final int iT = this.a.t(marginLayoutParams);
            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: df7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.a.a.l0(marginLayoutParams, ed.c(valueAnimator.getAnimatedFraction(), iT, 0));
                    view.requestLayout();
                }
            };
        }
        View view2 = e95Var.b;
        boolean z = xj0Var.d == 0;
        boolean z2 = (Gravity.getAbsoluteGravity(i2, view2.getLayoutDirection()) & 3) == 3;
        float scaleX = view2.getScaleX() * view2.getWidth();
        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
            i = z2 ? marginLayoutParams2.leftMargin : marginLayoutParams2.rightMargin;
        } else {
            i = 0;
        }
        float f = scaleX + i;
        Property property = View.TRANSLATION_X;
        if (z2) {
            f = -f;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) property, f);
        if (animatorUpdateListener != null) {
            objectAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
        }
        objectAnimatorOfFloat.setInterpolator(new i53());
        objectAnimatorOfFloat.setDuration(ed.c(xj0Var.c, e95Var.c, e95Var.d));
        objectAnimatorOfFloat.addListener(new d95(e95Var, z, i2));
        objectAnimatorOfFloat.addListener(wn0Var);
        objectAnimatorOfFloat.start();
    }

    @Override // defpackage.a85
    public final void b(xj0 xj0Var) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        e95 e95Var = this.t;
        if (e95Var == null) {
            return;
        }
        yc9 yc9Var = this.a;
        int i = (yc9Var == null || yc9Var.B() == 0) ? 5 : 3;
        if (e95Var.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() before updateBackProgress()");
        }
        xj0 xj0Var2 = e95Var.f;
        e95Var.f = xj0Var;
        if (xj0Var2 != null) {
            e95Var.a(xj0Var.c, xj0Var.d == 0, i);
        }
        WeakReference weakReference = this.p;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        View view = (View) this.p.get();
        WeakReference weakReference2 = this.q;
        View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
        if (view2 == null || (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) == null) {
            return;
        }
        this.a.l0(marginLayoutParams, (int) ((view.getScaleX() * this.l) + this.o));
        view2.requestLayout();
    }

    @Override // defpackage.a85
    public final void c(xj0 xj0Var) {
        e95 e95Var = this.t;
        if (e95Var == null) {
            return;
        }
        e95Var.f = xj0Var;
    }

    @Override // defpackage.a85
    public final void d() {
        e95 e95Var = this.t;
        if (e95Var == null) {
            return;
        }
        View view = e95Var.b;
        if (e95Var.f == null) {
            Log.w("MaterialBackHelper", "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        xj0 xj0Var = e95Var.f;
        e95Var.f = null;
        if (xj0Var == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(e95Var.e);
        animatorSet.start();
    }

    @Override // defpackage.ew1
    public final void g(hw1 hw1Var) {
        this.p = null;
        this.i = null;
        this.t = null;
    }

    @Override // defpackage.ew1
    public final void j() {
        this.p = null;
        this.i = null;
        this.t = null;
    }

    @Override // defpackage.ew1
    public final boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        gl8 gl8Var;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && dl8.e(view) == null) || !this.g) {
            this.j = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.s) != null) {
            velocityTracker.recycle();
            this.s = null;
        }
        if (this.s == null) {
            this.s = VelocityTracker.obtain();
        }
        this.s.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.u = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.j) {
            this.j = false;
            return false;
        }
        return (this.j || (gl8Var = this.i) == null || !gl8Var.q(motionEvent)) ? false : true;
    }

    @Override // defpackage.ew1
    public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        View view2;
        View view3;
        int iZ;
        int i2;
        View viewFindViewById;
        if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
        }
        WeakReference weakReference = this.p;
        c95 c95Var = this.b;
        if (weakReference == null) {
            this.p = new WeakReference(view);
            this.t = new e95(view);
            if (c95Var != null) {
                view.setBackground(c95Var);
                float elevation = this.f;
                if (elevation == -1.0f) {
                    elevation = view.getElevation();
                }
                c95Var.s(elevation);
            } else {
                ColorStateList colorStateList = this.c;
                if (colorStateList != null) {
                    WeakHashMap weakHashMap = dl8.a;
                    view.setBackgroundTintList(colorStateList);
                }
            }
            int i3 = this.h == 5 ? 4 : 0;
            if (view.getVisibility() != i3) {
                view.setVisibility(i3);
            }
            A();
            if (view.getImportantForAccessibility() == 0) {
                view.setImportantForAccessibility(1);
            }
            if (dl8.e(view) == null) {
                dl8.o(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i4 = Gravity.getAbsoluteGravity(((hw1) view.getLayoutParams()).c, i) == 3 ? 1 : 0;
        yc9 yc9Var = this.a;
        if (yc9Var == null || yc9Var.B() != i4) {
            hw1 hw1Var = null;
            tb7 tb7Var = this.d;
            if (i4 == 0) {
                this.a = new tn6(this);
                if (tb7Var != null) {
                    WeakReference weakReference2 = this.p;
                    if (weakReference2 != null && (view3 = (View) weakReference2.get()) != null && (view3.getLayoutParams() instanceof hw1)) {
                        hw1Var = (hw1) view3.getLayoutParams();
                    }
                    if (hw1Var == null || ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin <= 0) {
                        sb7 sb7VarM = tb7Var.m();
                        sb7VarM.f = new f3(0.0f);
                        sb7VarM.g = new f3(0.0f);
                        tb7 tb7VarA = sb7VarM.a();
                        if (c95Var != null) {
                            c95Var.setShapeAppearanceModel(tb7VarA);
                        }
                    }
                }
            } else {
                if (i4 != 1) {
                    c6.f(xs1.h(i4, "Invalid sheet edge position value: ", ". Must be 0 or 1."));
                    return false;
                }
                this.a = new bt4(this);
                if (tb7Var != null) {
                    WeakReference weakReference3 = this.p;
                    if (weakReference3 != null && (view2 = (View) weakReference3.get()) != null && (view2.getLayoutParams() instanceof hw1)) {
                        hw1Var = (hw1) view2.getLayoutParams();
                    }
                    if (hw1Var == null || ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin <= 0) {
                        sb7 sb7VarM2 = tb7Var.m();
                        sb7VarM2.e = new f3(0.0f);
                        sb7VarM2.h = new f3(0.0f);
                        tb7 tb7VarA2 = sb7VarM2.a();
                        if (c95Var != null) {
                            c95Var.setShapeAppearanceModel(tb7VarA2);
                        }
                    }
                }
            }
        }
        if (this.i == null) {
            this.i = new gl8(coordinatorLayout.getContext(), coordinatorLayout, this.w);
        }
        int iZ2 = this.a.z(view);
        coordinatorLayout.r(view, i);
        this.m = coordinatorLayout.getWidth();
        this.n = this.a.A(coordinatorLayout);
        this.l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.o = marginLayoutParams != null ? this.a.d(marginLayoutParams) : 0;
        int i5 = this.h;
        if (i5 == 1 || i5 == 2) {
            iZ = iZ2 - this.a.z(view);
        } else if (i5 == 3) {
            iZ = 0;
        } else {
            if (i5 != 5) {
                x5.g(this.h, "Unexpected value: ");
                return false;
            }
            iZ = this.a.w();
        }
        WeakHashMap weakHashMap2 = dl8.a;
        view.offsetLeftAndRight(iZ);
        if (this.q == null && (i2 = this.r) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i2)) != null) {
            this.q = new WeakReference(viewFindViewById);
        }
        Iterator it = this.v.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
                return false;
            }
        }
        return true;
    }

    @Override // defpackage.ew1
    public final boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // defpackage.ew1
    public final void r(View view, Parcelable parcelable) {
        int i = ((gf7) parcelable).c;
        if (i == 1 || i == 2) {
            i = 5;
        }
        this.h = i;
    }

    @Override // defpackage.ew1
    public final Parcelable s(View view) {
        AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
        return new gf7(this);
    }

    @Override // defpackage.ew1
    public final boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.h == 1 && actionMasked == 0) {
            return true;
        }
        if (y()) {
            this.i.j(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.s) != null) {
            velocityTracker.recycle();
            this.s = null;
        }
        if (this.s == null) {
            this.s = VelocityTracker.obtain();
        }
        this.s.addMovement(motionEvent);
        if (y() && actionMasked == 2 && !this.j && y()) {
            float fAbs = Math.abs(this.u - motionEvent.getX());
            gl8 gl8Var = this.i;
            if (fAbs > gl8Var.b) {
                gl8Var.b(view, motionEvent.getPointerId(motionEvent.getActionIndex()));
            }
        }
        return !this.j;
    }

    public final void w(final int i) {
        if (i == 1 || i == 2) {
            throw new IllegalArgumentException(dj7.n(new StringBuilder("STATE_"), i == 1 ? "DRAGGING" : "SETTLING", " should not be set externally."));
        }
        WeakReference weakReference = this.p;
        if (weakReference == null || weakReference.get() == null) {
            x(i);
            return;
        }
        View view = (View) this.p.get();
        Runnable runnable = new Runnable() { // from class: bf7
            @Override // java.lang.Runnable
            public final void run() {
                SideSheetBehavior sideSheetBehavior = this.a;
                WeakReference weakReference2 = sideSheetBehavior.p;
                View view2 = weakReference2 != null ? (View) weakReference2.get() : null;
                if (view2 != null) {
                    sideSheetBehavior.z(view2, i, false);
                }
            }
        };
        ViewParent parent = view.getParent();
        if (parent != null && parent.isLayoutRequested() && view.isAttachedToWindow()) {
            view.post(runnable);
        } else {
            runnable.run();
        }
    }

    public final void x(int i) {
        View view;
        if (this.h == i) {
            return;
        }
        this.h = i;
        WeakReference weakReference = this.p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i2 = this.h == 5 ? 4 : 0;
        if (view.getVisibility() != i2) {
            view.setVisibility(i2);
        }
        Iterator it = this.v.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
        A();
    }

    public final boolean y() {
        if (this.i != null) {
            return this.g || this.h == 1;
        }
        return false;
    }

    public final void z(View view, int i, boolean z) {
        int iV;
        if (i == 3) {
            iV = this.a.v();
        } else {
            if (i != 5) {
                c6.f(fz5.j(i, "Invalid state to get outer edge offset: "));
                return;
            }
            iV = this.a.w();
        }
        gl8 gl8Var = this.i;
        if (gl8Var == null || (!z ? gl8Var.r(view, iV, view.getTop()) : gl8Var.p(iV, view.getTop()))) {
            x(i);
        } else {
            x(2);
            this.e.a(i);
        }
    }

    public SideSheetBehavior() {
        this.e = new hf7(this);
        this.g = true;
        this.h = 5;
        this.k = 0.1f;
        this.r = -1;
        this.v = new LinkedHashSet();
        this.w = new ef7(this);
    }
}
