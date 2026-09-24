package com.google.android.material.listitem;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.google.android.material.listitem.ListItemLayout;
import defpackage.c6;
import defpackage.cx4;
import defpackage.du0;
import defpackage.ed;
import defpackage.ex4;
import defpackage.fx4;
import defpackage.fz5;
import defpackage.g84;
import defpackage.gl8;
import defpackage.gx4;
import defpackage.ix4;
import defpackage.ji;
import defpackage.kr;
import defpackage.l0;
import defpackage.lg7;
import defpackage.oy;
import defpackage.qt3;
import defpackage.tr;
import defpackage.zm5;
import java.util.Iterator;
import java.util.Objects;
import org.swiftapps.swiftbackup.appslist.ui.AppListItemLayout;
import org.swiftapps.swiftbackup.appslist.ui.AppSwipeActionRevealLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ListItemLayout extends FrameLayout {
    public static final int[] G = {R.attr.state_first};
    public static final int[] H = {R.attr.state_middle};
    public static final int[] I = {R.attr.state_last};
    public static final int[] J = {R.attr.state_single};
    public static final PathInterpolator K = new PathInterpolator(0.42f, 1.67f, 0.21f, 0.9f);
    public int[] a;
    public gl8 b;
    public GestureDetector c;
    public int d;
    public int e;
    public cx4 f;
    public ix4 k;
    public ix4 n;
    public ix4 p;
    public boolean q;
    public fx4 r;
    public int t;
    public int x;
    public final gx4 y;

    public ListItemLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(zm5.J(context, attributeSet, i, i2), attributeSet, i);
        this.t = 3;
        this.x = 3;
        this.y = new gx4(this);
        getContext();
    }

    public static void f(ix4 ix4Var, int i, int i2) {
        int measuredWidth;
        int measuredWidth2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ix4Var.getLayoutParams();
        if (lg7.w(ix4Var)) {
            measuredWidth2 = i2 - layoutParams.rightMargin;
            measuredWidth = measuredWidth2 - ix4Var.getMeasuredWidth();
        } else {
            measuredWidth = i + layoutParams.leftMargin;
            measuredWidth2 = ix4Var.getMeasuredWidth() + measuredWidth;
        }
        ix4Var.layout(measuredWidth, ix4Var.getTop(), measuredWidth2, ix4Var.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getSwipeViewClosedOffset() {
        return this.e;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (!(view instanceof ix4)) {
            if (this.f != null && (view instanceof cx4)) {
                g84.j("Only one SwipeableListItem view is allowed in a ListItemLayout.");
                return;
            } else {
                if (view instanceof cx4) {
                    this.f = (cx4) view;
                    return;
                }
                return;
            }
        }
        if (lg7.w(view)) {
            if (this.n != null) {
                g84.j("Only one RevealableListItem with end gravity is supported.");
                return;
            }
            this.n = (ix4) view;
        } else {
            if (this.k != null) {
                g84.j("Only one RevealableListItem with start gravity is supported.");
                return;
            }
            this.k = (ix4) view;
        }
        ((ix4) view).setRevealedWidth(0);
        view.setElevation(getElevation() - 1.0f);
    }

    public final boolean b() {
        if (!k() || this.f == null) {
            return false;
        }
        if (this.b == null) {
            this.b = new gl8(getContext(), this, new du0(this, 1));
        }
        if (this.c == null) {
            this.c = new GestureDetector(getContext(), new ex4(this));
        }
        if (this.r == null) {
            fx4 fx4Var = new fx4(this);
            this.r = fx4Var;
            this.f.setAccessibilityDelegate(fx4Var);
        }
        if (!getClipToPadding()) {
            return true;
        }
        this.q = getClipToPadding();
        setClipToPadding(false);
        return true;
    }

    public final int c(int i, int i2) {
        if (!l(i2)) {
            c6.f(fz5.j(i2, "No RevealableListItem with gravity "));
            return 0;
        }
        if (i == 3) {
            return getSwipeViewClosedOffset();
        }
        if (i == 4) {
            return d(i2);
        }
        if (i == 5) {
            return e(i2);
        }
        c6.f(fz5.j(i, "Invalid state to get swipe offset: "));
        return 0;
    }

    public final int d(int i) {
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        int i2 = 1;
        ix4 ix4Var = (absoluteGravity != 3 && (absoluteGravity == 5 || getLayoutDirection() != 1)) ? this.n : this.k;
        if (ix4Var == null) {
            return 0;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) ix4Var.getLayoutParams();
        int intrinsicWidth = ix4Var.getIntrinsicWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        if (absoluteGravity2 != 3 && (absoluteGravity2 == 5 || getLayoutDirection() != 1)) {
            i2 = -1;
        }
        return (i2 * intrinsicWidth) + this.e;
    }

    public final int e(int i) {
        cx4 cx4Var = this.f;
        if (cx4Var == null) {
            return 0;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) cx4Var.getLayoutParams();
        int measuredWidth = this.f.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        int i2 = 1;
        if (absoluteGravity != 3 && (absoluteGravity == 5 || getLayoutDirection() != 1)) {
            i2 = -1;
        }
        return (i2 * measuredWidth) + this.e;
    }

    public final void g() {
        ix4 ix4Var = this.k;
        boolean z = false;
        boolean z2 = ix4Var != null && lg7.w(ix4Var);
        ix4 ix4Var2 = this.n;
        if (ix4Var2 != null && !lg7.w(ix4Var2)) {
            z = true;
        }
        if (z2 && z) {
            ix4 ix4Var3 = this.k;
            this.k = this.n;
            this.n = ix4Var3;
            this.d *= -1;
            return;
        }
        if (z2) {
            if (this.n != null) {
                l0.e("Cannot have more than one RevealableListItem with the same absolute gravity.");
                return;
            }
            this.n = this.k;
            this.k = null;
            this.d *= -1;
            return;
        }
        if (z) {
            if (this.k != null) {
                l0.e("Cannot have more than one RevealableListItem with the same absolute gravity.");
                return;
            }
            this.k = this.n;
            this.n = null;
            this.d *= -1;
        }
    }

    public int getSwipeState() {
        return this.t;
    }

    public final void h(AppSwipeActionRevealLayout appSwipeActionRevealLayout, final boolean z) {
        if (appSwipeActionRevealLayout != this.k && appSwipeActionRevealLayout != this.n) {
            c6.f("revealView must be a child of ListItemLayout.");
            return;
        }
        final int i = ((FrameLayout.LayoutParams) appSwipeActionRevealLayout.getLayoutParams()).gravity;
        if (this.f == null || !k()) {
            c6.f("ListItemLayout must have a SwipeableListItem child and a RevealableListItem child to be swiped.");
            return;
        }
        final AppListItemLayout appListItemLayout = (AppListItemLayout) this;
        Runnable runnable = new Runnable() { // from class: dx4
            @Override // java.lang.Runnable
            public final void run() {
                ListItemLayout listItemLayout = appListItemLayout;
                boolean z2 = z;
                int i2 = i;
                if (z2) {
                    listItemLayout.j(listItemLayout.f, 3, i2);
                    return;
                }
                gl8 gl8Var = listItemLayout.b;
                if (gl8Var != null) {
                    OverScroller overScroller = gl8Var.r;
                    gl8Var.a();
                    if (gl8Var.a == 2) {
                        overScroller.getCurrX();
                        overScroller.getCurrY();
                        overScroller.abortAnimation();
                        gl8Var.s.I(gl8Var.t, overScroller.getCurrX(), overScroller.getCurrY());
                    }
                    gl8Var.w = gl8.y;
                    gl8Var.o(0);
                }
                int iC = listItemLayout.c(3, i2);
                cx4 cx4Var = listItemLayout.f;
                cx4Var.offsetLeftAndRight(iC - cx4Var.getLeft());
                listItemLayout.n(iC);
                listItemLayout.i(3, i2);
            }
        };
        if (isLaidOut()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    public final void i(int i, int i2) {
        ji jiVar;
        oy oyVar;
        qt3 qt3Var;
        ix4 ix4Var;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection()) & 7;
        int i3 = (absoluteGravity != 3 && (absoluteGravity == 5 || getLayoutDirection() != 1)) ? 5 : 3;
        if (i == this.t) {
            ix4 ix4Var2 = this.p;
            if (ix4Var2 == null) {
                return;
            }
            if ((lg7.w(ix4Var2) ? 5 : 3) == i3) {
                return;
            }
        }
        if (i == 3 || l(i3)) {
            if (i == 5 && ((ix4Var = this.p) == null || ix4Var.getPrimaryActionSwipeMode() == 0)) {
                return;
            }
            int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, getLayoutDirection()) & 7;
            ix4 ix4Var3 = (absoluteGravity2 != 3 && (absoluteGravity2 == 5 || getLayoutDirection() != 1)) ? this.n : this.k;
            this.p = ix4Var3;
            this.t = i;
            if (i != 1 && i != 2) {
                this.x = i;
            }
            if (ix4Var3 != null) {
                int i4 = ((FrameLayout.LayoutParams) ix4Var3.getLayoutParams()).gravity;
            }
            cx4 cx4Var = this.f;
            ix4 ix4Var4 = this.p;
            cx4Var.getClass();
            cx4Var.G = i != 3;
            cx4Var.refreshDrawableState();
            Iterator it = cx4Var.J.iterator();
            while (it.hasNext()) {
                tr trVar = ((kr) it.next()).a;
                AppSwipeActionRevealLayout appSwipeActionRevealLayout = trVar.W;
                ix4Var4.getClass();
                if (i == 5 && (jiVar = trVar.K) != null) {
                    try {
                        ((AppListItemLayout) trVar.J.c).h(appSwipeActionRevealLayout, false);
                    } catch (IllegalArgumentException unused) {
                    }
                    if (ix4Var4.equals(appSwipeActionRevealLayout)) {
                        oyVar = trVar.l0;
                    } else {
                        oyVar = ix4Var4.equals(trVar.X) ? trVar.m0 : null;
                    }
                    if (oyVar != null && (qt3Var = trVar.G) != null) {
                        qt3Var.invoke(oyVar, jiVar);
                    }
                }
            }
        }
    }

    public final void j(cx4 cx4Var, int i, int i2) {
        boolean zR;
        if (this.b == null) {
            return;
        }
        int iC = c(i, i2);
        gl8 gl8Var = this.b;
        if (i == 4) {
            int top = cx4Var.getTop();
            gl8Var.t = cx4Var;
            gl8Var.c = -1;
            OverScroller overScroller = gl8Var.r;
            int left = cx4Var.getLeft();
            int top2 = gl8Var.t.getTop();
            int i3 = iC - left;
            int i4 = top - top2;
            if (i3 == 0 && i4 == 0) {
                overScroller.abortAnimation();
                zR = false;
                gl8Var.o(0);
            } else {
                PathInterpolator pathInterpolator = K;
                if (pathInterpolator != null) {
                    gl8Var.w = pathInterpolator;
                } else {
                    gl8Var.w = gl8.y;
                }
                overScroller.startScroll(left, top2, i3, i4, 350);
                gl8Var.o(2);
                zR = true;
            }
            if (!zR && gl8Var.a == 0 && gl8Var.t != null) {
                gl8Var.t = null;
            }
        } else {
            zR = gl8Var.r(cx4Var, iC, cx4Var.getTop());
        }
        if (!zR) {
            i(i, i2);
            return;
        }
        i(2, i2);
        gx4 gx4Var = this.y;
        gx4Var.a = i;
        gx4Var.b = i2;
        if (gx4Var.c) {
            return;
        }
        gx4Var.e.post(gx4Var.d);
        gx4Var.c = true;
    }

    public final boolean k() {
        return (this.k == null && this.n == null) ? false : true;
    }

    public final boolean l(int i) {
        g();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        return (absoluteGravity != 3 && (absoluteGravity == 5 || getLayoutDirection() != 1)) ? Objects.nonNull(this.n) : Objects.nonNull(this.k);
    }

    public final void m(int i, int i2) {
        int swipeViewClosedOffset = i2 == i ? (getSwipeViewClosedOffset() + i) / 2 : (i2 + i) / 2;
        this.f.setAlpha(ed.a(1.0f, 0.0f, (this.d - swipeViewClosedOffset) / (i - swipeViewClosedOffset)));
    }

    public final void n(int i) {
        ix4 ix4Var;
        ix4 ix4Var2;
        if (this.f == null || !k()) {
            return;
        }
        int i2 = i - this.e;
        this.d = i2;
        boolean z = i2 > 0;
        boolean z2 = i2 < 0;
        if (z && (ix4Var2 = this.k) != null) {
            this.p = ix4Var2;
        } else if (z2 && (ix4Var = this.n) != null) {
            this.p = ix4Var;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f.getLayoutParams();
        ix4 ix4Var3 = this.k;
        if (ix4Var3 != null) {
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) ix4Var3.getLayoutParams();
            int iMax = Math.max(0, ((Math.abs(this.e - this.f.getLeft()) - layoutParams.leftMargin) - layoutParams2.getMarginStart()) - layoutParams2.getMarginEnd());
            if (!z) {
                iMax = 0;
            }
            this.k.setRevealedWidth(iMax);
        }
        ix4 ix4Var4 = this.n;
        if (ix4Var4 != null) {
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) ix4Var4.getLayoutParams();
            this.n.setRevealedWidth(z2 ? Math.max(0, ((Math.abs(this.e - this.f.getLeft()) - layoutParams.rightMargin) - layoutParams3.getMarginStart()) - layoutParams3.getMarginEnd()) : 0);
        }
        Iterator it = this.f.J.iterator();
        while (it.hasNext()) {
            ((kr) it.next()).getClass();
        }
        if (z2 && this.n != null) {
            m(e(5), d(5));
        } else if (!z || this.k == null) {
            this.f.setAlpha(1.0f);
        } else {
            m(e(3), d(3));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        return this.a == null ? super.onCreateDrawableState(i) : View.mergeDrawableStates(super.onCreateDrawableState(i + 1), this.a);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!b()) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3 || actionMasked == 1) {
            this.b.a();
            return false;
        }
        this.c.onTouchEvent(motionEvent);
        return this.b.q(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        g();
        if (this.f != null && k() && b()) {
            this.e = this.f.getLeft();
            int right = this.f.getRight();
            this.f.offsetLeftAndRight(this.d);
            ix4 ix4Var = this.k;
            if (ix4Var != null) {
                f(ix4Var, this.e, right);
            }
            ix4 ix4Var2 = this.n;
            if (ix4Var2 != null) {
                f(ix4Var2, this.e, right);
            }
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (b()) {
            this.b.j(motionEvent);
            this.c.onTouchEvent(motionEvent);
            if (this.b.a == 1) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view == this.k) {
            this.k = null;
        } else if (view == this.n) {
            this.n = null;
        } else if (this.f == view) {
            this.f = null;
        }
        if (!k() || this.f == null) {
            this.b = null;
            this.c = null;
            this.r = null;
            setClipToPadding(this.q);
        }
    }

    public ListItemLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.listItemLayoutStyle);
    }

    public ListItemLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, org.swiftapps.swiftbackup.R.style.Widget_Material3_ListItemLayout);
    }

    public ListItemLayout(Context context) {
        this(context, null);
    }
}
