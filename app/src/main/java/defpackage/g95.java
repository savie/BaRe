package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.focus.FocusRingDrawable;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g95 extends SwitchCompat {
    public static final int[] B0 = {R.attr.state_with_icon};
    public int[] A0;
    public Drawable o0;
    public Drawable p0;
    public int q0;
    public Drawable r0;
    public Drawable s0;
    public ColorStateList t0;
    public ColorStateList u0;
    public PorterDuff.Mode v0;
    public ColorStateList w0;
    public ColorStateList x0;
    public PorterDuff.Mode y0;
    public int[] z0;

    public g95(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_Material3_CompoundButton_MaterialSwitch), attributeSet, i);
        this.q0 = -1;
        Context context2 = getContext();
        this.o0 = super.getThumbDrawable();
        this.t0 = super.getThumbTintList();
        super.setThumbTintList(null);
        this.r0 = super.getTrackDrawable();
        this.w0 = super.getTrackTintList();
        super.setTrackTintList(null);
        u94 u94VarC = jd4.C(context2, attributeSet, td6.F, i, R.style.Widget_Material3_CompoundButton_MaterialSwitch, new int[0]);
        this.p0 = u94VarC.b(0);
        TypedArray typedArray = (TypedArray) u94VarC.b;
        this.q0 = typedArray.getDimensionPixelSize(1, -1);
        this.u0 = u94VarC.a(2);
        int i2 = typedArray.getInt(3, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.v0 = yc9.L(i2, mode);
        this.s0 = u94VarC.b(4);
        this.x0 = u94VarC.a(5);
        this.y0 = yc9.L(typedArray.getInt(6, -1), mode);
        u94VarC.f();
        setEnforceSwitchWidth(false);
        e();
        f();
    }

    public static void g(Drawable drawable, ColorStateList colorStateList, int[] iArr, int[] iArr2, float f) {
        if (drawable == null || colorStateList == null) {
            return;
        }
        drawable.setTint(xl1.b(f, colorStateList.getColorForState(iArr, 0), colorStateList.getColorForState(iArr2, 0)));
    }

    public final void e() {
        this.o0 = du.b(this.o0, this.t0, getThumbTintMode());
        this.p0 = du.b(this.p0, this.u0, this.v0);
        h();
        Drawable drawable = this.o0;
        Drawable drawable2 = this.p0;
        int i = this.q0;
        super.setThumbDrawable(du.a(drawable, drawable2, i, i));
        refreshDrawableState();
    }

    public final void f() {
        this.r0 = du.b(this.r0, this.w0, getTrackTintMode());
        this.s0 = du.b(this.s0, this.x0, this.y0);
        h();
        Drawable layerDrawable = this.r0;
        if (layerDrawable != null && this.s0 != null) {
            layerDrawable = new LayerDrawable(new Drawable[]{this.r0, this.s0});
        } else if (layerDrawable == null) {
            layerDrawable = this.s0;
        }
        if (layerDrawable != null) {
            setSwitchMinWidth(layerDrawable.getIntrinsicWidth());
        }
        super.setTrackDrawable(layerDrawable);
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public Drawable getThumbDrawable() {
        return this.o0;
    }

    public Drawable getThumbIconDrawable() {
        return this.p0;
    }

    public int getThumbIconSize() {
        return this.q0;
    }

    public ColorStateList getThumbIconTintList() {
        return this.u0;
    }

    public PorterDuff.Mode getThumbIconTintMode() {
        return this.v0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public ColorStateList getThumbTintList() {
        return this.t0;
    }

    public Drawable getTrackDecorationDrawable() {
        return this.s0;
    }

    public ColorStateList getTrackDecorationTintList() {
        return this.x0;
    }

    public PorterDuff.Mode getTrackDecorationTintMode() {
        return this.y0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public Drawable getTrackDrawable() {
        return this.r0;
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public ColorStateList getTrackTintList() {
        return this.w0;
    }

    public final void h() {
        if (this.t0 == null && this.u0 == null && this.w0 == null && this.x0 == null) {
            return;
        }
        float thumbPosition = getThumbPosition();
        ColorStateList colorStateList = this.t0;
        if (colorStateList != null) {
            g(this.o0, colorStateList, this.z0, this.A0, thumbPosition);
        }
        ColorStateList colorStateList2 = this.u0;
        if (colorStateList2 != null) {
            g(this.p0, colorStateList2, this.z0, this.A0, thumbPosition);
        }
        ColorStateList colorStateList3 = this.w0;
        if (colorStateList3 != null) {
            g(this.r0, colorStateList3, this.z0, this.A0, thumbPosition);
        }
        ColorStateList colorStateList4 = this.x0;
        if (colorStateList4 != null) {
            g(this.s0, colorStateList4, this.z0, this.A0, thumbPosition);
        }
    }

    @Override // android.view.View
    public final void invalidate() {
        h();
        super.invalidate();
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.p0 != null) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, B0);
        }
        int[] iArr = new int[iArrOnCreateDrawableState.length];
        int i2 = 0;
        for (int i3 : iArrOnCreateDrawableState) {
            if (i3 != 16842912) {
                iArr[i2] = i3;
                i2++;
            }
        }
        this.z0 = iArr;
        this.A0 = du.c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.SwitchCompat, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        FocusRingDrawable focusRingDrawableC;
        super.onLayout(z, i, i2, i3, i4);
        if (this.r0 == null || (focusRingDrawableC = FocusRingDrawable.c(getBackground())) == null) {
            return;
        }
        focusRingDrawableC.mutate();
        focusRingDrawableC.G.w = this.r0.getBounds();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbDrawable(Drawable drawable) {
        this.o0 = drawable;
        e();
    }

    public void setThumbIconDrawable(Drawable drawable) {
        this.p0 = drawable;
        e();
    }

    public void setThumbIconResource(int i) {
        setThumbIconDrawable(iz1.m(getContext(), i));
    }

    public void setThumbIconSize(int i) {
        if (this.q0 != i) {
            this.q0 = i;
            e();
        }
    }

    public void setThumbIconTintList(ColorStateList colorStateList) {
        this.u0 = colorStateList;
        e();
    }

    public void setThumbIconTintMode(PorterDuff.Mode mode) {
        this.v0 = mode;
        e();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintList(ColorStateList colorStateList) {
        this.t0 = colorStateList;
        e();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setThumbTintMode(PorterDuff.Mode mode) {
        super.setThumbTintMode(mode);
        e();
    }

    public void setTrackDecorationDrawable(Drawable drawable) {
        this.s0 = drawable;
        f();
    }

    public void setTrackDecorationResource(int i) {
        setTrackDecorationDrawable(iz1.m(getContext(), i));
    }

    public void setTrackDecorationTintList(ColorStateList colorStateList) {
        this.x0 = colorStateList;
        f();
    }

    public void setTrackDecorationTintMode(PorterDuff.Mode mode) {
        this.y0 = mode;
        f();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackDrawable(Drawable drawable) {
        this.r0 = drawable;
        f();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintList(ColorStateList colorStateList) {
        this.w0 = colorStateList;
        f();
    }

    @Override // androidx.appcompat.widget.SwitchCompat
    public void setTrackTintMode(PorterDuff.Mode mode) {
        super.setTrackTintMode(mode);
        f();
    }
}
