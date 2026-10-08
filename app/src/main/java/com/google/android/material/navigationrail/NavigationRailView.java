package com.google.android.material.navigationrail;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import defpackage.al5;
import defpackage.da8;
import defpackage.dl5;
import defpackage.ed;
import defpackage.fl5;
import defpackage.fr4;
import defpackage.g33;
import defpackage.ia8;
import defpackage.jd4;
import defpackage.ol5;
import defpackage.t31;
import defpackage.td6;
import defpackage.u94;
import defpackage.vl5;
import defpackage.wk5;
import defpackage.xl5;
import defpackage.yc9;
import defpackage.zq8;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class NavigationRailView extends ol5 {
    public static final PathInterpolator P = new PathInterpolator(0.38f, 1.21f, 0.22f, 1.0f);
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public final vl5 O;
    public final int k;
    public final int n;
    public boolean p;
    public final View q;
    public final Boolean r;
    public final Boolean t;
    public final Boolean x;
    public boolean y;

    public NavigationRailView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.r = null;
        this.t = null;
        this.x = null;
        this.y = false;
        this.H = -1;
        this.I = 0;
        this.J = 49;
        Context context2 = getContext();
        this.N = getContext().getResources().getDimensionPixelSize(R.dimen.m3_navigation_rail_expanded_item_spacing);
        this.M = 8388627;
        this.L = 1;
        u94 u94VarC = jd4.C(context2, attributeSet, td6.M, i, i2, new int[0]);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin);
        TypedArray typedArray = (TypedArray) u94VarC.b;
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(1, dimensionPixelSize);
        int dimensionPixelSize3 = typedArray.getDimensionPixelSize(7, getResources().getDimensionPixelSize(R.dimen.mtrl_navigation_rail_margin));
        boolean z = typedArray.getBoolean(14, false);
        setSubmenuDividersEnabled(typedArray.getBoolean(17, false));
        View view = (View) getMenuView();
        vl5 vl5Var = new vl5(getContext());
        vl5Var.a = 0;
        vl5Var.b = false;
        this.O = vl5Var;
        vl5Var.setPaddingTop(dimensionPixelSize2);
        this.O.setScrollingEnabled(z);
        this.O.setClipChildren(false);
        this.O.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        this.O.addView(view);
        if (z) {
            ScrollView scrollView = new ScrollView(getContext());
            scrollView.setVerticalScrollBarEnabled(false);
            scrollView.addView(this.O);
            scrollView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            addView(scrollView);
        } else {
            addView(this.O);
        }
        int resourceId = typedArray.getResourceId(6, 0);
        if (resourceId != 0) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
            View view2 = this.q;
            if (view2 != null) {
                this.O.removeView(view2);
                this.q = null;
            }
            this.q = viewInflate;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 49;
            layoutParams.bottomMargin = dimensionPixelSize3;
            this.O.addView(viewInflate, 0, layoutParams);
        }
        setMenuGravity(typedArray.getInt(10, 49));
        int dimensionPixelSize4 = typedArray.getDimensionPixelSize(8, -1);
        int dimensionPixelSize5 = typedArray.getDimensionPixelSize(8, -1);
        dimensionPixelSize4 = typedArray.hasValue(0) ? typedArray.getDimensionPixelSize(0, -1) : dimensionPixelSize4;
        dimensionPixelSize5 = typedArray.hasValue(3) ? typedArray.getDimensionPixelSize(3, -1) : dimensionPixelSize5;
        setCollapsedItemMinimumHeight(dimensionPixelSize4);
        setExpandedItemMinimumHeight(dimensionPixelSize5);
        this.k = typedArray.getDimensionPixelSize(5, context2.getResources().getDimensionPixelSize(R.dimen.m3_navigation_rail_min_expanded_width));
        this.n = typedArray.getDimensionPixelSize(4, context2.getResources().getDimensionPixelSize(R.dimen.m3_navigation_rail_max_expanded_width));
        if (typedArray.hasValue(13)) {
            this.r = Boolean.valueOf(typedArray.getBoolean(13, false));
        }
        if (typedArray.hasValue(11)) {
            this.t = Boolean.valueOf(typedArray.getBoolean(11, false));
        }
        if (typedArray.hasValue(12)) {
            this.x = Boolean.valueOf(typedArray.getBoolean(12, false));
        }
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_navigation_rail_item_padding_top_with_large_font);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.m3_navigation_rail_item_padding_bottom_with_large_font);
        float fB = ed.b(0.0f, 1.0f, 0.3f, 1.0f, context2.getResources().getConfiguration().fontScale - 1.0f);
        float fC = ed.c(fB, getItemPaddingTop(), dimensionPixelOffset);
        float fC2 = ed.c(fB, getItemPaddingBottom(), dimensionPixelOffset2);
        setItemPaddingTop(Math.round(fC));
        setItemPaddingBottom(Math.round(fC2));
        setCollapsedItemSpacing(typedArray.getDimensionPixelSize(9, 0));
        setExpanded(typedArray.getBoolean(2, false));
        u94VarC.f();
        yc9.k(this, new zq8(this, 14));
    }

    private int getMaxChildWidth() {
        int childCount = getNavigationRailMenuView().getChildCount();
        int iMax = 0;
        for (int i = 0; i < childCount; i++) {
            View childAt = getNavigationRailMenuView().getChildAt(i);
            if (childAt.getVisibility() != 8 && !(childAt instanceof wk5)) {
                iMax = Math.max(iMax, childAt.getMeasuredWidth());
            }
        }
        return iMax;
    }

    private xl5 getNavigationRailMenuView() {
        return (xl5) getMenuView();
    }

    private void setExpanded(boolean z) {
        if (this.y == z) {
            return;
        }
        if (isLaidOut()) {
            t31 t31Var = new t31();
            t31Var.c = 500L;
            t31Var.d = P;
            g33 g33Var = new g33((Object) null);
            g33Var.c = 100L;
            g33 g33Var2 = new g33((Object) null);
            g33Var2.c = 100L;
            fr4 fr4Var = new fr4();
            g33 g33Var3 = new g33((Object) null);
            g33Var3.c = 100L;
            int childCount = getNavigationRailMenuView().getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getNavigationRailMenuView().getChildAt(i);
                if (childAt instanceof al5) {
                    al5 al5Var = (al5) childAt;
                    t31Var.o(al5Var.getLabelGroup());
                    t31Var.o(al5Var.getExpandedLabelGroup());
                    if (this.y) {
                        g33Var2.b(al5Var.getExpandedLabelGroup());
                        g33Var.b(al5Var.getLabelGroup());
                    } else {
                        g33Var2.b(al5Var.getLabelGroup());
                        g33Var.b(al5Var.getExpandedLabelGroup());
                    }
                    fr4Var.b(al5Var.getExpandedLabelGroup());
                }
                g33Var3.b(childAt);
            }
            ia8 ia8Var = new ia8();
            ia8Var.R(0);
            ia8Var.O(t31Var);
            ia8Var.O(g33Var);
            ia8Var.O(fr4Var);
            if (!this.y) {
                ia8Var.O(g33Var3);
            }
            ia8 ia8Var2 = new ia8();
            ia8Var2.R(0);
            ia8Var2.O(g33Var2);
            if (this.y) {
                ia8Var2.O(g33Var3);
            }
            ia8 ia8Var3 = new ia8();
            ia8Var3.R(1);
            ia8Var3.O(ia8Var2);
            ia8Var3.O(ia8Var);
            da8.a((ViewGroup) getParent(), ia8Var3);
        }
        this.y = z;
        int i2 = this.I;
        int i3 = this.G;
        int i4 = this.H;
        int i5 = this.J;
        if (z) {
            i2 = this.L;
            i3 = this.N;
            i4 = this.K;
            i5 = this.M;
        }
        getNavigationRailMenuView().setItemGravity(i5);
        super.setItemIconGravity(i2);
        getNavigationRailMenuView().setItemSpacing(i3);
        getNavigationRailMenuView().setItemMinimumHeight(i4);
        getNavigationRailMenuView().setExpanded(z);
    }

    @Override // defpackage.ol5
    public final fl5 a(Context context) {
        return new xl5(context);
    }

    public int getCollapsedItemMinimumHeight() {
        return this.H;
    }

    @Override // defpackage.ol5
    public int getCollapsedMaxItemCount() {
        return 7;
    }

    public int getExpandedItemMinimumHeight() {
        return this.K;
    }

    public View getHeaderView() {
        return this.q;
    }

    @Override // defpackage.ol5
    public int getItemGravity() {
        return getNavigationRailMenuView().getItemGravity();
    }

    @Override // defpackage.ol5
    public int getItemIconGravity() {
        return getNavigationRailMenuView().getItemIconGravity();
    }

    public int getItemMinimumHeight() {
        return getNavigationRailMenuView().getItemMinimumHeight();
    }

    public int getItemSpacing() {
        return getNavigationRailMenuView().getItemSpacing();
    }

    @Override // defpackage.ol5
    public int getMaxItemCount() {
        return Integer.MAX_VALUE;
    }

    public int getMenuGravity() {
        return getNavigationRailMenuView().getMenuGravity();
    }

    public boolean getSubmenuDividersEnabled() {
        return this.p;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int iMakeMeasureSpec = (View.MeasureSpec.getMode(i) == 1073741824 || suggestedMinimumWidth <= 0) ? i : View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), getPaddingRight() + getPaddingLeft() + suggestedMinimumWidth), 1073741824);
        if (this.y) {
            measureChild(getNavigationRailMenuView(), i, i2);
            View view = this.q;
            if (view != null) {
                measureChild(view, i, i2);
            }
            int maxChildWidth = getMaxChildWidth();
            int iMin = Math.min(this.k, View.MeasureSpec.getSize(i));
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                int iMax = Math.max(maxChildWidth, iMin);
                if (view != null) {
                    iMax = Math.max(iMax, view.getMeasuredWidth());
                }
                i = View.MeasureSpec.makeMeasureSpec(Math.max(getSuggestedMinimumWidth(), Math.min(iMax, this.n)), 1073741824);
            }
            if (getItemActiveIndicatorExpandedWidth() == -1) {
                xl5 navigationRailMenuView = getNavigationRailMenuView();
                int size = View.MeasureSpec.getSize(i);
                dl5[] dl5VarArr = navigationRailMenuView.k;
                if (dl5VarArr != null) {
                    for (dl5 dl5Var : dl5VarArr) {
                        if (dl5Var instanceof al5) {
                            ((al5) dl5Var).j(size);
                        }
                    }
                }
            }
            iMakeMeasureSpec = i;
        }
        super.onMeasure(iMakeMeasureSpec, i2);
        vl5 vl5Var = this.O;
        if (vl5Var.getMeasuredHeight() < getMeasuredHeight()) {
            measureChild(vl5Var, iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setCollapsedItemMinimumHeight(int i) {
        this.H = i;
        if (this.y) {
            return;
        }
        ((xl5) getMenuView()).setItemMinimumHeight(i);
    }

    public void setCollapsedItemSpacing(int i) {
        this.G = i;
        if (this.y) {
            return;
        }
        getNavigationRailMenuView().setItemSpacing(i);
    }

    public void setExpandedItemMinimumHeight(int i) {
        this.K = i;
        if (this.y) {
            ((xl5) getMenuView()).setItemMinimumHeight(i);
        }
    }

    @Override // defpackage.ol5
    public void setItemGravity(int i) {
        this.J = i;
        this.M = i;
        super.setItemGravity(i);
    }

    @Override // defpackage.ol5
    public void setItemIconGravity(int i) {
        this.I = i;
        this.L = i;
        super.setItemIconGravity(i);
    }

    public void setItemMinimumHeight(int i) {
        this.H = i;
        this.K = i;
        ((xl5) getMenuView()).setItemMinimumHeight(i);
    }

    public void setItemSpacing(int i) {
        this.G = i;
        this.N = i;
        getNavigationRailMenuView().setItemSpacing(i);
    }

    public void setMenuGravity(int i) {
        getNavigationRailMenuView().setMenuGravity(i);
    }

    public void setSubmenuDividersEnabled(boolean z) {
        if (this.p == z) {
            return;
        }
        this.p = z;
        getNavigationRailMenuView().setSubmenuDividersEnabled(z);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.navigationRailStyle);
    }

    public NavigationRailView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, R.style.Widget_MaterialComponents_NavigationRailView);
    }

    public NavigationRailView(Context context) {
        this(context, null);
    }
}
