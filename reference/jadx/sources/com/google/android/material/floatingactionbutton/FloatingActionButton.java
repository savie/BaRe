package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.focus.FocusRingDrawable;
import defpackage.c6;
import defpackage.ci3;
import defpackage.di3;
import defpackage.dl8;
import defpackage.dw1;
import defpackage.ew1;
import defpackage.gi3;
import defpackage.hi3;
import defpackage.hw1;
import defpackage.j03;
import defpackage.jd4;
import defpackage.jo;
import defpackage.k03;
import defpackage.k55;
import defpackage.mn8;
import defpackage.oi2;
import defpackage.oo;
import defpackage.ph5;
import defpackage.rb;
import defpackage.t03;
import defpackage.tb7;
import defpackage.tc7;
import defpackage.td6;
import defpackage.tt0;
import defpackage.xh8;
import defpackage.xn6;
import defpackage.yc9;
import defpackage.zm5;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FloatingActionButton extends mn8 implements j03, tc7, dw1 {
    public final k03 G;
    public hi3 H;
    public ColorStateList b;
    public PorterDuff.Mode c;
    public ColorStateList d;
    public PorterDuff.Mode e;
    public ColorStateList f;
    public int k;
    public int n;
    public int p;
    public int q;
    public boolean r;
    public final Rect t;
    public final Rect x;
    public final oo y;

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable layerDrawable;
        super(zm5.J(context, attributeSet, i, R.style.Widget_Design_FloatingActionButton), attributeSet, i);
        this.a = getVisibility();
        this.t = new Rect();
        this.x = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.n, i, R.style.Widget_Design_FloatingActionButton, new int[0]);
        this.b = k55.m(context2, typedArrayB, 1);
        this.c = yc9.L(typedArrayB.getInt(2, -1), null);
        this.f = k55.m(context2, typedArrayB, 12);
        this.k = typedArrayB.getInt(7, -1);
        this.n = typedArrayB.getDimensionPixelSize(6, 0);
        int dimensionPixelSize = typedArrayB.getDimensionPixelSize(3, 0);
        float dimension = typedArrayB.getDimension(4, 0.0f);
        float dimension2 = typedArrayB.getDimension(9, 0.0f);
        float dimension3 = typedArrayB.getDimension(11, 0.0f);
        this.r = typedArrayB.getBoolean(16, false);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
        setMaxImageSize(typedArrayB.getDimensionPixelSize(10, 0));
        ph5 ph5VarA = ph5.a(context2, typedArrayB, 15);
        ph5 ph5VarA2 = ph5.a(context2, typedArrayB, 8);
        tb7 tb7VarA = tb7.i(context2, attributeSet, i, R.style.Widget_Design_FloatingActionButton, tb7.m).a();
        boolean z = typedArrayB.getBoolean(5, false);
        setEnabled(typedArrayB.getBoolean(0, true));
        typedArrayB.recycle();
        oo ooVar = new oo(this);
        this.y = ooVar;
        ooVar.b(attributeSet, i);
        this.G = new k03(this);
        getImpl().g(tb7VarA);
        hi3 impl = getImpl();
        ColorStateList colorStateList = this.b;
        PorterDuff.Mode mode = this.c;
        ColorStateList colorStateList2 = this.f;
        FloatingActionButton floatingActionButton = impl.s;
        tb7 tb7Var = impl.a;
        tb7Var.getClass();
        gi3 gi3Var = new gi3(tb7Var);
        impl.b = gi3Var;
        gi3Var.setTintList(colorStateList);
        if (mode != null) {
            impl.b.setTintMode(mode);
        }
        impl.b.p(floatingActionButton.getContext());
        if (dimensionPixelSize > 0) {
            Context context3 = floatingActionButton.getContext();
            tb7 tb7Var2 = impl.a;
            tb7Var2.getClass();
            tt0 tt0Var = new tt0(tb7Var2);
            int color = context3.getColor(R.color.design_fab_stroke_top_outer_color);
            int color2 = context3.getColor(R.color.design_fab_stroke_top_inner_color);
            int color3 = context3.getColor(R.color.design_fab_stroke_end_inner_color);
            int color4 = context3.getColor(R.color.design_fab_stroke_end_outer_color);
            tt0Var.i = color;
            tt0Var.j = color2;
            tt0Var.k = color3;
            tt0Var.l = color4;
            float f = dimensionPixelSize;
            if (tt0Var.h != f) {
                tt0Var.h = f;
                tt0Var.b.setStrokeWidth(f * 1.3333f);
                tt0Var.n = true;
                tt0Var.invalidateSelf();
            }
            if (colorStateList != null) {
                tt0Var.m = colorStateList.getColorForState(tt0Var.getState(), tt0Var.m);
            }
            tt0Var.p = colorStateList;
            tt0Var.n = true;
            tt0Var.invalidateSelf();
            impl.d = tt0Var;
            tt0 tt0Var2 = impl.d;
            tt0Var2.getClass();
            gi3 gi3Var2 = impl.b;
            gi3Var2.getClass();
            layerDrawable = new LayerDrawable(new Drawable[]{tt0Var2, gi3Var2});
            drawable = null;
        } else {
            drawable = null;
            impl.d = null;
            layerDrawable = impl.b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(xn6.c(colorStateList2), layerDrawable, drawable);
        impl.c = rippleDrawable;
        FocusRingDrawable.f(floatingActionButton.getContext(), rippleDrawable, impl.b);
        impl.e = rippleDrawable;
        getImpl().k = dimensionPixelSize2;
        hi3 impl2 = getImpl();
        if (impl2.h != dimension) {
            impl2.h = dimension;
            impl2.e(dimension, impl2.i, impl2.j);
        }
        hi3 impl3 = getImpl();
        if (impl3.i != dimension2) {
            impl3.i = dimension2;
            impl3.e(impl3.h, dimension2, impl3.j);
        }
        hi3 impl4 = getImpl();
        if (impl4.j != dimension3) {
            impl4.j = dimension3;
            impl4.e(impl4.h, impl4.i, dimension3);
        }
        getImpl().n = ph5VarA;
        getImpl().o = ph5VarA2;
        getImpl().f = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    private hi3 getImpl() {
        if (this.H == null) {
            this.H = new hi3(this, new rb(this, 15));
        }
        return this.H;
    }

    public final int c(int i) {
        int i2 = this.n;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        if (i != -1) {
            return i != 1 ? resources.getDimensionPixelSize(R.dimen.design_fab_size_normal) : resources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
        }
        return Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? c(1) : c(0);
    }

    public final void d() {
        hi3 impl = getImpl();
        FloatingActionButton floatingActionButton = impl.s;
        int visibility = floatingActionButton.getVisibility();
        int i = impl.r;
        if (visibility == 0) {
            if (i == 1) {
                return;
            }
        } else if (i != 2) {
            return;
        }
        Animator animator = impl.m;
        if (animator != null) {
            animator.cancel();
        }
        FloatingActionButton floatingActionButton2 = impl.s;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.a(4, false);
            return;
        }
        ph5 ph5Var = impl.o;
        AnimatorSet animatorSetB = ph5Var != null ? impl.b(ph5Var, 0.0f, 0.0f, 0.0f) : impl.c(0.0f, 0.4f, 0.4f, hi3.B, hi3.C);
        animatorSetB.addListener(new ci3(impl));
        animatorSetB.start();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
    }

    public final void e() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.d;
        if (colorStateList == null) {
            drawable.clearColorFilter();
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.e;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(jo.c(colorForState, mode));
    }

    public final void f() {
        hi3 impl = getImpl();
        FloatingActionButton floatingActionButton = impl.s;
        Matrix matrix = impl.x;
        FloatingActionButton floatingActionButton2 = impl.s;
        int visibility = floatingActionButton.getVisibility();
        int i = impl.r;
        if (visibility != 0) {
            if (i == 2) {
                return;
            }
        } else if (i != 1) {
            return;
        }
        Animator animator = impl.m;
        if (animator != null) {
            animator.cancel();
        }
        int i2 = 0;
        boolean z = impl.n == null;
        if (!floatingActionButton2.isLaidOut() || floatingActionButton2.isInEditMode()) {
            floatingActionButton.a(0, false);
            floatingActionButton.setAlpha(1.0f);
            floatingActionButton.setScaleY(1.0f);
            floatingActionButton.setScaleX(1.0f);
            impl.p = 1.0f;
            impl.a(1.0f, matrix);
            floatingActionButton2.setImageMatrix(matrix);
            return;
        }
        if (floatingActionButton.getVisibility() != 0) {
            floatingActionButton.setAlpha(0.0f);
            floatingActionButton.setScaleY(z ? 0.4f : 0.0f);
            floatingActionButton.setScaleX(z ? 0.4f : 0.0f);
            float f = z ? 0.4f : 0.0f;
            impl.p = f;
            impl.a(f, matrix);
            floatingActionButton2.setImageMatrix(matrix);
        }
        ph5 ph5Var = impl.n;
        AnimatorSet animatorSetB = ph5Var != null ? impl.b(ph5Var, 1.0f, 1.0f, 1.0f) : impl.c(1.0f, 1.0f, 1.0f, hi3.z, hi3.A);
        animatorSetB.addListener(new di3(impl, i2));
        animatorSetB.start();
    }

    @Override // android.widget.ImageButton, android.widget.ImageView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.b;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.c;
    }

    @Override // defpackage.dw1
    public ew1 getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().s.getElevation();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().i;
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().j;
    }

    public Drawable getContentBackground() {
        return getImpl().e;
    }

    public int getCustomSize() {
        return this.n;
    }

    public int getExpandedComponentIdHint() {
        return this.G.c;
    }

    public ph5 getHideMotionSpec() {
        return getImpl().o;
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f;
    }

    public tb7 getShapeAppearanceModel() {
        tb7 tb7Var = getImpl().a;
        tb7Var.getClass();
        return tb7Var;
    }

    public ph5 getShowMotionSpec() {
        return getImpl().n;
    }

    public int getSize() {
        return this.k;
    }

    public int getSizeDimension() {
        return c(this.k);
    }

    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    public ColorStateList getSupportImageTintList() {
        return this.d;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        return this.e;
    }

    public boolean getUseCompatPadding() {
        return this.r;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        hi3 impl = getImpl();
        gi3 gi3Var = impl.b;
        if (gi3Var != null) {
            xh8.D(impl.s, gi3Var);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().s.getViewTreeObserver();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.p = (sizeDimension - this.q) / 2;
        getImpl().h();
        int iMin = Math.min(View.resolveSize(sizeDimension, i), View.resolveSize(sizeDimension, i2));
        Rect rect = this.t;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof t03)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        t03 t03Var = (t03) parcelable;
        super.onRestoreInstanceState(t03Var.a);
        Bundle bundle = (Bundle) t03Var.c.get("expandableWidgetHelper");
        bundle.getClass();
        k03 k03Var = this.G;
        k03Var.getClass();
        k03Var.b = bundle.getBoolean("expanded", false);
        k03Var.c = bundle.getInt("expandedComponentIdHint", 0);
        if (k03Var.b) {
            FloatingActionButton floatingActionButton = k03Var.a;
            ViewParent parent = floatingActionButton.getParent();
            if (parent instanceof CoordinatorLayout) {
                ((CoordinatorLayout) parent).i(floatingActionButton);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        t03 t03Var = new t03(parcelableOnSaveInstanceState);
        k03 k03Var = this.G;
        k03Var.getClass();
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", k03Var.b);
        bundle.putInt("expandedComponentIdHint", k03Var.c);
        t03Var.c.put("expandableWidgetHelper", bundle);
        return t03Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            Rect rect = this.x;
            rect.set(0, 0, measuredWidth, measuredHeight);
            int i = rect.left;
            Rect rect2 = this.t;
            rect.left = i + rect2.left;
            rect.top += rect2.top;
            rect.right -= rect2.right;
            rect.bottom -= rect2.bottom;
            hi3 hi3Var = this.H;
            int i2 = -(hi3Var.f ? Math.max((hi3Var.k - hi3Var.s.getSizeDimension()) / 2, 0) : 0);
            rect.inset(i2, i2);
            if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.b != colorStateList) {
            this.b = colorStateList;
            hi3 impl = getImpl();
            gi3 gi3Var = impl.b;
            if (gi3Var != null) {
                gi3Var.setTintList(colorStateList);
            }
            tt0 tt0Var = impl.d;
            if (tt0Var != null) {
                if (colorStateList != null) {
                    tt0Var.m = colorStateList.getColorForState(tt0Var.getState(), tt0Var.m);
                }
                tt0Var.p = colorStateList;
                tt0Var.n = true;
                tt0Var.invalidateSelf();
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.c != mode) {
            this.c = mode;
            gi3 gi3Var = getImpl().b;
            if (gi3Var != null) {
                gi3Var.setTintMode(mode);
            }
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        setTooltipText(isClickable() ? getContentDescription() : null);
    }

    public void setCompatElevation(float f) {
        hi3 impl = getImpl();
        if (impl.h != f) {
            impl.h = f;
            impl.e(f, impl.i, impl.j);
        }
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        hi3 impl = getImpl();
        if (impl.i != f) {
            impl.i = f;
            impl.e(impl.h, f, impl.j);
        }
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        hi3 impl = getImpl();
        if (impl.j != f) {
            impl.j = f;
            impl.e(impl.h, impl.i, f);
        }
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        setTooltipText(isClickable() ? getContentDescription() : null);
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            c6.f("Custom size must be non-negative");
        } else if (i != this.n) {
            this.n = i;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        gi3 gi3Var = getImpl().b;
        if (gi3Var != null) {
            gi3Var.s(f);
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().f) {
            getImpl().f = z;
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.G.c = i;
    }

    public void setHideMotionSpec(ph5 ph5Var) {
        getImpl().o = ph5Var;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(ph5.b(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            hi3 impl = getImpl();
            float f = impl.p;
            impl.p = f;
            Matrix matrix = impl.x;
            impl.a(f, matrix);
            impl.s.setImageMatrix(matrix);
            if (this.d != null) {
                e();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.y.c(i);
        e();
    }

    public void setMaxImageSize(int i) {
        this.q = i;
        hi3 impl = getImpl();
        if (impl.q != i) {
            impl.q = i;
            float f = impl.p;
            impl.p = f;
            Matrix matrix = impl.x;
            impl.a(f, matrix);
            impl.s.setImageMatrix(matrix);
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f != colorStateList) {
            this.f = colorStateList;
            hi3 impl = getImpl();
            ColorStateList colorStateList2 = this.f;
            RippleDrawable rippleDrawable = impl.c;
            if (rippleDrawable != null) {
                rippleDrawable.setColor(xn6.c(colorStateList2));
            } else if (rippleDrawable != null) {
                rippleDrawable.setTintList(xn6.c(colorStateList2));
            }
        }
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().getClass();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().getClass();
    }

    public void setShadowPaddingEnabled(boolean z) {
        hi3 impl = getImpl();
        impl.g = z;
        impl.h();
    }

    @Override // defpackage.tc7
    public void setShapeAppearanceModel(tb7 tb7Var) {
        getImpl().g(tb7Var);
    }

    public void setShowMotionSpec(ph5 ph5Var) {
        getImpl().n = ph5Var;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(ph5.b(getContext(), i));
    }

    public void setSize(int i) {
        this.n = 0;
        if (i != this.k) {
            this.k = i;
            requestLayout();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.d != colorStateList) {
            this.d = colorStateList;
            e();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.e != mode) {
            this.e = mode;
            e();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().f();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().f();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().f();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.r != z) {
            this.r = z;
            getImpl().h();
        }
    }

    @Override // defpackage.mn8, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class BaseBehavior<T extends FloatingActionButton> extends ew1 {
        public Rect a;
        public final boolean b;

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.o);
            this.b = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // defpackage.ew1
        public final boolean e(Rect rect, View view) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            Rect rect2 = floatingActionButton.t;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // defpackage.ew1
        public final void g(hw1 hw1Var) {
            if (hw1Var.h == 0) {
                hw1Var.h = 80;
            }
        }

        @Override // defpackage.ew1
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                w(coordinatorLayout, (AppBarLayout) view2, floatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof hw1 ? ((hw1) layoutParams).a instanceof BottomSheetBehavior : false) {
                    x(view2, floatingActionButton);
                }
            }
            return false;
        }

        @Override // defpackage.ew1
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view;
            ArrayList arrayListK = coordinatorLayout.k(floatingActionButton);
            int size = arrayListK.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                View view2 = (View) arrayListK.get(i3);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof hw1 ? ((hw1) layoutParams).a instanceof BottomSheetBehavior : false) && x(view2, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (w(coordinatorLayout, (AppBarLayout) view2, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.r(floatingActionButton, i);
            Rect rect = floatingActionButton.t;
            if (rect.centerX() > 0 && rect.centerY() > 0) {
                hw1 hw1Var = (hw1) floatingActionButton.getLayoutParams();
                int i4 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin ? -rect.left : 0;
                if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin) {
                    i2 = rect.bottom;
                } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) hw1Var).topMargin) {
                    i2 = -rect.top;
                }
                if (i2 != 0) {
                    WeakHashMap weakHashMap = dl8.a;
                    floatingActionButton.offsetTopAndBottom(i2);
                }
                if (i4 != 0) {
                    WeakHashMap weakHashMap2 = dl8.a;
                    floatingActionButton.offsetLeftAndRight(i4);
                }
            }
            return true;
        }

        public final boolean w(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            hw1 hw1Var = (hw1) floatingActionButton.getLayoutParams();
            if (!this.b || hw1Var.f != appBarLayout.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            oi2.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.d();
                return true;
            }
            floatingActionButton.f();
            return true;
        }

        public final boolean x(View view, FloatingActionButton floatingActionButton) {
            hw1 hw1Var = (hw1) floatingActionButton.getLayoutParams();
            if (!this.b || hw1Var.f != view.getId() || floatingActionButton.getUserSetVisibility() != 0) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((hw1) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.d();
                return true;
            }
            floatingActionButton.f();
            return true;
        }

        public BaseBehavior() {
            this.b = true;
        }
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.floatingActionButtonStyle);
    }

    public FloatingActionButton(Context context) {
        this(context, null);
    }
}
