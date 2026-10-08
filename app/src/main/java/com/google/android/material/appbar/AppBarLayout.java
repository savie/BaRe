package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import defpackage.bm8;
import defpackage.c6;
import defpackage.c95;
import defpackage.dg7;
import defpackage.dl8;
import defpackage.du;
import defpackage.dw1;
import defpackage.e3;
import defpackage.ed;
import defpackage.ew1;
import defpackage.fm5;
import defpackage.h34;
import defpackage.hw1;
import defpackage.i34;
import defpackage.iz1;
import defpackage.jd4;
import defpackage.ji8;
import defpackage.jm;
import defpackage.k55;
import defpackage.lg7;
import defpackage.ot9;
import defpackage.rb;
import defpackage.td6;
import defpackage.tv8;
import defpackage.uk8;
import defpackage.xh8;
import defpackage.z85;
import defpackage.zm5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements dw1 {
    public static final /* synthetic */ int S = 0;
    public ValueAnimator G;
    public ValueAnimator.AnimatorUpdateListener H;
    public final ArrayList I;
    public final LinkedHashSet J;
    public final long K;
    public final TimeInterpolator L;
    public int[] M;
    public int N;
    public Drawable O;
    public Integer P;
    public final float Q;
    public Behavior R;
    public int a;
    public int b;
    public int c;
    public int d;
    public boolean e;
    public int f;
    public tv8 k;
    public boolean n;
    public boolean p;
    public boolean q;
    public boolean r;
    public ColorStateList t;
    public int x;
    public WeakReference y;

    public AppBarLayout(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_Design_AppBarLayout), attributeSet, i);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.f = 0;
        this.I = new ArrayList();
        this.J = new LinkedHashSet();
        Context context2 = getContext();
        setOrientation(1);
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray typedArrayB = jd4.B(context3, attributeSet, lg7.j, i, R.style.Widget_Design_AppBarLayout, new int[0]);
        try {
            if (typedArrayB.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, typedArrayB.getResourceId(0, 0)));
            }
            typedArrayB.recycle();
            TypedArray typedArrayB2 = jd4.B(context2, attributeSet, td6.a, i, R.style.Widget_Design_AppBarLayout, new int[0]);
            this.t = k55.m(context2, typedArrayB2, 6);
            this.K = ji8.F(context2, R.attr.motionDurationMedium2, getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
            this.L = ji8.G(context2, R.attr.motionEasingStandardInterpolator, ed.a);
            if (typedArrayB2.hasValue(4)) {
                d(typedArrayB2.getBoolean(4, false), false, false);
            }
            int i2 = 3;
            if (typedArrayB2.hasValue(3)) {
                lg7.C(this, typedArrayB2.getDimensionPixelSize(3, 0));
            }
            setBackground(typedArrayB2.getDrawable(0));
            if (typedArrayB2.hasValue(2)) {
                setKeyboardNavigationCluster(typedArrayB2.getBoolean(2, false));
            }
            if (typedArrayB2.hasValue(1)) {
                setTouchscreenBlocksFocus(typedArrayB2.getBoolean(1, false));
            }
            this.Q = getResources().getDimension(R.dimen.design_appbar_elevation);
            this.r = typedArrayB2.getBoolean(5, false);
            this.x = typedArrayB2.getResourceId(7, -1);
            setStatusBarForeground(typedArrayB2.getDrawable(8));
            typedArrayB2.recycle();
            rb rbVar = new rb(this, i2);
            WeakHashMap weakHashMap = dl8.a;
            uk8.c(this, rbVar);
        } catch (Throwable th) {
            typedArrayB.recycle();
            throw th;
        }
    }

    public static jm b(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            jm jmVar = new jm((LinearLayout.LayoutParams) layoutParams);
            jmVar.a = 1;
            return jmVar;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            jm jmVar2 = new jm((ViewGroup.MarginLayoutParams) layoutParams);
            jmVar2.a = 1;
            return jmVar2;
        }
        jm jmVar3 = new jm(layoutParams);
        jmVar3.a = 1;
        return jmVar3;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final jm generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        jm jmVar = new jm(context, attributeSet);
        jmVar.a = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.b);
        jmVar.a = typedArrayObtainStyledAttributes.getInt(1, 0);
        jmVar.b = typedArrayObtainStyledAttributes.getInt(0, 0) != 1 ? null : new ot9(2);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            jmVar.c = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        return jmVar;
    }

    public final void c() {
        Behavior behavior = this.R;
        d dVarF = (behavior == null || this.b == -1 || this.f != 0) ? null : behavior.F(e3.b, this);
        this.b = -1;
        this.c = -1;
        this.d = -1;
        if (dVarF != null) {
            Behavior behavior2 = this.R;
            if (behavior2.m != null) {
                return;
            }
            behavior2.m = dVarF;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof jm;
    }

    public final void d(boolean z, boolean z2, boolean z3) {
        this.f = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.O == null || getTopInset() <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(0.0f, -this.a);
        this.O.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.O;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final boolean e(boolean z, boolean z2) {
        if (!z2 || this.q == z) {
            return false;
        }
        this.q = z;
        refreshDrawableState();
        if (!(getBackground() instanceof c95)) {
            return true;
        }
        if (this.t != null) {
            g(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
            return true;
        }
        if (!this.r) {
            return true;
        }
        float f = this.Q;
        g(z ? 0.0f : f, z ? f : 0.0f);
        return true;
    }

    public final boolean f(View view) {
        int i;
        if (this.y == null && (i = this.x) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.x);
            }
            if (viewFindViewById != null) {
                this.y = new WeakReference(viewFindViewById);
            }
        }
        WeakReference weakReference = this.y;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        if (view != null) {
            return view.canScrollVertically(-1) || view.getScrollY() > 0;
        }
        return false;
    }

    public final void g(float f, float f2) {
        ValueAnimator valueAnimator = this.G;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f2);
        this.G = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(this.K);
        this.G.setInterpolator(this.L);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = this.H;
        if (animatorUpdateListener != null) {
            this.G.addUpdateListener(animatorUpdateListener);
        }
        this.G.start();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        jm jmVar = new jm(-1, -2);
        jmVar.a = 1;
        return jmVar;
    }

    @Override // defpackage.dw1
    public ew1 getBehavior() {
        Behavior behavior = new Behavior();
        this.R = behavior;
        return behavior;
    }

    public int getDownNestedPreScrollRange() {
        int iMin;
        int minimumHeight;
        int i = this.c;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() != 8) {
                jm jmVar = (jm) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i3 = jmVar.a;
                if ((i3 & 5) != 5) {
                    if (i2 > 0) {
                        break;
                    }
                } else {
                    int i4 = ((LinearLayout.LayoutParams) jmVar).topMargin + ((LinearLayout.LayoutParams) jmVar).bottomMargin;
                    if ((i3 & 8) != 0) {
                        minimumHeight = childAt.getMinimumHeight();
                    } else {
                        if ((i3 & 2) != 0) {
                            minimumHeight = measuredHeight - childAt.getMinimumHeight();
                        } else {
                            iMin = i4 + measuredHeight;
                        }
                        if (childCount == 0 && childAt.getFitsSystemWindows()) {
                            iMin = Math.min(iMin, measuredHeight - getTopInset());
                        }
                        i2 += iMin;
                    }
                    iMin = minimumHeight + i4;
                    if (childCount == 0) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i2 += iMin;
                }
            }
        }
        int iMax = Math.max(0, i2);
        this.c = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                jm jmVar = (jm) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) jmVar).topMargin + ((LinearLayout.LayoutParams) jmVar).bottomMargin + childAt.getMeasuredHeight();
                int i3 = jmVar.a;
                if ((i3 & 1) == 0) {
                    break;
                }
                minimumHeight += measuredHeight;
                if ((i3 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.d = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.x;
    }

    public c95 getMaterialShapeBackground() {
        Drawable background = getBackground();
        if (background instanceof c95) {
            return (c95) background;
        }
        return null;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = getMinimumHeight();
        if (minimumHeight != 0) {
            int i = (minimumHeight * 2) + topInset;
            return i < getHeight() ? i : minimumHeight + topInset;
        }
        int childCount = getChildCount();
        int minimumHeight2 = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
        if (minimumHeight2 == 0) {
            return getHeight() / 3;
        }
        int i2 = (minimumHeight2 * 2) + topInset;
        return i2 < getHeight() ? i2 : minimumHeight2 + topInset;
    }

    public int getPendingAction() {
        return this.f;
    }

    public Drawable getStatusBarForeground() {
        return this.O;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        tv8 tv8Var = this.k;
        if (tv8Var != null) {
            return tv8Var.d();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.b;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int minimumHeight = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                jm jmVar = (jm) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i3 = jmVar.a;
                if ((i3 & 1) == 0) {
                    break;
                }
                int topInset = measuredHeight + ((LinearLayout.LayoutParams) jmVar).topMargin + ((LinearLayout.LayoutParams) jmVar).bottomMargin + minimumHeight;
                if (i2 == 0 && childAt.getFitsSystemWindows()) {
                    topInset -= getTopInset();
                }
                minimumHeight = topInset;
                if ((i3 & 2) != 0) {
                    minimumHeight -= childAt.getMinimumHeight();
                    break;
                }
            }
        }
        int iMax = Math.max(0, minimumHeight);
        this.b = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        xh8.E(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        if (this.M == null) {
            this.M = new int[4];
        }
        int[] iArr = this.M;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.p;
        int i2 = R.attr.state_liftable;
        if (!z) {
            i2 = -R.attr.state_liftable;
        }
        iArr[0] = i2;
        int i3 = R.attr.state_lifted;
        if (!z || !this.q) {
            i3 = -R.attr.state_lifted;
        }
        iArr[1] = i3;
        int i4 = R.attr.state_collapsible;
        if (!z) {
            i4 = -R.attr.state_collapsible;
        }
        iArr[2] = i4;
        int i5 = R.attr.state_collapsed;
        if (!z || !this.q) {
            i5 = -R.attr.state_collapsed;
        }
        iArr[3] = i5;
        return View.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.y;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.y = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int topInset = getTopInset();
                for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt2 = getChildAt(childCount);
                    WeakHashMap weakHashMap = dl8.a;
                    childAt2.offsetTopAndBottom(topInset);
                }
            }
        }
        c();
        this.e = false;
        int childCount2 = getChildCount();
        for (int i5 = 0; i5 < childCount2; i5++) {
            if (((jm) getChildAt(i5).getLayoutParams()).c != null) {
                this.e = true;
                break;
            }
        }
        Drawable drawable = this.O;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.n) {
            return;
        }
        if (!this.r) {
            int childCount3 = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount3) {
                    z2 = false;
                    break;
                }
                int i7 = ((jm) getChildAt(i6).getLayoutParams()).a;
                if ((i7 & 1) == 1 && (i7 & 10) != 0) {
                    break;
                } else {
                    i6++;
                }
            }
        }
        if (this.p != z2) {
            this.p = z2;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && getFitsSystemWindows() && getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8 && !childAt.getFitsSystemWindows()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = iz1.d(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i2));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        c();
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        final c95 c95Var;
        ColorStateList colorStateList;
        Context context = getContext();
        if (drawable instanceof c95) {
            c95Var = (c95) drawable;
        } else {
            ColorStateList colorStateListD = du.d(drawable);
            if (colorStateListD == null) {
                c95Var = null;
            } else {
                c95 c95Var2 = new c95();
                c95Var2.t(colorStateListD);
                c95Var = c95Var2;
            }
        }
        if (c95Var != null && (colorStateList = c95Var.b.c) != null) {
            this.N = colorStateList.getDefaultColor();
            final ColorStateList colorStateList2 = this.t;
            if (colorStateList2 != null) {
                final Integer numN = z85.n(getContext(), R.attr.colorSurface);
                this.H = new ValueAnimator.AnimatorUpdateListener() { // from class: hm
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Integer num;
                        AppBarLayout appBarLayout = this.a;
                        LinkedHashSet linkedHashSet = appBarLayout.J;
                        ArrayList arrayList = appBarLayout.I;
                        int iX = z85.x(((Float) valueAnimator.getAnimatedValue()).floatValue(), appBarLayout.N, colorStateList2.getDefaultColor());
                        ColorStateList colorStateListValueOf = ColorStateList.valueOf(iX);
                        c95 c95Var3 = c95Var;
                        c95Var3.t(colorStateListValueOf);
                        if (appBarLayout.O != null && (num = appBarLayout.P) != null && num.equals(numN)) {
                            appBarLayout.O.setTint(iX);
                        }
                        if (!arrayList.isEmpty()) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                if (it.next() != null) {
                                    e6.d();
                                    return;
                                } else if (c95Var3.b.c != null) {
                                    throw null;
                                }
                            }
                        }
                        if (linkedHashSet.isEmpty()) {
                            return;
                        }
                        Iterator it2 = linkedHashSet.iterator();
                        if (it2.hasNext()) {
                            throw eq3.h(it2);
                        }
                    }
                };
            } else {
                c95Var.p(context);
                this.H = new ValueAnimator.AnimatorUpdateListener() { // from class: im
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        int i = AppBarLayout.S;
                        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        c95Var.s(fFloatValue);
                        AppBarLayout appBarLayout = this.a;
                        Drawable drawable2 = appBarLayout.O;
                        if (drawable2 instanceof c95) {
                            ((c95) drawable2).s(fFloatValue);
                        }
                        Iterator it = appBarLayout.I.iterator();
                        if (it.hasNext()) {
                            throw eq3.h(it);
                        }
                        Iterator it2 = appBarLayout.J.iterator();
                        if (it2.hasNext()) {
                            throw eq3.h(it2);
                        }
                    }
                };
            }
            drawable = c95Var;
        }
        super.setBackground(drawable);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        xh8.C(this, f);
    }

    public void setExpanded(boolean z) {
        d(z, isLaidOut(), true);
    }

    public void setLiftOnScroll(boolean z) {
        this.r = z;
    }

    public void setLiftOnScrollColor(ColorStateList colorStateList) {
        if (this.t != colorStateList) {
            this.t = colorStateList;
            setBackground(getBackground());
        }
    }

    public void setLiftOnScrollTargetView(View view) {
        this.x = -1;
        if (view != null) {
            this.y = new WeakReference(view);
            return;
        }
        WeakReference weakReference = this.y;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.y = null;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.x = i;
        WeakReference weakReference = this.y;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.y = null;
    }

    public void setLiftableOverrideEnabled(boolean z) {
        this.n = z;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i == 1) {
            super.setOrientation(i);
        } else {
            c6.f("AppBarLayout is always vertical and does not support horizontal orientation");
        }
    }

    public void setPendingAction(int i) {
        this.f = i;
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.O;
        if (drawable2 != drawable) {
            Integer numValueOf = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.O = drawableMutate;
            if (drawableMutate instanceof c95) {
                numValueOf = Integer.valueOf(((c95) drawableMutate).N);
            } else {
                ColorStateList colorStateListD = du.d(drawableMutate);
                if (colorStateListD != null) {
                    numValueOf = Integer.valueOf(colorStateListD.getDefaultColor());
                }
            }
            this.P = numValueOf;
            Drawable drawable3 = this.O;
            boolean z = false;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.O.setState(getDrawableState());
                }
                this.O.setLayoutDirection(getLayoutDirection());
                this.O.setVisible(getVisibility() == 0, false);
                this.O.setCallback(this);
            }
            if (this.O != null && getTopInset() > 0) {
                z = true;
            }
            setWillNotDraw(!z);
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(iz1.m(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        lg7.C(this, f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.O;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.O;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return b(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return b(layoutParams);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class BaseBehavior<T extends AppBarLayout> extends h34 {
        public int j;
        public int k;
        public ValueAnimator l;
        public d m;
        public WeakReference n;

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(0);
            this.f = -1;
            this.h = -1;
        }

        public static View B(BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (((hw1) childAt.getLayoutParams()).a instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        public static View D(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof fm5) || (childAt instanceof AbsListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        public static void H(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, boolean z) {
            View childAt;
            boolean zF;
            int iAbs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    childAt = null;
                    break;
                }
                childAt = appBarLayout.getChildAt(i3);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    break;
                } else {
                    i3++;
                }
            }
            if (childAt != null) {
                int i4 = ((jm) childAt.getLayoutParams()).a;
                if ((i4 & 1) != 0) {
                    int minimumHeight = childAt.getMinimumHeight();
                    if (i2 <= 0 || (i4 & 12) == 0 ? (i4 & 2) == 0 || (-i) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset() : (-i) < (childAt.getBottom() - minimumHeight) - appBarLayout.getTopInset()) {
                        zF = false;
                    } else {
                        zF = true;
                    }
                } else {
                    zF = false;
                }
            } else {
                zF = false;
            }
            if (appBarLayout.r) {
                zF = appBarLayout.f(D(coordinatorLayout));
            }
            boolean zE = appBarLayout.e(zF, !appBarLayout.n);
            if (!z) {
                if (zE) {
                    List list = (List) ((dg7) coordinatorLayout.b.c).get(appBarLayout);
                    ArrayList arrayList = coordinatorLayout.d;
                    arrayList.clear();
                    if (list != null) {
                        arrayList.addAll(list);
                    }
                    int size = arrayList.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        ew1 ew1Var = ((hw1) ((View) arrayList.get(i5)).getLayoutParams()).a;
                        if (ew1Var instanceof ScrollingViewBehavior) {
                            if (((ScrollingViewBehavior) ew1Var).f == 0) {
                                return;
                            }
                        }
                    }
                    return;
                }
                return;
            }
            if (appBarLayout.getBackground() != null) {
                appBarLayout.getBackground().jumpToCurrentState();
            }
            if (appBarLayout.getForeground() != null) {
                appBarLayout.getForeground().jumpToCurrentState();
            }
            if (appBarLayout.getStateListAnimator() != null) {
                appBarLayout.getStateListAnimator().jumpToCurrentState();
            }
        }

        public final void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            int iAbs = Math.abs(y() - i);
            float fAbs = Math.abs(0.0f);
            int iRound = fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int iY = y();
            ValueAnimator valueAnimator = this.l;
            if (iY == i) {
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.l.cancel();
                return;
            }
            if (valueAnimator == null) {
                ValueAnimator valueAnimator2 = new ValueAnimator();
                this.l = valueAnimator2;
                valueAnimator2.setInterpolator(ed.e);
                this.l.addUpdateListener(new a(coordinatorLayout, this, appBarLayout));
            } else {
                valueAnimator.cancel();
            }
            this.l.setDuration(Math.min(iRound, 600));
            this.l.setIntValues(iY, i);
            this.l.start();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x002b  */
        public final void E(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int[] iArr) {
            AppBarLayout appBarLayout2;
            int i2;
            int downNestedPreScrollRange;
            if (i == 0) {
                appBarLayout2 = appBarLayout;
            } else {
                if (i < 0) {
                    i2 = -appBarLayout.getTotalScrollRange();
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i2;
                } else {
                    i2 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                int i3 = i2;
                int i4 = downNestedPreScrollRange;
                if (i3 != i4) {
                    appBarLayout2 = appBarLayout;
                    iArr[1] = z(coordinatorLayout, appBarLayout2, y() - i, i3, i4);
                } else {
                    appBarLayout2 = appBarLayout;
                }
            }
            if (appBarLayout2.r) {
                appBarLayout2.e(appBarLayout2.f(view), !appBarLayout2.n);
            }
        }

        public final d F(Parcelable parcelable, AppBarLayout appBarLayout) {
            int iW = w();
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + iW;
                if (childAt.getTop() + iW <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = e3.b;
                    }
                    d dVar = new d(parcelable);
                    boolean z = iW == 0;
                    dVar.d = z;
                    dVar.c = !z && (-iW) >= appBarLayout.getTotalScrollRange();
                    dVar.e = i;
                    dVar.k = bottom == appBarLayout.getTopInset() + childAt.getMinimumHeight();
                    dVar.f = bottom / childAt.getHeight();
                    return dVar;
                }
            }
            return null;
        }

        public final void G(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int iY = y() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                jm jmVar = (jm) childAt.getLayoutParams();
                if ((jmVar.a & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) jmVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) jmVar).bottomMargin;
                }
                int i2 = -iY;
                if (top <= i2 && bottom >= i2) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                View childAt2 = appBarLayout.getChildAt(i);
                jm jmVar2 = (jm) childAt2.getLayoutParams();
                int i3 = jmVar2.a;
                if ((i3 & 17) == 17) {
                    int topInset = -childAt2.getTop();
                    int minimumHeight = -childAt2.getBottom();
                    if (i == 0 && appBarLayout.getFitsSystemWindows() && childAt2.getFitsSystemWindows()) {
                        topInset -= appBarLayout.getTopInset();
                    }
                    if ((i3 & 2) == 2) {
                        minimumHeight += childAt2.getMinimumHeight();
                    } else if ((i3 & 5) == 5) {
                        int minimumHeight2 = childAt2.getMinimumHeight() + minimumHeight;
                        if (iY < minimumHeight2) {
                            topInset = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if ((i3 & 32) == 32) {
                        topInset += ((LinearLayout.LayoutParams) jmVar2).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) jmVar2).bottomMargin;
                    }
                    if (iY < (minimumHeight + topInset) / 2) {
                        topInset = minimumHeight;
                    }
                    C(coordinatorLayout, appBarLayout, iz1.d(topInset + paddingTop, -appBarLayout.getTotalScrollRange(), 0));
                }
            }
        }

        @Override // defpackage.am8, defpackage.ew1
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
            int iRound;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.l(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            d dVar = this.m;
            if (dVar == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i2 = -appBarLayout.getUpNestedPreScrollRange();
                        if (z) {
                            C(coordinatorLayout, appBarLayout, i2);
                        } else {
                            A(coordinatorLayout, appBarLayout, i2);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z) {
                            C(coordinatorLayout, appBarLayout, 0);
                        } else {
                            A(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (dVar.c) {
                A(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange());
            } else if (dVar.d) {
                A(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(dVar.e);
                int i3 = -childAt.getBottom();
                if (this.m.k) {
                    iRound = appBarLayout.getTopInset() + childAt.getMinimumHeight() + i3;
                } else {
                    iRound = Math.round(childAt.getHeight() * this.m.f) + i3;
                }
                A(coordinatorLayout, appBarLayout, iRound);
            }
            appBarLayout.f = 0;
            this.m = null;
            int iD = iz1.d(w(), -appBarLayout.getTotalScrollRange(), 0);
            bm8 bm8Var = this.a;
            if (bm8Var == null) {
                this.b = iD;
            } else if (bm8Var.d != iD) {
                bm8Var.d = iD;
                bm8Var.a();
            }
            H(coordinatorLayout, appBarLayout, w(), 0, true);
            appBarLayout.a = w();
            if (!appBarLayout.willNotDraw()) {
                appBarLayout.postInvalidateOnAnimation();
            }
            if (dl8.d(coordinatorLayout) != null) {
                return true;
            }
            dl8.n(coordinatorLayout, new b(coordinatorLayout, this, appBarLayout));
            return true;
        }

        @Override // defpackage.ew1
        public final boolean m(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((hw1) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.s(i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), appBarLayout);
            return true;
        }

        @Override // defpackage.ew1
        public final /* bridge */ /* synthetic */ void o(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            E(coordinatorLayout, (AppBarLayout) view, view2, i2, iArr);
        }

        @Override // defpackage.ew1
        public final void p(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
            BaseBehavior<T> baseBehavior;
            CoordinatorLayout coordinatorLayout2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i3 < 0) {
                baseBehavior = this;
                coordinatorLayout2 = coordinatorLayout;
                iArr[1] = baseBehavior.z(coordinatorLayout2, appBarLayout, y() - i3, -appBarLayout.getDownNestedScrollRange(), 0);
            } else {
                baseBehavior = this;
                coordinatorLayout2 = coordinatorLayout;
            }
            if (i3 == 0 && dl8.d(coordinatorLayout2) == null) {
                dl8.n(coordinatorLayout2, new b(coordinatorLayout2, baseBehavior, appBarLayout));
            }
        }

        @Override // defpackage.ew1
        public final void r(View view, Parcelable parcelable) {
            if (parcelable instanceof d) {
                this.m = (d) parcelable;
            } else {
                this.m = null;
            }
        }

        @Override // defpackage.ew1
        public final Parcelable s(View view) {
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            d dVarF = F(absSavedState, (AppBarLayout) view);
            return dVarF == null ? absSavedState : dVarF;
        }

        @Override // defpackage.ew1
        public final boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            boolean z = (i & 2) != 0 && (appBarLayout.r || appBarLayout.q || (appBarLayout.getTotalScrollRange() != 0 && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight()));
            if (z && (valueAnimator = this.l) != null) {
                valueAnimator.cancel();
            }
            this.n = null;
            this.k = i2;
            return z;
        }

        @Override // defpackage.ew1
        public final void u(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.k == 0 || i == 1) {
                G(coordinatorLayout, appBarLayout);
                if (appBarLayout.r) {
                    appBarLayout.e(appBarLayout.f(view2), !appBarLayout.n);
                }
            }
            this.n = new WeakReference(view2);
        }

        @Override // defpackage.h34
        public final int y() {
            return w() + this.j;
        }

        /* JADX WARN: Code duplicated, block: B:40:0x00ab  */
        /* JADX WARN: Code duplicated, block: B:43:0x00b2  */
        /* JADX WARN: Code duplicated, block: B:62:0x0157  */
        /* JADX WARN: Code duplicated, block: B:64:0x015c  */
        /* JADX WARN: Code duplicated, block: B:65:0x015e  */
        @Override // defpackage.h34
        public final int z(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            int top;
            boolean z;
            int i4;
            int i5;
            ot9 ot9Var;
            int topInset;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int iY = y();
            int i6 = 0;
            if (i2 == 0 || iY < i2 || iY > i3) {
                this.j = 0;
            } else {
                int iD = iz1.d(i, i2, i3);
                if (iY != iD) {
                    if (!appBarLayout.e) {
                        top = iD;
                        break;
                    }
                    int iAbs = Math.abs(iD);
                    int childCount = appBarLayout.getChildCount();
                    int i7 = 0;
                    while (true) {
                        if (i7 < childCount) {
                            View childAt = appBarLayout.getChildAt(i7);
                            jm jmVar = (jm) childAt.getLayoutParams();
                            Interpolator interpolator = jmVar.c;
                            if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                                if (interpolator != null) {
                                    int i8 = jmVar.a;
                                    if ((i8 & 1) != 0) {
                                        topInset = childAt.getHeight() + ((LinearLayout.LayoutParams) jmVar).topMargin + ((LinearLayout.LayoutParams) jmVar).bottomMargin;
                                        if ((i8 & 2) != 0) {
                                            topInset -= childAt.getMinimumHeight();
                                        }
                                    } else {
                                        topInset = 0;
                                    }
                                    if (childAt.getFitsSystemWindows()) {
                                        topInset -= appBarLayout.getTopInset();
                                    }
                                    if (topInset > 0) {
                                        float f = topInset;
                                        top = (childAt.getTop() + Math.round(interpolator.getInterpolation((iAbs - childAt.getTop()) / f) * f)) * Integer.signum(iD);
                                        break;
                                    }
                                }
                            } else {
                                i7++;
                            }
                        }
                        top = iD;
                        break;
                    }
                    bm8 bm8Var = this.a;
                    int i9 = 1;
                    if (bm8Var != null) {
                        if (bm8Var.d != top) {
                            bm8Var.d = top;
                            bm8Var.a();
                            z = true;
                        }
                        int i10 = iY - iD;
                        this.j = iD - top;
                        if (z) {
                            i5 = 0;
                            while (i5 < appBarLayout.getChildCount()) {
                                jm jmVar2 = (jm) appBarLayout.getChildAt(i5).getLayoutParams();
                                ot9Var = jmVar2.b;
                                if (ot9Var == null && (jmVar2.a & i9) != 0) {
                                    View childAt2 = appBarLayout.getChildAt(i5);
                                    float fW = w();
                                    Rect rect = (Rect) ot9Var.b;
                                    Rect rect2 = (Rect) ot9Var.a;
                                    childAt2.getDrawingRect(rect2);
                                    appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect2);
                                    rect2.offset(0, -appBarLayout.getTopInset());
                                    float fAbs = rect2.top - Math.abs(fW);
                                    if (fAbs <= 0.0f) {
                                        float fC = 1.0f - iz1.c(Math.abs(fAbs / rect2.height()), 0.0f, 1.0f);
                                        float fHeight = (-fAbs) - ((rect2.height() * 0.3f) * (1.0f - (fC * fC)));
                                        childAt2.setTranslationY(fHeight);
                                        childAt2.getDrawingRect(rect);
                                        rect.offset(0, (int) (-fHeight));
                                        if (fHeight >= rect.height()) {
                                            childAt2.setAlpha(0.0f);
                                        } else {
                                            childAt2.setAlpha(1.0f);
                                        }
                                        childAt2.setClipBounds(rect);
                                    } else {
                                        childAt2.setClipBounds(null);
                                        childAt2.setTranslationY(0.0f);
                                        childAt2.setAlpha(1.0f);
                                    }
                                }
                                i5++;
                                i9 = 1;
                            }
                        }
                        if (!z && appBarLayout.e) {
                            coordinatorLayout.i(appBarLayout);
                        }
                        appBarLayout.a = w();
                        if (!appBarLayout.willNotDraw()) {
                            appBarLayout.postInvalidateOnAnimation();
                        }
                        if (iD < iY) {
                            i4 = -1;
                        } else {
                            i4 = 1;
                        }
                        H(coordinatorLayout, appBarLayout, iD, i4, false);
                        i6 = i10;
                    } else {
                        this.b = top;
                    }
                    z = false;
                    int i11 = iY - iD;
                    this.j = iD - top;
                    if (z) {
                        i5 = 0;
                        while (i5 < appBarLayout.getChildCount()) {
                            jm jmVar3 = (jm) appBarLayout.getChildAt(i5).getLayoutParams();
                            ot9Var = jmVar3.b;
                            if (ot9Var == null) {
                            }
                            i5++;
                            i9 = 1;
                        }
                    }
                    if (!z) {
                        coordinatorLayout.i(appBarLayout);
                    }
                    appBarLayout.a = w();
                    if (!appBarLayout.willNotDraw()) {
                        appBarLayout.postInvalidateOnAnimation();
                    }
                    if (iD < iY) {
                        i4 = -1;
                    } else {
                        i4 = 1;
                    }
                    H(coordinatorLayout, appBarLayout, iD, i4, false);
                    i6 = i11;
                }
            }
            if (dl8.d(coordinatorLayout) != null) {
                return i6;
            }
            dl8.n(coordinatorLayout, new b(coordinatorLayout, this, appBarLayout));
            return i6;
        }

        public BaseBehavior() {
            this.f = -1;
            this.h = -1;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        jm jmVar = new jm(-1, -2);
        jmVar.a = 1;
        return jmVar;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ScrollingViewBehavior extends i34 {
        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(0);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.O);
            this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public static AppBarLayout z(ArrayList arrayList) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = (View) arrayList.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // defpackage.ew1
        public final boolean f(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // defpackage.ew1
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ew1 ew1Var = ((hw1) view2.getLayoutParams()).a;
            if (ew1Var instanceof BaseBehavior) {
                int bottom = (((view2.getBottom() - view.getTop()) + ((BaseBehavior) ew1Var).j) + this.e) - y(view2);
                WeakHashMap weakHashMap = dl8.a;
                view.offsetTopAndBottom(bottom);
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.r) {
                return false;
            }
            appBarLayout.e(appBarLayout.f(view), !appBarLayout.n);
            return false;
        }

        @Override // defpackage.ew1
        public final void i(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                dl8.n(coordinatorLayout, null);
            }
        }

        @Override // defpackage.ew1
        public final boolean q(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutZ = z(coordinatorLayout.k(view));
            if (appBarLayoutZ != null) {
                Rect rect2 = new Rect(rect);
                rect2.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect3 = this.c;
                rect3.set(0, 0, width, height);
                if (!rect3.contains(rect2)) {
                    appBarLayoutZ.d(false, !z, true);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior() {
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }
}
