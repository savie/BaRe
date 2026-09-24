package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import defpackage.be6;
import defpackage.c6;
import defpackage.d6;
import defpackage.dl8;
import defpackage.g6;
import defpackage.gl8;
import defpackage.kp2;
import defpackage.ks;
import defpackage.lp2;
import defpackage.m0;
import defpackage.mp2;
import defpackage.np2;
import defpackage.pp2;
import defpackage.qp2;
import defpackage.rb;
import defpackage.tv8;
import defpackage.u51;
import defpackage.vc4;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    public static final int[] U = {R.attr.colorPrimaryDark};
    public static final int[] V = {R.attr.layout_gravity};
    public static final boolean W;
    public int G;
    public int H;
    public boolean I;
    public mp2 J;
    public ArrayList K;
    public float L;
    public float M;
    public Drawable N;
    public WindowInsets O;
    public boolean P;
    public final ArrayList Q;
    public Rect R;
    public Matrix S;
    public final rb T;
    public float a;
    public final int b;
    public int c;
    public float d;
    public final Paint e;
    public final gl8 f;
    public final gl8 k;
    public final qp2 n;
    public final qp2 p;
    public int q;
    public boolean r;
    public boolean t;
    public int x;
    public int y;

    static {
        W = Build.VERSION.SDK_INT >= 29;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        new lp2();
        this.c = -1728053248;
        this.e = new Paint();
        this.t = true;
        this.x = 3;
        this.y = 3;
        this.G = 3;
        this.H = 3;
        this.T = new rb(this, 13);
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.b = (int) ((64.0f * f) + 0.5f);
        float f2 = f * 400.0f;
        qp2 qp2Var = new qp2(this, 3);
        this.n = qp2Var;
        qp2 qp2Var2 = new qp2(this, 5);
        this.p = qp2Var2;
        gl8 gl8Var = new gl8(getContext(), this, qp2Var);
        gl8Var.b = (int) (gl8Var.b * 1.0f);
        this.f = gl8Var;
        gl8Var.q = 1;
        gl8Var.n = f2;
        qp2Var.g = gl8Var;
        gl8 gl8Var2 = new gl8(getContext(), this, qp2Var2);
        gl8Var2.b = (int) (1.0f * gl8Var2.b);
        this.k = gl8Var2;
        gl8Var2.q = 2;
        gl8Var2.n = f2;
        qp2Var2.g = gl8Var2;
        setFocusableInTouchMode(true);
        WeakHashMap weakHashMap = dl8.a;
        setImportantForAccessibility(1);
        dl8.n(this, new u51(this));
        setMotionEventSplittingEnabled(false);
        if (getFitsSystemWindows()) {
            setOnApplyWindowInsetsListener(new kp2());
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(U);
            try {
                this.N = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, be6.a, i, 0);
        try {
            if (typedArrayObtainStyledAttributes2.hasValue(0)) {
                this.a = typedArrayObtainStyledAttributes2.getDimension(0, 0.0f);
            } else {
                this.a = getResources().getDimension(org.swiftapps.swiftbackup.R.dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.Q = new ArrayList();
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th2;
        }
    }

    public static String h(int i) {
        if ((i & 3) == 3) {
            return "LEFT";
        }
        return (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    public static boolean i(View view) {
        return ((np2) view.getLayoutParams()).a == 0;
    }

    public static boolean j(View view) {
        if (k(view)) {
            return (((np2) view.getLayoutParams()).d & 1) == 1;
        }
        d6.e(view, " is not a drawer", "View ");
        return false;
    }

    public static boolean k(View view) {
        int i = ((np2) view.getLayoutParams()).a;
        WeakHashMap weakHashMap = dl8.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    public final boolean a(View view, int i) {
        return (g(view) & i) == i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        ArrayList arrayList2;
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        int i3 = 0;
        boolean z = false;
        while (true) {
            arrayList2 = this.Q;
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            if (!k(childAt)) {
                arrayList2.add(childAt);
            } else if (j(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
            i3++;
        }
        if (!z) {
            int size = arrayList2.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = (View) arrayList2.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        arrayList2.clear();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        View childAt;
        super.addView(view, i, layoutParams);
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                childAt = null;
                break;
            }
            childAt = getChildAt(i2);
            if ((((np2) childAt.getLayoutParams()).d & 1) == 1) {
                break;
            } else {
                i2++;
            }
        }
        if (childAt != null || k(view)) {
            WeakHashMap weakHashMap = dl8.a;
            view.setImportantForAccessibility(4);
        } else {
            WeakHashMap weakHashMap2 = dl8.a;
            view.setImportantForAccessibility(1);
        }
    }

    public final void b(View view) {
        if (!k(view)) {
            d6.e(view, " is not a sliding drawer", "View ");
            return;
        }
        np2 np2Var = (np2) view.getLayoutParams();
        if (this.t) {
            np2Var.b = 0.0f;
            np2Var.d = 0;
        } else {
            np2Var.d |= 4;
            if (a(view, 3)) {
                this.f.r(view, -view.getWidth(), view.getTop());
            } else {
                this.k.r(view, getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    public final void c(boolean z) {
        int childCount = getChildCount();
        boolean zR = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            np2 np2Var = (np2) childAt.getLayoutParams();
            if (k(childAt) && (!z || np2Var.c)) {
                zR |= a(childAt, 3) ? this.f.r(childAt, -childAt.getWidth(), childAt.getTop()) : this.k.r(childAt, getWidth(), childAt.getTop());
                np2Var.c = false;
            }
        }
        qp2 qp2Var = this.n;
        qp2Var.i.removeCallbacks(qp2Var.h);
        qp2 qp2Var2 = this.p;
        qp2Var2.i.removeCallbacks(qp2Var2.h);
        if (zR) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof np2) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i = 0; i < childCount; i++) {
            fMax = Math.max(fMax, ((np2) getChildAt(i).getLayoutParams()).b);
        }
        this.d = fMax;
        boolean zG = this.f.g();
        boolean zG2 = this.k.g();
        if (zG || zG2) {
            WeakHashMap weakHashMap = dl8.a;
            postInvalidateOnAnimation();
        }
    }

    public final View d(int i) {
        WeakHashMap weakHashMap = dl8.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((g(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean zDispatchGenericMotionEvent;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.d <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            if (this.R == null) {
                this.R = new Rect();
            }
            childAt.getHitRect(this.R);
            if (this.R.contains((int) x, (int) y) && !i(childAt)) {
                if (childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX, scrollY);
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(scrollX2, scrollY2);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.S == null) {
                            this.S = new Matrix();
                        }
                        matrix.invert(this.S);
                        motionEventObtain.transform(this.S);
                    }
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (zDispatchGenericMotionEvent) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Drawable background;
        int height = getHeight();
        boolean zI = i(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i = 0;
        if (zI) {
            int childCount = getChildCount();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0 && (background = childAt.getBackground()) != null && background.getOpacity() == -1 && k(childAt) && childAt.getHeight() >= height) {
                    if (a(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i2) {
                            i2 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i = i2;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(iSave);
        float f = this.d;
        if (f > 0.0f && zI) {
            int i4 = this.c;
            Paint paint = this.e;
            paint.setColor((((int) ((((-16777216) & i4) >>> 24) * f)) << 24) | (i4 & 16777215));
            canvas.drawRect(i, 0.0f, width, getHeight(), paint);
        }
        return zDrawChild;
    }

    public final View e() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (k(childAt)) {
                if (!k(childAt)) {
                    d6.e(childAt, " is not a drawer", "View ");
                    return null;
                }
                if (((np2) childAt.getLayoutParams()).b > 0.0f) {
                    return childAt;
                }
            }
        }
        return null;
    }

    public final int f(View view) {
        if (!k(view)) {
            d6.e(view, " is not a drawer", "View ");
            return 0;
        }
        int i = ((np2) view.getLayoutParams()).a;
        WeakHashMap weakHashMap = dl8.a;
        int layoutDirection = getLayoutDirection();
        if (i == 3) {
            int i2 = this.x;
            if (i2 != 3) {
                return i2;
            }
            int i3 = layoutDirection == 0 ? this.G : this.H;
            if (i3 != 3) {
                return i3;
            }
        } else if (i == 5) {
            int i4 = this.y;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.H : this.G;
            if (i5 != 3) {
                return i5;
            }
        } else if (i == 8388611) {
            int i6 = this.G;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.x : this.y;
            if (i7 != 3) {
                return i7;
            }
        } else if (i == 8388613) {
            int i8 = this.H;
            if (i8 != 3) {
                return i8;
            }
            int i9 = layoutDirection == 0 ? this.y : this.x;
            if (i9 != 3) {
                return i9;
            }
        }
        return 0;
    }

    public final int g(View view) {
        int i = ((np2) view.getLayoutParams()).a;
        WeakHashMap weakHashMap = dl8.a;
        return Gravity.getAbsoluteGravity(i, getLayoutDirection());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        np2 np2Var = new np2(-1, -1);
        np2Var.a = 0;
        return np2Var;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof np2) {
            np2 np2Var = (np2) layoutParams;
            np2 np2Var2 = new np2(np2Var);
            np2Var2.a = 0;
            np2Var2.a = np2Var.a;
            return np2Var2;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            np2 np2Var3 = new np2((ViewGroup.MarginLayoutParams) layoutParams);
            np2Var3.a = 0;
            return np2Var3;
        }
        np2 np2Var4 = new np2(layoutParams);
        np2Var4.a = 0;
        return np2Var4;
    }

    public float getDrawerElevation() {
        return this.a;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.N;
    }

    public final void l(View view) {
        if (!k(view)) {
            d6.e(view, " is not a sliding drawer", "View ");
            return;
        }
        np2 np2Var = (np2) view.getLayoutParams();
        if (this.t) {
            np2Var.b = 1.0f;
            np2Var.d = 1;
            p(view, true);
            o(view);
        } else {
            np2Var.d |= 2;
            if (a(view, 3)) {
                this.f.r(view, 0, view.getTop());
            } else {
                this.k.r(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    public final void m(int i, int i2) {
        View viewD;
        WeakHashMap weakHashMap = dl8.a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        if (i2 == 3) {
            this.x = i;
        } else if (i2 == 5) {
            this.y = i;
        } else if (i2 == 8388611) {
            this.G = i;
        } else if (i2 == 8388613) {
            this.H = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.f : this.k).a();
        }
        if (i != 1) {
            if (i == 2 && (viewD = d(absoluteGravity)) != null) {
                l(viewD);
                return;
            }
            return;
        }
        View viewD2 = d(absoluteGravity);
        if (viewD2 != null) {
            b(viewD2);
        }
    }

    public final void n(View view, float f) {
        np2 np2Var = (np2) view.getLayoutParams();
        if (f == np2Var.b) {
            return;
        }
        np2Var.b = f;
        ArrayList arrayList = this.K;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((ks) ((mp2) this.K.get(size))).getClass();
            }
        }
    }

    public final void o(View view) {
        g6 g6Var = g6.k;
        dl8.k(view, g6Var.a());
        dl8.h(view, 0);
        if (!j(view) || f(view) == 2) {
            return;
        }
        dl8.l(view, g6Var, this.T);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.t = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.t = true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.P || this.N == null) {
            return;
        }
        WindowInsets windowInsets = this.O;
        int systemWindowInsetTop = windowInsets != null ? windowInsets.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.N.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.N.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0071  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View viewH;
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        int actionMasked = motionEvent.getActionMasked();
        gl8 gl8Var = this.f;
        boolean zQ = gl8Var.q(motionEvent) | this.k.q(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                c(true);
                this.I = false;
            } else if (actionMasked == 2) {
                float[] fArr4 = gl8Var.d;
                if (fArr4 != null) {
                    int length = fArr4.length;
                    for (int i = 0; i < length; i++) {
                        if ((gl8Var.k & (1 << i)) != 0) {
                            float[] fArr5 = gl8Var.d;
                            if (fArr5 != null && (fArr = gl8Var.e) != null && (fArr2 = gl8Var.f) != null && (fArr3 = gl8Var.g) != null) {
                                float f = fArr2[i] - fArr5[i];
                                float f2 = fArr3[i] - fArr[i];
                                float f3 = (f2 * f2) + (f * f);
                                int i2 = gl8Var.b;
                                if (f3 > i2 * i2) {
                                    qp2 qp2Var = this.n;
                                    qp2Var.i.removeCallbacks(qp2Var.h);
                                    qp2 qp2Var2 = this.p;
                                    qp2Var2.i.removeCallbacks(qp2Var2.h);
                                    break;
                                }
                            } else {
                                Log.w("ViewDragHelper", "Inconsistent pointer event stream: pointer is down, but there is no initial motion recorded. Is something intercepting or modifying events?");
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                c(true);
                this.I = false;
            }
            z = false;
        } else {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.L = x;
            this.M = y;
            z = this.d > 0.0f && (viewH = gl8Var.h((int) x, (int) y)) != null && i(viewH);
            this.I = false;
        }
        if (!zQ && !z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                if (!((np2) getChildAt(i3).getLayoutParams()).c) {
                }
            }
            if (!this.I) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || e() == null) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View viewE = e();
        if (viewE != null && f(viewE) == 0) {
            c(false);
        }
        return viewE != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WindowInsets rootWindowInsets;
        float f;
        int i5;
        boolean z2 = true;
        this.r = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        int i7 = 0;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                np2 np2Var = (np2) childAt.getLayoutParams();
                if (i(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) np2Var).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) np2Var).topMargin, childAt.getMeasuredWidth() + i8, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) np2Var).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt, 3)) {
                        float f2 = measuredWidth;
                        i5 = (-measuredWidth) + ((int) (np2Var.b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        int i9 = i6 - ((int) (np2Var.b * f3));
                        f = (i6 - i9) / f3;
                        i5 = i9;
                    }
                    boolean z3 = f != np2Var.b ? z2 : false;
                    int i10 = np2Var.a & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
                    if (i10 == 16) {
                        int i11 = i4 - i2;
                        int i12 = (i11 - measuredHeight) / 2;
                        int i13 = ((ViewGroup.MarginLayoutParams) np2Var).topMargin;
                        if (i12 < i13) {
                            i12 = i13;
                        } else {
                            int i14 = i12 + measuredHeight;
                            int i15 = i11 - ((ViewGroup.MarginLayoutParams) np2Var).bottomMargin;
                            if (i14 > i15) {
                                i12 = i15 - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i12, measuredWidth + i5, measuredHeight + i12);
                    } else if (i10 != 80) {
                        int i16 = ((ViewGroup.MarginLayoutParams) np2Var).topMargin;
                        childAt.layout(i5, i16, measuredWidth + i5, measuredHeight + i16);
                    } else {
                        int i17 = i4 - i2;
                        childAt.layout(i5, (i17 - ((ViewGroup.MarginLayoutParams) np2Var).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i17 - ((ViewGroup.MarginLayoutParams) np2Var).bottomMargin);
                    }
                    if (z3) {
                        n(childAt, f);
                    }
                    int i18 = np2Var.b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i18) {
                        childAt.setVisibility(i18);
                    }
                }
            }
            i7++;
            z2 = true;
        }
        if (W && (rootWindowInsets = getRootWindowInsets()) != null) {
            vc4 vc4VarL = tv8.h(rootWindowInsets, null).a.l();
            gl8 gl8Var = this.f;
            gl8Var.o = Math.max(gl8Var.p, vc4VarL.a);
            gl8 gl8Var2 = this.k;
            gl8Var2.o = Math.max(gl8Var2.p, vc4VarL.c);
        }
        this.r = false;
        this.t = false;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0038  */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                c6.f("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
                return;
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        if (this.O != null) {
            WeakHashMap weakHashMap = dl8.a;
            if (getFitsSystemWindows()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        WeakHashMap weakHashMap2 = dl8.a;
        int layoutDirection = getLayoutDirection();
        int childCount = getChildCount();
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                np2 np2Var = (np2) childAt.getLayoutParams();
                if (z) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(np2Var.a, layoutDirection);
                    boolean fitsSystemWindows = childAt.getFitsSystemWindows();
                    WindowInsets windowInsetsReplaceSystemWindowInsets = this.O;
                    if (fitsSystemWindows) {
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        if (absoluteGravity == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), 0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(0, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) np2Var).leftMargin = windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) np2Var).topMargin = windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) np2Var).rightMargin = windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) np2Var).bottomMargin = windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom();
                    }
                }
                if (i(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) np2Var).leftMargin) - ((ViewGroup.MarginLayoutParams) np2Var).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) np2Var).topMargin) - ((ViewGroup.MarginLayoutParams) np2Var).bottomMargin, 1073741824));
                } else {
                    if (!k(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i3 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    float elevation = childAt.getElevation();
                    float f = this.a;
                    if (elevation != f) {
                        childAt.setElevation(f);
                    }
                    int iG = g(childAt) & 7;
                    boolean z4 = iG == 3;
                    if ((z4 && z2) || (!z4 && z3)) {
                        m0.f(h(iG), " but this DrawerLayout already has a drawer view along that edge", "Child drawer has absolute gravity ");
                        return;
                    }
                    if (z4) {
                        z2 = true;
                    } else {
                        z3 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i, this.b + ((ViewGroup.MarginLayoutParams) np2Var).leftMargin + ((ViewGroup.MarginLayoutParams) np2Var).rightMargin, ((ViewGroup.MarginLayoutParams) np2Var).width), ViewGroup.getChildMeasureSpec(i2, ((ViewGroup.MarginLayoutParams) np2Var).topMargin + ((ViewGroup.MarginLayoutParams) np2Var).bottomMargin, ((ViewGroup.MarginLayoutParams) np2Var).height));
                }
            }
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        View viewD;
        if (!(parcelable instanceof pp2)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        pp2 pp2Var = (pp2) parcelable;
        super.onRestoreInstanceState(pp2Var.a);
        int i = pp2Var.c;
        if (i != 0 && (viewD = d(i)) != null) {
            l(viewD);
        }
        int i2 = pp2Var.d;
        if (i2 != 3) {
            m(i2, 3);
        }
        int i3 = pp2Var.e;
        if (i3 != 3) {
            m(i3, 5);
        }
        int i4 = pp2Var.f;
        if (i4 != 3) {
            m(i4, 8388611);
        }
        int i5 = pp2Var.k;
        if (i5 != 3) {
            m(i5, 8388613);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        pp2 pp2Var = new pp2(super.onSaveInstanceState());
        pp2Var.c = 0;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            np2 np2Var = (np2) getChildAt(i).getLayoutParams();
            int i2 = np2Var.d;
            boolean z = i2 == 1;
            boolean z2 = i2 == 2;
            if (z || z2) {
                pp2Var.c = np2Var.a;
                break;
            }
        }
        pp2Var.d = this.x;
        pp2Var.e = this.y;
        pp2Var.f = this.G;
        pp2Var.k = this.H;
        return pp2Var;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006b  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        gl8 gl8Var = this.f;
        gl8Var.j(motionEvent);
        this.k.j(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.L = x;
            this.M = y;
            this.I = false;
            return true;
        }
        if (action != 1) {
            if (action != 3) {
                return true;
            }
            c(true);
            this.I = false;
            return true;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        View viewH = gl8Var.h((int) x2, (int) y2);
        if (viewH != null && i(viewH)) {
            float f = x2 - this.L;
            float f2 = y2 - this.M;
            int i = gl8Var.b;
            if ((f2 * f2) + (f * f) < i * i) {
                int childCount = getChildCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= childCount) {
                        childAt = null;
                        break;
                    }
                    childAt = getChildAt(i2);
                    if ((((np2) childAt.getLayoutParams()).d & 1) == 1) {
                        break;
                    }
                    i2++;
                }
                z = childAt == null || f(childAt) == 2;
            }
        }
        c(z);
        return true;
    }

    public final void p(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || k(childAt)) && !(z && childAt == view)) {
                WeakHashMap weakHashMap = dl8.a;
                childAt.setImportantForAccessibility(4);
            } else {
                WeakHashMap weakHashMap2 = dl8.a;
                childAt.setImportantForAccessibility(1);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            c(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.r) {
            return;
        }
        super.requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.a = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (k(childAt)) {
                float f2 = this.a;
                WeakHashMap weakHashMap = dl8.a;
                childAt.setElevation(f2);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(mp2 mp2Var) {
        ArrayList arrayList;
        mp2 mp2Var2 = this.J;
        if (mp2Var2 != null && (arrayList = this.K) != null) {
            arrayList.remove(mp2Var2);
        }
        if (mp2Var != null) {
            if (this.K == null) {
                this.K = new ArrayList();
            }
            this.K.add(mp2Var);
        }
        this.J = mp2Var;
    }

    public void setDrawerLockMode(int i) {
        m(i, 3);
        m(i, 5);
    }

    public void setScrimColor(int i) {
        this.c = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.N = i != 0 ? getContext().getDrawable(i) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i) {
        this.N = new ColorDrawable(i);
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.N = drawable;
        invalidate();
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        np2 np2Var = new np2(context, attributeSet);
        np2Var.a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, V);
        np2Var.a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return np2Var;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.swiftapps.swiftbackup.R.attr.drawerLayoutStyle);
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }
}
