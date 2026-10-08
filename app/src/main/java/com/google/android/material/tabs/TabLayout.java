package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import defpackage.bw7;
import defpackage.c6;
import defpackage.c95;
import defpackage.cw7;
import defpackage.du;
import defpackage.dw7;
import defpackage.ed;
import defpackage.f36;
import defpackage.fw7;
import defpackage.ge6;
import defpackage.gw7;
import defpackage.h33;
import defpackage.iz1;
import defpackage.jd4;
import defpackage.ji8;
import defpackage.jm1;
import defpackage.k55;
import defpackage.ow5;
import defpackage.q34;
import defpackage.td6;
import defpackage.vc9;
import defpackage.vv7;
import defpackage.wv7;
import defpackage.x5;
import defpackage.xh8;
import defpackage.xv7;
import defpackage.yc9;
import defpackage.yv7;
import defpackage.zh8;
import defpackage.zm5;
import defpackage.zs2;
import defpackage.zv7;
import java.util.ArrayList;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final f36 r0 = new f36(16);
    public Drawable G;
    public int H;
    public final float I;
    public final float J;
    public final float K;
    public final int L;
    public int M;
    public final int N;
    public final int O;
    public final int P;
    public final int Q;
    public int R;
    public final int S;
    public int T;
    public int U;
    public boolean V;
    public boolean W;
    public int a;
    public int a0;
    public final ArrayList b;
    public int b0;
    public cw7 c;
    public boolean c0;
    public final bw7 d;
    public q34 d0;
    public final int e;
    public final TimeInterpolator e0;
    public final int f;
    public xv7 f0;
    public final ArrayList g0;
    public gw7 h0;
    public ValueAnimator i0;
    public ViewPager j0;
    public final int k;
    public ow5 k0;
    public zv7 l0;
    public dw7 m0;
    public final int n;
    public wv7 n0;
    public boolean o0;
    public final int p;
    public int p0;
    public final int q;
    public final vc9 q0;
    public final int r;
    public ColorStateList t;
    public ColorStateList x;
    public ColorStateList y;

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(zm5.J(context, attributeSet, i, R.style.Widget_Design_TabLayout), attributeSet, i);
        this.a = -1;
        this.b = new ArrayList();
        this.r = -1;
        this.H = 0;
        this.M = Integer.MAX_VALUE;
        this.a0 = -1;
        this.g0 = new ArrayList();
        this.q0 = new vc9(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        bw7 bw7Var = new bw7(this, context2);
        this.d = bw7Var;
        super.addView(bw7Var, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayB = jd4.B(context2, attributeSet, td6.V, i, R.style.Widget_Design_TabLayout, 24);
        ColorStateList colorStateListD = du.d(getBackground());
        if (colorStateListD != null) {
            c95 c95Var = new c95();
            c95Var.t(colorStateListD);
            c95Var.p(context2);
            c95Var.s(getElevation());
            setBackground(c95Var);
        }
        setSelectedTabIndicator(k55.p(context2, typedArrayB, 5));
        setSelectedTabIndicatorColor(typedArrayB.getColor(8, 0));
        bw7Var.b(typedArrayB.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayB.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayB.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayB.getBoolean(9, true));
        int dimensionPixelSize = typedArrayB.getDimensionPixelSize(16, 0);
        this.n = dimensionPixelSize;
        this.k = dimensionPixelSize;
        this.f = dimensionPixelSize;
        this.e = dimensionPixelSize;
        this.e = typedArrayB.getDimensionPixelSize(19, dimensionPixelSize);
        this.f = typedArrayB.getDimensionPixelSize(20, dimensionPixelSize);
        this.k = typedArrayB.getDimensionPixelSize(18, dimensionPixelSize);
        this.n = typedArrayB.getDimensionPixelSize(17, dimensionPixelSize);
        if (jm1.R(context2.getTheme(), R.attr.isMaterial3Theme, false)) {
            this.p = R.attr.textAppearanceTitleSmall;
        } else {
            this.p = R.attr.textAppearanceButton;
        }
        int resourceId = typedArrayB.getResourceId(24, R.style.TextAppearance_Design_Tab);
        this.q = resourceId;
        int[] iArr = ge6.w;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, iArr);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.I = dimensionPixelSize2;
            this.t = k55.m(context2, typedArrayObtainStyledAttributes, 3);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayB.hasValue(22)) {
                this.r = typedArrayB.getResourceId(22, resourceId);
            }
            int i2 = this.r;
            int[] iArr2 = HorizontalScrollView.EMPTY_STATE_SET;
            int[] iArr3 = HorizontalScrollView.SELECTED_STATE_SET;
            if (i2 != -1) {
                TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(i2, iArr);
                try {
                    this.J = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, (int) dimensionPixelSize2);
                    ColorStateList colorStateListM = k55.m(context2, typedArrayObtainStyledAttributes2, 3);
                    if (colorStateListM != null) {
                        this.t = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{colorStateListM.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListM.getDefaultColor()), this.t.getDefaultColor()});
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                } catch (Throwable th) {
                    typedArrayObtainStyledAttributes2.recycle();
                    throw th;
                }
            }
            if (typedArrayB.hasValue(25)) {
                this.t = k55.m(context2, typedArrayB, 25);
            }
            if (typedArrayB.hasValue(23)) {
                this.t = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{typedArrayB.getColor(23, 0), this.t.getDefaultColor()});
            }
            this.x = k55.m(context2, typedArrayB, 3);
            yc9.L(typedArrayB.getInt(4, -1), null);
            this.y = k55.m(context2, typedArrayB, 21);
            this.S = typedArrayB.getInt(6, 300);
            this.e0 = ji8.G(context2, R.attr.motionEasingEmphasizedInterpolator, ed.b);
            this.N = typedArrayB.getDimensionPixelSize(14, -1);
            this.O = typedArrayB.getDimensionPixelSize(13, -1);
            this.L = typedArrayB.getResourceId(0, 0);
            this.Q = typedArrayB.getDimensionPixelSize(1, 0);
            this.U = typedArrayB.getInt(15, 1);
            this.R = typedArrayB.getInt(2, 0);
            this.V = typedArrayB.getBoolean(12, false);
            this.c0 = typedArrayB.getBoolean(26, false);
            typedArrayB.recycle();
            Resources resources = getResources();
            this.K = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.P = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            d();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i = this.N;
        if (i != -1) {
            return i;
        }
        int i2 = this.U;
        if (i2 == 0 || i2 == 2) {
            return this.P;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.d.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i) {
        bw7 bw7Var = this.d;
        int childCount = bw7Var.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = bw7Var.getChildAt(i2);
                if ((i2 != i || childAt.isSelected()) && (i2 == i || !childAt.isSelected())) {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                } else {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                    if (childAt instanceof fw7) {
                        ((fw7) childAt).e();
                    }
                }
                i2++;
            }
        }
    }

    public final void a(xv7 xv7Var) {
        ArrayList arrayList = this.g0;
        if (arrayList.contains(xv7Var)) {
            return;
        }
        arrayList.add(xv7Var);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void b(cw7 cw7Var, boolean z) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        if (cw7Var.e != this) {
            c6.f("Tab belongs to a different TabLayout.");
            return;
        }
        cw7Var.c = size;
        arrayList.add(size, cw7Var);
        int size2 = arrayList.size();
        int i = -1;
        for (int i2 = size + 1; i2 < size2; i2++) {
            if (((cw7) arrayList.get(i2)).c == this.a) {
                i = i2;
            }
            ((cw7) arrayList.get(i2)).c = i2;
        }
        this.a = i;
        fw7 fw7Var = cw7Var.f;
        fw7Var.setSelected(false);
        fw7Var.setActivated(false);
        int i3 = cw7Var.c;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.U == 1 && this.R == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.d.addView(fw7Var, i3, layoutParams);
        if (z) {
            TabLayout tabLayout = cw7Var.e;
            if (tabLayout != null) {
                tabLayout.k(cw7Var, true);
            } else {
                c6.f("Tab not attached to a TabLayout");
            }
        }
    }

    public final void c(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && isLaidOut()) {
            bw7 bw7Var = this.d;
            int childCount = bw7Var.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (bw7Var.getChildAt(i2).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iE = e(i, 0.0f);
            if (scrollX != iE) {
                f();
                this.i0.setIntValues(scrollX, iE);
                this.i0.start();
            }
            ValueAnimator valueAnimator = bw7Var.a;
            if (valueAnimator != null && valueAnimator.isRunning() && bw7Var.b.a != i) {
                bw7Var.a.cancel();
            }
            bw7Var.d(i, this.S, true);
            return;
        }
        m(i, 0.0f, true, true, true);
    }

    public final void d() {
        int i = this.U;
        int iMax = (i == 0 || i == 2) ? Math.max(0, this.Q - this.e) : 0;
        bw7 bw7Var = this.d;
        bw7Var.setPaddingRelative(iMax, 0, 0, 0);
        int i2 = this.U;
        if (i2 == 0) {
            int i3 = this.R;
            if (i3 == 0) {
                Log.w("TabLayout", "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead");
            } else if (i3 == 1) {
                bw7Var.setGravity(1);
            } else if (i3 == 2) {
            }
            bw7Var.setGravity(8388611);
        } else if (i2 == 1 || i2 == 2) {
            if (this.R == 2) {
                Log.w("TabLayout", "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead");
            }
            bw7Var.setGravity(1);
        }
        o(true);
    }

    public final int e(int i, float f) {
        bw7 bw7Var;
        View childAt;
        int i2 = this.U;
        if ((i2 != 0 && i2 != 2) || (childAt = (bw7Var = this.d).getChildAt(i)) == null) {
            return 0;
        }
        int i3 = i + 1;
        View childAt2 = i3 < bw7Var.getChildCount() ? bw7Var.getChildAt(i3) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f);
        return getLayoutDirection() == 0 ? left + i4 : left - i4;
    }

    public final void f() {
        if (this.i0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.i0 = valueAnimator;
            valueAnimator.setInterpolator(this.e0);
            this.i0.setDuration(this.S);
            this.i0.addUpdateListener(new vv7(this));
        }
    }

    public final cw7 g(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return (cw7) this.b.get(i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        cw7 cw7Var = this.c;
        if (cw7Var != null) {
            return cw7Var.c;
        }
        return -1;
    }

    public int getTabCount() {
        return this.b.size();
    }

    public int getTabGravity() {
        return this.R;
    }

    public ColorStateList getTabIconTint() {
        return this.x;
    }

    public int getTabIndicatorAnimationMode() {
        return this.b0;
    }

    public int getTabIndicatorGravity() {
        return this.T;
    }

    public int getTabMaxWidth() {
        return this.M;
    }

    public int getTabMode() {
        return this.U;
    }

    public ColorStateList getTabRippleColor() {
        return this.y;
    }

    public Drawable getTabSelectedIndicator() {
        return this.G;
    }

    public ColorStateList getTabTextColors() {
        return this.t;
    }

    public final cw7 h() {
        cw7 cw7Var = (cw7) r0.d();
        if (cw7Var == null) {
            cw7Var = new cw7();
            cw7Var.c = -1;
        }
        cw7Var.e = this;
        vc9 vc9Var = this.q0;
        fw7 fw7Var = vc9Var != null ? (fw7) vc9Var.d() : null;
        if (fw7Var == null) {
            fw7Var = new fw7(this, getContext());
        }
        fw7Var.setTab(cw7Var);
        fw7Var.setFocusable(true);
        fw7Var.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(null)) {
            fw7Var.setContentDescription(cw7Var.b);
        } else {
            fw7Var.setContentDescription(null);
        }
        cw7Var.f = fw7Var;
        return cw7Var;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x004f  */
    public final void i() {
        int currentItem;
        boolean z;
        j();
        ow5 ow5Var = this.k0;
        if (ow5Var == null) {
            return;
        }
        int iC = ow5Var.c();
        int i = 0;
        while (true) {
            if (i >= iC) {
                ViewPager viewPager = this.j0;
                if (viewPager == null || iC <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                    return;
                }
                k(g(currentItem), true);
                return;
            }
            cw7 cw7VarH = h();
            CharSequence charSequenceD = this.k0.d(i);
            if (TextUtils.isEmpty(null) && !TextUtils.isEmpty(charSequenceD)) {
                cw7VarH.f.setContentDescription(charSequenceD);
            }
            cw7VarH.b = charSequenceD;
            fw7 fw7Var = cw7VarH.f;
            if (fw7Var != null) {
                fw7Var.e();
                cw7 cw7Var = fw7Var.a;
                if (cw7Var != null) {
                    TabLayout tabLayout = cw7Var.e;
                    if (tabLayout == null) {
                        c6.f("Tab not attached to a TabLayout");
                        return;
                    } else {
                        int selectedTabPosition = tabLayout.getSelectedTabPosition();
                        z = selectedTabPosition != -1 && selectedTabPosition == cw7Var.c;
                    }
                }
                fw7Var.setSelected(z);
            }
            b(cw7VarH, false);
            i++;
        }
    }

    public final void j() {
        bw7 bw7Var = this.d;
        int childCount = bw7Var.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            fw7 fw7Var = (fw7) bw7Var.getChildAt(childCount);
            bw7Var.removeViewAt(childCount);
            if (fw7Var != null) {
                fw7Var.setTab(null);
                fw7Var.setSelected(false);
                this.q0.c(fw7Var);
            }
            requestLayout();
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            cw7 cw7Var = (cw7) it.next();
            it.remove();
            cw7Var.e = null;
            cw7Var.f = null;
            cw7Var.a = null;
            cw7Var.b = null;
            cw7Var.c = -1;
            cw7Var.d = null;
            r0.c(cw7Var);
        }
        this.c = null;
    }

    public final void k(cw7 cw7Var, boolean z) {
        TabLayout tabLayout;
        cw7 cw7Var2 = this.c;
        ArrayList arrayList = this.g0;
        if (cw7Var2 == cw7Var) {
            if (cw7Var2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((xv7) arrayList.get(size)).b(cw7Var);
                }
                c(cw7Var.c);
                return;
            }
            return;
        }
        int i = cw7Var != null ? cw7Var.c : -1;
        if (z) {
            if ((cw7Var2 == null || cw7Var2.c == -1) && i != -1) {
                tabLayout = this;
                tabLayout.m(i, 0.0f, true, true, true);
            } else {
                tabLayout = this;
                tabLayout.c(i);
            }
            if (i != -1) {
                tabLayout.setSelectedTabView(i);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.c = cw7Var;
        if (cw7Var2 != null && cw7Var2.e != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((xv7) arrayList.get(size2)).a(cw7Var2);
            }
        }
        if (cw7Var != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((xv7) arrayList.get(size3)).c(cw7Var);
            }
        }
    }

    public final void l(ow5 ow5Var, boolean z) {
        zv7 zv7Var;
        ow5 ow5Var2 = this.k0;
        if (ow5Var2 != null && (zv7Var = this.l0) != null) {
            ow5Var2.a.unregisterObserver(zv7Var);
        }
        this.k0 = ow5Var;
        if (z && ow5Var != null) {
            if (this.l0 == null) {
                this.l0 = new zv7(this);
            }
            ow5Var.a.registerObserver(this.l0);
        }
        i();
    }

    public final void m(int i, float f, boolean z, boolean z2, boolean z3) {
        float f2 = i + f;
        int iRound = Math.round(f2);
        if (iRound >= 0) {
            bw7 bw7Var = this.d;
            if (iRound >= bw7Var.getChildCount()) {
                return;
            }
            if (z2) {
                bw7Var.b.a = Math.round(f2);
                ValueAnimator valueAnimator = bw7Var.a;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    bw7Var.a.cancel();
                }
                bw7Var.c(bw7Var.getChildAt(i), bw7Var.getChildAt(i + 1), f);
            }
            ValueAnimator valueAnimator2 = this.i0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.i0.cancel();
            }
            int iE = e(i, f);
            int scrollX = getScrollX();
            boolean z4 = (i < getSelectedTabPosition() && iE >= scrollX) || (i > getSelectedTabPosition() && iE <= scrollX) || i == getSelectedTabPosition();
            if (getLayoutDirection() == 1) {
                z4 = (i < getSelectedTabPosition() && iE <= scrollX) || (i > getSelectedTabPosition() && iE >= scrollX) || i == getSelectedTabPosition();
            }
            if (z4 || this.p0 == 1 || z3) {
                if (i < 0) {
                    iE = 0;
                }
                scrollTo(iE, 0);
            }
            if (z) {
                setSelectedTabView(iRound);
            }
        }
    }

    public final void n(ViewPager viewPager, boolean z) {
        TabLayout tabLayout;
        ArrayList arrayList;
        ArrayList arrayList2;
        ViewPager viewPager2 = this.j0;
        if (viewPager2 != null) {
            dw7 dw7Var = this.m0;
            if (dw7Var != null && (arrayList2 = viewPager2.l0) != null) {
                arrayList2.remove(dw7Var);
            }
            wv7 wv7Var = this.n0;
            if (wv7Var != null && (arrayList = this.j0.n0) != null) {
                arrayList.remove(wv7Var);
            }
        }
        gw7 gw7Var = this.h0;
        if (gw7Var != null) {
            this.g0.remove(gw7Var);
            this.h0 = null;
        }
        if (viewPager != null) {
            this.j0 = viewPager;
            if (this.m0 == null) {
                this.m0 = new dw7(this);
            }
            dw7 dw7Var2 = this.m0;
            dw7Var2.c = 0;
            dw7Var2.b = 0;
            viewPager.b(dw7Var2);
            gw7 gw7Var2 = new gw7(viewPager);
            this.h0 = gw7Var2;
            a(gw7Var2);
            ow5 adapter = viewPager.getAdapter();
            if (adapter != null) {
                l(adapter, true);
            }
            if (this.n0 == null) {
                this.n0 = new wv7(this);
            }
            wv7 wv7Var2 = this.n0;
            wv7Var2.a = true;
            if (viewPager.n0 == null) {
                viewPager.n0 = new ArrayList();
            }
            viewPager.n0.add(wv7Var2);
            tabLayout = this;
            tabLayout.m(viewPager.getCurrentItem(), 0.0f, true, true, true);
        } else {
            tabLayout = this;
            tabLayout.j0 = null;
            tabLayout.l(null, false);
        }
        tabLayout.o0 = z;
    }

    public final void o(boolean z) {
        int i = 0;
        while (true) {
            bw7 bw7Var = this.d;
            if (i >= bw7Var.getChildCount()) {
                return;
            }
            View childAt = bw7Var.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.U == 1 && this.R == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z) {
                childAt.requestLayout();
            }
            i++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        xh8.E(this);
        if (this.j0 == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                n((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.o0) {
            setupWithViewPager(null);
            this.o0 = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        fw7 fw7Var;
        Drawable drawable;
        int i = 0;
        while (true) {
            bw7 bw7Var = this.d;
            if (i >= bw7Var.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = bw7Var.getChildAt(i);
            if ((childAt instanceof fw7) && (drawable = (fw7Var = (fw7) childAt).p) != null) {
                drawable.setBounds(fw7Var.getLeft(), fw7Var.getTop(), fw7Var.getRight(), fw7Var.getBottom());
                fw7Var.p.draw(canvas);
            }
            i++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int iRound = Math.round(yc9.m(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i2) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int iM = this.O;
            if (iM <= 0) {
                iM = (int) (size - yc9.m(getContext(), 56));
            }
            this.M = iM;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i3 = this.U;
            if (i3 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i3 != 1) {
                if (i3 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        xh8.C(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.V == z) {
            return;
        }
        this.V = z;
        int i = 0;
        while (true) {
            bw7 bw7Var = this.d;
            if (i >= bw7Var.getChildCount()) {
                d();
                return;
            }
            View childAt = bw7Var.getChildAt(i);
            if (childAt instanceof fw7) {
                fw7 fw7Var = (fw7) childAt;
                fw7Var.setOrientation(!fw7Var.r.V ? 1 : 0);
                TextView textView = fw7Var.k;
                if (textView == null && fw7Var.n == null) {
                    fw7Var.f(fw7Var.b, fw7Var.c, true);
                } else {
                    fw7Var.f(textView, fw7Var.n, false);
                }
            }
            i++;
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(xv7 xv7Var) {
        xv7 xv7Var2 = this.f0;
        if (xv7Var2 != null) {
            this.g0.remove(xv7Var2);
        }
        this.f0 = xv7Var;
        if (xv7Var != null) {
            a(xv7Var);
        }
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        f();
        this.i0.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = drawable.mutate();
        this.G = drawableMutate;
        int i = this.H;
        if (i != 0) {
            drawableMutate.setTint(i);
        } else {
            drawableMutate.setTintList(null);
        }
        int intrinsicHeight = this.a0;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.G.getIntrinsicHeight();
        }
        this.d.b(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.H = i;
        Drawable drawable = this.G;
        if (i != 0) {
            drawable.setTint(i);
        } else {
            drawable.setTintList(null);
        }
        o(false);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.T != i) {
            this.T = i;
            this.d.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.a0 = i;
        this.d.b(i);
    }

    public void setTabGravity(int i) {
        if (this.R != i) {
            this.R = i;
            d();
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    public void setTabIconTint(ColorStateList colorStateList) {
        boolean z;
        if (this.x != colorStateList) {
            this.x = colorStateList;
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                fw7 fw7Var = ((cw7) arrayList.get(i)).f;
                if (fw7Var != null) {
                    fw7Var.e();
                    cw7 cw7Var = fw7Var.a;
                    if (cw7Var == null) {
                        z = false;
                    } else {
                        TabLayout tabLayout = cw7Var.e;
                        if (tabLayout == null) {
                            c6.f("Tab not attached to a TabLayout");
                            return;
                        }
                        int selectedTabPosition = tabLayout.getSelectedTabPosition();
                        if (selectedTabPosition == -1 || selectedTabPosition != cw7Var.c) {
                            z = false;
                        } else {
                            z = true;
                        }
                    }
                    fw7Var.setSelected(z);
                }
            }
        }
    }

    public void setTabIconTintResource(int i) {
        setTabIconTint(zh8.q(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.b0 = i;
        if (i == 0) {
            this.d0 = new q34(14);
            return;
        }
        if (i == 1) {
            this.d0 = new zs2(14);
        } else if (i == 2) {
            this.d0 = new h33(14);
        } else {
            x5.f(i, " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.W = z;
        int i = bw7.c;
        bw7 bw7Var = this.d;
        bw7Var.a(bw7Var.b.getSelectedTabPosition());
        bw7Var.postInvalidateOnAnimation();
    }

    public void setTabMode(int i) {
        if (i != this.U) {
            this.U = i;
            d();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.y == colorStateList) {
            return;
        }
        this.y = colorStateList;
        int i = 0;
        while (true) {
            bw7 bw7Var = this.d;
            if (i >= bw7Var.getChildCount()) {
                return;
            }
            View childAt = bw7Var.getChildAt(i);
            if (childAt instanceof fw7) {
                Context context = getContext();
                int i2 = fw7.t;
                ((fw7) childAt).d(context);
            }
            i++;
        }
    }

    public void setTabRippleColorResource(int i) {
        setTabRippleColor(zh8.q(getContext(), i));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    public void setTabTextColors(ColorStateList colorStateList) {
        boolean z;
        if (this.t != colorStateList) {
            this.t = colorStateList;
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                fw7 fw7Var = ((cw7) arrayList.get(i)).f;
                if (fw7Var != null) {
                    fw7Var.e();
                    cw7 cw7Var = fw7Var.a;
                    if (cw7Var == null) {
                        z = false;
                    } else {
                        TabLayout tabLayout = cw7Var.e;
                        if (tabLayout == null) {
                            c6.f("Tab not attached to a TabLayout");
                            return;
                        }
                        int selectedTabPosition = tabLayout.getSelectedTabPosition();
                        if (selectedTabPosition == -1 || selectedTabPosition != cw7Var.c) {
                            z = false;
                        } else {
                            z = true;
                        }
                    }
                    fw7Var.setSelected(z);
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(ow5 ow5Var) {
        l(ow5Var, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.c0 == z) {
            return;
        }
        this.c0 = z;
        int i = 0;
        while (true) {
            bw7 bw7Var = this.d;
            if (i >= bw7Var.getChildCount()) {
                return;
            }
            View childAt = bw7Var.getChildAt(i);
            if (childAt instanceof fw7) {
                Context context = getContext();
                int i2 = fw7.t;
                ((fw7) childAt).d(context);
            }
            i++;
        }
    }

    public void setUnboundedRippleResource(int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        n(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Deprecated
    public void setOnTabSelectedListener(yv7 yv7Var) {
        setOnTabSelectedListener((xv7) yv7Var);
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(iz1.m(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    public TabLayout(Context context) {
        this(context, null);
    }
}
