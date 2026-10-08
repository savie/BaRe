package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListView;
import defpackage.au7;
import defpackage.bu7;
import defpackage.c71;
import defpackage.cu7;
import defpackage.dl8;
import defpackage.du7;
import defpackage.eu7;
import defpackage.fe6;
import defpackage.fm5;
import defpackage.gm5;
import defpackage.hm5;
import defpackage.im5;
import defpackage.jy2;
import defpackage.sc6;
import defpackage.t71;
import defpackage.u71;
import defpackage.vt7;
import defpackage.wt7;
import defpackage.xt7;
import defpackage.yt7;
import defpackage.zt7;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SwipeRefreshLayout extends ViewGroup implements im5, hm5, fm5 {
    public static final int[] f0 = {R.attr.enabled};
    public float G;
    public float H;
    public boolean I;
    public int J;
    public final DecelerateInterpolator K;
    public final c71 L;
    public int M;
    public int N;
    public final int O;
    public final int P;
    public int Q;
    public final u71 R;
    public wt7 S;
    public xt7 T;
    public yt7 U;
    public yt7 V;
    public boolean W;
    public View a;
    public int a0;
    public du7 b;
    public boolean b0;
    public boolean c;
    public final vt7 c0;
    public final int d;
    public final au7 d0;
    public float e;
    public final bu7 e0;
    public float f;
    public final sc6 k;
    public final gm5 n;
    public final int[] p;
    public final int[] q;
    public final int[] r;
    public boolean t;
    public final int x;
    public int y;

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.e = -1.0f;
        this.p = new int[2];
        this.q = new int[2];
        this.r = new int[2];
        this.J = -1;
        this.M = -1;
        this.c0 = new vt7(this);
        this.d0 = new au7(this);
        this.e0 = new bu7(this);
        this.d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.x = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.K = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.a0 = (int) (displayMetrics.density * 40.0f);
        c71 c71Var = new c71(getContext());
        float f = c71Var.getContext().getResources().getDisplayMetrics().density;
        TypedArray typedArrayObtainStyledAttributes = c71Var.getContext().obtainStyledAttributes(fe6.a);
        c71Var.b = typedArrayObtainStyledAttributes.getColor(0, -328966);
        typedArrayObtainStyledAttributes.recycle();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
        WeakHashMap weakHashMap = dl8.a;
        c71Var.setElevation(f * 4.0f);
        shapeDrawable.getPaint().setColor(c71Var.b);
        c71Var.setBackground(shapeDrawable);
        this.L = c71Var;
        u71 u71Var = new u71(getContext());
        this.R = u71Var;
        u71Var.c(1);
        this.L.setImageDrawable(this.R);
        this.L.setVisibility(8);
        addView(this.L);
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.P = i;
        this.e = i;
        this.k = new sc6();
        this.n = new gm5(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.a0;
        this.y = i2;
        this.O = i2;
        k(1.0f);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f0);
        setEnabled(typedArrayObtainStyledAttributes2.getBoolean(0, true));
        typedArrayObtainStyledAttributes2.recycle();
    }

    private void setColorViewAlpha(int i) {
        this.L.getBackground().setAlpha(i);
        this.R.setAlpha(i);
    }

    public final boolean a() {
        View view = this.a;
        return view instanceof ListView ? ((ListView) view).canScrollList(-1) : view.canScrollVertically(-1);
    }

    @Override // defpackage.im5
    public final void b(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i5 != 0) {
            return;
        }
        int i6 = iArr[1];
        if (i5 == 0) {
            this.n.d(i, i2, i3, i4, this.q, i5, iArr);
        }
        int i7 = i4 - (iArr[1] - i6);
        int i8 = i7 == 0 ? this.q[1] + i4 : i7;
        if (i8 >= 0 || a()) {
            return;
        }
        float fAbs = this.f + Math.abs(i8);
        this.f = fAbs;
        j(fAbs);
        iArr[1] = iArr[1] + i7;
    }

    @Override // defpackage.hm5
    public final void c(View view, int i, int i2, int i3, int i4, int i5) {
        b(view, i, i2, i3, i4, i5, this.r);
    }

    @Override // defpackage.hm5
    public final boolean d(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            return onStartNestedScroll(view, view2, i);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getAction() != 1 || keyEvent.getKeyCode() != 285) {
            return super.dispatchKeyEvent(keyEvent);
        }
        n(true, true);
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.n.a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return this.n.b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.n.c(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.n.d(i, i2, i3, i4, iArr, 0, null);
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

    @Override // defpackage.hm5
    public final void g(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int i3 = this.M;
        if (i3 < 0) {
            return i2;
        }
        if (i2 == i - 1) {
            return i3;
        }
        return i2 >= i3 ? i2 + 1 : i2;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        sc6 sc6Var = this.k;
        return sc6Var.c | sc6Var.b;
    }

    public int getProgressCircleDiameter() {
        return this.a0;
    }

    public int getProgressViewEndOffset() {
        return this.P;
    }

    public int getProgressViewStartOffset() {
        return this.O;
    }

    public final void h() {
        if (this.a == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.L)) {
                    this.a = childAt;
                    return;
                }
            }
        }
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.n.f(0);
    }

    public final void i(float f) {
        if (f > this.e) {
            m(true, true);
            return;
        }
        this.c = false;
        u71 u71Var = this.R;
        t71 t71Var = u71Var.a;
        t71Var.e = 0.0f;
        t71Var.f = 0.0f;
        u71Var.invalidateSelf();
        zt7 zt7Var = new zt7(this);
        this.N = this.y;
        bu7 bu7Var = this.e0;
        bu7Var.reset();
        bu7Var.setDuration(200L);
        bu7Var.setInterpolator(this.K);
        c71 c71Var = this.L;
        c71Var.a = zt7Var;
        c71Var.clearAnimation();
        c71Var.startAnimation(bu7Var);
        t71 t71Var2 = u71Var.a;
        if (t71Var2.n) {
            t71Var2.n = false;
        }
        u71Var.invalidateSelf();
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.n.d;
    }

    public final void j(float f) {
        yt7 yt7Var;
        yt7 yt7Var2;
        u71 u71Var = this.R;
        t71 t71Var = u71Var.a;
        if (!t71Var.n) {
            t71Var.n = true;
        }
        u71Var.invalidateSelf();
        float fMin = Math.min(1.0f, Math.abs(f / this.e));
        float fMax = (((float) Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = Math.abs(f) - this.e;
        int i = this.Q;
        if (i <= 0) {
            i = this.P;
        }
        float f2 = i;
        double dMax = Math.max(0.0f, Math.min(fAbs, f2 * 2.0f) / f2) / 4.0f;
        float fPow = ((float) (dMax - Math.pow(dMax, 2.0d))) * 2.0f;
        int i2 = this.O + ((int) ((f2 * fMin) + (f2 * fPow * 2.0f)));
        c71 c71Var = this.L;
        if (c71Var.getVisibility() != 0) {
            c71Var.setVisibility(0);
        }
        c71Var.setScaleX(1.0f);
        c71Var.setScaleY(1.0f);
        if (f < this.e) {
            if (u71Var.a.t > 76 && ((yt7Var2 = this.U) == null || !yt7Var2.hasStarted() || yt7Var2.hasEnded())) {
                yt7 yt7Var3 = new yt7(this, u71Var.a.t, 76);
                yt7Var3.setDuration(300L);
                c71Var.a = null;
                c71Var.clearAnimation();
                c71Var.startAnimation(yt7Var3);
                this.U = yt7Var3;
            }
        } else if (u71Var.a.t < 255 && ((yt7Var = this.V) == null || !yt7Var.hasStarted() || yt7Var.hasEnded())) {
            yt7 yt7Var4 = new yt7(this, u71Var.a.t, 255);
            yt7Var4.setDuration(300L);
            c71Var.a = null;
            c71Var.clearAnimation();
            c71Var.startAnimation(yt7Var4);
            this.V = yt7Var4;
        }
        float fMin2 = Math.min(0.8f, fMax * 0.8f);
        t71 t71Var2 = u71Var.a;
        t71Var2.e = 0.0f;
        t71Var2.f = fMin2;
        u71Var.invalidateSelf();
        float fMin3 = Math.min(1.0f, fMax);
        t71 t71Var3 = u71Var.a;
        if (fMin3 != t71Var3.p) {
            t71Var3.p = fMin3;
        }
        u71Var.invalidateSelf();
        u71Var.a.g = ((fPow * 2.0f) + ((fMax * 0.4f) - 0.25f)) * 0.5f;
        u71Var.invalidateSelf();
        setTargetOffsetTopAndBottom(i2 - this.y);
    }

    public final void k(float f) {
        int i = this.N;
        setTargetOffsetTopAndBottom((i + ((int) ((this.O - i) * f))) - this.L.getTop());
    }

    public final void l() {
        this.L.clearAnimation();
        this.R.stop();
        this.L.setVisibility(8);
        setColorViewAlpha(255);
        setTargetOffsetTopAndBottom(this.O - this.y);
        this.y = this.L.getTop();
    }

    public final void m(boolean z, boolean z2) {
        if (this.c != z) {
            this.W = z2;
            h();
            this.c = z;
            c71 c71Var = this.L;
            vt7 vt7Var = this.c0;
            if (!z) {
                xt7 xt7Var = new xt7(this);
                this.T = xt7Var;
                xt7Var.setDuration(150L);
                c71Var.a = vt7Var;
                c71Var.clearAnimation();
                c71Var.startAnimation(this.T);
                return;
            }
            this.N = this.y;
            au7 au7Var = this.d0;
            au7Var.reset();
            au7Var.setDuration(200L);
            au7Var.setInterpolator(this.K);
            if (vt7Var != null) {
                c71Var.a = vt7Var;
            }
            c71Var.clearAnimation();
            c71Var.startAnimation(au7Var);
        }
    }

    public final void n(boolean z, boolean z2) {
        if (!z || this.c == z) {
            m(z, false);
            return;
        }
        this.c = z;
        setTargetOffsetTopAndBottom((this.P + this.O) - this.y);
        this.W = z2;
        c71 c71Var = this.L;
        c71Var.setVisibility(0);
        this.R.setAlpha(255);
        wt7 wt7Var = new wt7(this);
        this.S = wt7Var;
        wt7Var.setDuration(this.x);
        vt7 vt7Var = this.c0;
        if (vt7Var != null) {
            c71Var.a = vt7Var;
        }
        c71Var.clearAnimation();
        c71Var.startAnimation(this.S);
    }

    public final void o(float f) {
        float f2 = this.H;
        float f3 = f - f2;
        float f4 = this.d;
        if (f3 <= f4 || this.I) {
            return;
        }
        this.G = f2 + f4;
        this.I = true;
        this.R.setAlpha(76);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        l();
    }

    /* JADX WARN: Code duplicated, block: B:34:0x005f  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        h();
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !a() && !this.c && !this.t) {
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    this.I = false;
                    this.J = -1;
                } else if (actionMasked == 2) {
                    int i = this.J;
                    if (i == -1) {
                        Log.e("SwipeRefreshLayout", "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    if (iFindPointerIndex >= 0) {
                        o(motionEvent.getY(iFindPointerIndex));
                    }
                } else if (actionMasked == 3) {
                    this.I = false;
                    this.J = -1;
                } else if (actionMasked == 6) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == this.J) {
                        this.J = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    }
                }
                return this.I;
            }
            setTargetOffsetTopAndBottom(this.O - this.L.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.J = pointerId;
            this.I = false;
            int iFindPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex2 >= 0) {
                this.H = motionEvent.getY(iFindPointerIndex2);
                return this.I;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.a == null) {
            h();
        }
        View view = this.a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.L.getMeasuredWidth();
        int measuredHeight2 = this.L.getMeasuredHeight();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.y;
        this.L.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.a == null) {
            h();
        }
        View view = this.a;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.L.measure(View.MeasureSpec.makeMeasureSpec(this.a0, 1073741824), View.MeasureSpec.makeMeasureSpec(this.a0, 1073741824));
        this.M = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.L) {
                this.M = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        return this.n.a(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        return this.n.b(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = (int) f;
                    this.f = 0.0f;
                } else {
                    this.f = f - f2;
                    iArr[1] = i2;
                }
                j(this.f);
            }
        }
        int i3 = i - iArr[0];
        int i4 = i2 - iArr[1];
        int[] iArr2 = this.p;
        if (dispatchNestedPreScroll(i3, i4, iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        b(view, i, i2, i3, i4, 0, this.r);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        this.k.b = i;
        startNestedScroll(i & 2);
        this.f = 0.0f;
        this.t = true;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        eu7 eu7Var = (eu7) parcelable;
        super.onRestoreInstanceState(eu7Var.getSuperState());
        setRefreshing(eu7Var.a);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        return new eu7(super.onSaveInstanceState(), this.c);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.c || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        this.k.b = 0;
        this.t = false;
        float f = this.f;
        if (f > 0.0f) {
            i(f);
            this.f = 0.0f;
        } else {
            post(new jy2(this, 2));
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (isEnabled() && !a() && !this.c && !this.t) {
            if (actionMasked == 0) {
                this.J = motionEvent.getPointerId(0);
                this.I = false;
                return true;
            }
            if (actionMasked == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.J);
                if (iFindPointerIndex < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.I) {
                    float y = (motionEvent.getY(iFindPointerIndex) - this.G) * 0.5f;
                    this.I = false;
                    i(y);
                }
                this.J = -1;
                return false;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.J);
                if (iFindPointerIndex2 < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y2 = motionEvent.getY(iFindPointerIndex2);
                o(y2);
                if (this.I) {
                    float f = (y2 - this.G) * 0.5f;
                    if (f > 0.0f) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        j(f);
                    }
                }
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked != 5) {
                    if (actionMasked == 6) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex) == this.J) {
                            this.J = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                            return true;
                        }
                    }
                    return true;
                }
                int actionIndex2 = motionEvent.getActionIndex();
                if (actionIndex2 < 0) {
                    Log.e("SwipeRefreshLayout", "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.J = motionEvent.getPointerId(actionIndex2);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        View view;
        if (this.b0 && (view = this.a) != null) {
            WeakHashMap weakHashMap = dl8.a;
            if (!view.isNestedScrollingEnabled()) {
                return;
            }
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    public void setAnimationProgress(float f) {
        this.L.setScaleX(f);
        this.L.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        h();
        u71 u71Var = this.R;
        t71 t71Var = u71Var.a;
        t71Var.i = iArr;
        t71Var.a(0);
        t71Var.a(0);
        u71Var.invalidateSelf();
    }

    public void setColorSchemeResources(int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = context.getColor(iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.e = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        l();
    }

    @Deprecated
    public void setLegacyRequestDisallowInterceptTouchEventEnabled(boolean z) {
        this.b0 = z;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        gm5 gm5Var = this.n;
        if (gm5Var.d) {
            ViewGroup viewGroup = gm5Var.c;
            WeakHashMap weakHashMap = dl8.a;
            viewGroup.stopNestedScroll();
        }
        gm5Var.d = z;
    }

    public void setOnRefreshListener(du7 du7Var) {
        this.b = du7Var;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.L.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(getContext().getColor(i));
    }

    public void setRefreshing(boolean z) {
        n(z, false);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.a0 = (int) (displayMetrics.density * 56.0f);
            } else {
                this.a0 = (int) (displayMetrics.density * 40.0f);
            }
            this.L.setImageDrawable(null);
            this.R.c(i);
            this.L.setImageDrawable(this.R);
        }
    }

    public void setSlingshotDistance(int i) {
        this.Q = i;
    }

    public void setTargetOffsetTopAndBottom(int i) {
        c71 c71Var = this.L;
        c71Var.bringToFront();
        WeakHashMap weakHashMap = dl8.a;
        c71Var.offsetTopAndBottom(i);
        this.y = c71Var.getTop();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return this.n.g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        this.n.h(0);
    }

    public void setOnChildScrollUpCallback(cu7 cu7Var) {
    }

    public SwipeRefreshLayout(Context context) {
        this(context, null);
    }
}
