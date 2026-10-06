package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import com.jcraft.jsch.SftpATTRS;
import defpackage.dc5;
import defpackage.ec5;
import defpackage.fc5;
import defpackage.g8;
import defpackage.hx0;
import defpackage.ic5;
import defpackage.k8;
import defpackage.km5;
import defpackage.o8;
import defpackage.p8;
import defpackage.q8;
import defpackage.r8;
import defpackage.rc6;
import defpackage.tu4;
import defpackage.vc5;
import defpackage.xm8;
import defpackage.zc5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements ec5, zc5 {
    public fc5 H;
    public Context I;
    public int J;
    public boolean K;
    public o8 L;
    public rc6 M;
    public dc5 N;
    public boolean O;
    public int P;
    public final int Q;
    public final int R;
    public r8 S;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.Q = (int) (56.0f * f);
        this.R = (int) (f * 4.0f);
        this.I = context;
        this.J = 0;
    }

    public static q8 i() {
        q8 q8Var = new q8(-2, -2);
        q8Var.a = false;
        ((LinearLayout.LayoutParams) q8Var).gravity = 16;
        return q8Var;
    }

    public static q8 j(ViewGroup.LayoutParams layoutParams) {
        q8 q8Var;
        if (layoutParams == null) {
            return i();
        }
        if (layoutParams instanceof q8) {
            q8 q8Var2 = (q8) layoutParams;
            q8Var = new q8(q8Var2);
            q8Var.a = q8Var2.a;
        } else {
            q8Var = new q8(layoutParams);
        }
        if (((LinearLayout.LayoutParams) q8Var).gravity <= 0) {
            ((LinearLayout.LayoutParams) q8Var).gravity = 16;
        }
        return q8Var;
    }

    @Override // defpackage.ec5
    public final boolean a(ic5 ic5Var) {
        return this.H.q(ic5Var, null, 0);
    }

    @Override // defpackage.zc5
    public final void b(fc5 fc5Var) {
        this.H = fc5Var;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof q8;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: e */
    public final /* bridge */ /* synthetic */ tu4 generateDefaultLayoutParams() {
        return i();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: f */
    public final tu4 generateLayoutParams(AttributeSet attributeSet) {
        return new q8(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: g */
    public final /* bridge */ /* synthetic */ tu4 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return j(layoutParams);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return i();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new q8(getContext(), attributeSet);
    }

    public Menu getMenu() {
        if (this.H == null) {
            Context context = getContext();
            fc5 fc5Var = new fc5(context);
            this.H = fc5Var;
            fc5Var.e = new km5(this, 2);
            o8 o8Var = new o8(context);
            this.L = o8Var;
            int i = 1;
            o8Var.x = true;
            o8Var.y = true;
            vc5 hx0Var = this.M;
            if (hx0Var == null) {
                hx0Var = new hx0(i);
            }
            o8Var.e = hx0Var;
            this.H.b(o8Var, this.I);
            o8 o8Var2 = this.L;
            o8Var2.n = this;
            this.H = o8Var2.c;
        }
        return this.H;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        o8 o8Var = this.L;
        k8 k8Var = o8Var.q;
        if (k8Var != null) {
            return k8Var.getDrawable();
        }
        if (o8Var.t) {
            return o8Var.r;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.J;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public final boolean k(int i) {
        boolean zB = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof p8)) {
            zB = ((p8) childAt).b();
        }
        return (i <= 0 || !(childAt2 instanceof p8)) ? zB : ((p8) childAt2).c() | zB;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        o8 o8Var = this.L;
        if (o8Var != null) {
            o8Var.c(false);
            if (this.L.k()) {
                this.L.b();
                this.L.n();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o8 o8Var = this.L;
        if (o8Var != null) {
            o8Var.b();
            g8 g8Var = o8Var.M;
            if (g8Var == null || !g8Var.b()) {
                return;
            }
            g8Var.j.dismiss();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int paddingLeft;
        if (!this.O) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i5 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i6 = i3 - i;
        int paddingRight = (i6 - getPaddingRight()) - getPaddingLeft();
        boolean z2 = xm8.a;
        boolean z3 = getLayoutDirection() == 1;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                q8 q8Var = (q8) childAt.getLayoutParams();
                if (q8Var.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (k(i9)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (z3) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) q8Var).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) q8Var).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i10 = i5 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i10, width, measuredHeight + i10);
                    paddingRight -= measuredWidth;
                    i7 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) q8Var).leftMargin) + ((LinearLayout.LayoutParams) q8Var).rightMargin;
                    k(i9);
                    i8++;
                }
            }
        }
        if (childCount == 1 && i7 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i11 = (i6 / 2) - (measuredWidth2 / 2);
            int i12 = i5 - (measuredHeight2 / 2);
            childAt2.layout(i11, i12, measuredWidth2 + i11, measuredHeight2 + i12);
            return;
        }
        int i13 = i8 - (i7 ^ 1);
        int iMax = Math.max(0, i13 > 0 ? paddingRight / i13 : 0);
        if (z3) {
            int width2 = getWidth() - getPaddingRight();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt3 = getChildAt(i14);
                q8 q8Var2 = (q8) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !q8Var2.a) {
                    int i15 = width2 - ((LinearLayout.LayoutParams) q8Var2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i16 = i5 - (measuredHeight3 / 2);
                    childAt3.layout(i15 - measuredWidth3, i16, i15, measuredHeight3 + i16);
                    width2 = i15 - ((measuredWidth3 + ((LinearLayout.LayoutParams) q8Var2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt4 = getChildAt(i17);
            q8 q8Var3 = (q8) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !q8Var3.a) {
                int i18 = paddingLeft2 + ((LinearLayout.LayoutParams) q8Var3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i5 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth4, measuredHeight4 + i19);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) q8Var3).rightMargin + iMax + i18;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v18 */
    /* JADX WARN: Type inference failed for: r11v41 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int i4;
        ?? r11;
        int i5;
        int i6;
        fc5 fc5Var;
        boolean z = this.O;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.O = z2;
        if (z != z2) {
            this.P = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.O && (fc5Var = this.H) != null && size != this.P) {
            this.P = size;
            fc5Var.p(true);
        }
        int childCount = getChildCount();
        if (!this.O || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                q8 q8Var = (q8) getChildAt(i7).getLayoutParams();
                ((LinearLayout.LayoutParams) q8Var).rightMargin = 0;
                ((LinearLayout.LayoutParams) q8Var).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i);
        int size3 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.Q;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i13 = 0;
        int iMax2 = 0;
        int i14 = 0;
        boolean z3 = false;
        int i15 = 0;
        long j = 0;
        while (true) {
            i3 = this.R;
            if (i14 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i14);
            int i16 = size3;
            int i17 = paddingBottom;
            if (childAt.getVisibility() == 8) {
                i5 = i12;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                i13++;
                if (z4) {
                    childAt.setPadding(i3, 0, i3, 0);
                }
                q8 q8Var2 = (q8) childAt.getLayoutParams();
                q8Var2.f = false;
                q8Var2.c = 0;
                q8Var2.b = 0;
                q8Var2.d = false;
                ((LinearLayout.LayoutParams) q8Var2).leftMargin = 0;
                ((LinearLayout.LayoutParams) q8Var2).rightMargin = 0;
                q8Var2.e = z4 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i18 = q8Var2.a ? 1 : i10;
                q8 q8Var3 = (q8) childAt.getLayoutParams();
                int i19 = i10;
                i5 = i12;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - i17, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z4 ? (ActionMenuItemView) childAt : null;
                boolean z5 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                boolean z6 = z5;
                if (i18 <= 0 || (z5 && i18 < 2)) {
                    i6 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i5 * i18, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i6 = measuredWidth / i5;
                    if (measuredWidth % i5 != 0) {
                        i6++;
                    }
                    if (z6 && i6 < 2) {
                        i6 = 2;
                    }
                }
                q8Var3.d = !q8Var3.a && z6;
                q8Var3.b = i6;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i6 * i5, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i6);
                if (q8Var2.d) {
                    i15++;
                }
                if (q8Var2.a) {
                    z3 = true;
                }
                i10 = i19 - i6;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i6 == 1) {
                    j |= (long) (1 << i14);
                }
            }
            i14++;
            size3 = i16;
            paddingBottom = i17;
            i12 = i5;
        }
        int i20 = size3;
        int i21 = i10;
        int i22 = i12;
        boolean z7 = z3 && i13 == 2;
        int i23 = i21;
        boolean z8 = false;
        while (true) {
            if (i15 <= 0 || i23 <= 0) {
                i4 = iMax;
                break;
            }
            int i24 = Integer.MAX_VALUE;
            long j2 = 0;
            int i25 = 0;
            int i26 = 0;
            while (i26 < childCount2) {
                int i27 = iMax;
                q8 q8Var4 = (q8) getChildAt(i26).getLayoutParams();
                boolean z9 = z7;
                if (q8Var4.d) {
                    int i28 = q8Var4.b;
                    if (i28 < i24) {
                        j2 = 1 << i26;
                        i24 = i28;
                        i25 = 1;
                    } else if (i28 == i24) {
                        j2 |= 1 << i26;
                        i25++;
                    }
                }
                i26++;
                z7 = z9;
                iMax = i27;
            }
            i4 = iMax;
            boolean z10 = z7;
            j |= j2;
            if (i25 > i23) {
                break;
            }
            int i29 = i24 + 1;
            int i30 = 0;
            while (i30 < childCount2) {
                View childAt2 = getChildAt(i30);
                q8 q8Var5 = (q8) childAt2.getLayoutParams();
                boolean z11 = z3;
                long j3 = 1 << i30;
                if ((j2 & j3) != 0) {
                    if (z10 && q8Var5.e) {
                        r11 = 1;
                        r11 = 1;
                        if (i23 == 1) {
                            childAt2.setPadding(i3 + i22, 0, i3, 0);
                        }
                    } else {
                        r11 = 1;
                    }
                    q8Var5.b += r11;
                    q8Var5.f = r11;
                    i23--;
                } else if (q8Var5.b == i29) {
                    j |= j3;
                }
                i30++;
                z3 = z11;
            }
            z7 = z10;
            iMax = i4;
            z8 = true;
        }
        boolean z12 = !z3 && i13 == 1;
        if (i23 > 0 && j != 0 && (i23 < i13 - 1 || z12 || iMax2 > 1)) {
            float fBitCount = Long.bitCount(j);
            if (!z12) {
                if ((j & 1) != 0 && !((q8) getChildAt(0).getLayoutParams()).e) {
                    fBitCount -= 0.5f;
                }
                int i31 = childCount2 - 1;
                if ((j & ((long) (1 << i31))) != 0 && !((q8) getChildAt(i31).getLayoutParams()).e) {
                    fBitCount -= 0.5f;
                }
            }
            int i32 = fBitCount > 0.0f ? (int) ((i23 * i22) / fBitCount) : 0;
            boolean z13 = z8;
            for (int i33 = 0; i33 < childCount2; i33++) {
                if ((j & ((long) (1 << i33))) != 0) {
                    View childAt3 = getChildAt(i33);
                    q8 q8Var6 = (q8) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        q8Var6.c = i32;
                        q8Var6.f = true;
                        if (i33 == 0 && !q8Var6.e) {
                            ((LinearLayout.LayoutParams) q8Var6).leftMargin = (-i32) / 2;
                        }
                        z13 = true;
                    } else if (q8Var6.a) {
                        q8Var6.c = i32;
                        q8Var6.f = true;
                        ((LinearLayout.LayoutParams) q8Var6).rightMargin = (-i32) / 2;
                        z13 = true;
                    } else {
                        if (i33 != 0) {
                            ((LinearLayout.LayoutParams) q8Var6).leftMargin = i32 / 2;
                        }
                        if (i33 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) q8Var6).rightMargin = i32 / 2;
                        }
                    }
                }
            }
            z8 = z13;
        }
        if (z8) {
            for (int i34 = 0; i34 < childCount2; i34++) {
                View childAt4 = getChildAt(i34);
                q8 q8Var7 = (q8) childAt4.getLayoutParams();
                if (q8Var7.f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((q8Var7.b * i22) + q8Var7.c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i8, mode != 1073741824 ? i4 : i20);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.L.J = z;
    }

    public void setOnMenuItemClickListener(r8 r8Var) {
        this.S = r8Var;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        o8 o8Var = this.L;
        k8 k8Var = o8Var.q;
        if (k8Var != null) {
            k8Var.setImageDrawable(drawable);
        } else {
            o8Var.t = true;
            o8Var.r = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.K = z;
    }

    public void setPopupTheme(int i) {
        if (this.J != i) {
            this.J = i;
            if (i == 0) {
                this.I = getContext();
            } else {
                this.I = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(o8 o8Var) {
        this.L = o8Var;
        o8Var.n = this;
        this.H = o8Var.c;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return j(layoutParams);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }
}
