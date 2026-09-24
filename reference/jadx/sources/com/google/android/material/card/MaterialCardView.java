package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import defpackage.c95;
import defpackage.hk7;
import defpackage.iz1;
import defpackage.jd4;
import defpackage.ji8;
import defpackage.jm1;
import defpackage.k55;
import defpackage.nm7;
import defpackage.r21;
import defpackage.s85;
import defpackage.tb7;
import defpackage.tc7;
import defpackage.td6;
import defpackage.v85;
import defpackage.xh8;
import defpackage.z85;
import defpackage.zh8;
import defpackage.zm5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialCardView extends r21 implements Checkable, tc7 {
    public static final int[] r = {R.attr.state_checkable};
    public static final int[] t = {R.attr.state_checked};
    public static final int[] x = {org.swiftapps.swiftbackup.R.attr.state_dragged};
    public static final int[] y = {R.attr.state_hovered};
    public final v85 k;
    public final boolean n;
    public boolean p;
    public boolean q;

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        nm7 nm7VarH;
        super(zm5.J(context, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_CardView), attributeSet, i);
        this.p = false;
        this.q = false;
        this.n = true;
        TypedArray typedArrayB = jd4.B(getContext(), attributeSet, td6.z, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_CardView, new int[0]);
        v85 v85Var = new v85(this, attributeSet, i);
        this.k = v85Var;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        c95 c95Var = v85Var.c;
        c95Var.t(cardBackgroundColor);
        v85Var.b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        v85Var.l();
        MaterialCardView materialCardView = v85Var.a;
        ColorStateList colorStateListM = k55.m(materialCardView.getContext(), typedArrayB, 11);
        v85Var.o = colorStateListM;
        if (colorStateListM == null) {
            v85Var.o = ColorStateList.valueOf(-1);
        }
        v85Var.i = typedArrayB.getDimensionPixelSize(12, 0);
        boolean z = typedArrayB.getBoolean(0, false);
        v85Var.t = z;
        materialCardView.setLongClickable(z);
        v85Var.m = k55.m(materialCardView.getContext(), typedArrayB, 6);
        v85Var.g(k55.p(materialCardView.getContext(), typedArrayB, 2));
        v85Var.g = typedArrayB.getDimensionPixelSize(5, 0);
        v85Var.f = typedArrayB.getDimensionPixelSize(4, 0);
        v85Var.h = typedArrayB.getInteger(3, 8388661);
        ColorStateList colorStateListM2 = k55.m(materialCardView.getContext(), typedArrayB, 7);
        v85Var.l = colorStateListM2;
        if (colorStateListM2 == null) {
            v85Var.l = ColorStateList.valueOf(z85.C(materialCardView.getContext(), jm1.U(materialCardView, org.swiftapps.swiftbackup.R.attr.colorControlHighlight)));
        }
        ColorStateList colorStateListM3 = k55.m(materialCardView.getContext(), typedArrayB, 1);
        colorStateListM3 = colorStateListM3 == null ? ColorStateList.valueOf(0) : colorStateListM3;
        c95 c95Var2 = v85Var.d;
        c95Var2.t(colorStateListM3);
        RippleDrawable rippleDrawable = v85Var.p;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(v85Var.l);
        }
        c95Var.s(materialCardView.getCardElevation());
        float f = v85Var.i;
        ColorStateList colorStateList = v85Var.o;
        c95Var2.A(f);
        c95Var2.y(colorStateList);
        materialCardView.setBackgroundInternal(v85Var.d(c95Var));
        Drawable drawableC = v85Var.j() ? v85Var.c() : c95Var2;
        v85Var.j = drawableC;
        materialCardView.setForeground(v85Var.d(drawableC));
        if (v85Var.e == -1.0f && (nm7VarH = nm7.h(materialCardView.getContext(), typedArrayB, 8)) != null) {
            hk7 hk7VarH = ji8.H(materialCardView.getContext());
            c95Var.r(hk7VarH);
            c95Var2.r(hk7VarH);
            c95 c95Var3 = v85Var.r;
            if (c95Var3 != null) {
                c95Var3.r(hk7VarH);
            }
            v85Var.h(nm7VarH);
        }
        typedArrayB.recycle();
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.k.c.getBounds());
        return rectF;
    }

    public final void b() {
        v85 v85Var;
        RippleDrawable rippleDrawable;
        if (Build.VERSION.SDK_INT <= 26 || (rippleDrawable = (v85Var = this.k).p) == null) {
            return;
        }
        Rect bounds = rippleDrawable.getBounds();
        int i = bounds.bottom;
        v85Var.p.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
        v85Var.p.setBounds(bounds.left, bounds.top, bounds.right, i);
    }

    @Override // defpackage.r21
    public ColorStateList getCardBackgroundColor() {
        return this.k.c.b.c;
    }

    public ColorStateList getCardForegroundColor() {
        return this.k.d.b.c;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.k.k;
    }

    public int getCheckedIconGravity() {
        return this.k.h;
    }

    public int getCheckedIconMargin() {
        return this.k.f;
    }

    public int getCheckedIconSize() {
        return this.k.g;
    }

    public ColorStateList getCheckedIconTint() {
        return this.k.m;
    }

    @Override // defpackage.r21
    public int getContentPaddingBottom() {
        return this.k.b.bottom;
    }

    @Override // defpackage.r21
    public int getContentPaddingLeft() {
        return this.k.b.left;
    }

    @Override // defpackage.r21
    public int getContentPaddingRight() {
        return this.k.b.right;
    }

    @Override // defpackage.r21
    public int getContentPaddingTop() {
        return this.k.b.top;
    }

    public float getProgress() {
        return this.k.c.b.j;
    }

    @Override // defpackage.r21
    public float getRadius() {
        return this.k.c.m();
    }

    public ColorStateList getRippleColor() {
        return this.k.l;
    }

    public tb7 getShapeAppearanceModel() {
        return this.k.n.d();
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.k.o;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.k.o;
    }

    public int getStrokeWidth() {
        return this.k.i;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.p;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        v85 v85Var = this.k;
        v85Var.k();
        xh8.D(this, v85Var.c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 8);
        v85 v85Var = this.k;
        if (v85Var != null && v85Var.t) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, r);
        }
        if (this.p) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, t);
        }
        if (this.q) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, x);
        }
        if (isDuplicateParentStateEnabled()) {
            if (isPressed()) {
                View.mergeDrawableStates(iArrOnCreateDrawableState, FrameLayout.PRESSED_STATE_SET);
            }
            if (isHovered()) {
                View.mergeDrawableStates(iArrOnCreateDrawableState, y);
            }
            if (isEnabled()) {
                View.mergeDrawableStates(iArrOnCreateDrawableState, FrameLayout.ENABLED_STATE_SET);
            }
            if (isFocused()) {
                View.mergeDrawableStates(iArrOnCreateDrawableState, FrameLayout.FOCUSED_STATE_SET);
            }
            if (isSelected()) {
                View.mergeDrawableStates(iArrOnCreateDrawableState, FrameLayout.SELECTED_STATE_SET);
            }
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.p);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        v85 v85Var = this.k;
        accessibilityNodeInfo.setCheckable(v85Var != null && v85Var.t);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.p);
    }

    @Override // defpackage.r21, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.k.e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.n) {
            v85 v85Var = this.k;
            if (!v85Var.s) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                v85Var.s = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // defpackage.r21
    public void setCardBackgroundColor(int i) {
        this.k.c.t(ColorStateList.valueOf(i));
    }

    @Override // defpackage.r21
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        v85 v85Var = this.k;
        v85Var.c.s(v85Var.a.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        c95 c95Var = this.k.d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        c95Var.t(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.k.t = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.p != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.k.g(drawable);
    }

    public void setCheckedIconGravity(int i) {
        v85 v85Var = this.k;
        if (v85Var.h != i) {
            v85Var.h = i;
            MaterialCardView materialCardView = v85Var.a;
            v85Var.e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(int i) {
        this.k.f = i;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i != -1) {
            this.k.f = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconResource(int i) {
        this.k.g(iz1.m(getContext(), i));
    }

    public void setCheckedIconSize(int i) {
        this.k.g = i;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i != 0) {
            this.k.g = getResources().getDimensionPixelSize(i);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        v85 v85Var = this.k;
        v85Var.m = colorStateList;
        Drawable drawable = v85Var.k;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        v85 v85Var = this.k;
        if (v85Var != null) {
            v85Var.k();
        }
    }

    public void setDragged(boolean z) {
        if (this.q != z) {
            this.q = z;
            refreshDrawableState();
            b();
            invalidate();
        }
    }

    @Override // defpackage.r21
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.k.m();
    }

    @Override // defpackage.r21
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        v85 v85Var = this.k;
        v85Var.m();
        v85Var.l();
    }

    public void setProgress(float f) {
        v85 v85Var = this.k;
        v85Var.c.u(f);
        c95 c95Var = v85Var.d;
        if (c95Var != null) {
            c95Var.u(f);
        }
        c95 c95Var2 = v85Var.r;
        if (c95Var2 != null) {
            c95Var2.u(f);
        }
    }

    @Override // defpackage.r21
    public void setRadius(float f) {
        super.setRadius(f);
        v85 v85Var = this.k;
        v85Var.e = f;
        v85Var.h(v85Var.n.d().a(f));
        v85Var.j.invalidateSelf();
        if (v85Var.i() || (v85Var.a.getPreventCornerOverlap() && !v85Var.c.q())) {
            v85Var.l();
        }
        if (v85Var.i()) {
            v85Var.m();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        v85 v85Var = this.k;
        v85Var.l = colorStateList;
        RippleDrawable rippleDrawable = v85Var.p;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        ColorStateList colorStateListQ = zh8.q(getContext(), i);
        v85 v85Var = this.k;
        v85Var.l = colorStateListQ;
        RippleDrawable rippleDrawable = v85Var.p;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateListQ);
        }
    }

    @Override // defpackage.tc7
    public void setShapeAppearanceModel(tb7 tb7Var) {
        setClipToOutline(tb7Var.l(getBoundsAsRectF()));
        this.k.h(tb7Var);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        v85 v85Var = this.k;
        if (v85Var.o != colorStateList) {
            v85Var.o = colorStateList;
            c95 c95Var = v85Var.d;
            c95Var.A(v85Var.i);
            c95Var.y(colorStateList);
        }
        invalidate();
    }

    public void setStrokeWidth(int i) {
        v85 v85Var = this.k;
        if (i != v85Var.i) {
            v85Var.i = i;
            c95 c95Var = v85Var.d;
            ColorStateList colorStateList = v85Var.o;
            c95Var.A(i);
            c95Var.y(colorStateList);
        }
        invalidate();
    }

    @Override // defpackage.r21
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        v85 v85Var = this.k;
        v85Var.m();
        v85Var.l();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        v85 v85Var = this.k;
        if (v85Var != null && v85Var.t && isEnabled()) {
            this.p = !this.p;
            refreshDrawableState();
            b();
            v85Var.f(this.p, true);
        }
    }

    @Override // defpackage.r21
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.k.c.t(colorStateList);
    }

    public void setOnCheckedChangeListener(s85 s85Var) {
    }

    public void setStrokeColor(int i) {
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.materialCardViewStyle);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }
}
