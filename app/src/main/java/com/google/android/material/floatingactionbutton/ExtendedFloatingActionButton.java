package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import defpackage.a13;
import defpackage.bm0;
import defpackage.cm0;
import defpackage.dw1;
import defpackage.ew1;
import defpackage.fz5;
import defpackage.gd;
import defpackage.hw1;
import defpackage.jd4;
import defpackage.km8;
import defpackage.l0;
import defpackage.nh;
import defpackage.oi2;
import defpackage.ph5;
import defpackage.ro;
import defpackage.tb7;
import defpackage.td6;
import defpackage.tr9;
import defpackage.u03;
import defpackage.v03;
import defpackage.w03;
import defpackage.wn0;
import defpackage.x03;
import defpackage.y03;
import defpackage.z03;
import defpackage.zm5;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements dw1 {
    public static final u03 B0 = new u03(Float.class, "width");
    public static final v03 C0 = new v03(Float.class, "height");
    public static final w03 D0 = new w03(Float.class, "paddingStart", 0);
    public static final bm0 E0 = new bm0(Float.class, "paddingEnd", 1);
    public int A0;
    public int l0;
    public boolean m0;
    public final x03 n0;
    public final x03 o0;
    public final z03 p0;
    public final y03 q0;
    public int r0;
    public int s0;
    public int t0;
    public final ExtendedFloatingActionButtonBehavior u0;
    public boolean v0;
    public boolean w0;
    public boolean x0;
    public ColorStateList y0;
    public int z0;

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon), attributeSet, i);
        boolean z = false;
        this.l0 = 0;
        int i2 = 1;
        this.m0 = true;
        tr9 tr9Var = new tr9(i2, z);
        z03 z03Var = new z03(this, tr9Var);
        this.p0 = z03Var;
        y03 y03Var = new y03(this, tr9Var);
        this.q0 = y03Var;
        this.v0 = true;
        this.w0 = false;
        this.x0 = false;
        Context context2 = getContext();
        this.u0 = new ExtendedFloatingActionButtonBehavior(context2, attributeSet);
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.l, i, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, new int[0]);
        ph5 ph5VarA = ph5.a(context2, typedArrayB, 5);
        ph5 ph5VarA2 = ph5.a(context2, typedArrayB, 4);
        ph5 ph5VarA3 = ph5.a(context2, typedArrayB, 2);
        ph5 ph5VarA4 = ph5.a(context2, typedArrayB, 6);
        this.r0 = typedArrayB.getDimensionPixelSize(0, -1);
        int i3 = typedArrayB.getInt(3, 1);
        this.s0 = getPaddingStart();
        this.t0 = getPaddingEnd();
        tr9 tr9Var2 = new tr9(i2, z);
        nh nhVar = new nh(this, 6);
        ro roVar = new ro(this, nhVar, 5, false);
        gd gdVar = new gd(this, roVar, nhVar);
        boolean z2 = true;
        a13 a13Var = nhVar;
        if (i3 != 1) {
            z2 = true;
            a13Var = i3 != 2 ? gdVar : roVar;
        }
        x03 x03Var = new x03(this, tr9Var2, a13Var, z2);
        this.o0 = x03Var;
        x03 x03Var2 = new x03(this, tr9Var2, new km8(this), false);
        this.n0 = x03Var2;
        z03Var.f = ph5VarA;
        y03Var.f = ph5VarA2;
        x03Var.f = ph5VarA3;
        x03Var2.f = ph5VarA4;
        typedArrayB.recycle();
        setShapeAppearanceModel(tb7.i(context2, attributeSet, i, R.style.Widget_MaterialComponents_ExtendedFloatingActionButton_Icon, tb7.m).a());
        this.y0 = getTextColors();
    }

    public final void A() {
        CharSequence text;
        if (this.v0 || !isClickable()) {
            text = null;
        } else {
            text = getText();
            if (TextUtils.isEmpty(text)) {
                text = getContentDescription();
            }
        }
        if (TextUtils.equals(getTooltipText(), text)) {
            return;
        }
        setTooltipText(text);
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "com.google.android.material.floatingactionbutton.FloatingActionButton";
    }

    @Override // defpackage.dw1
    public ew1 getBehavior() {
        return this.u0;
    }

    public int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    public int getCollapsedSize() {
        int i = this.r0;
        if (i >= 0) {
            return i;
        }
        return getIconSize() + (Math.min(getPaddingStart(), getPaddingEnd()) * 2);
    }

    public int getCurrentOriginalTextColor() {
        return this.y0.getColorForState(getDrawableState(), 0);
    }

    public ph5 getExtendMotionSpec() {
        return this.o0.f;
    }

    public ph5 getHideMotionSpec() {
        return this.q0.f;
    }

    public ColorStateList getOriginalTextColor() {
        return this.y0;
    }

    public ph5 getShowMotionSpec() {
        return this.p0.f;
    }

    public ph5 getShrinkMotionSpec() {
        return this.n0.f;
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.v0 || !TextUtils.isEmpty(getText()) || getIcon() == null) {
            A();
        } else {
            this.v0 = false;
            this.n0.g();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.x0 = z;
    }

    public void setAnimationEnabled(boolean z) {
        this.m0 = z;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        A();
    }

    public void setCollapsedSize(int i) {
        this.r0 = i;
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
        A();
    }

    public void setExtendMotionSpec(ph5 ph5Var) {
        this.o0.f = ph5Var;
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(ph5.b(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.v0 == z) {
            return;
        }
        x03 x03Var = z ? this.o0 : this.n0;
        if (x03Var.h()) {
            return;
        }
        x03Var.g();
    }

    public void setHideMotionSpec(ph5 ph5Var) {
        this.q0.f = ph5Var;
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(ph5.b(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.v0 || this.w0) {
            return;
        }
        this.s0 = getPaddingStart();
        this.t0 = getPaddingEnd();
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (!this.v0 || this.w0) {
            return;
        }
        this.s0 = i;
        this.t0 = i3;
    }

    public void setShowMotionSpec(ph5 ph5Var) {
        this.p0.f = ph5Var;
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(ph5.b(getContext(), i));
    }

    public void setShrinkMotionSpec(ph5 ph5Var) {
        this.n0.f = ph5Var;
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(ph5.b(getContext(), i));
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        A();
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        this.y0 = getTextColors();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0043  */
    /* JADX WARN: Code duplicated, block: B:31:0x0049  */
    /* JADX WARN: Code duplicated, block: B:32:0x004b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x005a  */
    /* JADX WARN: Code duplicated, block: B:39:0x0082 A[LOOP:0: B:37:0x007c->B:39:0x0082, LOOP_END] */
    public final void y(int i) {
        cm0 cm0Var;
        AnimatorSet animatorSetA;
        Iterator it;
        ViewGroup.LayoutParams layoutParams;
        int i2 = 1;
        if (i == 0) {
            cm0Var = this.p0;
        } else if (i == 1) {
            cm0Var = this.q0;
        } else if (i == 2) {
            cm0Var = this.n0;
        } else {
            if (i != 3) {
                l0.e(fz5.j(i, "Unknown strategy type: "));
                return;
            }
            cm0Var = this.o0;
        }
        if (cm0Var.h()) {
            return;
        }
        if (this.m0) {
            if (!isLaidOut()) {
                int visibility = getVisibility();
                int i3 = this.l0;
                if (visibility == 0 ? i3 == 1 : i3 != 2) {
                    if (this.x0) {
                        if (!isInEditMode()) {
                            if (i == 2) {
                                layoutParams = getLayoutParams();
                                if (layoutParams != null) {
                                    this.z0 = layoutParams.width;
                                    this.A0 = layoutParams.height;
                                } else {
                                    this.z0 = getWidth();
                                    this.A0 = getHeight();
                                }
                            }
                            measure(0, 0);
                            animatorSetA = cm0Var.a();
                            animatorSetA.addListener(new wn0(cm0Var, i2));
                            it = cm0Var.c.iterator();
                            while (it.hasNext()) {
                                animatorSetA.addListener((Animator.AnimatorListener) it.next());
                            }
                            animatorSetA.start();
                            return;
                        }
                    }
                }
            } else if (!isInEditMode()) {
                if (i == 2) {
                    layoutParams = getLayoutParams();
                    if (layoutParams != null) {
                        this.z0 = layoutParams.width;
                        this.A0 = layoutParams.height;
                    } else {
                        this.z0 = getWidth();
                        this.A0 = getHeight();
                    }
                }
                measure(0, 0);
                animatorSetA = cm0Var.a();
                animatorSetA.addListener(new wn0(cm0Var, i2));
                it = cm0Var.c.iterator();
                while (it.hasNext()) {
                    animatorSetA.addListener((Animator.AnimatorListener) it.next());
                }
                animatorSetA.start();
                return;
            }
        }
        cm0Var.g();
    }

    public final void z(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        this.y0 = getTextColors();
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends ew1 {
        public Rect a;
        public final boolean b;
        public final boolean c;

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.m);
            this.b = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.c = typedArrayObtainStyledAttributes.getBoolean(1, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        @Override // defpackage.ew1
        public final /* bridge */ /* synthetic */ boolean e(Rect rect, View view) {
            return false;
        }

        @Override // defpackage.ew1
        public final void g(hw1 hw1Var) {
            if (hw1Var.h == 0) {
                hw1Var.h = 80;
            }
        }

        @Override // defpackage.ew1
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                w(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
            } else {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof hw1 ? ((hw1) layoutParams).a instanceof BottomSheetBehavior : false) {
                    x(view2, extendedFloatingActionButton);
                }
            }
            return false;
        }

        @Override // defpackage.ew1
        public final boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            ArrayList arrayListK = coordinatorLayout.k(extendedFloatingActionButton);
            int size = arrayListK.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view2 = (View) arrayListK.get(i2);
                if (!(view2 instanceof AppBarLayout)) {
                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                    if ((layoutParams instanceof hw1 ? ((hw1) layoutParams).a instanceof BottomSheetBehavior : false) && x(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (w(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.r(extendedFloatingActionButton, i);
            return true;
        }

        public final boolean w(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            hw1 hw1Var = (hw1) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.b;
            boolean z2 = this.c;
            if ((!z && !z2) || hw1Var.f != appBarLayout.getId()) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            oi2.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                int i = z2 ? 2 : 1;
                u03 u03Var = ExtendedFloatingActionButton.B0;
                extendedFloatingActionButton.y(i);
            } else {
                int i2 = z2 ? 3 : 0;
                u03 u03Var2 = ExtendedFloatingActionButton.B0;
                extendedFloatingActionButton.y(i2);
            }
            return true;
        }

        public final boolean x(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            hw1 hw1Var = (hw1) extendedFloatingActionButton.getLayoutParams();
            boolean z = this.b;
            boolean z2 = this.c;
            if ((!z && !z2) || hw1Var.f != view.getId()) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((hw1) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                int i = z2 ? 2 : 1;
                u03 u03Var = ExtendedFloatingActionButton.B0;
                extendedFloatingActionButton.y(i);
            } else {
                int i2 = z2 ? 3 : 0;
                u03 u03Var2 = ExtendedFloatingActionButton.B0;
                extendedFloatingActionButton.y(i2);
            }
            return true;
        }

        public ExtendedFloatingActionButtonBehavior() {
            this.b = false;
            this.c = true;
        }
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.extendedFloatingActionButtonStyle);
    }

    public ExtendedFloatingActionButton(Context context) {
        this(context, null);
    }
}
