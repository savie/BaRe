package com.google.android.material.slider;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import defpackage.br4;
import defpackage.c6;
import defpackage.c95;
import defpackage.iz1;
import defpackage.l0;
import defpackage.on0;
import defpackage.xs1;
import defpackage.zh8;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Slider extends on0 {
    public Slider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.value});
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setValue(typedArrayObtainStyledAttributes.getFloat(0, 0.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return SeekBar.class.getName();
    }

    public int getActiveThumbIndex() {
        return this.K0;
    }

    public int getContinuousModeTickCount() {
        return this.N0;
    }

    public int getFocusedThumbIndex() {
        return this.L0;
    }

    public int getHaloRadius() {
        return this.e0;
    }

    public ColorStateList getHaloTintList() {
        return this.V0;
    }

    public int getLabelBehavior() {
        return this.W;
    }

    public float getStepSize() {
        return this.M0;
    }

    @Override // defpackage.on0
    public float getThumbElevation() {
        return this.m1;
    }

    public int getThumbHeight() {
        return this.d0;
    }

    @Override // defpackage.on0
    public int getThumbRadius() {
        return this.c0 / 2;
    }

    @Override // defpackage.on0
    public ColorStateList getThumbStrokeColor() {
        return this.o1;
    }

    @Override // defpackage.on0
    public float getThumbStrokeWidth() {
        return this.n1;
    }

    @Override // defpackage.on0
    public ColorStateList getThumbTintList() {
        return this.p1;
    }

    public int getThumbTrackGapSize() {
        return this.f0;
    }

    public int getThumbWidth() {
        return this.c0;
    }

    public int getTickActiveRadius() {
        return this.Q0;
    }

    public ColorStateList getTickActiveTintList() {
        return this.W0;
    }

    public int getTickInactiveRadius() {
        return this.R0;
    }

    public ColorStateList getTickInactiveTintList() {
        return this.X0;
    }

    public ColorStateList getTickTintList() {
        if (this.X0.equals(this.W0)) {
            return this.W0;
        }
        l0.e("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
        return null;
    }

    public int getTickVisibilityMode() {
        return this.P0;
    }

    public ColorStateList getTrackActiveTintList() {
        return this.Y0;
    }

    @Override // defpackage.on0
    public int getTrackCornerSize() {
        int i = this.k0;
        return i == -1 ? this.a0 / 2 : i;
    }

    public int getTrackHeight() {
        return this.a0;
    }

    public ColorStateList getTrackIconActiveColor() {
        return this.r0;
    }

    public Drawable getTrackIconActiveEnd() {
        return this.p0;
    }

    public Drawable getTrackIconActiveStart() {
        return this.n0;
    }

    public ColorStateList getTrackIconInactiveColor() {
        return this.w0;
    }

    public Drawable getTrackIconInactiveEnd() {
        return this.u0;
    }

    public Drawable getTrackIconInactiveStart() {
        return this.s0;
    }

    public int getTrackIconSize() {
        return this.x0;
    }

    public ColorStateList getTrackInactiveTintList() {
        return this.Z0;
    }

    public int getTrackInsideCornerSize() {
        return this.l0;
    }

    public int getTrackSidePadding() {
        return this.b0;
    }

    public int getTrackStopIndicatorSize() {
        return this.j0;
    }

    public ColorStateList getTrackTintList() {
        if (this.Z0.equals(this.Y0)) {
            return this.Y0;
        }
        l0.e("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
        return null;
    }

    public int getTrackWidth() {
        return this.S0;
    }

    public float getValue() {
        return getValues().get(0).floatValue();
    }

    public float getValueFrom() {
        return this.H0;
    }

    public float getValueTo() {
        return this.I0;
    }

    @Override // defpackage.on0
    public void setCentered(boolean z) {
        if (this.m0 == z) {
            return;
        }
        this.m0 = z;
        float f = this.H0;
        if (z) {
            setValues(Float.valueOf((f + this.I0) / 2.0f));
        } else {
            setValues(Float.valueOf(f));
        }
        O(true);
    }

    public void setContinuousModeTickCount(int i) {
        if (i < 0) {
            c6.f(xs1.h(i, "The continuousModeTickCount(", ") must be greater than or equal to 0"));
        } else if (this.N0 != i) {
            this.N0 = i;
            this.U0 = true;
            postInvalidate();
        }
    }

    public void setCustomThumbDrawable(Drawable drawable) {
        Drawable drawableNewDrawable = drawable.mutate().getConstantState().newDrawable();
        a(this.c0, drawableNewDrawable);
        this.k1 = drawableNewDrawable;
        this.l1.clear();
        postInvalidate();
    }

    @Override // defpackage.on0, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    public void setFocusedThumbIndex(int i) {
        if (i < 0 || i >= this.J0.size()) {
            c6.f("index out of range");
            return;
        }
        this.L0 = i;
        this.n.v(i);
        postInvalidate();
    }

    @Override // defpackage.on0
    public void setHaloRadius(int i) {
        if (i == this.e0) {
            return;
        }
        this.e0 = i;
        RippleDrawable rippleDrawableN = n();
        if (n() == null || rippleDrawableN == null) {
            postInvalidate();
        } else {
            rippleDrawableN.setRadius(this.e0);
        }
    }

    public void setHaloRadiusResource(int i) {
        setHaloRadius(getResources().getDimensionPixelSize(i));
    }

    @Override // defpackage.on0
    public void setHaloTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.V0)) {
            return;
        }
        this.V0 = colorStateList;
        RippleDrawable rippleDrawableN = n();
        if (n() != null && rippleDrawableN != null) {
            rippleDrawableN.setColor(colorStateList);
            return;
        }
        int iO = o(colorStateList);
        Paint paint = this.d;
        paint.setColor(iO);
        paint.setAlpha(63);
        invalidate();
    }

    @Override // defpackage.on0
    public void setLabelBehavior(int i) {
        if (this.W != i) {
            this.W = i;
            O(true);
        }
    }

    @Override // defpackage.on0
    public void setOrientation(int i) {
        if (this.T == i) {
            return;
        }
        this.T = i;
        O(true);
    }

    public void setStepSize(float f) {
        if (f >= 0.0f) {
            if (this.M0 != f) {
                this.M0 = f;
                this.U0 = true;
                postInvalidate();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("The stepSize(" + f + ") must be 0, or a factor of the valueFrom(" + this.H0 + ")-valueTo(" + this.I0 + ") range");
    }

    @Override // defpackage.on0
    public void setThumbElevation(float f) {
        if (f == this.m1) {
            return;
        }
        this.m1 = f;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i >= arrayList.size()) {
                return;
            }
            ((c95) arrayList.get(i)).s(this.m1);
            i++;
        }
    }

    public void setThumbElevationResource(int i) {
        setThumbElevation(getResources().getDimension(i));
    }

    @Override // defpackage.on0
    public void setThumbHeight(int i) {
        if (i == this.d0) {
            return;
        }
        this.d0 = i;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i2 >= arrayList.size()) {
                break;
            }
            ((c95) arrayList.get(i2)).setBounds(0, 0, this.c0, this.d0);
            i2++;
        }
        Drawable drawable = this.k1;
        if (drawable != null) {
            a(this.c0, drawable);
        }
        Iterator it = this.l1.iterator();
        while (it.hasNext()) {
            a(this.c0, (Drawable) it.next());
        }
        O(false);
    }

    public void setThumbHeightResource(int i) {
        setThumbHeight(getResources().getDimensionPixelSize(i));
    }

    public void setThumbRadius(int i) {
        int i2 = i * 2;
        setThumbWidth(i2);
        setThumbHeight(i2);
    }

    public void setThumbRadiusResource(int i) {
        setThumbRadius(getResources().getDimensionPixelSize(i));
    }

    @Override // defpackage.on0
    public void setThumbStrokeColor(ColorStateList colorStateList) {
        if (colorStateList == this.o1) {
            return;
        }
        this.o1 = colorStateList;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i >= arrayList.size()) {
                postInvalidate();
                return;
            } else {
                ((c95) arrayList.get(i)).y(colorStateList);
                i++;
            }
        }
    }

    public void setThumbStrokeColorResource(int i) {
        if (i != 0) {
            setThumbStrokeColor(zh8.q(getContext(), i));
        }
    }

    @Override // defpackage.on0
    public void setThumbStrokeWidth(float f) {
        if (f == this.n1) {
            return;
        }
        this.n1 = f;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i >= arrayList.size()) {
                postInvalidate();
                return;
            } else {
                ((c95) arrayList.get(i)).A(f);
                i++;
            }
        }
    }

    public void setThumbStrokeWidthResource(int i) {
        if (i != 0) {
            setThumbStrokeWidth(getResources().getDimension(i));
        }
    }

    @Override // defpackage.on0
    public void setThumbTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.p1)) {
            return;
        }
        this.p1 = colorStateList;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.j1;
            if (i >= arrayList.size()) {
                invalidate();
                return;
            } else {
                ((c95) arrayList.get(i)).t(this.p1);
                i++;
            }
        }
    }

    @Override // defpackage.on0
    public void setThumbTrackGapSize(int i) {
        if (this.f0 == i) {
            return;
        }
        this.f0 = i;
        invalidate();
    }

    @Override // defpackage.on0
    public void setThumbWidth(int i) {
        if (i == this.c0) {
            return;
        }
        this.c0 = i;
        Drawable drawable = this.k1;
        if (drawable != null) {
            a(i, drawable);
        }
        for (int i2 = 0; i2 < this.l1.size(); i2++) {
            a(i, (Drawable) this.l1.get(i2));
        }
        y(i, -1, null);
    }

    public void setThumbWidthResource(int i) {
        setThumbWidth(getResources().getDimensionPixelSize(i));
    }

    @Override // defpackage.on0
    public void setTickActiveRadius(int i) {
        if (this.Q0 != i) {
            this.Q0 = i;
            this.f.setStrokeWidth(i * 2);
            O(false);
        }
    }

    @Override // defpackage.on0
    public void setTickActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.W0)) {
            return;
        }
        this.W0 = colorStateList;
        this.f.setColor(o(colorStateList));
        invalidate();
    }

    @Override // defpackage.on0
    public void setTickInactiveRadius(int i) {
        if (this.R0 != i) {
            this.R0 = i;
            this.e.setStrokeWidth(i * 2);
            O(false);
        }
    }

    @Override // defpackage.on0
    public void setTickInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.X0)) {
            return;
        }
        this.X0 = colorStateList;
        this.e.setColor(o(colorStateList));
        invalidate();
    }

    public void setTickTintList(ColorStateList colorStateList) {
        setTickInactiveTintList(colorStateList);
        setTickActiveTintList(colorStateList);
    }

    public void setTickVisibilityMode(int i) {
        if (this.P0 != i) {
            this.P0 = i;
            postInvalidate();
        }
    }

    @Deprecated
    public void setTickVisible(boolean z) {
        setTickVisibilityMode(z ? 0 : 2);
    }

    @Override // defpackage.on0
    public void setTrackActiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.Y0)) {
            return;
        }
        this.Y0 = colorStateList;
        this.b.setColor(o(colorStateList));
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackCornerSize(int i) {
        if (this.k0 == i) {
            return;
        }
        this.k0 = i;
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackHeight(int i) {
        if (this.a0 != i) {
            this.a0 = i;
            this.a.setStrokeWidth(i);
            this.b.setStrokeWidth(this.a0);
            O(false);
        }
    }

    @Override // defpackage.on0
    public void setTrackIconActiveColor(ColorStateList colorStateList) {
        if (colorStateList == this.r0) {
            return;
        }
        this.r0 = colorStateList;
        L();
        K();
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackIconActiveEnd(Drawable drawable) {
        if (drawable == this.p0) {
            return;
        }
        this.p0 = drawable;
        this.q0 = false;
        K();
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackIconActiveStart(Drawable drawable) {
        if (drawable == this.n0) {
            return;
        }
        this.n0 = drawable;
        this.o0 = false;
        L();
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackIconInactiveColor(ColorStateList colorStateList) {
        if (colorStateList == this.w0) {
            return;
        }
        this.w0 = colorStateList;
        N();
        M();
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackIconInactiveEnd(Drawable drawable) {
        if (drawable == this.u0) {
            return;
        }
        this.u0 = drawable;
        this.v0 = false;
        M();
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackIconInactiveStart(Drawable drawable) {
        if (drawable == this.s0) {
            return;
        }
        this.s0 = drawable;
        this.t0 = false;
        N();
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackIconSize(int i) {
        if (this.x0 == i) {
            return;
        }
        this.x0 = i;
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackInactiveTintList(ColorStateList colorStateList) {
        if (colorStateList.equals(this.Z0)) {
            return;
        }
        this.Z0 = colorStateList;
        this.a.setColor(o(colorStateList));
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackInsideCornerSize(int i) {
        if (this.l0 == i) {
            return;
        }
        this.l0 = i;
        invalidate();
    }

    @Override // defpackage.on0
    public void setTrackStopIndicatorSize(int i) {
        if (this.j0 == i) {
            return;
        }
        this.j0 = i;
        this.k.setStrokeWidth(i);
        invalidate();
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        setTrackInactiveTintList(colorStateList);
        setTrackActiveTintList(colorStateList);
    }

    public void setValue(float f) {
        setValues(Float.valueOf(f));
    }

    public void setValueFrom(float f) {
        this.H0 = f;
        this.U0 = true;
        postInvalidate();
    }

    public void setValueTo(float f) {
        this.I0 = f;
        this.U0 = true;
        postInvalidate();
    }

    public void setTrackIconActiveEnd(int i) {
        setTrackIconActiveEnd(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public void setTrackIconActiveStart(int i) {
        setTrackIconActiveStart(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public void setTrackIconInactiveEnd(int i) {
        setTrackIconInactiveEnd(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public void setTrackIconInactiveStart(int i) {
        setTrackIconInactiveStart(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public /* bridge */ /* synthetic */ void setLabelFormatter(br4 br4Var) {
    }

    public void setCustomThumbDrawable(int i) {
        setCustomThumbDrawable(getResources().getDrawable(i));
    }

    public Slider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.sliderStyle);
    }

    public Slider(Context context) {
        this(context, null);
    }
}
