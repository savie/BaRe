package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.material.focus.FocusRingDrawable;
import com.jcraft.jsch.Argon2;
import defpackage.a18;
import defpackage.be;
import defpackage.dl8;
import defpackage.en;
import defpackage.g84;
import defpackage.iz1;
import defpackage.jd4;
import defpackage.jm1;
import defpackage.k55;
import defpackage.ph5;
import defpackage.s61;
import defpackage.t61;
import defpackage.tb7;
import defpackage.tc7;
import defpackage.td6;
import defpackage.u08;
import defpackage.u61;
import defpackage.v61;
import defpackage.x08;
import defpackage.xh8;
import defpackage.xn6;
import defpackage.y85;
import defpackage.zh8;
import defpackage.zm5;
import defpackage.zp0;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class Chip extends en implements tc7, Checkable {
    public static final Rect O = new Rect();
    public static final int[] P = {R.attr.state_selected};
    public static final int[] Q = {R.attr.state_checkable};
    public int G;
    public int H;
    public CharSequence I;
    public final u61 J;
    public boolean K;
    public final Rect L;
    public final RectF M;
    public final s61 N;
    public v61 e;
    public InsetDrawable f;
    public RippleDrawable k;
    public View.OnClickListener n;
    public CompoundButton.OnCheckedChangeListener p;
    public boolean q;
    public boolean r;
    public boolean t;
    public boolean x;
    public boolean y;

    public Chip(Context context, AttributeSet attributeSet, int i) {
        int resourceId;
        super(zm5.J(context, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, i);
        this.L = new Rect();
        this.M = new RectF();
        this.N = new s61(this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                g84.j("Please set left drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                g84.j("Please set start drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                g84.j("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                g84.j("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                g84.j("Chip does not support multi-line text");
                throw null;
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        v61 v61Var = new v61(context2, attributeSet, i);
        Context context3 = v61Var.G0;
        int[] iArr = td6.h;
        TypedArray typedArrayB = jd4.B(context3, attributeSet, iArr, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        v61Var.g1 = typedArrayB.hasValue(39);
        Context context4 = v61Var.G0;
        ColorStateList colorStateListM = k55.m(context4, typedArrayB, 25);
        if (v61Var.Z != colorStateListM) {
            v61Var.Z = colorStateListM;
            v61Var.onStateChange(v61Var.getState());
        }
        ColorStateList colorStateListM2 = k55.m(context4, typedArrayB, 12);
        if (v61Var.a0 != colorStateListM2) {
            v61Var.a0 = colorStateListM2;
            v61Var.onStateChange(v61Var.getState());
        }
        float dimension = typedArrayB.getDimension(20, 0.0f);
        if (v61Var.b0 != dimension) {
            v61Var.b0 = dimension;
            v61Var.invalidateSelf();
            v61Var.M();
        }
        if (typedArrayB.hasValue(13)) {
            v61Var.S(typedArrayB.getDimension(13, 0.0f));
        }
        v61Var.X(k55.m(context4, typedArrayB, 23));
        v61Var.Y(typedArrayB.getDimension(24, 0.0f));
        v61Var.i0(k55.m(context4, typedArrayB, 38));
        String text = typedArrayB.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(v61Var.g0, text);
        a18 a18Var = v61Var.M0;
        if (!zEquals) {
            v61Var.g0 = text;
            a18Var.e = true;
            v61Var.invalidateSelf();
            v61Var.M();
        }
        u08 u08Var = (!typedArrayB.hasValue(0) || (resourceId = typedArrayB.getResourceId(0, 0)) == 0) ? null : new u08(context4, resourceId);
        u08Var.l = typedArrayB.getDimension(1, u08Var.l);
        int i2 = typedArrayB.hasValue(34) ? 34 : 7;
        if (typedArrayB.hasValue(i2)) {
            u08Var.c = typedArrayB.getString(i2);
        }
        a18Var.c(u08Var, context4);
        int i3 = typedArrayB.getInt(3, 0);
        if (i3 == 1) {
            v61Var.d1 = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            v61Var.d1 = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            v61Var.d1 = TextUtils.TruncateAt.END;
        }
        v61Var.W(typedArrayB.getBoolean(19, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            v61Var.W(typedArrayB.getBoolean(16, false));
        }
        v61Var.T(k55.p(context4, typedArrayB, 15));
        if (typedArrayB.hasValue(18)) {
            v61Var.V(k55.m(context4, typedArrayB, 18));
        }
        v61Var.U(typedArrayB.getDimension(17, -1.0f));
        v61Var.f0(typedArrayB.getBoolean(32, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            v61Var.f0(typedArrayB.getBoolean(27, false));
        }
        v61Var.Z(k55.p(context4, typedArrayB, 26));
        v61Var.e0(k55.m(context4, typedArrayB, 31));
        v61Var.b0(typedArrayB.getDimension(29, 0.0f));
        v61Var.O(typedArrayB.getBoolean(6, false));
        v61Var.R(typedArrayB.getBoolean(11, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            v61Var.R(typedArrayB.getBoolean(9, false));
        }
        v61Var.P(k55.p(context4, typedArrayB, 8));
        if (typedArrayB.hasValue(10)) {
            v61Var.Q(k55.m(context4, typedArrayB, 10));
        }
        v61Var.w0 = ph5.a(context4, typedArrayB, 41);
        v61Var.x0 = ph5.a(context4, typedArrayB, 35);
        float dimension2 = typedArrayB.getDimension(22, 0.0f);
        if (v61Var.y0 != dimension2) {
            v61Var.y0 = dimension2;
            v61Var.invalidateSelf();
            v61Var.M();
        }
        v61Var.h0(typedArrayB.getDimension(37, 0.0f));
        v61Var.g0(typedArrayB.getDimension(36, 0.0f));
        float dimension3 = typedArrayB.getDimension(43, 0.0f);
        if (v61Var.B0 != dimension3) {
            v61Var.B0 = dimension3;
            v61Var.invalidateSelf();
            v61Var.M();
        }
        float dimension4 = typedArrayB.getDimension(42, 0.0f);
        if (v61Var.C0 != dimension4) {
            v61Var.C0 = dimension4;
            v61Var.invalidateSelf();
            v61Var.M();
        }
        v61Var.c0(typedArrayB.getDimension(30, 0.0f));
        v61Var.a0(typedArrayB.getDimension(28, 0.0f));
        float dimension5 = typedArrayB.getDimension(14, 0.0f);
        if (v61Var.F0 != dimension5) {
            v61Var.F0 = dimension5;
            v61Var.invalidateSelf();
            v61Var.M();
        }
        v61Var.f1 = typedArrayB.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayB.recycle();
        jd4.d(context2, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action);
        jd4.e(context2, attributeSet, iArr, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action);
        this.y = typedArrayObtainStyledAttributes.getBoolean(33, false);
        this.H = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(21, jm1.S(context2)));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(v61Var);
        v61Var.s(getElevation());
        jd4.d(context2, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action);
        jd4.e(context2, attributeSet, iArr, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, i, org.swiftapps.swiftbackup.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(39);
        typedArrayObtainStyledAttributes2.recycle();
        this.J = new u61(this, this);
        e();
        if (!zHasValue) {
            setOutlineProvider(new t61(this));
        }
        setChecked(this.q);
        setText(v61Var.g0);
        setEllipsize(v61Var.d1);
        h();
        if (!this.e.e1) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        g();
        if (this.y) {
            setMinHeight(this.H);
        }
        this.G = getLayoutDirection();
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: r61
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.a.p;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.M;
        rectF.setEmpty();
        if (d() && this.n != null) {
            v61 v61Var = this.e;
            Rect bounds = v61Var.getBounds();
            rectF.setEmpty();
            if (v61Var.l0()) {
                float f = v61Var.F0 + v61Var.E0 + v61Var.q0 + v61Var.D0 + v61Var.C0;
                if (v61Var.getLayoutDirection() == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.L;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    private u08 getTextAppearance() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.M0.g;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.t != z) {
            this.t = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.r != z) {
            this.r = z;
            refreshDrawableState();
        }
    }

    public final void c(int i) {
        this.H = i;
        if (!this.y) {
            InsetDrawable insetDrawable = this.f;
            if (insetDrawable == null) {
                f();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i - ((int) this.e.b0));
        int iMax2 = Math.max(0, i - this.e.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f;
            if (insetDrawable2 == null) {
                f();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    f();
                    return;
                }
                return;
            }
        }
        int i2 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i3 = iMax > 0 ? iMax / 2 : 0;
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                f();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.f = new InsetDrawable((Drawable) this.e, i2, i3, i2, i3);
        f();
    }

    public final boolean d() {
        v61 v61Var = this.e;
        if (v61Var == null) {
            return false;
        }
        Drawable drawable = v61Var.n0;
        if (drawable == null) {
            drawable = null;
        }
        return drawable != null;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.K) {
            return this.J.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i;
        if (!this.K) {
            return super.dispatchKeyEvent(keyEvent);
        }
        u61 u61Var = this.J;
        u61Var.getClass();
        boolean zP = false;
        int i2 = 0;
        zP = false;
        zP = false;
        zP = false;
        zP = false;
        zP = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i3 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case Argon2.V13 /* 19 */:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i3 = 33;
                                } else if (keyCode == 21) {
                                    i3 = 17;
                                } else if (keyCode != 22) {
                                    i3 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z = false;
                                while (i2 < repeatCount && u61Var.p(i3, null)) {
                                    i2++;
                                    z = true;
                                }
                                zP = z;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                i = u61Var.l;
                                if (i != Integer.MIN_VALUE) {
                                    u61Var.r(i, 16, null);
                                }
                                zP = true;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    i = u61Var.l;
                    if (i != Integer.MIN_VALUE) {
                        u61Var.r(i, 16, null);
                    }
                    zP = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                zP = u61Var.p(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zP = u61Var.p(1, null);
            }
        }
        if (!zP || u61Var.l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // defpackage.en, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        v61 v61Var = this.e;
        boolean zD0 = false;
        int i2 = 0;
        zD0 = false;
        if (v61Var != null && v61.L(v61Var.n0)) {
            v61 v61Var2 = this.e;
            ?? IsEnabled = isEnabled();
            if (this.x) {
                i = IsEnabled;
                i = IsEnabled + 1;
            }
            i = IsEnabled;
            int i3 = i;
            if (this.t) {
                i3 = i + 1;
            }
            int i4 = i3;
            if (this.r) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i2 = 1;
            }
            if (this.x) {
                iArr[i2] = 16842908;
                i2++;
            }
            if (this.t) {
                iArr[i2] = 16843623;
                i2++;
            }
            if (this.r) {
                iArr[i2] = 16842919;
                i2++;
            }
            if (isChecked()) {
                iArr[i2] = 16842913;
            }
            zD0 = v61Var2.d0(iArr);
        }
        if (zD0) {
            invalidate();
        }
    }

    public final void e() {
        v61 v61Var;
        if (!d() || (v61Var = this.e) == null || !v61Var.m0 || this.n == null) {
            dl8.n(this, null);
            this.K = false;
        } else {
            dl8.n(this, this.J);
            this.K = true;
        }
    }

    public final void f() {
        RippleDrawable rippleDrawable = new RippleDrawable(xn6.c(this.e.f0), getBackgroundDrawable(), null);
        FocusRingDrawable.f(getContext(), rippleDrawable, this.e);
        this.k = rippleDrawable;
        this.e.getClass();
        setBackground(this.k);
        g();
    }

    public final void g() {
        v61 v61Var;
        if (TextUtils.isEmpty(getText()) || (v61Var = this.e) == null) {
            return;
        }
        int I = (int) (v61Var.I() + v61Var.F0 + v61Var.C0);
        v61 v61Var2 = this.e;
        int iH = (int) (v61Var2.H() + v61Var2.y0 + v61Var2.B0);
        if (this.f != null) {
            Rect rect = new Rect();
            this.f.getPadding(rect);
            iH += rect.left;
            I += rect.right;
        }
        setPaddingRelative(iH, getPaddingTop(), I, getPaddingBottom());
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.I)) {
            return this.I;
        }
        v61 v61Var = this.e;
        if (v61Var == null || !v61Var.s0) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        getParent();
        return "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f;
        return insetDrawable == null ? this.e : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.u0;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.v0;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.a0;
        }
        return null;
    }

    public float getChipCornerRadius() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return Math.max(0.0f, v61Var.J());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.e;
    }

    public float getChipEndPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.F0;
        }
        return 0.0f;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        v61 v61Var = this.e;
        if (v61Var == null || (drawable = v61Var.i0) == null) {
            return null;
        }
        return drawable;
    }

    public float getChipIconSize() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.k0;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.j0;
        }
        return null;
    }

    public float getChipMinHeight() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.b0;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.y0;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.d0;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.e0;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        Drawable drawable;
        v61 v61Var = this.e;
        if (v61Var == null || (drawable = v61Var.n0) == null) {
            return null;
        }
        return drawable;
    }

    public CharSequence getCloseIconContentDescription() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.r0;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.E0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.q0;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.D0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.p0;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.d1;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.K) {
            u61 u61Var = this.J;
            if (u61Var.l == 1 || u61Var.k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    @Override // android.widget.TextView
    public String getFontVariationSettings() {
        v61 v61Var = this.e;
        if (v61Var == null) {
            return super.getFontVariationSettings();
        }
        u08 u08Var = v61Var.M0.g;
        if (u08Var != null) {
            return u08Var.c;
        }
        return null;
    }

    public ph5 getHideMotionSpec() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.x0;
        }
        return null;
    }

    public float getIconEndPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.A0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.z0;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.f0;
        }
        return null;
    }

    public tb7 getShapeAppearanceModel() {
        return this.e.k();
    }

    public ph5 getShowMotionSpec() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.w0;
        }
        return null;
    }

    public float getTextEndPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.C0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        v61 v61Var = this.e;
        if (v61Var != null) {
            return v61Var.B0;
        }
        return 0.0f;
    }

    public final void h() {
        TextPaint paint = getPaint();
        v61 v61Var = this.e;
        if (v61Var != null) {
            paint.drawableState = v61Var.getState();
        }
        u08 textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.d(getContext(), paint, this.N);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        xh8.D(this, this.e);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, P);
        }
        v61 v61Var = this.e;
        if (v61Var != null && v61Var.s0) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, Q);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.K) {
            u61 u61Var = this.J;
            int i2 = u61Var.l;
            if (i2 != Integer.MIN_VALUE) {
                u61Var.j(i2);
            }
            if (z) {
                u61Var.p(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        v61 v61Var = this.e;
        accessibilityNodeInfo.setCheckable(v61Var != null && v61Var.s0);
        accessibilityNodeInfo.setClickable(isClickable());
        getParent();
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.G != i) {
            this.G = i;
            g();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.r) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z = true;
                }
                z = false;
            } else {
                if (this.r) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.n;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    if (this.K) {
                        this.J.w(1, 1);
                    }
                    z = true;
                }
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z = true;
        } else {
            z = false;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.I = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.k) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // defpackage.en, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.k) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // defpackage.en, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.O(z);
        }
    }

    public void setCheckableResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.O(v61Var.G0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        v61 v61Var = this.e;
        if (v61Var == null) {
            this.q = z;
        } else if (v61Var.s0) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.P(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.P(iz1.m(v61Var.G0, i));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.Q(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.Q(zh8.q(v61Var.G0, i));
        }
    }

    public void setCheckedIconVisible(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.R(v61Var.G0.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.a0 == colorStateList) {
            return;
        }
        v61Var.a0 = colorStateList;
        v61Var.onStateChange(v61Var.getState());
    }

    public void setChipBackgroundColorResource(int i) {
        ColorStateList colorStateListQ;
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.a0 == (colorStateListQ = zh8.q(v61Var.G0, i))) {
            return;
        }
        v61Var.a0 = colorStateListQ;
        v61Var.onStateChange(v61Var.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.S(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.S(v61Var.G0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(v61 v61Var) {
        v61 v61Var2 = this.e;
        if (v61Var2 != v61Var) {
            if (v61Var2 != null) {
                v61Var2.c1 = new WeakReference(null);
            }
            this.e = v61Var;
            v61Var.e1 = false;
            v61Var.c1 = new WeakReference(this);
            c(this.H);
        }
    }

    public void setChipEndPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.F0 == f) {
            return;
        }
        v61Var.F0 = f;
        v61Var.invalidateSelf();
        v61Var.M();
    }

    public void setChipEndPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            float dimension = v61Var.G0.getResources().getDimension(i);
            if (v61Var.F0 != dimension) {
                v61Var.F0 = dimension;
                v61Var.invalidateSelf();
                v61Var.M();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.T(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.T(iz1.m(v61Var.G0, i));
        }
    }

    public void setChipIconSize(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.U(f);
        }
    }

    public void setChipIconSizeResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.U(v61Var.G0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.V(colorStateList);
        }
    }

    public void setChipIconTintResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.V(zh8.q(v61Var.G0, i));
        }
    }

    public void setChipIconVisible(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.W(v61Var.G0.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.b0 == f) {
            return;
        }
        v61Var.b0 = f;
        v61Var.invalidateSelf();
        v61Var.M();
    }

    public void setChipMinHeightResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            float dimension = v61Var.G0.getResources().getDimension(i);
            if (v61Var.b0 != dimension) {
                v61Var.b0 = dimension;
                v61Var.invalidateSelf();
                v61Var.M();
            }
        }
    }

    public void setChipStartPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.y0 == f) {
            return;
        }
        v61Var.y0 = f;
        v61Var.invalidateSelf();
        v61Var.M();
    }

    public void setChipStartPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            float dimension = v61Var.G0.getResources().getDimension(i);
            if (v61Var.y0 != dimension) {
                v61Var.y0 = dimension;
                v61Var.invalidateSelf();
                v61Var.M();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.X(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.X(zh8.q(v61Var.G0, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.Y(f);
        }
    }

    public void setChipStrokeWidthResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.Y(v61Var.G0.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(Drawable drawable) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.Z(drawable);
        }
        e();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.r0 == charSequence) {
            return;
        }
        String str = zp0.b;
        zp0 zp0Var = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? zp0.e : zp0.d;
        zp0Var.getClass();
        be beVar = x08.a;
        v61Var.r0 = zp0Var.c(charSequence);
        v61Var.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.a0(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.a0(v61Var.G0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.Z(iz1.m(v61Var.G0, i));
        }
        e();
    }

    public void setCloseIconSize(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.b0(f);
        }
    }

    public void setCloseIconSizeResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.b0(v61Var.G0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.c0(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.c0(v61Var.G0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.e0(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.e0(zh8.q(v61Var.G0, i));
        }
    }

    public void setCloseIconVisible(int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // defpackage.en, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            g84.j("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            g84.j("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // defpackage.en, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            g84.j("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            g84.j("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            g84.j("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            g84.j("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            g84.j("Please set start drawable using R.attr#chipIcon.");
        } else if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
        } else {
            g84.j("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.s(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.e == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            g84.j("Text within a chip are not allowed to scroll.");
            return;
        }
        super.setEllipsize(truncateAt);
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.d1 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.y = z;
        c(this.H);
    }

    @Override // android.widget.TextView
    public final boolean setFontVariationSettings(String str) {
        super.setFontVariationSettings(str);
        v61 v61Var = this.e;
        if (v61Var == null) {
            return false;
        }
        u08 u08Var = v61Var.M0.g;
        if (u08Var != null) {
            u08Var.c = str;
        }
        h();
        return true;
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(ph5 ph5Var) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.x0 = ph5Var;
        }
    }

    public void setHideMotionSpecResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.x0 = ph5.b(v61Var.G0, i);
        }
    }

    public void setIconEndPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.g0(f);
        }
    }

    public void setIconEndPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.g0(v61Var.G0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.h0(f);
        }
    }

    public void setIconStartPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.h0(v61Var.G0.getResources().getDimension(i));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.e == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
        } else {
            g84.j("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
        } else {
            g84.j("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i) {
        super.setMaxWidth(i);
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.f1 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
        } else {
            g84.j("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.p = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.n = onClickListener;
        e();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.i0(colorStateList);
        }
        this.e.getClass();
        f();
    }

    public void setRippleColorResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.i0(zh8.q(v61Var.G0, i));
            this.e.getClass();
            f();
        }
    }

    @Override // defpackage.tc7
    public void setShapeAppearanceModel(tb7 tb7Var) {
        this.e.setShapeAppearanceModel(tb7Var);
    }

    public void setShowMotionSpec(ph5 ph5Var) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.w0 = ph5Var;
        }
    }

    public void setShowMotionSpecResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.w0 = ph5.b(v61Var.G0, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
        } else {
            g84.j("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        v61 v61Var = this.e;
        if (v61Var == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(v61Var.e1 ? null : charSequence, bufferType);
        v61 v61Var2 = this.e;
        if (v61Var2 == null || TextUtils.equals(v61Var2.g0, charSequence)) {
            return;
        }
        v61Var2.g0 = charSequence;
        v61Var2.M0.e = true;
        v61Var2.invalidateSelf();
        v61Var2.M();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        v61 v61Var = this.e;
        if (v61Var != null) {
            Context context2 = v61Var.G0;
            v61Var.M0.c(new u08(context2, i), context2);
        }
        h();
    }

    public void setTextAppearanceResource(int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.C0 == f) {
            return;
        }
        v61Var.C0 = f;
        v61Var.invalidateSelf();
        v61Var.M();
    }

    public void setTextEndPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            float dimension = v61Var.G0.getResources().getDimension(i);
            if (v61Var.C0 != dimension) {
                v61Var.C0 = dimension;
                v61Var.invalidateSelf();
                v61Var.M();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        v61 v61Var = this.e;
        if (v61Var != null) {
            float fApplyDimension = TypedValue.applyDimension(i, f, getResources().getDisplayMetrics());
            a18 a18Var = v61Var.M0;
            u08 u08Var = a18Var.g;
            if (u08Var != null) {
                u08Var.l = fApplyDimension;
                a18Var.a.setTextSize(fApplyDimension);
                v61Var.a();
            }
        }
        h();
    }

    public void setTextStartPadding(float f) {
        v61 v61Var = this.e;
        if (v61Var == null || v61Var.B0 == f) {
            return;
        }
        v61Var.B0 = f;
        v61Var.invalidateSelf();
        v61Var.M();
    }

    public void setTextStartPaddingResource(int i) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            float dimension = v61Var.G0.getResources().getDimension(i);
            if (v61Var.B0 != dimension) {
                v61Var.B0 = dimension;
                v61Var.invalidateSelf();
                v61Var.M();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.f0(z);
        }
        e();
    }

    public void setCheckedIconVisible(boolean z) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.R(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.W(z);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            g84.j("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            g84.j("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            g84.j("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            g84.j("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setTextAppearance(u08 u08Var) {
        v61 v61Var = this.e;
        if (v61Var != null) {
            v61Var.M0.c(u08Var, v61Var.G0);
        }
        h();
    }

    public void setInternalOnCheckedChangeListener(y85 y85Var) {
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        v61 v61Var = this.e;
        if (v61Var != null) {
            Context context = v61Var.G0;
            v61Var.M0.c(new u08(context, i), context);
        }
        h();
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.chipStyle);
    }

    public Chip(Context context) {
        this(context, null);
    }
}
