package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.button.MaterialButton;
import com.jcraft.jsch.SftpATTRS;
import defpackage.b32;
import defpackage.c6;
import defpackage.c95;
import defpackage.cn;
import defpackage.dl8;
import defpackage.f95;
import defpackage.fu;
import defpackage.gb;
import defpackage.gk7;
import defpackage.h85;
import defpackage.hk7;
import defpackage.i85;
import defpackage.iz1;
import defpackage.j85;
import defpackage.jd4;
import defpackage.ji8;
import defpackage.k55;
import defpackage.k85;
import defpackage.l0;
import defpackage.nm7;
import defpackage.o10;
import defpackage.o85;
import defpackage.om7;
import defpackage.p12;
import defpackage.p85;
import defpackage.pk8;
import defpackage.pm7;
import defpackage.rb7;
import defpackage.tb7;
import defpackage.tc7;
import defpackage.td6;
import defpackage.xh8;
import defpackage.xn6;
import defpackage.yc9;
import defpackage.z22;
import defpackage.zh8;
import defpackage.zm5;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialButton extends cn implements Checkable, tc7 {
    public static final int[] i0 = {R.attr.state_checkable};
    public static final int[] j0 = {R.attr.state_checked};
    public static final h85 k0 = new h85();
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public boolean M;
    public boolean N;
    public int O;
    public int P;
    public int Q;
    public float R;
    public int S;
    public int T;
    public LinearLayout.LayoutParams U;
    public boolean V;
    public int W;
    public boolean a0;
    public int b0;
    public pm7 c0;
    public final p85 d;
    public int d0;
    public final LinkedHashSet e;
    public k85 e0;
    public i85 f;
    public float f0;
    public float g0;
    public gk7 h0;
    public PorterDuff.Mode k;
    public ColorStateList n;
    public Drawable p;
    public PorterDuff.Mode q;
    public ColorStateList r;
    public Drawable t;
    public boolean x;
    public String y;

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(zm5.I(i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Button, context, attributeSet, new int[]{org.swiftapps.swiftbackup.R.attr.materialSizeOverlay}), attributeSet, i);
        this.e = new LinkedHashSet();
        this.M = false;
        this.N = false;
        this.Q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.R = -2.14748365E9f;
        this.S = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.T = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.b0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.e0 = k85.d;
        Context context2 = getContext();
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.v, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.J = typedArrayB.getDimensionPixelSize(13, 0);
        int i2 = typedArrayB.getInt(16, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.k = yc9.L(i2, mode);
        this.n = k55.m(getContext(), typedArrayB, 15);
        this.p = k55.p(getContext(), typedArrayB, 11);
        this.O = typedArrayB.getInteger(12, 1);
        this.G = typedArrayB.getDimensionPixelSize(14, 0);
        this.q = yc9.L(typedArrayB.getInt(22, -1), mode);
        this.r = typedArrayB.hasValue(21) ? k55.m(getContext(), typedArrayB, 21) : this.n;
        this.P = typedArrayB.getInteger(20, 3);
        Drawable drawableP = k55.p(getContext(), typedArrayB, 19);
        this.t = drawableP;
        this.x = drawableP == null;
        rb7 rb7VarH = nm7.h(context2, typedArrayB, 23);
        rb7VarH = rb7VarH == null ? tb7.h(context2, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Button).a() : rb7VarH;
        boolean z = typedArrayB.getBoolean(17, false);
        p85 p85Var = new p85(this, rb7VarH);
        this.d = p85Var;
        p85Var.e = typedArrayB.getDimensionPixelOffset(2, 0);
        p85Var.f = typedArrayB.getDimensionPixelOffset(3, 0);
        p85Var.g = typedArrayB.getDimensionPixelOffset(4, 0);
        p85Var.h = typedArrayB.getDimensionPixelOffset(5, 0);
        if (typedArrayB.hasValue(9)) {
            int dimensionPixelSize = typedArrayB.getDimensionPixelSize(9, -1);
            p85Var.i = dimensionPixelSize;
            p85Var.b = p85Var.b.a(dimensionPixelSize);
            p85Var.d();
            p85Var.r = true;
        }
        p85Var.j = typedArrayB.getDimensionPixelSize(26, 0);
        p85Var.k = yc9.L(typedArrayB.getInt(8, -1), mode);
        p85Var.l = k55.m(getContext(), typedArrayB, 7);
        p85Var.m = k55.m(getContext(), typedArrayB, 25);
        p85Var.n = k55.m(getContext(), typedArrayB, 18);
        p85Var.s = typedArrayB.getBoolean(6, false);
        p85Var.v = typedArrayB.getDimensionPixelSize(10, 0);
        p85Var.t = typedArrayB.getBoolean(27, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (typedArrayB.hasValue(0)) {
            p85Var.q = true;
            setSupportBackgroundTintList(p85Var.l);
            setSupportBackgroundTintMode(p85Var.k);
        } else {
            p85Var.c();
        }
        setPaddingRelative(paddingStart + p85Var.e, paddingTop + p85Var.g, paddingEnd + p85Var.f, paddingBottom + p85Var.h);
        setCheckedInternal(typedArrayB.getBoolean(1, false));
        if (rb7VarH instanceof nm7) {
            p85Var.c = ji8.H(getContext());
            if (p85Var.b instanceof nm7) {
                p85Var.d();
            }
        }
        setOpticalCenterEnabled(z);
        typedArrayB.recycle();
        setCompoundDrawablePadding(this.J);
        t(this.p != null);
        w(this.t != null);
    }

    public static /* synthetic */ void a(MaterialButton materialButton) {
        materialButton.W = materialButton.getOpticalCenterShift();
        materialButton.v();
        materialButton.invalidate();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.f0;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        c95 c95VarA;
        if (this.V && this.a0 && (c95VarA = this.d.a(false)) != null) {
            return (int) (c95VarA.j() * 0.11f);
        }
        return 0;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(fMax);
    }

    private void setCheckedInternal(boolean z) {
        if (!j() || this.M == z) {
            return;
        }
        this.M = z;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z2 = this.M;
            if (!materialButtonToggleGroup.N) {
                materialButtonToggleGroup.n(getId(), z2);
            }
        }
        if (this.N) {
            return;
        }
        this.N = true;
        for (f95 f95Var : this.e) {
            boolean z3 = this.M;
            MaterialSplitButton materialSplitButton = f95Var.a;
            MaterialButton materialButton = f95Var.b;
            int i = MaterialSplitButton.M;
            String string = materialSplitButton.getResources().getString(z3 ? org.swiftapps.swiftbackup.R.string.mtrl_button_expanded_content_description : org.swiftapps.swiftbackup.R.string.mtrl_button_collapsed_content_description);
            WeakHashMap weakHashMap = dl8.a;
            new pk8(org.swiftapps.swiftbackup.R.id.tag_state_description, CharSequence.class, 64, 30).g(materialButton, string);
        }
        this.N = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f) {
        if (this.f0 != f) {
            this.f0 = f;
            v();
            invalidate();
            if (getParent() instanceof o85) {
                o85 o85Var = (o85) getParent();
                int i = (int) this.f0;
                int iIndexOfChild = o85Var.indexOfChild(this);
                if (iIndexOfChild < 0) {
                    return;
                }
                MaterialButton materialButtonH = o85Var.h(iIndexOfChild);
                MaterialButton materialButtonG = o85Var.g(iIndexOfChild);
                if (materialButtonH == null && materialButtonG == null) {
                    return;
                }
                if (materialButtonH == null) {
                    materialButtonG.setDisplayedWidthDecrease(i);
                }
                if (materialButtonG == null) {
                    materialButtonH.setDisplayedWidthDecrease(i);
                }
                if (materialButtonH == null || materialButtonG == null) {
                    return;
                }
                materialButtonH.setDisplayedWidthDecrease(i / 2);
                materialButtonG.setDisplayedWidthDecrease((i + 1) / 2);
            }
        }
    }

    public final boolean d() {
        if (l() && o()) {
            return true;
        }
        if (k() && n()) {
            return true;
        }
        return m() && p();
    }

    public final boolean e(int i) {
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        return i == 1 || i == 3 || (i == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE);
    }

    public final int f(int i, int i2) {
        int intrinsicWidth;
        int intrinsicWidth2;
        Drawable drawable = this.p;
        if (drawable != null) {
            intrinsicWidth = this.G;
            if (intrinsicWidth == 0) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
        } else {
            intrinsicWidth = 0;
        }
        Drawable drawable2 = this.t;
        if (drawable2 != null) {
            intrinsicWidth2 = this.G;
            if (intrinsicWidth2 == 0) {
                intrinsicWidth2 = drawable2.getIntrinsicWidth();
            }
        } else {
            intrinsicWidth2 = 0;
        }
        int textLayoutWidth = (((((i - getTextLayoutWidth()) - getPaddingEnd()) - intrinsicWidth) - intrinsicWidth2) - this.J) - getPaddingStart();
        if (getActualTextAlignment() == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        return (getLayoutDirection() == 1) != (i2 == 4) ? -textLayoutWidth : textLayoutWidth;
    }

    public final int g(int i, int i2) {
        return Math.max(0, (((((i - getTextHeight()) - getPaddingTop()) - i2) - this.J) - getPaddingBottom()) / 2);
    }

    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.y)) {
            return (j() ? CompoundButton.class : Button.class).getName();
        }
        return this.y;
    }

    public int getAllowedWidthDecrease() {
        return this.b0;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (q()) {
            return this.d.i;
        }
        return 0;
    }

    public hk7 getCornerSpringForce() {
        return this.d.c;
    }

    public Drawable getIcon() {
        return this.p;
    }

    public int getIconGravity() {
        return this.O;
    }

    public int getIconPadding() {
        return this.J;
    }

    public int getIconSize() {
        return this.G;
    }

    public ColorStateList getIconTint() {
        return this.n;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.k;
    }

    public int getInsetBottom() {
        return this.d.h;
    }

    public int getInsetLeft() {
        return this.d.e;
    }

    public int getInsetRight() {
        return this.d.f;
    }

    public int getInsetTop() {
        return this.d.g;
    }

    public ColorStateList getRippleColor() {
        if (q()) {
            return this.d.n;
        }
        return null;
    }

    public Drawable getSecondaryIcon() {
        return this.t;
    }

    public int getSecondaryIconGravity() {
        return this.P;
    }

    public ColorStateList getSecondaryIconTint() {
        return this.r;
    }

    public PorterDuff.Mode getSecondaryIconTintMode() {
        return this.q;
    }

    public rb7 getShapeAppearance() {
        if (q()) {
            return this.d.b;
        }
        l0.e("Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background.");
        return null;
    }

    public tb7 getShapeAppearanceModel() {
        if (q()) {
            return this.d.b.d();
        }
        l0.e("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (q()) {
            return this.d.m;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (q()) {
            return this.d.j;
        }
        return 0;
    }

    @Override // defpackage.cn
    public ColorStateList getSupportBackgroundTintList() {
        return q() ? this.d.l : super.getSupportBackgroundTintList();
    }

    @Override // defpackage.cn
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return q() ? this.d.k : super.getSupportBackgroundTintMode();
    }

    public final Drawable h(int i) {
        if (i == 0) {
            if (this.t == null || !o()) {
                return null;
            }
            return this.t;
        }
        if (i == 1) {
            if (this.t == null || !p()) {
                return null;
            }
            return this.t;
        }
        if (i == 2 && this.t != null && n()) {
            return this.t;
        }
        return null;
    }

    public final Drawable i(int i) {
        if (i == 0) {
            if (this.p == null || !l()) {
                return null;
            }
            return this.p;
        }
        if (i == 1) {
            if (this.p == null || !k()) {
                return null;
            }
            return this.p;
        }
        if (i == 2 && this.p != null && k()) {
            return this.p;
        }
        return null;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.M;
    }

    public final boolean j() {
        p85 p85Var = this.d;
        return p85Var != null && p85Var.s;
    }

    public final boolean k() {
        int i = this.O;
        return i == 3 || i == 4;
    }

    public final boolean l() {
        int i = this.O;
        return i == 1 || i == 2;
    }

    public final boolean m() {
        int i = this.O;
        return i == 16 || i == 32;
    }

    public final boolean n() {
        int i = this.P;
        return i == 3 || i == 4;
    }

    public final boolean o() {
        int i = this.P;
        return i == 1 || i == 2;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (q()) {
            xh8.D(this, this.d.a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (j()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, i0);
        }
        if (this.M) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, j0);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // defpackage.cn, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.M);
    }

    @Override // defpackage.cn, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(j());
        accessibilityNodeInfo.setChecked(this.M);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // defpackage.cn, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        u(getMeasuredWidth(), getMeasuredHeight());
        x(getMeasuredWidth(), getMeasuredHeight());
        int i6 = getResources().getConfiguration().orientation;
        if (this.Q != i6) {
            this.Q = i6;
            this.R = -2.14748365E9f;
        }
        if (this.R == -2.14748365E9f) {
            this.R = getMeasuredWidth();
            if (this.U == null && (getParent() instanceof o85) && ((o85) getParent()).getButtonSizeChange() != null) {
                this.U = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.U);
                layoutParams.width = (int) this.R;
                setLayoutParams(layoutParams);
            }
        }
        boolean z2 = false;
        if (this.b0 == Integer.MIN_VALUE) {
            if (this.p == null) {
                i5 = 0;
            } else {
                int iconPadding = getIconPadding();
                int intrinsicWidth = this.G;
                if (intrinsicWidth == 0) {
                    intrinsicWidth = this.p.getIntrinsicWidth();
                }
                i5 = iconPadding + intrinsicWidth;
            }
            this.b0 = (getMeasuredWidth() - getTextLayoutWidth()) - i5;
        }
        if (this.S == Integer.MIN_VALUE) {
            this.S = getPaddingStart();
        }
        if (this.T == Integer.MIN_VALUE) {
            this.T = getPaddingEnd();
        }
        if ((getParent() instanceof o85) && ((o85) getParent()).getOrientation() == 0) {
            z2 = true;
        }
        this.a0 = z2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof j85)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j85 j85Var = (j85) parcelable;
        super.onRestoreInstanceState(j85Var.a);
        setChecked(j85Var.c);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        j85 j85Var = new j85(super.onSaveInstanceState());
        j85Var.c = this.M;
        return j85Var;
    }

    @Override // defpackage.cn, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        u(getMeasuredWidth(), getMeasuredHeight());
        x(getMeasuredWidth(), getMeasuredHeight());
    }

    public final boolean p() {
        int i = this.P;
        return i == 16 || i == 32;
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean z;
        if (isEnabled() && this.d.t) {
            toggle();
            z = true;
        } else {
            z = false;
        }
        boolean zPerformClick = super.performClick();
        if (z && !zPerformClick) {
            playSoundEffect(0);
        }
        return zPerformClick;
    }

    public final boolean q() {
        p85 p85Var = this.d;
        return (p85Var == null || p85Var.q) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0097  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    public final void r(boolean z) {
        int i;
        if (this.c0 == null) {
            return;
        }
        if (this.h0 == null) {
            gk7 gk7Var = new gk7(this, k0);
            this.h0 = gk7Var;
            gk7Var.m = ji8.H(getContext());
        }
        if (this.a0) {
            int iOrdinal = this.e0.ordinal();
            int i2 = 0;
            int i3 = (iOrdinal == 1 || iOrdinal == 2) ? this.d0 / 2 : iOrdinal != 3 ? 0 : this.d0;
            pm7 pm7Var = this.c0;
            int[] drawableState = getDrawableState();
            int[][] iArr = pm7Var.c;
            int i4 = 0;
            while (true) {
                i = -1;
                if (i4 >= pm7Var.a) {
                    i4 = -1;
                    break;
                } else if (StateSet.stateSetMatches(iArr[i4], drawableState)) {
                    break;
                } else {
                    i4++;
                }
            }
            if (i4 < 0) {
                int[] iArr2 = StateSet.WILD_CARD;
                int[][] iArr3 = pm7Var.c;
                for (int i5 = 0; i5 < pm7Var.a; i5++) {
                    if (StateSet.stateSetMatches(iArr3[i5], iArr2)) {
                        i = i5;
                        break;
                    }
                }
                i4 = i;
            }
            om7 om7Var = (om7) (i4 < 0 ? pm7Var.b : pm7Var.d[i4]).b;
            int width = getWidth();
            float f = om7Var.b;
            int i6 = om7Var.a;
            if (i6 != 1) {
                if (i6 == 2) {
                }
                this.h0.a(Math.min(i3, i2));
                if (z) {
                    this.h0.e();
                }
            }
            f *= width;
            i2 = (int) f;
            this.h0.a(Math.min(i3, i2));
            if (z) {
                this.h0.e();
            }
        }
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.p != null) {
            if (this.p.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public final boolean s(Runnable runnable) {
        gk7 gk7Var = this.h0;
        if (gk7Var == null || !gk7Var.f) {
            return false;
        }
        post(new p12(4, this, runnable));
        return true;
    }

    public void setA11yClassName(String str) {
        this.y = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (!q()) {
            super.setBackgroundColor(i);
            return;
        }
        p85 p85Var = this.d;
        if (p85Var.a(false) != null) {
            p85Var.a(false).setTint(i);
        }
    }

    @Override // defpackage.cn, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!q()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        p85 p85Var = this.d;
        p85Var.q = true;
        MaterialButton materialButton = p85Var.a;
        materialButton.setSupportBackgroundTintList(p85Var.l);
        materialButton.setSupportBackgroundTintMode(p85Var.k);
        super.setBackgroundDrawable(drawable);
    }

    @Override // defpackage.cn, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? iz1.m(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (q()) {
            this.d.s = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablePadding(int i) {
        if (getCompoundDrawablePadding() != i) {
            this.R = -2.14748365E9f;
        }
        super.setCompoundDrawablePadding(i);
    }

    public void setCornerRadius(int i) {
        if (q()) {
            p85 p85Var = this.d;
            if (p85Var.r && p85Var.i == i) {
                return;
            }
            p85Var.i = i;
            p85Var.r = true;
            p85Var.b = p85Var.b.a(i);
            p85Var.d();
        }
    }

    public void setCornerRadiusResource(int i) {
        if (q()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCornerSpringForce(hk7 hk7Var) {
        p85 p85Var = this.d;
        p85Var.c = hk7Var;
        if (p85Var.b instanceof nm7) {
            p85Var.d();
        }
    }

    public void setDisplayedWidthDecrease(int i) {
        this.g0 = Math.min(i, this.b0);
        v();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (q()) {
            this.d.a(false).s(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.p == drawable || s(new b32(2, this, drawable))) {
            return;
        }
        this.R = -2.14748365E9f;
        this.p = drawable;
        t(true);
        u(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setIconGravity(int i) {
        if (this.O != i) {
            if (this.p != null && this.t != null && d()) {
                c6.f("iconGravity cannot have the same alignment as secondaryIconGravity");
            } else {
                this.O = i;
                u(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void setIconPadding(int i) {
        if (this.J != i) {
            this.J = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public void setIconSize(final int i) {
        if (i < 0) {
            c6.f("iconSize cannot be less than 0");
            return;
        }
        if (this.G == i || s(new Runnable() { // from class: g85
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = MaterialButton.i0;
                this.a.setIconSize(i);
            }
        })) {
            return;
        }
        this.R = -2.14748365E9f;
        this.G = i;
        t(true);
        w(true);
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.n != colorStateList) {
            this.n = colorStateList;
            t(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.k != mode) {
            this.k = mode;
            t(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(zh8.q(getContext(), i));
    }

    public void setInsetBottom(int i) {
        p85 p85Var = this.d;
        p85Var.b(p85Var.e, p85Var.g, p85Var.f, i);
    }

    public void setInsetLeft(int i) {
        p85 p85Var = this.d;
        p85Var.b(i, p85Var.g, p85Var.f, p85Var.h);
    }

    public void setInsetRight(int i) {
        p85 p85Var = this.d;
        p85Var.b(p85Var.e, p85Var.g, i, p85Var.h);
    }

    public void setInsetTop(int i) {
        p85 p85Var = this.d;
        p85Var.b(p85Var.e, i, p85Var.f, p85Var.h);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(i85 i85Var) {
        this.f = i85Var;
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.V != z) {
            this.V = z;
            p85 p85Var = this.d;
            if (z) {
                gb gbVar = new gb(this, 6);
                p85Var.d = gbVar;
                c95 c95VarA = p85Var.a(false);
                if (c95VarA != null) {
                    c95VarA.W = gbVar;
                }
            } else {
                p85Var.d = null;
                c95 c95VarA2 = p85Var.a(false);
                if (c95VarA2 != null) {
                    c95VarA2.W = null;
                }
            }
            post(new o10(this, 4));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        i85 i85Var = this.f;
        if (i85Var != null) {
            ((o85) ((fu) i85Var).a).invalidate();
        }
        super.setPressed(z);
        r(false);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (q()) {
            p85 p85Var = this.d;
            MaterialButton materialButton = p85Var.a;
            if (p85Var.n != colorStateList) {
                p85Var.n = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(xn6.c(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (q()) {
            setRippleColor(zh8.q(getContext(), i));
        }
    }

    public void setSecondaryIcon(Drawable drawable) {
        if (this.t == drawable || s(new z22(7, this, drawable))) {
            return;
        }
        this.R = -2.14748365E9f;
        this.t = drawable;
        this.x = false;
        w(true);
        x(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setSecondaryIconGravity(int i) {
        if (this.P != i) {
            if (this.t != null && this.p != null && d()) {
                c6.f("secondaryIconGravity cannot have the same alignment as iconGravity");
            } else {
                this.P = i;
                x(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    public void setSecondaryIconResource(int i) {
        setSecondaryIcon(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public void setSecondaryIconTint(ColorStateList colorStateList) {
        if (this.r != colorStateList) {
            this.r = colorStateList;
            w(false);
        }
    }

    public void setSecondaryIconTintMode(PorterDuff.Mode mode) {
        if (this.q != mode) {
            this.q = mode;
            w(false);
        }
    }

    public void setSecondaryIconTintResource(int i) {
        setSecondaryIconTint(zh8.q(getContext(), i));
    }

    public void setShapeAppearance(rb7 rb7Var) {
        if (!q()) {
            l0.e("Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background.");
            return;
        }
        p85 p85Var = this.d;
        if (p85Var.c == null && rb7Var.f()) {
            p85Var.c = ji8.H(getContext());
            if (p85Var.b instanceof nm7) {
                p85Var.d();
            }
        }
        p85Var.b = rb7Var;
        p85Var.d();
    }

    @Override // defpackage.tc7
    public void setShapeAppearanceModel(tb7 tb7Var) {
        if (!q()) {
            l0.e("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        p85 p85Var = this.d;
        p85Var.b = tb7Var;
        p85Var.d();
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (q()) {
            p85 p85Var = this.d;
            p85Var.p = z;
            p85Var.e();
        }
    }

    public void setSizeChange(pm7 pm7Var) {
        if (this.c0 != pm7Var) {
            this.c0 = pm7Var;
            r(true);
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (q()) {
            p85 p85Var = this.d;
            if (p85Var.m != colorStateList) {
                p85Var.m = colorStateList;
                p85Var.e();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (q()) {
            setStrokeColor(zh8.q(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (q()) {
            p85 p85Var = this.d;
            if (p85Var.j != i) {
                p85Var.j = i;
                p85Var.e();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (q()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // defpackage.cn
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!q()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        p85 p85Var = this.d;
        if (p85Var.l != colorStateList) {
            p85Var.l = colorStateList;
            if (p85Var.a(false) != null) {
                p85Var.a(false).setTintList(p85Var.l);
            }
        }
    }

    @Override // defpackage.cn
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!q()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        p85 p85Var = this.d;
        if (p85Var.k != mode) {
            p85Var.k = mode;
            if (p85Var.a(false) == null || p85Var.k == null) {
                return;
            }
            p85Var.a(false).setTintMode(p85Var.k);
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.R = -2.14748365E9f;
        super.setText(charSequence, bufferType);
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        u(getMeasuredWidth(), getMeasuredHeight());
        x(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // defpackage.cn, android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        this.R = -2.14748365E9f;
        super.setTextAppearance(context, i);
    }

    @Override // defpackage.cn, android.widget.TextView
    public final void setTextSize(int i, float f) {
        this.R = -2.14748365E9f;
        super.setTextSize(i, f);
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.d.t = z;
    }

    @Override // android.widget.TextView
    public void setWidth(int i) {
        this.R = -2.14748365E9f;
        super.setWidth(i);
    }

    public void setWidthChangeDirection(k85 k85Var) {
        if (this.e0 != k85Var) {
            this.e0 = k85Var;
            r(true);
        }
    }

    public void setWidthChangeMax(int i) {
        if (this.d0 != i) {
            this.d0 = i;
            r(true);
        }
    }

    public final void t(boolean z) {
        Drawable drawable = this.p;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.p = drawableMutate;
            drawableMutate.setTintList(this.n);
            PorterDuff.Mode mode = this.k;
            if (mode != null) {
                this.p.setTintMode(mode);
            }
            int intrinsicWidth = this.G;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.p.getIntrinsicWidth();
            }
            int intrinsicHeight = this.G;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.p.getIntrinsicHeight();
            }
            Drawable drawable2 = this.p;
            int i = this.H;
            int i2 = this.I;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.p.setVisible(true, z);
        }
        if (this.p != null && this.t != null && d()) {
            c6.f("iconGravity cannot have the same alignment as secondaryIconGravity");
            return;
        }
        if (this.p == null && this.t != null && d()) {
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = (l() && compoundDrawablesRelative[0] != this.p) || (k() && compoundDrawablesRelative[2] != this.p) || (m() && compoundDrawablesRelative[1] != this.p);
        if (z || z2) {
            if (l()) {
                setCompoundDrawablesRelative(this.p, h(1), h(2), null);
            } else if (k()) {
                setCompoundDrawablesRelative(h(0), h(1), this.p, null);
            } else if (m()) {
                setCompoundDrawablesRelative(h(0), this.p, h(2), null);
            }
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.M);
    }

    public final void u(int i, int i2) {
        if (this.p == null || getLayout() == null) {
            return;
        }
        if (l() || k()) {
            this.I = 0;
            if (e(this.O)) {
                this.H = 0;
                t(false);
                return;
            }
            int iF = f(i, this.O);
            if (this.H != iF) {
                this.H = iF;
                t(false);
                return;
            }
            return;
        }
        if (m()) {
            this.H = 0;
            if (this.O == 16) {
                this.I = 0;
                t(false);
                return;
            }
            int intrinsicHeight = this.G;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.p.getIntrinsicHeight();
            }
            int iG = g(i2, intrinsicHeight);
            if (this.I != iG) {
                this.I = iG;
                t(false);
            }
        }
    }

    public final void v() {
        int i = (int) (this.f0 - this.g0);
        boolean z = getLayoutDirection() == 1;
        int i2 = this.W;
        if (z) {
            i2 = -i2;
        }
        int i3 = (i / 2) + i2;
        if (getLayoutParams() != null) {
            getLayoutParams().width = (int) (this.R + i);
        }
        setPaddingRelative(this.S + i3, getPaddingTop(), (this.T + i) - i3, getPaddingBottom());
    }

    public final void w(boolean z) {
        Drawable drawable = this.t;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.t = drawableMutate;
            drawableMutate.setTintList(this.r);
            PorterDuff.Mode mode = this.q;
            if (mode != null) {
                this.t.setTintMode(mode);
            }
            int intrinsicWidth = this.G;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.t.getIntrinsicWidth();
            }
            int intrinsicHeight = this.G;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.t.getIntrinsicHeight();
            }
            Drawable drawable2 = this.t;
            int i = this.K;
            int i2 = this.L;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.t.setVisible(true, z);
        }
        if (this.t != null && this.p != null && d()) {
            c6.f("secondaryIconGravity cannot have the same alignment as iconGravity");
            return;
        }
        if (this.t == null) {
            if (this.x) {
                return;
            }
            if (this.p != null && d()) {
                return;
            }
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = (o() && compoundDrawablesRelative[0] != this.t) || (n() && compoundDrawablesRelative[2] != this.t) || (p() && compoundDrawablesRelative[1] != this.t);
        if (z || z2) {
            if (o()) {
                setCompoundDrawablesRelative(this.t, i(1), i(2), null);
            } else if (n()) {
                setCompoundDrawablesRelative(i(0), i(1), this.t, null);
            } else if (p()) {
                setCompoundDrawablesRelative(i(0), this.t, i(2), null);
            }
        }
    }

    public final void x(int i, int i2) {
        if (this.t == null || getLayout() == null) {
            return;
        }
        if (o() || n()) {
            this.L = 0;
            if (e(this.P)) {
                this.K = 0;
                w(false);
                return;
            }
            int iF = f(i, this.P);
            if (this.K != iF) {
                this.K = iF;
                w(false);
                return;
            }
            return;
        }
        if (p()) {
            this.K = 0;
            if (this.P == 16) {
                this.L = 0;
                w(false);
                return;
            }
            int intrinsicHeight = this.G;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.t.getIntrinsicHeight();
            }
            int iG = g(i2, intrinsicHeight);
            if (this.L != iG) {
                this.L = iG;
                w(false);
            }
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.materialButtonStyle);
    }

    public MaterialButton(Context context) {
        this(context, null);
    }
}
