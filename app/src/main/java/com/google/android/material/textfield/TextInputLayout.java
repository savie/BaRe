package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.Editable;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.a95;
import defpackage.b18;
import defpackage.be;
import defpackage.c18;
import defpackage.c6;
import defpackage.c95;
import defpackage.d18;
import defpackage.da8;
import defpackage.dl8;
import defpackage.e18;
import defpackage.ed;
import defpackage.f18;
import defpackage.f3;
import defpackage.fp2;
import defpackage.fs;
import defpackage.g33;
import defpackage.g84;
import defpackage.h18;
import defpackage.ib0;
import defpackage.iz1;
import defpackage.jd4;
import defpackage.ji8;
import defpackage.jm1;
import defpackage.jo;
import defpackage.jy2;
import defpackage.k55;
import defpackage.l21;
import defpackage.lr2;
import defpackage.lx1;
import defpackage.mw2;
import defpackage.nh;
import defpackage.oi2;
import defpackage.p72;
import defpackage.pq6;
import defpackage.pw2;
import defpackage.q72;
import defpackage.sb7;
import defpackage.sm7;
import defpackage.tb7;
import defpackage.td6;
import defpackage.tp;
import defpackage.u08;
import defpackage.u94;
import defpackage.us2;
import defpackage.wk1;
import defpackage.wl7;
import defpackage.wx3;
import defpackage.x08;
import defpackage.x5;
import defpackage.xh8;
import defpackage.xl1;
import defpackage.xs1;
import defpackage.y75;
import defpackage.yb4;
import defpackage.z85;
import defpackage.zh8;
import defpackage.zm5;
import defpackage.zp0;
import defpackage.zv1;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int[][] V0 = {new int[]{R.attr.state_pressed}, new int[0]};
    public Drawable A0;
    public ColorStateList B0;
    public ColorStateList C0;
    public int D0;
    public int E0;
    public int F0;
    public f18 G;
    public ColorStateList G0;
    public tp H;
    public int H0;
    public int I;
    public int I0;
    public int J;
    public int J0;
    public CharSequence K;
    public int K0;
    public boolean L;
    public int L0;
    public tp M;
    public int M0;
    public ColorStateList N;
    public boolean N0;
    public int O;
    public final wk1 O0;
    public g33 P;
    public boolean P0;
    public g33 Q;
    public boolean Q0;
    public ColorStateList R;
    public ValueAnimator R0;
    public ColorStateList S;
    public boolean S0;
    public ColorStateList T;
    public boolean T0;
    public ColorStateList U;
    public boolean U0;
    public boolean V;
    public CharSequence W;
    public final FrameLayout a;
    public boolean a0;
    public final wl7 b;
    public c95 b0;
    public final pw2 c;
    public c95 c0;
    public final int d;
    public StateListDrawable d0;
    public EditText e;
    public boolean e0;
    public CharSequence f;
    public c95 f0;
    public c95 g0;
    public tb7 h0;
    public boolean i0;
    public final int j0;
    public int k;
    public int k0;
    public int l0;
    public int m0;
    public int n;
    public int n0;
    public int o0;
    public int p;
    public int p0;
    public int q;
    public int q0;
    public final yb4 r;
    public final Rect r0;
    public final Rect s0;
    public boolean t;
    public final RectF t0;
    public Typeface u0;
    public ColorDrawable v0;
    public int w0;
    public int x;
    public final LinkedHashSet x0;
    public boolean y;
    public ColorDrawable y0;
    public int z0;

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_Design_TextInputLayout), attributeSet, i);
        this.k = -1;
        this.n = -1;
        this.p = -1;
        this.q = -1;
        this.r = new yb4(this);
        this.G = new x5();
        this.r0 = new Rect();
        this.s0 = new Rect();
        this.t0 = new RectF();
        this.x0 = new LinkedHashSet();
        wk1 wk1Var = new wk1(this);
        this.O0 = wk1Var;
        this.U0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.a = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = ed.a;
        wk1Var.R = linearInterpolator;
        wk1Var.j(false);
        wk1Var.Q = linearInterpolator;
        wk1Var.j(false);
        if (wk1Var.g != 8388659) {
            wk1Var.g = 8388659;
            wk1Var.j(false);
        }
        u94 u94VarC = jd4.C(context2, attributeSet, td6.X, i, org.swiftapps.swiftbackup.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 50);
        wl7 wl7Var = new wl7(this, u94VarC);
        this.b = wl7Var;
        TypedArray typedArray = (TypedArray) u94VarC.b;
        this.V = typedArray.getBoolean(48, true);
        setHint(typedArray.getText(4));
        this.Q0 = typedArray.getBoolean(47, true);
        this.P0 = typedArray.getBoolean(42, true);
        if (typedArray.hasValue(6)) {
            setMinEms(typedArray.getInt(6, -1));
        } else if (typedArray.hasValue(3)) {
            setMinWidth(typedArray.getDimensionPixelSize(3, -1));
        }
        if (typedArray.hasValue(5)) {
            setMaxEms(typedArray.getInt(5, -1));
        } else if (typedArray.hasValue(2)) {
            setMaxWidth(typedArray.getDimensionPixelSize(2, -1));
        }
        this.h0 = tb7.h(context2, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_Design_TextInputLayout).a();
        this.j0 = context2.getResources().getDimensionPixelOffset(org.swiftapps.swiftbackup.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.l0 = typedArray.getDimensionPixelOffset(9, 0);
        this.d = getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.m3_multiline_hint_filled_text_extra_space);
        this.n0 = typedArray.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.o0 = typedArray.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.m0 = this.n0;
        float dimension = typedArray.getDimension(13, -1.0f);
        float dimension2 = typedArray.getDimension(12, -1.0f);
        float dimension3 = typedArray.getDimension(10, -1.0f);
        float dimension4 = typedArray.getDimension(11, -1.0f);
        sb7 sb7VarM = this.h0.m();
        if (dimension >= 0.0f) {
            sb7VarM.e = new f3(dimension);
        }
        if (dimension2 >= 0.0f) {
            sb7VarM.f = new f3(dimension2);
        }
        if (dimension3 >= 0.0f) {
            sb7VarM.g = new f3(dimension3);
        }
        if (dimension4 >= 0.0f) {
            sb7VarM.h = new f3(dimension4);
        }
        this.h0 = sb7VarM.a();
        ColorStateList colorStateListL = k55.l(context2, u94VarC, 7);
        if (colorStateListL != null) {
            int defaultColor = colorStateListL.getDefaultColor();
            this.H0 = defaultColor;
            this.q0 = defaultColor;
            if (colorStateListL.isStateful()) {
                this.I0 = colorStateListL.getColorForState(new int[]{-16842910}, -1);
                this.J0 = colorStateListL.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.K0 = colorStateListL.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.J0 = this.H0;
                ColorStateList colorStateListQ = zh8.q(context2, org.swiftapps.swiftbackup.R.color.mtrl_filled_background_color);
                this.I0 = colorStateListQ.getColorForState(new int[]{-16842910}, -1);
                this.K0 = colorStateListQ.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.q0 = 0;
            this.H0 = 0;
            this.I0 = 0;
            this.J0 = 0;
            this.K0 = 0;
        }
        if (typedArray.hasValue(1)) {
            ColorStateList colorStateListA = u94VarC.a(1);
            this.C0 = colorStateListA;
            this.B0 = colorStateListA;
        }
        ColorStateList colorStateListL2 = k55.l(context2, u94VarC, 14);
        this.F0 = typedArray.getColor(14, 0);
        this.D0 = context2.getColor(org.swiftapps.swiftbackup.R.color.mtrl_textinput_default_box_stroke_color);
        this.L0 = context2.getColor(org.swiftapps.swiftbackup.R.color.mtrl_textinput_disabled_color);
        this.E0 = context2.getColor(org.swiftapps.swiftbackup.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListL2 != null) {
            setBoxStrokeColorStateList(colorStateListL2);
        }
        if (typedArray.hasValue(15)) {
            setBoxStrokeErrorColor(k55.l(context2, u94VarC, 15));
        }
        if (typedArray.getResourceId(50, -1) != -1) {
            setHintTextAppearance(typedArray.getResourceId(50, 0));
        }
        this.T = u94VarC.a(24);
        this.U = u94VarC.a(25);
        int resourceId = typedArray.getResourceId(40, 0);
        CharSequence text = typedArray.getText(35);
        int i2 = typedArray.getInt(34, 1);
        boolean z = typedArray.getBoolean(36, false);
        int resourceId2 = typedArray.getResourceId(45, 0);
        boolean z2 = typedArray.getBoolean(44, false);
        CharSequence text2 = typedArray.getText(43);
        int resourceId3 = typedArray.getResourceId(58, 0);
        CharSequence text3 = typedArray.getText(57);
        boolean z3 = typedArray.getBoolean(18, false);
        setCounterMaxLength(typedArray.getInt(19, -1));
        this.J = typedArray.getResourceId(22, 0);
        this.I = typedArray.getResourceId(20, 0);
        setBoxBackgroundMode(typedArray.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i2);
        setCounterOverflowTextAppearance(this.I);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.J);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (typedArray.hasValue(41)) {
            setErrorTextColor(u94VarC.a(41));
        }
        if (typedArray.hasValue(46)) {
            setHelperTextColor(u94VarC.a(46));
        }
        if (typedArray.hasValue(51)) {
            setHintTextColor(u94VarC.a(51));
        }
        if (typedArray.hasValue(23)) {
            setCounterTextColor(u94VarC.a(23));
        }
        if (typedArray.hasValue(21)) {
            setCounterOverflowTextColor(u94VarC.a(21));
        }
        if (typedArray.hasValue(59)) {
            setPlaceholderTextColor(u94VarC.a(59));
        }
        pw2 pw2Var = new pw2(this, u94VarC);
        this.c = pw2Var;
        boolean z4 = typedArray.getBoolean(0, true);
        setHintMaxLines(typedArray.getInt(49, 1));
        u94VarC.f();
        setImportantForAccessibility(2);
        setImportantForAutofill(1);
        frameLayout.addView(wl7Var);
        frameLayout.addView(pw2Var);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.e;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.b0;
        }
        EditText editText2 = this.e;
        int iC = z85.C(editText2.getContext(), jm1.U(editText2, org.swiftapps.swiftbackup.R.attr.colorControlHighlight));
        int i = this.k0;
        int[][] iArr = V0;
        if (i != 2) {
            if (i != 1) {
                return null;
            }
            c95 c95Var = this.b0;
            int i2 = this.q0;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{z85.x(0.1f, iC, i2), i2}), c95Var, c95Var);
        }
        Context context = getContext();
        c95 c95Var2 = this.b0;
        int iM = z85.m(org.swiftapps.swiftbackup.R.attr.colorSurface, context, "TextInputLayout");
        c95 c95Var3 = new c95(c95Var2.k());
        int iX = z85.x(0.1f, iC, iM);
        c95Var3.t(new ColorStateList(iArr, new int[]{iX, 0}));
        c95Var3.setTint(iM);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iX, iM});
        c95 c95Var4 = new c95(c95Var2.k());
        c95Var4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c95Var3, c95Var4), c95Var2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.d0 == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.d0 = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.d0.addState(new int[0], h(false));
        }
        return this.d0;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.c0 == null) {
            this.c0 = h(true);
        }
        return this.c0;
    }

    public static void m(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.e != null) {
            c6.f("We already have an EditText, can only have one");
            return;
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.e = editText;
        int i = this.k;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.p);
        }
        int i2 = this.n;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.q);
        }
        this.e0 = false;
        k();
        setTextInputAccessibilityDelegate(new e18(this));
        Typeface typeface = this.e.getTypeface();
        wk1 wk1Var = this.O0;
        wk1Var.n(typeface);
        float textSize = this.e.getTextSize();
        if (wk1Var.h != textSize) {
            wk1Var.h = textSize;
            wk1Var.j(false);
        }
        float letterSpacing = this.e.getLetterSpacing();
        if (wk1Var.X != letterSpacing) {
            wk1Var.X = letterSpacing;
            wk1Var.j(false);
        }
        int gravity = this.e.getGravity();
        int i3 = (gravity & (-113)) | 48;
        if (wk1Var.g != i3) {
            wk1Var.g = i3;
            wk1Var.j(false);
        }
        if (wk1Var.f != gravity) {
            wk1Var.f = gravity;
            wk1Var.j(false);
        }
        this.M0 = editText.getMinimumHeight();
        this.e.addTextChangedListener(new b18(this, editText));
        if (this.B0 == null) {
            this.B0 = this.e.getHintTextColors();
        }
        if (this.V) {
            if (TextUtils.isEmpty(this.W)) {
                CharSequence hint = this.e.getHint();
                this.f = hint;
                setHint(hint);
                this.e.setHint((CharSequence) null);
            }
            this.a0 = true;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            r();
        }
        if (this.H != null) {
            p(this.e.getText());
        }
        t();
        this.r.b();
        this.b.bringToFront();
        pw2 pw2Var = this.c;
        pw2Var.bringToFront();
        Iterator it = this.x0.iterator();
        while (it.hasNext()) {
            ((mw2) it.next()).a(this);
        }
        pw2Var.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        w(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.W)) {
            return;
        }
        this.W = charSequence;
        wk1 wk1Var = this.O0;
        if (charSequence == null || !TextUtils.equals(wk1Var.B, charSequence)) {
            wk1Var.B = charSequence;
            wk1Var.C = null;
            wk1Var.j(false);
        }
        if (this.N0) {
            return;
        }
        l();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.L == z) {
            return;
        }
        tp tpVar = this.M;
        if (!z) {
            if (tpVar != null) {
                tpVar.setVisibility(8);
            }
            this.M = null;
        } else if (tpVar != null) {
            this.a.addView(tpVar);
            this.M.setVisibility(0);
        }
        this.L = z;
    }

    public final void a() {
        if (this.e == null || this.k0 != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.e;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.O0.f() + this.d), this.e.getPaddingEnd(), getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.e;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_filled_edittext_font_2_0_padding_top), this.e.getPaddingEnd(), getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (k55.w(getContext())) {
            EditText editText3 = this.e;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_filled_edittext_font_1_3_padding_top), this.e.getPaddingEnd(), getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.a;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        v();
        setEditText((EditText) view);
    }

    public final void b(float f) {
        wk1 wk1Var = this.O0;
        if (wk1Var.b == f) {
            return;
        }
        if (this.R0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.R0 = valueAnimator;
            valueAnimator.setInterpolator(ji8.G(getContext(), org.swiftapps.swiftbackup.R.attr.motionEasingEmphasizedInterpolator, ed.b));
            this.R0.setDuration(ji8.F(getContext(), org.swiftapps.swiftbackup.R.attr.motionDurationMedium4, 167));
            this.R0.addUpdateListener(new d18(this));
        }
        this.R0.setFloatValues(wk1Var.b, f);
        this.R0.start();
    }

    public final void c() {
        int i;
        int i2;
        c95 c95Var = this.b0;
        if (c95Var == null) {
            return;
        }
        tb7 tb7VarK = c95Var.k();
        tb7 tb7Var = this.h0;
        if (tb7VarK != tb7Var) {
            this.b0.setShapeAppearanceModel(tb7Var);
        }
        if (this.k0 == 2 && (i = this.m0) > -1 && (i2 = this.p0) != 0) {
            c95 c95Var2 = this.b0;
            c95Var2.A(i);
            c95Var2.y(ColorStateList.valueOf(i2));
        }
        int iE = this.q0;
        if (this.k0 == 1) {
            Integer numN = z85.n(getContext(), org.swiftapps.swiftbackup.R.attr.colorSurface);
            iE = xl1.e(this.q0, numN != null ? numN.intValue() : 0);
        }
        this.q0 = iE;
        this.b0.t(ColorStateList.valueOf(iE));
        c95 c95Var3 = this.f0;
        if (c95Var3 != null && this.g0 != null) {
            if (this.m0 > -1 && this.p0 != 0) {
                c95Var3.t(this.e.isFocused() ? ColorStateList.valueOf(this.D0) : ColorStateList.valueOf(this.p0));
                this.g0.t(ColorStateList.valueOf(this.p0));
            }
            invalidate();
        }
        u();
    }

    public final Rect d(Rect rect) {
        if (this.e == null) {
            g84.c();
            return null;
        }
        boolean z = getLayoutDirection() == 1;
        int i = rect.bottom;
        Rect rect2 = this.s0;
        rect2.bottom = i;
        int i2 = this.k0;
        if (i2 == 1) {
            rect2.left = i(rect.left, z);
            rect2.top = rect.top + this.l0;
            rect2.right = j(rect.right, z);
            return rect2;
        }
        int i3 = rect.left;
        if (i2 != 2) {
            rect2.left = i(i3, z);
            rect2.top = getPaddingTop();
            rect2.right = j(rect.right, z);
            return rect2;
        }
        rect2.left = this.e.getPaddingLeft() + i3;
        rect2.top = rect.top - e();
        rect2.right = rect.right - this.e.getPaddingRight();
        return rect2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f != null) {
            boolean z = this.a0;
            this.a0 = false;
            CharSequence hint = editText.getHint();
            this.e.setHint(this.f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.e.setHint(hint);
                this.a0 = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.a;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.e) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.T0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.T0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        c95 c95Var;
        super.draw(canvas);
        boolean z = this.V;
        wk1 wk1Var = this.O0;
        if (z) {
            TextPaint textPaint = wk1Var.O;
            RectF rectF = wk1Var.e;
            int iSave = canvas.save();
            if (wk1Var.C != null && rectF.width() > 0.0f && rectF.height() > 0.0f) {
                textPaint.setTextSize(wk1Var.G);
                float f = wk1Var.q;
                float f2 = wk1Var.r;
                float f3 = wk1Var.F;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                if ((wk1Var.e0 > 1 || wk1Var.f0 > 1) && !wk1Var.D && wk1Var.o()) {
                    float lineStart = wk1Var.q - wk1Var.Z.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas.translate(lineStart, f2);
                    float f4 = alpha;
                    textPaint.setAlpha((int) (wk1Var.c0 * f4));
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 31) {
                        textPaint.setShadowLayer(wk1Var.H, wk1Var.I, wk1Var.J, z85.c(wk1Var.K, textPaint.getAlpha()));
                    }
                    wk1Var.Z.draw(canvas);
                    textPaint.setAlpha((int) (wk1Var.b0 * f4));
                    if (i >= 31) {
                        textPaint.setShadowLayer(wk1Var.H, wk1Var.I, wk1Var.J, z85.c(wk1Var.K, textPaint.getAlpha()));
                    }
                    int lineBaseline = wk1Var.Z.getLineBaseline(0);
                    CharSequence charSequence = wk1Var.d0;
                    float f5 = lineBaseline;
                    canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f5, textPaint);
                    if (i >= 31) {
                        textPaint.setShadowLayer(wk1Var.H, wk1Var.I, wk1Var.J, wk1Var.K);
                    }
                    String strTrim = wk1Var.d0.toString().trim();
                    if (strTrim.endsWith("…")) {
                        strTrim = xs1.g(1, 0, strTrim);
                    }
                    String str = strTrim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(wk1Var.Z.getLineEnd(0), str.length()), 0.0f, f5, (Paint) textPaint);
                    canvas = canvas;
                } else {
                    canvas.translate(f, f2);
                    wk1Var.Z.draw(canvas);
                }
                canvas.restoreToCount(iSave);
            }
        }
        if (this.g0 == null || (c95Var = this.f0) == null) {
            return;
        }
        c95Var.draw(canvas);
        if (this.e.isFocused()) {
            Rect bounds = this.g0.getBounds();
            Rect bounds2 = this.f0.getBounds();
            float f6 = wk1Var.b;
            int iCenterX = bounds2.centerX();
            bounds.left = ed.c(f6, iCenterX, bounds2.left);
            bounds.right = ed.c(f6, iCenterX, bounds2.right);
            this.g0.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z;
        ColorStateList colorStateList;
        if (this.S0) {
            return;
        }
        this.S0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        wk1 wk1Var = this.O0;
        if (wk1Var != null) {
            wk1Var.M = drawableState;
            ColorStateList colorStateList2 = wk1Var.k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = wk1Var.j) == null || !colorStateList.isStateful())) {
                z = false;
            } else {
                wk1Var.j(false);
                z = true;
            }
        } else {
            z = false;
        }
        if (this.e != null) {
            w(isLaidOut() && isEnabled(), false);
        }
        t();
        z();
        if (z) {
            invalidate();
        }
        this.S0 = false;
    }

    public final int e() {
        if (this.V) {
            int i = this.k0;
            wk1 wk1Var = this.O0;
            if (i == 0) {
                return (int) wk1Var.f();
            }
            if (i == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (wk1Var.f() / 2.0f);
                }
                float f = wk1Var.f();
                TextPaint textPaint = wk1Var.P;
                textPaint.setTextSize(wk1Var.i);
                textPaint.setTypeface(wk1Var.s);
                textPaint.setLetterSpacing(wk1Var.W);
                return Math.max(0, (int) (f - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    public final g33 f() {
        g33 g33Var = new g33((Object) null);
        g33Var.c = ji8.F(getContext(), org.swiftapps.swiftbackup.R.attr.motionDurationShort2, 87);
        g33Var.d = ji8.G(getContext(), org.swiftapps.swiftbackup.R.attr.motionEasingLinearInterpolator, ed.a);
        return g33Var;
    }

    public final boolean g() {
        return this.V && !TextUtils.isEmpty(this.W) && (this.b0 instanceof q72);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.e;
        if (editText == null) {
            return super.getBaseline();
        }
        return e() + getPaddingTop() + editText.getBaseline();
    }

    public c95 getBoxBackground() {
        int i = this.k0;
        if (i == 1 || i == 2) {
            return this.b0;
        }
        g84.c();
        return null;
    }

    public int getBoxBackgroundColor() {
        return this.q0;
    }

    public int getBoxBackgroundMode() {
        return this.k0;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.l0;
    }

    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        tb7 tb7Var = this.h0;
        RectF rectF = this.t0;
        return layoutDirection == 1 ? tb7Var.h.a(rectF) : tb7Var.g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        tb7 tb7Var = this.h0;
        RectF rectF = this.t0;
        return layoutDirection == 1 ? tb7Var.g.a(rectF) : tb7Var.h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        tb7 tb7Var = this.h0;
        RectF rectF = this.t0;
        return layoutDirection == 1 ? tb7Var.e.a(rectF) : tb7Var.f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        tb7 tb7Var = this.h0;
        RectF rectF = this.t0;
        return layoutDirection == 1 ? tb7Var.f.a(rectF) : tb7Var.e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.F0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.G0;
    }

    public int getBoxStrokeWidth() {
        return this.n0;
    }

    public int getBoxStrokeWidthFocused() {
        return this.o0;
    }

    public int getCounterMaxLength() {
        return this.x;
    }

    public CharSequence getCounterOverflowDescription() {
        tp tpVar;
        if (this.t && this.y && (tpVar = this.H) != null) {
            return tpVar.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.S;
    }

    public ColorStateList getCounterTextColor() {
        return this.R;
    }

    public ColorStateList getCursorColor() {
        return this.T;
    }

    public ColorStateList getCursorErrorColor() {
        return this.U;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.B0;
    }

    public EditText getEditText() {
        return this.e;
    }

    public CharSequence getEndIconContentDescription() {
        return this.c.k.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.c.k.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.c.x;
    }

    public int getEndIconMode() {
        return this.c.p;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.c.y;
    }

    public CheckableImageButton getEndIconView() {
        return this.c.k;
    }

    public CharSequence getError() {
        yb4 yb4Var = this.r;
        if (yb4Var.q) {
            return yb4Var.p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.r.t;
    }

    public CharSequence getErrorContentDescription() {
        return this.r.s;
    }

    public int getErrorCurrentTextColors() {
        tp tpVar = this.r.r;
        if (tpVar != null) {
            return tpVar.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.c.c.getDrawable();
    }

    public CharSequence getHelperText() {
        yb4 yb4Var = this.r;
        if (yb4Var.x) {
            return yb4Var.w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        tp tpVar = this.r.y;
        if (tpVar != null) {
            return tpVar.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.V) {
            return this.W;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.O0.f();
    }

    public final int getHintCurrentCollapsedTextColor() {
        wk1 wk1Var = this.O0;
        return wk1Var.g(wk1Var.k);
    }

    public int getHintMaxLines() {
        return this.O0.e0;
    }

    public ColorStateList getHintTextColor() {
        return this.C0;
    }

    public f18 getLengthCounter() {
        return this.G;
    }

    public int getMaxEms() {
        return this.n;
    }

    public int getMaxWidth() {
        return this.q;
    }

    public int getMinEms() {
        return this.k;
    }

    public int getMinWidth() {
        return this.p;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.c.k.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.c.k.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.L) {
            return this.K;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.O;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.N;
    }

    public CharSequence getPrefixText() {
        return this.b.c;
    }

    public ColorStateList getPrefixTextColor() {
        return this.b.b.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.b.b;
    }

    public tb7 getShapeAppearanceModel() {
        return this.h0;
    }

    public CharSequence getStartIconContentDescription() {
        return this.b.d.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.b.d.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.b.k;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.b.n;
    }

    public CharSequence getSuffixText() {
        return this.c.H;
    }

    public ColorStateList getSuffixTextColor() {
        return this.c.I.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.c.I;
    }

    public Typeface getTypeface() {
        return this.u0;
    }

    public final c95 h(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(org.swiftapps.swiftbackup.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.e;
        float popupElevation = editText instanceof y75 ? ((y75) editText).getPopupElevation() : getResources().getDimensionPixelOffset(org.swiftapps.swiftbackup.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(org.swiftapps.swiftbackup.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        pq6 pq6Var = new pq6();
        pq6 pq6Var2 = new pq6();
        pq6 pq6Var3 = new pq6();
        pq6 pq6Var4 = new pq6();
        int i = 0;
        us2 us2Var = new us2(i);
        us2 us2Var2 = new us2(i);
        us2 us2Var3 = new us2(i);
        us2 us2Var4 = new us2(i);
        f3 f3Var = new f3(f);
        f3 f3Var2 = new f3(f);
        f3 f3Var3 = new f3(dimensionPixelOffset);
        f3 f3Var4 = new f3(dimensionPixelOffset);
        tb7 tb7Var = new tb7();
        tb7Var.a = pq6Var;
        tb7Var.b = pq6Var2;
        tb7Var.c = pq6Var3;
        tb7Var.d = pq6Var4;
        tb7Var.e = f3Var;
        tb7Var.f = f3Var2;
        tb7Var.g = f3Var4;
        tb7Var.h = f3Var3;
        tb7Var.i = us2Var;
        tb7Var.j = us2Var2;
        tb7Var.k = us2Var3;
        tb7Var.l = us2Var4;
        EditText editText2 = this.e;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof y75 ? ((y75) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = c95.X;
            dropDownBackgroundTintList = ColorStateList.valueOf(z85.m(org.swiftapps.swiftbackup.R.attr.colorSurface, context, c95.class.getSimpleName()));
        }
        c95 c95Var = new c95();
        c95Var.p(context);
        c95Var.t(dropDownBackgroundTintList);
        c95Var.s(popupElevation);
        c95Var.setShapeAppearanceModel(tb7Var);
        a95 a95Var = c95Var.b;
        if (a95Var.h == null) {
            a95Var.h = new Rect();
        }
        c95Var.b.h.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        c95Var.invalidateSelf();
        return c95Var;
    }

    public final int i(int i, boolean z) {
        int compoundPaddingLeft;
        if (z || getPrefixText() == null) {
            compoundPaddingLeft = (!z || getSuffixText() == null) ? this.e.getCompoundPaddingLeft() : this.c.b();
        } else {
            compoundPaddingLeft = this.b.a();
        }
        return compoundPaddingLeft + i;
    }

    public final int j(int i, boolean z) {
        int compoundPaddingRight;
        if (z || getSuffixText() == null) {
            compoundPaddingRight = (!z || getPrefixText() == null) ? this.e.getCompoundPaddingRight() : this.b.a();
        } else {
            compoundPaddingRight = this.c.b();
        }
        return i - compoundPaddingRight;
    }

    public final void k() {
        int i = this.k0;
        if (i == 0) {
            this.b0 = null;
            this.f0 = null;
            this.g0 = null;
        } else if (i == 1) {
            this.b0 = new c95(this.h0);
            this.f0 = new c95();
            this.g0 = new c95();
        } else {
            if (i != 2) {
                c6.f(xs1.m(new StringBuilder(), this.k0, " is illegal; only @BoxBackgroundMode constants are supported."));
                return;
            }
            if (!this.V || (this.b0 instanceof q72)) {
                this.b0 = new c95(this.h0);
            } else {
                tb7 tb7Var = this.h0;
                int i2 = q72.a0;
                if (tb7Var == null) {
                    tb7Var = new tb7();
                }
                p72 p72Var = new p72(tb7Var, new RectF());
                q72 q72Var = new q72(p72Var);
                q72Var.Z = p72Var;
                this.b0 = q72Var;
            }
            this.f0 = null;
            this.g0 = null;
        }
        u();
        z();
        if (this.k0 == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.l0 = getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (k55.w(getContext())) {
                this.l0 = getResources().getDimensionPixelSize(org.swiftapps.swiftbackup.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        a();
        if (this.k0 != 0) {
            v();
        }
        EditText editText = this.e;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.k0;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
    public final void l() {
        float f;
        float f2;
        float f3;
        RectF rectF;
        float f4;
        float lineWidth;
        int i;
        float f5;
        int i2;
        if (g()) {
            int width = this.e.getWidth();
            int gravity = this.e.getGravity();
            wk1 wk1Var = this.O0;
            boolean zC = wk1Var.c(wk1Var.B);
            wk1Var.D = zC;
            Rect rect = wk1Var.d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zC) {
                        i2 = rect.left;
                        f3 = i2;
                    } else {
                        f = rect.right;
                        f2 = wk1Var.a0;
                    }
                } else if (zC) {
                    f = rect.right;
                    f2 = wk1Var.a0;
                } else {
                    i2 = rect.left;
                    f3 = i2;
                }
                float fMax = Math.max(f3, rect.left);
                rectF = this.t0;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f4 = (width / 2.0f) + (wk1Var.a0 / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (wk1Var.D) {
                        f5 = wk1Var.a0;
                        f4 = f5 + fMax;
                    } else {
                        i = rect.right;
                        f4 = i;
                    }
                } else if (wk1Var.D) {
                    i = rect.right;
                    f4 = i;
                } else {
                    f5 = wk1Var.a0;
                    f4 = f5 + fMax;
                }
                rectF.right = Math.min(f4, rect.right);
                rectF.bottom = wk1Var.f() + rect.top;
                if (wk1Var.Z != null && !wk1Var.o()) {
                    StaticLayout staticLayout = wk1Var.Z;
                    lineWidth = (wk1Var.i / wk1Var.h) * staticLayout.getLineWidth(staticLayout.getLineCount() - 1);
                    if (wk1Var.D) {
                        rectF.left = rectF.right - lineWidth;
                    } else {
                        rectF.right = rectF.left + lineWidth;
                    }
                }
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f6 = rectF.left;
                float f7 = this.j0;
                rectF.left = f6 - f7;
                rectF.right += f7;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.m0);
                rectF.top = 0.0f;
                q72 q72Var = (q72) this.b0;
                q72Var.getClass();
                q72Var.F(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f = width / 2.0f;
            f2 = wk1Var.a0 / 2.0f;
            f3 = f - f2;
            float fMax2 = Math.max(f3, rect.left);
            rectF = this.t0;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f4 = (width / 2.0f) + (wk1Var.a0 / 2.0f);
            } else {
                f4 = (width / 2.0f) + (wk1Var.a0 / 2.0f);
            }
            rectF.right = Math.min(f4, rect.right);
            rectF.bottom = wk1Var.f() + rect.top;
            if (wk1Var.Z != null) {
                StaticLayout staticLayout2 = wk1Var.Z;
                lineWidth = (wk1Var.i / wk1Var.h) * staticLayout2.getLineWidth(staticLayout2.getLineCount() - 1);
                if (wk1Var.D) {
                    rectF.left = rectF.right - lineWidth;
                } else {
                    rectF.right = rectF.left + lineWidth;
                }
            }
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public final void n(tp tpVar, int i) {
        try {
            tpVar.setTextAppearance(i);
            if (tpVar.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        tpVar.setTextAppearance(org.swiftapps.swiftbackup.R.style.TextAppearance_AppCompat_Caption);
        tpVar.setTextColor(getContext().getColor(org.swiftapps.swiftbackup.R.color.design_error));
    }

    public final boolean o() {
        yb4 yb4Var = this.r;
        return (yb4Var.o != 1 || yb4Var.r == null || TextUtils.isEmpty(yb4Var.p)) ? false : true;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.O0.i(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        pw2 pw2Var = this.c;
        pw2Var.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.U0 = false;
        if (this.e != null && this.e.getMeasuredHeight() < (iMax = Math.max(pw2Var.getMeasuredHeight(), this.b.getMeasuredHeight()))) {
            this.e.setMinimumHeight(iMax);
            z = true;
        }
        boolean zS = s();
        if (z || zS) {
            this.e.post(new jy2(this, 3));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float fDescent;
        int i5;
        int compoundPaddingTop;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.e;
        if (editText != null) {
            Rect rect = this.r0;
            oi2.a(this, editText, rect);
            c95 c95Var = this.f0;
            if (c95Var != null) {
                int i6 = rect.bottom;
                c95Var.setBounds(rect.left, i6 - this.n0, rect.right, i6);
            }
            c95 c95Var2 = this.g0;
            if (c95Var2 != null) {
                int i7 = rect.bottom;
                c95Var2.setBounds(rect.left, i7 - this.o0, rect.right, i7);
            }
            if (this.V) {
                float textSize = this.e.getTextSize();
                wk1 wk1Var = this.O0;
                float f = wk1Var.h;
                TextPaint textPaint = wk1Var.P;
                if (f != textSize) {
                    wk1Var.h = textSize;
                    wk1Var.j(false);
                }
                int gravity = this.e.getGravity();
                int i8 = (gravity & (-113)) | 48;
                if (wk1Var.g != i8) {
                    wk1Var.g = i8;
                    wk1Var.j(false);
                }
                if (wk1Var.f != gravity) {
                    wk1Var.f = gravity;
                    wk1Var.j(false);
                }
                Rect rectD = d(rect);
                int i9 = rectD.left;
                int i10 = rectD.top;
                int i11 = rectD.right;
                int i12 = rectD.bottom;
                Rect rect2 = wk1Var.d;
                if (rect2.left != i9 || rect2.top != i10 || rect2.right != i11 || rect2.bottom != i12) {
                    rect2.set(i9, i10, i11, i12);
                    wk1Var.N = true;
                }
                if (this.e == null) {
                    g84.c();
                    return;
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(wk1Var.h);
                    textPaint.setTypeface(wk1Var.v);
                    textPaint.setLetterSpacing(wk1Var.X);
                    fDescent = -textPaint.ascent();
                } else {
                    textPaint.setTextSize(wk1Var.h);
                    textPaint.setTypeface(wk1Var.v);
                    textPaint.setLetterSpacing(wk1Var.X);
                    fDescent = wk1Var.l * (textPaint.descent() + (-textPaint.ascent()));
                }
                int compoundPaddingLeft = this.e.getCompoundPaddingLeft() + rect.left;
                Rect rect3 = this.s0;
                rect3.left = compoundPaddingLeft;
                if (this.k0 != 1 || this.e.getMinLines() > 1) {
                    if (this.k0 != 0 || getHintMaxLines() == 1) {
                        i5 = 0;
                    } else {
                        textPaint.setTextSize(wk1Var.h);
                        textPaint.setTypeface(wk1Var.v);
                        textPaint.setLetterSpacing(wk1Var.X);
                        i5 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.e.getCompoundPaddingTop() + rect.top) - i5;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (fDescent / 2.0f));
                }
                rect3.top = compoundPaddingTop;
                rect3.right = rect.right - this.e.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.k0 != 1 || this.e.getMinLines() > 1) ? rect.bottom - this.e.getCompoundPaddingBottom() : (int) (rect3.top + fDescent);
                rect3.bottom = compoundPaddingBottom;
                int i13 = rect3.left;
                int i14 = rect3.top;
                int i15 = rect3.right;
                Rect rect4 = wk1Var.c;
                if (rect4.left != i13 || rect4.top != i14 || rect4.right != i15 || rect4.bottom != compoundPaddingBottom || true != wk1Var.k0) {
                    rect4.set(i13, i14, i15, compoundPaddingBottom);
                    wk1Var.N = true;
                    wk1Var.k0 = true;
                }
                wk1Var.j(false);
                if (!g() || this.N0) {
                    return;
                }
                l();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        float f;
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.U0;
        pw2 pw2Var = this.c;
        if (!z) {
            pw2Var.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.U0 = true;
        }
        if (this.M != null && (editText = this.e) != null) {
            this.M.setGravity(editText.getGravity());
            this.M.setPadding(this.e.getCompoundPaddingLeft(), this.e.getCompoundPaddingTop(), this.e.getCompoundPaddingRight(), this.e.getCompoundPaddingBottom());
        }
        pw2Var.m();
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.e.getMeasuredWidth() - this.e.getCompoundPaddingLeft()) - this.e.getCompoundPaddingRight();
        wk1 wk1Var = this.O0;
        TextPaint textPaint = wk1Var.P;
        textPaint.setTextSize(wk1Var.i);
        textPaint.setTypeface(wk1Var.s);
        textPaint.setLetterSpacing(wk1Var.W);
        float f2 = measuredWidth;
        wk1Var.i0 = wk1Var.e(wk1Var.f0, textPaint, wk1Var.B, (wk1Var.i / wk1Var.h) * f2, wk1Var.D).getHeight();
        textPaint.setTextSize(wk1Var.h);
        textPaint.setTypeface(wk1Var.v);
        textPaint.setLetterSpacing(wk1Var.X);
        wk1Var.j0 = wk1Var.e(wk1Var.e0, textPaint, wk1Var.B, f2, wk1Var.D).getHeight();
        EditText editText2 = this.e;
        Rect rect = this.r0;
        oi2.a(this, editText2, rect);
        Rect rectD = d(rect);
        int i3 = rectD.left;
        int i4 = rectD.top;
        int i5 = rectD.right;
        int i6 = rectD.bottom;
        Rect rect2 = wk1Var.d;
        if (rect2.left != i3 || rect2.top != i4 || rect2.right != i5 || rect2.bottom != i6) {
            rect2.set(i3, i4, i5, i6);
            wk1Var.N = true;
        }
        v();
        a();
        if (this.e == null) {
            return;
        }
        int i7 = wk1Var.j0;
        if (i7 != -1) {
            f = i7;
        } else {
            TextPaint textPaint2 = wk1Var.P;
            textPaint2.setTextSize(wk1Var.h);
            textPaint2.setTypeface(wk1Var.v);
            textPaint2.setLetterSpacing(wk1Var.X);
            f = -textPaint2.ascent();
        }
        float f3 = 0.0f;
        if (this.K != null) {
            TextPaint textPaint3 = new TextPaint(129);
            textPaint3.set(this.M.getPaint());
            textPaint3.setTextSize(this.M.getTextSize());
            textPaint3.setTypeface(this.M.getTypeface());
            textPaint3.setLetterSpacing(this.M.getLetterSpacing());
            sm7 sm7Var = new sm7(this.K, textPaint3, measuredWidth);
            sm7Var.k = getLayoutDirection() == 1;
            sm7Var.j = true;
            float lineSpacingExtra = this.M.getLineSpacingExtra();
            float lineSpacingMultiplier = this.M.getLineSpacingMultiplier();
            sm7Var.g = lineSpacingExtra;
            sm7Var.h = lineSpacingMultiplier;
            sm7Var.m = new fs(this, 10);
            f3 = (this.k0 == 1 ? wk1Var.f() + this.l0 + this.d : 0.0f) + sm7Var.a().getHeight();
        }
        float fMax = Math.max(f, f3);
        if (this.e.getMeasuredHeight() < fMax) {
            this.e.setMinimumHeight(Math.round(fMax));
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h18)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h18 h18Var = (h18) parcelable;
        super.onRestoreInstanceState(h18Var.a);
        setError(h18Var.c);
        if (h18Var.d) {
            post(new ib0(this, 9));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.i0) {
            lx1 lx1Var = this.h0.e;
            RectF rectF = this.t0;
            float fA = lx1Var.a(rectF);
            float fA2 = this.h0.f.a(rectF);
            float fA3 = this.h0.h.a(rectF);
            float fA4 = this.h0.g.a(rectF);
            tb7 tb7Var = this.h0;
            zv1 zv1Var = tb7Var.a;
            zv1 zv1Var2 = tb7Var.b;
            zv1 zv1Var3 = tb7Var.d;
            zv1 zv1Var4 = tb7Var.c;
            us2 us2Var = new us2(0);
            us2 us2Var2 = new us2(0);
            us2 us2Var3 = new us2(0);
            us2 us2Var4 = new us2(0);
            f3 f3Var = new f3(fA2);
            f3 f3Var2 = new f3(fA);
            f3 f3Var3 = new f3(fA4);
            f3 f3Var4 = new f3(fA3);
            tb7 tb7Var2 = new tb7();
            tb7Var2.a = zv1Var2;
            tb7Var2.b = zv1Var;
            tb7Var2.c = zv1Var3;
            tb7Var2.d = zv1Var4;
            tb7Var2.e = f3Var;
            tb7Var2.f = f3Var2;
            tb7Var2.g = f3Var4;
            tb7Var2.h = f3Var3;
            tb7Var2.i = us2Var;
            tb7Var2.j = us2Var2;
            tb7Var2.k = us2Var3;
            tb7Var2.l = us2Var4;
            this.i0 = z;
            setShapeAppearanceModel(tb7Var2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        h18 h18Var = new h18(super.onSaveInstanceState());
        if (o()) {
            h18Var.c = getError();
        }
        pw2 pw2Var = this.c;
        h18Var.d = pw2Var.p != 0 && pw2Var.k.d;
        return h18Var;
    }

    public final void p(Editable editable) {
        ((x5) this.G).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.y;
        int i = this.x;
        if (i == -1) {
            this.H.setText(String.valueOf(length));
            this.H.setContentDescription(null);
            this.y = false;
        } else {
            this.y = length > i;
            Context context = getContext();
            this.H.setContentDescription(context.getString(this.y ? org.swiftapps.swiftbackup.R.string.character_counter_overflowed_content_description : org.swiftapps.swiftbackup.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.x)));
            if (z != this.y) {
                q();
            }
            String str = zp0.b;
            zp0 zp0Var = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? zp0.e : zp0.d;
            tp tpVar = this.H;
            String string = getContext().getString(org.swiftapps.swiftbackup.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.x));
            zp0Var.getClass();
            be beVar = x08.a;
            tpVar.setText(string != null ? zp0Var.c(string).toString() : null);
        }
        if (this.e == null || z == this.y) {
            return;
        }
        w(false, false);
        z();
        t();
    }

    public final void q() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        tp tpVar = this.H;
        if (tpVar != null) {
            n(tpVar, this.y ? this.I : this.J);
            if (!this.y && (colorStateList2 = this.R) != null) {
                this.H.setTextColor(colorStateList2);
            }
            if (!this.y || (colorStateList = this.S) == null) {
                return;
            }
            this.H.setTextColor(colorStateList);
        }
    }

    public final void r() {
        ColorStateList colorStateList;
        ColorStateList colorStateListQ = this.T;
        if (colorStateListQ == null) {
            colorStateListQ = z85.q(getContext(), org.swiftapps.swiftbackup.R.attr.colorControlActivated);
        }
        EditText editText = this.e;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = this.e.getTextCursorDrawable().mutate();
        if ((o() || (this.H != null && this.y)) && (colorStateList = this.U) != null) {
            colorStateListQ = colorStateList;
        }
        drawableMutate.setTintList(colorStateListQ);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0063  */
    /* JADX WARN: Code duplicated, block: B:23:0x0067  */
    /* JADX WARN: Code duplicated, block: B:25:0x007c  */
    public final boolean s() {
        boolean z;
        if (this.e == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z2 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            wl7 wl7Var = this.b;
            if (wl7Var.getMeasuredWidth() > 0) {
                int iMax = Math.max(0, wl7Var.getMeasuredWidth() - this.e.getPaddingLeft());
                if (this.v0 == null || this.w0 != iMax) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.v0 = colorDrawable;
                    this.w0 = iMax;
                    colorDrawable.setBounds(0, 0, iMax, 1);
                }
                Drawable[] compoundDrawablesRelative = this.e.getCompoundDrawablesRelative();
                Drawable drawable = compoundDrawablesRelative[0];
                ColorDrawable colorDrawable2 = this.v0;
                if (drawable != colorDrawable2) {
                    this.e.setCompoundDrawablesRelative(colorDrawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                    z = true;
                } else {
                    z = false;
                }
            } else if (this.v0 != null) {
                Drawable[] compoundDrawablesRelative2 = this.e.getCompoundDrawablesRelative();
                this.e.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.v0 = null;
                z = true;
            } else {
                z = false;
            }
        } else if (this.v0 != null) {
            Drawable[] compoundDrawablesRelative3 = this.e.getCompoundDrawablesRelative();
            this.e.setCompoundDrawablesRelative(null, compoundDrawablesRelative3[1], compoundDrawablesRelative3[2], compoundDrawablesRelative3[3]);
            this.v0 = null;
            z = true;
        } else {
            z = false;
        }
        pw2 pw2Var = this.c;
        if ((pw2Var.d() || ((pw2Var.p != 0 && pw2Var.c()) || pw2Var.H != null)) && pw2Var.getMeasuredWidth() > 0) {
            int measuredWidth = pw2Var.I.getMeasuredWidth() - this.e.getPaddingRight();
            if (pw2Var.d()) {
                checkableImageButton = pw2Var.c;
            } else if (pw2Var.p != 0 && pw2Var.c()) {
                checkableImageButton = pw2Var.k;
            }
            if (checkableImageButton != null) {
                measuredWidth = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth() + measuredWidth;
            }
            int iMax2 = Math.max(0, measuredWidth);
            Drawable[] compoundDrawablesRelative4 = this.e.getCompoundDrawablesRelative();
            ColorDrawable colorDrawable3 = this.y0;
            if (colorDrawable3 != null && this.z0 != iMax2) {
                this.z0 = iMax2;
                colorDrawable3.setBounds(0, 0, iMax2, 1);
                this.e.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.y0, compoundDrawablesRelative4[3]);
                return true;
            }
            if (colorDrawable3 == null) {
                ColorDrawable colorDrawable4 = new ColorDrawable();
                this.y0 = colorDrawable4;
                this.z0 = iMax2;
                colorDrawable4.setBounds(0, 0, iMax2, 1);
            }
            Drawable drawable2 = compoundDrawablesRelative4[2];
            ColorDrawable colorDrawable5 = this.y0;
            if (drawable2 != colorDrawable5) {
                this.A0 = drawable2;
                this.e.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], colorDrawable5, compoundDrawablesRelative4[3]);
                return true;
            }
        } else if (this.y0 != null) {
            Drawable[] compoundDrawablesRelative5 = this.e.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative5[2] == this.y0) {
                this.e.setCompoundDrawablesRelative(compoundDrawablesRelative5[0], compoundDrawablesRelative5[1], this.A0, compoundDrawablesRelative5[3]);
            } else {
                z2 = z;
            }
            this.y0 = null;
            return z2;
        }
        return z;
    }

    public void setBoxBackgroundColor(int i) {
        if (this.q0 != i) {
            this.q0 = i;
            this.H0 = i;
            this.J0 = i;
            this.K0 = i;
            c();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(getContext().getColor(i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.H0 = defaultColor;
        this.q0 = defaultColor;
        this.I0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.J0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.K0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        c();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.k0) {
            return;
        }
        this.k0 = i;
        if (this.e != null) {
            k();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.l0 = i;
    }

    public void setBoxCornerFamily(int i) {
        sb7 sb7VarM = this.h0.m();
        lx1 lx1Var = this.h0.e;
        sb7VarM.a = xh8.e(i);
        sb7VarM.e = lx1Var;
        lx1 lx1Var2 = this.h0.f;
        sb7VarM.b = xh8.e(i);
        sb7VarM.f = lx1Var2;
        lx1 lx1Var3 = this.h0.h;
        sb7VarM.d = xh8.e(i);
        sb7VarM.h = lx1Var3;
        lx1 lx1Var4 = this.h0.g;
        sb7VarM.c = xh8.e(i);
        sb7VarM.g = lx1Var4;
        this.h0 = sb7VarM.a();
        c();
    }

    public void setBoxStrokeColor(int i) {
        if (this.F0 != i) {
            this.F0 = i;
            z();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.D0 = colorStateList.getDefaultColor();
            this.L0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.E0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.F0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.F0 != colorStateList.getDefaultColor()) {
            this.F0 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.G0 != colorStateList) {
            this.G0 = colorStateList;
            z();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.n0 = i;
        z();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.o0 = i;
        z();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.t != z) {
            yb4 yb4Var = this.r;
            if (z) {
                tp tpVar = new tp(getContext(), null);
                this.H = tpVar;
                tpVar.setId(org.swiftapps.swiftbackup.R.id.textinput_counter);
                Typeface typeface = this.u0;
                if (typeface != null) {
                    this.H.setTypeface(typeface);
                }
                this.H.setMaxLines(1);
                yb4Var.a(this.H, 2);
                ((ViewGroup.MarginLayoutParams) this.H.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(org.swiftapps.swiftbackup.R.dimen.mtrl_textinput_counter_margin_start));
                q();
                if (this.H != null) {
                    EditText editText = this.e;
                    p(editText != null ? editText.getText() : null);
                }
            } else {
                yb4Var.g(this.H, 2);
                this.H = null;
            }
            this.t = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.x != i) {
            if (i > 0) {
                this.x = i;
            } else {
                this.x = -1;
            }
            if (!this.t || this.H == null) {
                return;
            }
            EditText editText = this.e;
            p(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.I != i) {
            this.I = i;
            q();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.S != colorStateList) {
            this.S = colorStateList;
            q();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.J != i) {
            this.J = i;
            q();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.R != colorStateList) {
            this.R = colorStateList;
            q();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.T != colorStateList) {
            this.T = colorStateList;
            r();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.U != colorStateList) {
            this.U = colorStateList;
            if (o() || (this.H != null && this.y)) {
                r();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.B0 = colorStateList;
        this.C0 = colorStateList;
        if (this.e != null) {
            w(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.c.k.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.c.k.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        pw2 pw2Var = this.c;
        pw2Var.f(i != 0 ? pw2Var.getResources().getText(i) : null);
    }

    public void setEndIconDrawable(int i) {
        pw2 pw2Var = this.c;
        Drawable drawableM = i != 0 ? iz1.m(pw2Var.getContext(), i) : null;
        TextInputLayout textInputLayout = pw2Var.a;
        CheckableImageButton checkableImageButton = pw2Var.k;
        checkableImageButton.setImageDrawable(drawableM);
        if (drawableM != null) {
            wx3.b(textInputLayout, checkableImageButton, pw2Var.r, pw2Var.t);
            wx3.y(textInputLayout, checkableImageButton, pw2Var.r);
        }
    }

    public void setEndIconMinSize(int i) {
        pw2 pw2Var = this.c;
        if (i < 0) {
            pw2Var.getClass();
            c6.f("endIconSize cannot be less than 0");
        } else if (i != pw2Var.x) {
            pw2Var.x = i;
            CheckableImageButton checkableImageButton = pw2Var.k;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
            CheckableImageButton checkableImageButton2 = pw2Var.c;
            checkableImageButton2.setMinimumWidth(i);
            checkableImageButton2.setMinimumHeight(i);
        }
    }

    public void setEndIconMode(int i) {
        this.c.g(i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        pw2 pw2Var = this.c;
        CheckableImageButton checkableImageButton = pw2Var.k;
        View.OnLongClickListener onLongClickListener = pw2Var.G;
        checkableImageButton.setOnClickListener(onClickListener);
        wx3.z(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        pw2 pw2Var = this.c;
        pw2Var.G = onLongClickListener;
        CheckableImageButton checkableImageButton = pw2Var.k;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        wx3.z(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        pw2 pw2Var = this.c;
        pw2Var.y = scaleType;
        pw2Var.k.setScaleType(scaleType);
        pw2Var.c.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        pw2 pw2Var = this.c;
        if (pw2Var.r != colorStateList) {
            pw2Var.r = colorStateList;
            wx3.b(pw2Var.a, pw2Var.k, colorStateList, pw2Var.t);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        pw2 pw2Var = this.c;
        if (pw2Var.t != mode) {
            pw2Var.t = mode;
            wx3.b(pw2Var.a, pw2Var.k, pw2Var.r, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.c.h(z);
    }

    public void setError(CharSequence charSequence) {
        yb4 yb4Var = this.r;
        if (!yb4Var.q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            yb4Var.f();
            return;
        }
        yb4Var.c();
        yb4Var.p = charSequence;
        yb4Var.r.setText(charSequence);
        int i = yb4Var.n;
        if (i != 1) {
            yb4Var.o = 1;
        }
        yb4Var.i(i, yb4Var.o, yb4Var.h(yb4Var.r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        yb4 yb4Var = this.r;
        yb4Var.t = i;
        tp tpVar = yb4Var.r;
        if (tpVar != null) {
            tpVar.setAccessibilityLiveRegion(i);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        yb4 yb4Var = this.r;
        yb4Var.s = charSequence;
        tp tpVar = yb4Var.r;
        if (tpVar != null) {
            tpVar.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        yb4 yb4Var = this.r;
        TextInputLayout textInputLayout = yb4Var.h;
        if (yb4Var.q == z) {
            return;
        }
        yb4Var.c();
        if (z) {
            tp tpVar = new tp(yb4Var.g, null);
            yb4Var.r = tpVar;
            tpVar.setId(org.swiftapps.swiftbackup.R.id.textinput_error);
            yb4Var.r.setTextAlignment(5);
            Typeface typeface = yb4Var.B;
            if (typeface != null) {
                yb4Var.r.setTypeface(typeface);
            }
            int i = yb4Var.u;
            yb4Var.u = i;
            tp tpVar2 = yb4Var.r;
            if (tpVar2 != null) {
                yb4Var.h.n(tpVar2, i);
            }
            ColorStateList colorStateList = yb4Var.v;
            yb4Var.v = colorStateList;
            tp tpVar3 = yb4Var.r;
            if (tpVar3 != null && colorStateList != null) {
                tpVar3.setTextColor(colorStateList);
            }
            CharSequence charSequence = yb4Var.s;
            yb4Var.s = charSequence;
            tp tpVar4 = yb4Var.r;
            if (tpVar4 != null) {
                tpVar4.setContentDescription(charSequence);
            }
            int i2 = yb4Var.t;
            yb4Var.t = i2;
            tp tpVar5 = yb4Var.r;
            if (tpVar5 != null) {
                tpVar5.setAccessibilityLiveRegion(i2);
            }
            yb4Var.r.setVisibility(4);
            yb4Var.a(yb4Var.r, 0);
        } else {
            yb4Var.f();
            yb4Var.g(yb4Var.r, 0);
            yb4Var.r = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        yb4Var.q = z;
    }

    public void setErrorIconDrawable(int i) {
        pw2 pw2Var = this.c;
        pw2Var.i(i != 0 ? iz1.m(pw2Var.getContext(), i) : null);
        wx3.y(pw2Var.a, pw2Var.c, pw2Var.d);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        pw2 pw2Var = this.c;
        CheckableImageButton checkableImageButton = pw2Var.c;
        View.OnLongClickListener onLongClickListener = pw2Var.f;
        checkableImageButton.setOnClickListener(onClickListener);
        wx3.z(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        pw2 pw2Var = this.c;
        pw2Var.f = onLongClickListener;
        CheckableImageButton checkableImageButton = pw2Var.c;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        wx3.z(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        pw2 pw2Var = this.c;
        if (pw2Var.d != colorStateList) {
            pw2Var.d = colorStateList;
            wx3.b(pw2Var.a, pw2Var.c, colorStateList, pw2Var.e);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        pw2 pw2Var = this.c;
        if (pw2Var.e != mode) {
            pw2Var.e = mode;
            wx3.b(pw2Var.a, pw2Var.c, pw2Var.d, mode);
        }
    }

    public void setErrorTextAppearance(int i) {
        yb4 yb4Var = this.r;
        yb4Var.u = i;
        tp tpVar = yb4Var.r;
        if (tpVar != null) {
            yb4Var.h.n(tpVar, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        yb4 yb4Var = this.r;
        yb4Var.v = colorStateList;
        tp tpVar = yb4Var.r;
        if (tpVar == null || colorStateList == null) {
            return;
        }
        tpVar.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.P0 != z) {
            this.P0 = z;
            w(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        yb4 yb4Var = this.r;
        if (zIsEmpty) {
            if (yb4Var.x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!yb4Var.x) {
            setHelperTextEnabled(true);
        }
        yb4Var.c();
        yb4Var.w = charSequence;
        yb4Var.y.setText(charSequence);
        int i = yb4Var.n;
        if (i != 2) {
            yb4Var.o = 2;
        }
        yb4Var.i(i, yb4Var.o, yb4Var.h(yb4Var.y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        yb4 yb4Var = this.r;
        yb4Var.A = colorStateList;
        tp tpVar = yb4Var.y;
        if (tpVar == null || colorStateList == null) {
            return;
        }
        tpVar.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        yb4 yb4Var = this.r;
        TextInputLayout textInputLayout = yb4Var.h;
        if (yb4Var.x == z) {
            return;
        }
        yb4Var.c();
        if (z) {
            tp tpVar = new tp(yb4Var.g, null);
            yb4Var.y = tpVar;
            tpVar.setId(org.swiftapps.swiftbackup.R.id.textinput_helper_text);
            yb4Var.y.setTextAlignment(5);
            Typeface typeface = yb4Var.B;
            if (typeface != null) {
                yb4Var.y.setTypeface(typeface);
            }
            yb4Var.y.setVisibility(4);
            yb4Var.y.setImportantForAccessibility(2);
            int i = yb4Var.z;
            yb4Var.z = i;
            tp tpVar2 = yb4Var.y;
            if (tpVar2 != null) {
                tpVar2.setTextAppearance(i);
            }
            ColorStateList colorStateList = yb4Var.A;
            yb4Var.A = colorStateList;
            tp tpVar3 = yb4Var.y;
            if (tpVar3 != null && colorStateList != null) {
                tpVar3.setTextColor(colorStateList);
            }
            yb4Var.a(yb4Var.y, 1);
        } else {
            yb4Var.c();
            int i2 = yb4Var.n;
            if (i2 == 2) {
                yb4Var.o = 0;
            }
            yb4Var.i(i2, yb4Var.o, yb4Var.h(yb4Var.y, ""));
            yb4Var.g(yb4Var.y, 1);
            yb4Var.y = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        yb4Var.x = z;
    }

    public void setHelperTextTextAppearance(int i) {
        yb4 yb4Var = this.r;
        yb4Var.z = i;
        tp tpVar = yb4Var.y;
        if (tpVar != null) {
            tpVar.setTextAppearance(i);
        }
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHintAnimationEnabled(boolean z) {
        this.Q0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.V) {
            this.V = z;
            if (z) {
                CharSequence hint = this.e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.W)) {
                        setHint(hint);
                    }
                    this.e.setHint((CharSequence) null);
                }
                this.a0 = true;
            } else {
                this.a0 = false;
                if (!TextUtils.isEmpty(this.W) && TextUtils.isEmpty(this.e.getHint())) {
                    this.e.setHint(this.W);
                }
                setHintInternal(null);
            }
            if (this.e != null) {
                v();
            }
        }
    }

    public void setHintMaxLines(int i) {
        wk1 wk1Var = this.O0;
        if (i != wk1Var.f0) {
            wk1Var.f0 = i;
            wk1Var.j(false);
        }
        if (i != wk1Var.e0) {
            wk1Var.e0 = i;
            wk1Var.j(false);
        }
        requestLayout();
    }

    public void setHintTextAppearance(int i) {
        wk1 wk1Var = this.O0;
        TextInputLayout textInputLayout = wk1Var.a;
        u08 u08Var = new u08(textInputLayout.getContext(), i);
        ColorStateList colorStateList = u08Var.k;
        if (colorStateList != null) {
            wk1Var.k = colorStateList;
        }
        float f = u08Var.l;
        if (f != 0.0f) {
            wk1Var.i = f;
        }
        ColorStateList colorStateList2 = u08Var.a;
        if (colorStateList2 != null) {
            wk1Var.V = colorStateList2;
        }
        wk1Var.T = u08Var.f;
        wk1Var.U = u08Var.g;
        wk1Var.S = u08Var.h;
        wk1Var.W = u08Var.j;
        l21 l21Var = wk1Var.z;
        if (l21Var != null) {
            l21Var.O = true;
        }
        nh nhVar = new nh(wk1Var, 2);
        u08Var.a();
        wk1Var.z = new l21(nhVar, u08Var.p);
        u08Var.b(textInputLayout.getContext(), wk1Var.z);
        wk1Var.j(false);
        this.C0 = wk1Var.k;
        if (this.e != null) {
            w(false, false);
            v();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.C0 != colorStateList) {
            if (this.B0 == null) {
                wk1 wk1Var = this.O0;
                if (wk1Var.k != colorStateList) {
                    wk1Var.k = colorStateList;
                    wk1Var.j(false);
                }
            }
            this.C0 = colorStateList;
            if (this.e != null) {
                w(false, false);
            }
        }
    }

    public void setLengthCounter(f18 f18Var) {
        this.G = f18Var;
    }

    public void setMaxEms(int i) {
        this.n = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(int i) {
        this.q = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.k = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(int i) {
        this.p = i;
        EditText editText = this.e;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        pw2 pw2Var = this.c;
        pw2Var.k.setContentDescription(i != 0 ? pw2Var.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        pw2 pw2Var = this.c;
        pw2Var.k.setImageDrawable(i != 0 ? iz1.m(pw2Var.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        pw2 pw2Var = this.c;
        if (z && pw2Var.p != 1) {
            pw2Var.g(1);
        } else if (z) {
            pw2Var.getClass();
        } else {
            pw2Var.g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        pw2 pw2Var = this.c;
        pw2Var.r = colorStateList;
        wx3.b(pw2Var.a, pw2Var.k, colorStateList, pw2Var.t);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        pw2 pw2Var = this.c;
        pw2Var.t = mode;
        wx3.b(pw2Var.a, pw2Var.k, pw2Var.r, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.M == null) {
            tp tpVar = new tp(getContext(), null);
            this.M = tpVar;
            tpVar.setId(org.swiftapps.swiftbackup.R.id.textinput_placeholder);
            this.M.setImportantForAccessibility(1);
            this.M.setAccessibilityLiveRegion(1);
            g33 g33VarF = f();
            this.P = g33VarF;
            g33VarF.b = 67L;
            this.Q = f();
            setPlaceholderTextAppearance(this.O);
            setPlaceholderTextColor(this.N);
            dl8.n(this.M, new c18());
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.L) {
                setPlaceholderTextEnabled(true);
            }
            this.K = charSequence;
        }
        EditText editText = this.e;
        x(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i) {
        this.O = i;
        tp tpVar = this.M;
        if (tpVar != null) {
            tpVar.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.N != colorStateList) {
            this.N = colorStateList;
            tp tpVar = this.M;
            if (tpVar == null || colorStateList == null) {
                return;
            }
            tpVar.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        wl7 wl7Var = this.b;
        wl7Var.getClass();
        wl7Var.c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        wl7Var.b.setText(charSequence);
        wl7Var.f();
    }

    public void setPrefixTextAppearance(int i) {
        this.b.b.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.b.b.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(tb7 tb7Var) {
        c95 c95Var = this.b0;
        if (c95Var == null || c95Var.k() == tb7Var) {
            return;
        }
        this.h0 = tb7Var;
        c();
    }

    public void setStartIconCheckable(boolean z) {
        this.b.d.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? iz1.m(getContext(), i) : null);
    }

    public void setStartIconMinSize(int i) {
        wl7 wl7Var = this.b;
        if (i < 0) {
            wl7Var.getClass();
            c6.f("startIconSize cannot be less than 0");
        } else if (i != wl7Var.k) {
            wl7Var.k = i;
            CheckableImageButton checkableImageButton = wl7Var.d;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        wl7 wl7Var = this.b;
        CheckableImageButton checkableImageButton = wl7Var.d;
        View.OnLongClickListener onLongClickListener = wl7Var.p;
        checkableImageButton.setOnClickListener(onClickListener);
        wx3.z(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        wl7 wl7Var = this.b;
        wl7Var.p = onLongClickListener;
        CheckableImageButton checkableImageButton = wl7Var.d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        wx3.z(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        wl7 wl7Var = this.b;
        wl7Var.n = scaleType;
        wl7Var.d.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        wl7 wl7Var = this.b;
        if (wl7Var.e != colorStateList) {
            wl7Var.e = colorStateList;
            wx3.b(wl7Var.a, wl7Var.d, colorStateList, wl7Var.f);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        wl7 wl7Var = this.b;
        if (wl7Var.f != mode) {
            wl7Var.f = mode;
            wx3.b(wl7Var.a, wl7Var.d, wl7Var.e, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.b.d(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        pw2 pw2Var = this.c;
        pw2Var.getClass();
        pw2Var.H = TextUtils.isEmpty(charSequence) ? null : charSequence;
        pw2Var.I.setText(charSequence);
        pw2Var.n();
    }

    public void setSuffixTextAppearance(int i) {
        this.c.I.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.c.I.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(e18 e18Var) {
        EditText editText = this.e;
        if (editText != null) {
            dl8.n(editText, e18Var);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.u0) {
            this.u0 = typeface;
            this.O0.n(typeface);
            yb4 yb4Var = this.r;
            if (typeface != yb4Var.B) {
                yb4Var.B = typeface;
                tp tpVar = yb4Var.r;
                if (tpVar != null) {
                    tpVar.setTypeface(typeface);
                }
                tp tpVar2 = yb4Var.y;
                if (tpVar2 != null) {
                    tpVar2.setTypeface(typeface);
                }
            }
            tp tpVar3 = this.H;
            if (tpVar3 != null) {
                tpVar3.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        Drawable background;
        tp tpVar;
        EditText editText = this.e;
        if (editText == null || this.k0 != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = fp2.a;
        Drawable drawableMutate = background.mutate();
        if (o()) {
            drawableMutate.setColorFilter(jo.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.y && (tpVar = this.H) != null) {
            drawableMutate.setColorFilter(jo.c(tpVar.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            drawableMutate.clearColorFilter();
            this.e.refreshDrawableState();
        }
    }

    public final void u() {
        EditText editText = this.e;
        if (editText == null || this.b0 == null) {
            return;
        }
        if ((this.e0 || editText.getBackground() == null) && this.k0 != 0) {
            this.e.setBackground(getEditTextBoxBackground());
            this.e0 = true;
        }
    }

    public final void v() {
        if (this.k0 != 1) {
            FrameLayout frameLayout = this.a;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iE = e();
            if (iE != layoutParams.topMargin) {
                layoutParams.topMargin = iE;
                frameLayout.requestLayout();
            }
        }
    }

    public final void w(boolean z, boolean z2) {
        ColorStateList colorStateList;
        tp tpVar;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.e;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.e;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.B0;
        wk1 wk1Var = this.O0;
        if (colorStateList2 != null) {
            wk1Var.k(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.B0;
            int colorForState = this.L0;
            if (colorStateList3 != null) {
                colorForState = colorStateList3.getColorForState(new int[]{-16842910}, colorForState);
            }
            wk1Var.k(ColorStateList.valueOf(colorForState));
        } else if (o()) {
            tp tpVar2 = this.r.r;
            wk1Var.k(tpVar2 != null ? tpVar2.getTextColors() : null);
        } else if (this.y && (tpVar = this.H) != null) {
            wk1Var.k(tpVar.getTextColors());
        } else if (z4 && (colorStateList = this.C0) != null && wk1Var.k != colorStateList) {
            wk1Var.k = colorStateList;
            wk1Var.j(false);
        }
        pw2 pw2Var = this.c;
        wl7 wl7Var = this.b;
        if (z3 || !this.P0 || (isEnabled() && z4)) {
            if (z2 || this.N0) {
                ValueAnimator valueAnimator = this.R0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.R0.cancel();
                }
                if (z && this.Q0) {
                    b(1.0f);
                } else {
                    wk1Var.m(1.0f);
                }
                this.N0 = false;
                if (g()) {
                    l();
                }
                EditText editText3 = this.e;
                x(editText3 != null ? editText3.getText() : null);
                wl7Var.q = false;
                wl7Var.f();
                pw2Var.J = false;
                pw2Var.n();
                return;
            }
            return;
        }
        if (z2 || !this.N0) {
            ValueAnimator valueAnimator2 = this.R0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.R0.cancel();
            }
            if (z && this.Q0) {
                b(0.0f);
            } else {
                wk1Var.m(0.0f);
            }
            if (g() && !((q72) this.b0).Z.s.isEmpty() && g()) {
                ((q72) this.b0).F(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.N0 = true;
            tp tpVar3 = this.M;
            if (tpVar3 != null && this.L) {
                tpVar3.setText((CharSequence) null);
                da8.a(this.a, this.Q);
                this.M.setVisibility(4);
            }
            wl7Var.q = true;
            wl7Var.f();
            pw2Var.J = true;
            pw2Var.n();
        }
    }

    public final void x(Editable editable) {
        ((x5) this.G).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.a;
        if (length != 0 || this.N0) {
            tp tpVar = this.M;
            if (tpVar == null || !this.L) {
                return;
            }
            tpVar.setText((CharSequence) null);
            da8.a(frameLayout, this.Q);
            this.M.setVisibility(4);
            return;
        }
        if (this.M == null || !this.L || TextUtils.isEmpty(this.K)) {
            return;
        }
        this.M.setText(this.K);
        da8.a(frameLayout, this.P);
        this.M.setVisibility(0);
        this.M.bringToFront();
    }

    public final void y(boolean z, boolean z2) {
        int defaultColor = this.G0.getDefaultColor();
        int colorForState = this.G0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.G0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.p0 = colorForState2;
        } else if (z2) {
            this.p0 = colorForState;
        } else {
            this.p0 = defaultColor;
        }
    }

    public final void z() {
        tp tpVar;
        EditText editText;
        EditText editText2;
        if (this.b0 == null || this.k0 == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.e) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.e) != null && editText.isHovered());
        if (!isEnabled()) {
            this.p0 = this.L0;
        } else if (o()) {
            if (this.G0 != null) {
                y(z, z2);
            } else {
                this.p0 = getErrorCurrentTextColors();
            }
        } else if (!this.y || (tpVar = this.H) == null) {
            if (z) {
                this.p0 = this.F0;
            } else if (z2) {
                this.p0 = this.E0;
            } else {
                this.p0 = this.D0;
            }
        } else if (this.G0 != null) {
            y(z, z2);
        } else {
            this.p0 = tpVar.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            r();
        }
        pw2 pw2Var = this.c;
        TextInputLayout textInputLayout = pw2Var.a;
        CheckableImageButton checkableImageButton = pw2Var.k;
        TextInputLayout textInputLayout2 = pw2Var.a;
        pw2Var.l();
        wx3.y(textInputLayout2, pw2Var.c, pw2Var.d);
        wx3.y(textInputLayout2, checkableImageButton, pw2Var.r);
        if (pw2Var.a() instanceof lr2) {
            if (!textInputLayout.o() || checkableImageButton.getDrawable() == null) {
                wx3.b(textInputLayout, checkableImageButton, pw2Var.r, pw2Var.t);
            } else {
                Drawable drawableMutate = checkableImageButton.getDrawable().mutate();
                drawableMutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        wl7 wl7Var = this.b;
        wx3.y(wl7Var.a, wl7Var.d, wl7Var.e);
        if (this.k0 == 2) {
            int i = this.m0;
            if (z && isEnabled()) {
                this.m0 = this.o0;
            } else {
                this.m0 = this.n0;
            }
            if (this.m0 != i && g() && !this.N0) {
                if (g()) {
                    ((q72) this.b0).F(0.0f, 0.0f, 0.0f, 0.0f);
                }
                l();
            }
        }
        if (this.k0 == 1) {
            if (!isEnabled()) {
                this.q0 = this.I0;
            } else if (z2 && !z) {
                this.q0 = this.K0;
            } else if (z) {
                this.q0 = this.J0;
            } else {
                this.q0 = this.H0;
            }
        }
        c();
        if (getEndIconMode() == 3) {
            EditText editText3 = this.e;
            if ((editText3 instanceof AutoCompleteTextView) && editText3.getInputType() == 0) {
                getEndIconView().setFocusable(false);
                getEndIconView().setClickable(false);
            } else {
                getEndIconView().setFocusable(true);
                getEndIconView().setClickable(true);
            }
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.V) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(RSAKeyGenerator.MIN_KEY_SIZE_BITS);
        }
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        this.b.b(charSequence);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.b.c(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        this.c.f(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.c.k.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.c.k.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.c.i(drawable);
    }

    public void setEndIconDrawable(Drawable drawable) {
        pw2 pw2Var = this.c;
        TextInputLayout textInputLayout = pw2Var.a;
        CheckableImageButton checkableImageButton = pw2Var.k;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            wx3.b(textInputLayout, checkableImageButton, pw2Var.r, pw2Var.t);
            wx3.y(textInputLayout, checkableImageButton, pw2Var.r);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.textInputStyle);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }
}
