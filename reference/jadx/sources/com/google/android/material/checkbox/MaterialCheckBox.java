package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import defpackage.du;
import defpackage.en;
import defpackage.eq3;
import defpackage.fm6;
import defpackage.iz1;
import defpackage.jd4;
import defpackage.jm1;
import defpackage.k55;
import defpackage.td6;
import defpackage.u94;
import defpackage.uc;
import defpackage.vc;
import defpackage.w85;
import defpackage.wc;
import defpackage.x85;
import defpackage.xc;
import defpackage.yb;
import defpackage.yc9;
import defpackage.z85;
import defpackage.zm5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialCheckBox extends en {
    public static final int[] Q = {R.attr.state_indeterminate};
    public static final int[] R = {R.attr.state_error};
    public static final int[][] S = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public static final int T = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    public ColorStateList G;
    public ColorStateList H;
    public PorterDuff.Mode I;
    public int J;
    public int[] K;
    public boolean L;
    public CharSequence M;
    public CompoundButton.OnCheckedChangeListener N;
    public final xc O;
    public final w85 P;
    public final LinkedHashSet e;
    public final LinkedHashSet f;
    public ColorStateList k;
    public boolean n;
    public boolean p;
    public boolean q;
    public CharSequence r;
    public Drawable t;
    public Drawable x;
    public boolean y;

    public MaterialCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, i);
        this.e = new LinkedHashSet();
        this.f = new LinkedHashSet();
        Context context2 = getContext();
        xc xcVar = new xc(context2);
        Resources resources = context2.getResources();
        Resources.Theme theme = context2.getTheme();
        ThreadLocal threadLocal = fm6.a;
        Drawable drawable = resources.getDrawable(R.drawable.mtrl_checkbox_button_checked_unchecked, theme);
        xcVar.a = drawable;
        drawable.setCallback(xcVar.f);
        new wc(xcVar.a.getConstantState());
        this.O = xcVar;
        this.P = new w85(this);
        Context context3 = getContext();
        this.t = getButtonDrawable();
        this.G = getSuperButtonTintList();
        setSupportButtonTintList(null);
        u94 u94VarC = jd4.C(context3, attributeSet, td6.A, i, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        TypedArray typedArray = (TypedArray) u94VarC.b;
        this.x = u94VarC.b(2);
        if (this.t != null && jm1.R(context3.getTheme(), R.attr.isMaterial3Theme, false)) {
            int resourceId = typedArray.getResourceId(0, 0);
            int resourceId2 = typedArray.getResourceId(1, 0);
            if (resourceId == T && resourceId2 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.t = iz1.m(context3, R.drawable.mtrl_checkbox_button);
                this.y = true;
                if (this.x == null) {
                    this.x = iz1.m(context3, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.H = k55.l(context3, u94VarC, 3);
        this.I = yc9.L(typedArray.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.n = typedArray.getBoolean(11, false);
        this.p = typedArray.getBoolean(6, true);
        this.q = typedArray.getBoolean(9, false);
        this.r = typedArray.getText(8);
        if (typedArray.hasValue(7)) {
            setCheckedState(typedArray.getInt(7, 0));
        }
        if (typedArray.hasValue(10)) {
            setRippleColor(k55.l(context3, u94VarC, 10));
        }
        u94VarC.f();
        a();
    }

    private String getButtonStateDescription() {
        int i = this.J;
        if (i == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        return i == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.k == null) {
            int iC = z85.C(getContext(), jm1.U(this, R.attr.colorControlActivated));
            int iC2 = z85.C(getContext(), jm1.U(this, R.attr.colorError));
            int iC3 = z85.C(getContext(), jm1.U(this, R.attr.colorSurface));
            int iC4 = z85.C(getContext(), jm1.U(this, R.attr.colorOnSurface));
            this.k = new ColorStateList(S, new int[]{z85.x(1.0f, iC3, iC2), z85.x(1.0f, iC3, iC), z85.x(0.54f, iC3, iC4), z85.x(0.38f, iC3, iC4), z85.x(0.38f, iC3, iC4)});
        }
        return this.k;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.G;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    private void setRippleColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof DrawableWrapper) {
            background = ((DrawableWrapper) background).getDrawable();
        }
        if (background instanceof RippleDrawable) {
            ((RippleDrawable) background).setColor(colorStateList);
        }
    }

    public final void a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        uc ucVar;
        this.t = du.b(this.t, this.G, getButtonTintMode());
        this.x = du.b(this.x, this.H, this.I);
        if (this.y) {
            xc xcVar = this.O;
            if (xcVar != null) {
                vc vcVar = xcVar.b;
                Drawable drawable = xcVar.a;
                w85 w85Var = this.P;
                if (drawable != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
                    if (w85Var.a == null) {
                        w85Var.a = new yb(w85Var);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(w85Var.a);
                }
                ArrayList arrayList = xcVar.e;
                if (arrayList != null && w85Var != null) {
                    arrayList.remove(w85Var);
                    if (xcVar.e.size() == 0 && (ucVar = xcVar.d) != null) {
                        vcVar.b.removeListener(ucVar);
                        xcVar.d = null;
                    }
                }
                Drawable drawable2 = xcVar.a;
                if (drawable2 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable2;
                    if (w85Var.a == null) {
                        w85Var.a = new yb(w85Var);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(w85Var.a);
                } else if (w85Var != null) {
                    if (xcVar.e == null) {
                        xcVar.e = new ArrayList();
                    }
                    if (!xcVar.e.contains(w85Var)) {
                        xcVar.e.add(w85Var);
                        if (xcVar.d == null) {
                            xcVar.d = new uc(xcVar, 0);
                        }
                        vcVar.b.addListener(xcVar.d);
                    }
                }
            }
            Drawable drawable3 = this.t;
            if ((drawable3 instanceof AnimatedStateListDrawable) && xcVar != null) {
                ((AnimatedStateListDrawable) drawable3).addTransition(R.id.checked, R.id.unchecked, xcVar, false);
                ((AnimatedStateListDrawable) this.t).addTransition(R.id.indeterminate, R.id.unchecked, xcVar, false);
            }
        }
        Drawable drawable4 = this.t;
        if (drawable4 != null && (colorStateList2 = this.G) != null) {
            drawable4.setTintList(colorStateList2);
        }
        Drawable drawable5 = this.x;
        if (drawable5 != null && (colorStateList = this.H) != null) {
            drawable5.setTintList(colorStateList);
        }
        super.setButtonDrawable(du.a(this.t, this.x, -1, -1));
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.t;
    }

    public Drawable getButtonIconDrawable() {
        return this.x;
    }

    public ColorStateList getButtonIconTintList() {
        return this.H;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.I;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.G;
    }

    public int getCheckedState() {
        return this.J;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.r;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.J == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.n && this.G == null && this.H == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, Q);
        }
        if (this.q) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, R);
        }
        this.K = du.c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.p || !TextUtils.isEmpty(getText()) || (buttonDrawable = getButtonDrawable()) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (getLayoutDirection() == 1 ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.q) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.r));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof x85)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        x85 x85Var = (x85) parcelable;
        super.onRestoreInstanceState(x85Var.getSuperState());
        setCheckedState(x85Var.a);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        x85 x85Var = new x85(super.onSaveInstanceState());
        x85Var.a = getCheckedState();
        return x85Var;
    }

    @Override // defpackage.en, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(iz1.m(getContext(), i));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.x = drawable;
        a();
    }

    public void setButtonIconDrawableResource(int i) {
        setButtonIconDrawable(iz1.m(getContext(), i));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.H == colorStateList) {
            return;
        }
        this.H = colorStateList;
        a();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.I == mode) {
            return;
        }
        this.I = mode;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.G == colorStateList) {
            return;
        }
        this.G = colorStateList;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        a();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.p = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.J != i) {
            this.J = i;
            super.setChecked(i == 1);
            refreshDrawableState();
            if (Build.VERSION.SDK_INT >= 30 && this.M == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.L) {
                return;
            }
            this.L = true;
            LinkedHashSet linkedHashSet = this.f;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw eq3.h(it);
                }
            }
            if (this.J != 2 && (onCheckedChangeListener = this.N) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            AutofillManager autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.L = false;
        }
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.r = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i) {
        setErrorAccessibilityLabel(i != 0 ? getResources().getText(i) : null);
    }

    public void setErrorShown(boolean z) {
        if (this.q == z) {
            return;
        }
        this.q = z;
        refreshDrawableState();
        Iterator it = this.e.iterator();
        if (it.hasNext()) {
            throw eq3.h(it);
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.N = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.M = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.n = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // defpackage.en, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.t = drawable;
        this.y = false;
        a();
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }
}
