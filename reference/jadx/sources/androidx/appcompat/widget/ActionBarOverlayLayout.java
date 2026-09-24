package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import com.jcraft.jsch.SftpATTRS;
import defpackage.a8;
import defpackage.bv8;
import defpackage.cv8;
import defpackage.dl8;
import defpackage.dv8;
import defpackage.ev8;
import defpackage.fc5;
import defpackage.fv8;
import defpackage.gv8;
import defpackage.hm5;
import defpackage.hv8;
import defpackage.im5;
import defpackage.iz1;
import defpackage.k88;
import defpackage.l0;
import defpackage.nm8;
import defpackage.o8;
import defpackage.ou8;
import defpackage.qv8;
import defpackage.r88;
import defpackage.sc6;
import defpackage.tv8;
import defpackage.uk8;
import defpackage.v7;
import defpackage.vc4;
import defpackage.vc5;
import defpackage.w7;
import defpackage.wd2;
import defpackage.x7;
import defpackage.y7;
import defpackage.z7;
import defpackage.zu8;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements hm5, im5 {
    public static final int[] U = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public static final tv8 V;
    public static final Rect W;
    public final Rect G;
    public final Rect H;
    public tv8 I;
    public tv8 J;
    public tv8 K;
    public tv8 L;
    public y7 M;
    public OverScroller N;
    public ViewPropertyAnimator O;
    public final v7 P;
    public final w7 Q;
    public final x7 R;
    public final sc6 S;
    public final a8 T;
    public int a;
    public int b;
    public ContentFrameLayout c;
    public ActionBarContainer d;
    public wd2 e;
    public Drawable f;
    public boolean k;
    public boolean n;
    public boolean p;
    public boolean q;
    public int r;
    public int t;
    public final Rect x;
    public final Rect y;

    static {
        hv8 bv8Var;
        int i = Build.VERSION.SDK_INT;
        if (i >= 36) {
            bv8Var = new gv8();
        } else if (i >= 35) {
            bv8Var = new fv8();
        } else if (i >= 34) {
            bv8Var = new ev8();
        } else if (i >= 31) {
            bv8Var = new dv8();
        } else if (i >= 30) {
            bv8Var = new cv8();
        } else {
            bv8Var = i >= 29 ? new bv8() : new zu8();
        }
        bv8Var.h(vc4.c(0, 1, 0, 1));
        V = bv8Var.b();
        W = new Rect();
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.x = new Rect();
        this.y = new Rect();
        this.G = new Rect();
        this.H = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        tv8 tv8Var = tv8.b;
        this.I = tv8Var;
        this.J = tv8Var;
        this.K = tv8Var;
        this.L = tv8Var;
        this.P = new v7(this, 0);
        this.Q = new w7(this, 0);
        this.R = new x7(this, 0);
        i(context);
        this.S = new sc6();
        a8 a8Var = new a8(context);
        a8Var.setWillNotDraw(true);
        this.T = a8Var;
        addView(a8Var);
    }

    public static boolean a(View view, Rect rect, boolean z) {
        boolean z2;
        z7 z7Var = (z7) view.getLayoutParams();
        int i = ((ViewGroup.MarginLayoutParams) z7Var).leftMargin;
        int i2 = rect.left;
        if (i != i2) {
            ((ViewGroup.MarginLayoutParams) z7Var).leftMargin = i2;
            z2 = true;
        } else {
            z2 = false;
        }
        int i3 = ((ViewGroup.MarginLayoutParams) z7Var).topMargin;
        int i4 = rect.top;
        if (i3 != i4) {
            ((ViewGroup.MarginLayoutParams) z7Var).topMargin = i4;
            z2 = true;
        }
        int i5 = ((ViewGroup.MarginLayoutParams) z7Var).rightMargin;
        int i6 = rect.right;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) z7Var).rightMargin = i6;
            z2 = true;
        }
        if (z) {
            int i7 = ((ViewGroup.MarginLayoutParams) z7Var).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) z7Var).bottomMargin = i8;
                return true;
            }
        }
        return z2;
    }

    @Override // defpackage.im5
    public final void b(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        c(view, i, i2, i3, i4, i5);
    }

    @Override // defpackage.hm5
    public final void c(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof z7;
    }

    @Override // defpackage.hm5
    public final boolean d(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f != null) {
            if (this.d.getVisibility() == 0) {
                translationY = (int) (this.d.getTranslationY() + this.d.getBottom() + 0.5f);
            } else {
                translationY = 0;
            }
            this.f.setBounds(0, translationY, getWidth(), this.f.getIntrinsicHeight() + translationY);
            this.f.draw(canvas);
        }
    }

    @Override // defpackage.hm5
    public final void e(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // defpackage.hm5
    public final void f(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new z7(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new z7(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        sc6 sc6Var = this.S;
        return sc6Var.c | sc6Var.b;
    }

    public CharSequence getTitle() {
        k();
        return ((r88) this.e).a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.Q);
        removeCallbacks(this.R);
        ViewPropertyAnimator viewPropertyAnimator = this.O;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(U);
        this.a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.N = new OverScroller(context);
    }

    public final void j(int i) {
        k();
        if (i == 2) {
            ((r88) this.e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i == 5) {
            ((r88) this.e).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        wd2 wrapper;
        if (this.c == null) {
            this.c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof wd2) {
                wrapper = (wd2) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    l0.e("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                    return;
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.e = wrapper;
        }
    }

    public final void l(Menu menu, vc5 vc5Var) {
        k();
        r88 r88Var = (r88) this.e;
        Toolbar toolbar = r88Var.a;
        if (r88Var.m == null) {
            o8 o8Var = new o8(toolbar.getContext());
            r88Var.m = o8Var;
            o8Var.p = R.id.action_menu_presenter;
        }
        o8 o8Var2 = r88Var.m;
        o8Var2.e = vc5Var;
        fc5 fc5Var = (fc5) menu;
        if (fc5Var == null && toolbar.a == null) {
            return;
        }
        toolbar.f();
        fc5 fc5Var2 = toolbar.a.H;
        if (fc5Var2 == fc5Var) {
            return;
        }
        if (fc5Var2 != null) {
            fc5Var2.r(toolbar.g0);
            fc5Var2.r(toolbar.h0);
        }
        if (toolbar.h0 == null) {
            toolbar.h0 = new k88(toolbar);
        }
        o8Var2.J = true;
        Context context = toolbar.q;
        if (fc5Var != null) {
            fc5Var.b(o8Var2, context);
            fc5Var.b(toolbar.h0, toolbar.q);
        } else {
            o8Var2.l(context, null);
            toolbar.h0.l(toolbar.q, null);
            o8Var2.c(true);
            toolbar.h0.c(true);
        }
        toolbar.a.setPopupTheme(toolbar.r);
        toolbar.a.setPresenter(o8Var2);
        toolbar.g0 = o8Var2;
        toolbar.v();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        tv8 tv8VarH = tv8.h(windowInsets, this);
        boolean zA = a(this.d, new Rect(tv8VarH.b(), tv8VarH.d(), tv8VarH.c(), tv8VarH.a()), false);
        WeakHashMap weakHashMap = dl8.a;
        Rect rect = this.x;
        uk8.b(this, tv8VarH, rect);
        int i = rect.left;
        int i2 = rect.top;
        int i3 = rect.right;
        int i4 = rect.bottom;
        qv8 qv8Var = tv8VarH.a;
        tv8 tv8VarQ = qv8Var.q(i, i2, i3, i4);
        this.I = tv8VarQ;
        boolean z = true;
        if (!this.J.equals(tv8VarQ)) {
            this.J = this.I;
            zA = true;
        }
        Rect rect2 = this.y;
        if (rect2.equals(rect)) {
            z = zA;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return qv8Var.a().a.c().a.b().g();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = dl8.a;
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                z7 z7Var = (z7) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) z7Var).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) z7Var).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:24:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:27:0x00da  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:39:0x0102  */
    /* JADX WARN: Code duplicated, block: B:40:0x0108  */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int measuredHeight;
        tv8 tv8Var;
        int i3;
        hv8 zu8Var;
        k();
        measureChildWithMargins(this.d, i, 0, i2, 0);
        z7 z7Var = (z7) this.d.getLayoutParams();
        int iMax = Math.max(0, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) z7Var).leftMargin + ((ViewGroup.MarginLayoutParams) z7Var).rightMargin);
        int iMax2 = Math.max(0, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) z7Var).topMargin + ((ViewGroup.MarginLayoutParams) z7Var).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        WeakHashMap weakHashMap = dl8.a;
        boolean z = (getWindowSystemUiVisibility() & 256) != 0;
        if (z) {
            measuredHeight = this.a;
            if (this.n && this.d.getTabContainer() != null) {
                measuredHeight += this.a;
            }
        } else {
            measuredHeight = this.d.getVisibility() != 8 ? this.d.getMeasuredHeight() : 0;
        }
        Rect rect = this.x;
        Rect rect2 = this.G;
        rect2.set(rect);
        this.K = this.I;
        if (this.k || z) {
            vc4 vc4VarC = vc4.c(this.K.b(), this.K.d() + measuredHeight, this.K.c(), this.K.a());
            tv8Var = this.K;
            i3 = Build.VERSION.SDK_INT;
            if (i3 >= 36) {
                zu8Var = new gv8(tv8Var);
            } else if (i3 >= 35) {
                zu8Var = new fv8(tv8Var);
            } else if (i3 >= 34) {
                zu8Var = new ev8(tv8Var);
            } else if (i3 >= 31) {
                zu8Var = new dv8(tv8Var);
            } else if (i3 >= 30) {
                zu8Var = new cv8(tv8Var);
            } else if (i3 >= 29) {
                zu8Var = new bv8(tv8Var);
            } else {
                zu8Var = new zu8(tv8Var);
            }
            zu8Var.h(vc4VarC);
            this.K = zu8Var.b();
        } else {
            a8 a8Var = this.T;
            tv8 tv8Var2 = V;
            Rect rect3 = this.H;
            uk8.b(a8Var, tv8Var2, rect3);
            if (rect3.equals(W)) {
                vc4 vc4VarC2 = vc4.c(this.K.b(), this.K.d() + measuredHeight, this.K.c(), this.K.a());
                tv8Var = this.K;
                i3 = Build.VERSION.SDK_INT;
                if (i3 >= 36) {
                    zu8Var = new gv8(tv8Var);
                } else if (i3 >= 35) {
                    zu8Var = new fv8(tv8Var);
                } else if (i3 >= 34) {
                    zu8Var = new ev8(tv8Var);
                } else if (i3 >= 31) {
                    zu8Var = new dv8(tv8Var);
                } else if (i3 >= 30) {
                    zu8Var = new cv8(tv8Var);
                } else if (i3 >= 29) {
                    zu8Var = new bv8(tv8Var);
                } else {
                    zu8Var = new zu8(tv8Var);
                }
                zu8Var.h(vc4VarC2);
                this.K = zu8Var.b();
            } else {
                rect2.top += measuredHeight;
                rect2.bottom = rect2.bottom;
                this.K = this.K.a.q(0, measuredHeight, 0, 0);
            }
        }
        a(this.c, rect2, true);
        if (!this.L.equals(this.K)) {
            tv8 tv8Var3 = this.K;
            this.L = tv8Var3;
            dl8.b(this.c, tv8Var3);
        }
        measureChildWithMargins(this.c, i, 0, i2, 0);
        z7 z7Var2 = (z7) this.c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) z7Var2).leftMargin + ((ViewGroup.MarginLayoutParams) z7Var2).rightMargin);
        int iMax4 = Math.max(iMax2, this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) z7Var2).topMargin + ((ViewGroup.MarginLayoutParams) z7Var2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.p || !z) {
            return false;
        }
        this.N.fling(0, 0, 0, (int) f2, 0, 0, SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED, Integer.MAX_VALUE);
        if (this.N.getFinalY() > this.d.getHeight()) {
            h();
            this.R.run();
        } else {
            h();
            this.Q.run();
        }
        this.q = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.r + i2;
        this.r = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        ou8 ou8Var;
        nm8 nm8Var;
        this.S.b = i;
        this.r = getActionBarHideOffset();
        h();
        y7 y7Var = this.M;
        if (y7Var == null || (nm8Var = (ou8Var = (ou8) y7Var).w) == null) {
            return;
        }
        nm8Var.a();
        ou8Var.w = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.d.getVisibility() != 0) {
            return false;
        }
        return this.p;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.p || this.q) {
            return;
        }
        if (this.r <= this.d.getHeight()) {
            h();
            postDelayed(this.Q, 600L);
        } else {
            h();
            postDelayed(this.R, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        k();
        int i2 = this.t ^ i;
        this.t = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        y7 y7Var = this.M;
        if (y7Var != null) {
            ou8 ou8Var = (ou8) y7Var;
            ou8Var.s = !z2;
            if (z || !z2) {
                if (ou8Var.t) {
                    ou8Var.t = false;
                    ou8Var.B0(true);
                }
            } else if (!ou8Var.t) {
                ou8Var.t = true;
                ou8Var.B0(true);
            }
        }
        if ((i2 & 256) == 0 || this.M == null) {
            return;
        }
        WeakHashMap weakHashMap = dl8.a;
        requestApplyInsets();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        y7 y7Var = this.M;
        if (y7Var != null) {
            ((ou8) y7Var).r = i;
        }
    }

    public void setActionBarHideOffset(int i) {
        h();
        this.d.setTranslationY(-Math.max(0, Math.min(i, this.d.getHeight())));
    }

    public void setActionBarVisibilityCallback(y7 y7Var) {
        this.M = y7Var;
        if (getWindowToken() != null) {
            ((ou8) this.M).r = this.b;
            int i = this.t;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                WeakHashMap weakHashMap = dl8.a;
                requestApplyInsets();
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.n = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.p) {
            this.p = z;
            if (z) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        k();
        r88 r88Var = (r88) this.e;
        r88Var.d = i != 0 ? iz1.m(r88Var.a.getContext(), i) : null;
        r88Var.d();
    }

    public void setLogo(int i) {
        k();
        r88 r88Var = (r88) this.e;
        r88Var.e = i != 0 ? iz1.m(r88Var.a.getContext(), i) : null;
        r88Var.d();
    }

    public void setOverlayMode(boolean z) {
        this.k = z;
    }

    public void setWindowCallback(Window.Callback callback) {
        k();
        ((r88) this.e).k = callback;
    }

    public void setWindowTitle(CharSequence charSequence) {
        k();
        r88 r88Var = (r88) this.e;
        if (r88Var.g) {
            return;
        }
        Toolbar toolbar = r88Var.a;
        r88Var.h = charSequence;
        if ((r88Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (r88Var.g) {
                dl8.o(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new z7(layoutParams);
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    public void setIcon(Drawable drawable) {
        k();
        r88 r88Var = (r88) this.e;
        r88Var.d = drawable;
        r88Var.d();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // defpackage.hm5
    public final void g(View view, int i, int i2, int[] iArr, int i3) {
    }
}
