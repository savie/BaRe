package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import defpackage.d6;
import defpackage.dg7;
import defpackage.dl8;
import defpackage.dw1;
import defpackage.e38;
import defpackage.ew1;
import defpackage.f36;
import defpackage.fw1;
import defpackage.gw1;
import defpackage.hm5;
import defpackage.hw1;
import defpackage.im5;
import defpackage.iw1;
import defpackage.jq6;
import defpackage.kw1;
import defpackage.l0;
import defpackage.lw1;
import defpackage.ql8;
import defpackage.sc6;
import defpackage.tv8;
import defpackage.uk8;
import defpackage.zd6;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements hm5, im5 {
    public static final String L;
    public static final Class[] M;
    public static final ThreadLocal N;
    public static final lw1 O;
    public static final f36 P;
    public boolean G;
    public Drawable H;
    public ViewGroup.OnHierarchyChangeListener I;
    public jq6 J;
    public final sc6 K;
    public final ArrayList a;
    public final e38 b;
    public final ArrayList c;
    public final ArrayList d;
    public final int[] e;
    public final int[] f;
    public boolean k;
    public boolean n;
    public final int[] p;
    public View q;
    public View r;
    public iw1 t;
    public boolean x;
    public tv8 y;

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        L = r0 != null ? r0.getName() : null;
        O = new lw1(0);
        M = new Class[]{Context.class, AttributeSet.class};
        N = new ThreadLocal();
        P = new f36(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        CoordinatorLayout coordinatorLayout;
        Context context2;
        super(context, attributeSet, i);
        this.a = new ArrayList();
        this.b = new e38(2);
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = new int[2];
        this.f = new int[2];
        this.K = new sc6();
        int[] iArr = zd6.a;
        TypedArray typedArrayObtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, iArr, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        if (Build.VERSION.SDK_INT < 29) {
            coordinatorLayout = this;
            context2 = context;
        } else if (i == 0) {
            coordinatorLayout = this;
            context2 = context;
            coordinatorLayout.saveAttributeDataForStyleable(context2, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            coordinatorLayout = this;
            context2 = context;
            coordinatorLayout.saveAttributeDataForStyleable(context2, iArr, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context2.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            coordinatorLayout.p = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i2 = 0; i2 < length; i2++) {
                int[] iArr2 = coordinatorLayout.p;
                iArr2[i2] = (int) (iArr2[i2] * f);
            }
        }
        coordinatorLayout.H = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        coordinatorLayout.y();
        super.setOnHierarchyChangeListener(new gw1(coordinatorLayout));
        WeakHashMap weakHashMap = dl8.a;
        if (coordinatorLayout.getImportantForAccessibility() == 0) {
            coordinatorLayout.setImportantForAccessibility(1);
        }
    }

    public static Rect a() {
        Rect rect = (Rect) P.d();
        return rect == null ? new Rect() : rect;
    }

    public static void m(int i, Rect rect, Rect rect2, hw1 hw1Var, int i2, int i3) {
        int iWidth;
        int iHeight;
        int i4 = hw1Var.c;
        if (i4 == 0) {
            i4 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i4, i);
        int i5 = hw1Var.d;
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        if ((i5 & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) == 0) {
            i5 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
        int i8 = absoluteGravity2 & 7;
        int i9 = absoluteGravity2 & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
        if (i8 != 1) {
            iWidth = i8 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i9 != 16) {
            iHeight = i9 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i6 == 1) {
            iWidth -= i2 / 2;
        } else if (i6 != 5) {
            iWidth -= i2;
        }
        if (i7 == 16) {
            iHeight -= i3 / 2;
        } else if (i7 != 80) {
            iHeight -= i3;
        }
        rect2.set(iWidth, iHeight, i2 + iWidth, i3 + iHeight);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static hw1 o(View view) {
        hw1 hw1Var = (hw1) view.getLayoutParams();
        if (!hw1Var.b) {
            if (view instanceof dw1) {
                ew1 behavior = ((dw1) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                hw1Var.b(behavior);
                hw1Var.b = true;
                return hw1Var;
            }
            fw1 fw1Var = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                fw1Var = (fw1) superclass.getAnnotation(fw1.class);
                if (fw1Var != null) {
                    break;
                }
            }
            if (fw1Var != null) {
                try {
                    hw1Var.b((ew1) fw1Var.value().getDeclaredConstructor(null).newInstance(null));
                } catch (Exception e) {
                    Log.e("CoordinatorLayout", "Default behavior class " + fw1Var.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                }
            }
            hw1Var.b = true;
        }
        return hw1Var;
    }

    public static void w(View view, int i) {
        hw1 hw1Var = (hw1) view.getLayoutParams();
        int i2 = hw1Var.i;
        if (i2 != i) {
            WeakHashMap weakHashMap = dl8.a;
            view.offsetLeftAndRight(i - i2);
            hw1Var.i = i;
        }
    }

    public static void x(View view, int i) {
        hw1 hw1Var = (hw1) view.getLayoutParams();
        int i2 = hw1Var.j;
        if (i2 != i) {
            WeakHashMap weakHashMap = dl8.a;
            view.offsetTopAndBottom(i - i2);
            hw1Var.j = i;
        }
    }

    @Override // defpackage.im5
    public final void b(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        ew1 ew1Var;
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        boolean z = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                hw1 hw1Var = (hw1) childAt.getLayoutParams();
                if (hw1Var.a(i5) && (ew1Var = hw1Var.a) != null) {
                    int[] iArr2 = this.e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    ew1Var.p(this, childAt, i2, i3, i4, iArr2);
                    iMax = i3 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i4 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z) {
            q(1);
        }
    }

    @Override // defpackage.hm5
    public final void c(View view, int i, int i2, int i3, int i4, int i5) {
        b(view, i, i2, i3, i4, 0, this.f);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof hw1) && super.checkLayoutParams(layoutParams);
    }

    @Override // defpackage.hm5
    public final boolean d(View view, View view2, int i, int i2) {
        CoordinatorLayout coordinatorLayout;
        View view3;
        int i3;
        int i4;
        int childCount = getChildCount();
        int i5 = 0;
        boolean z = false;
        while (i5 < childCount) {
            View childAt = this.getChildAt(i5);
            if (childAt.getVisibility() == 8) {
                coordinatorLayout = this;
                view3 = view;
                i3 = i;
                i4 = i2;
            } else {
                hw1 hw1Var = (hw1) childAt.getLayoutParams();
                ew1 ew1Var = hw1Var.a;
                if (ew1Var != null) {
                    coordinatorLayout = this;
                    view3 = view;
                    i3 = i;
                    i4 = i2;
                    boolean zT = ew1Var.t(coordinatorLayout, childAt, view3, i3, i4);
                    z |= zT;
                    if (i4 == 0) {
                        hw1Var.m = zT;
                    } else if (i4 == 1) {
                        hw1Var.n = zT;
                    }
                } else {
                    coordinatorLayout = this;
                    view3 = view;
                    i3 = i;
                    i4 = i2;
                    if (i4 == 0) {
                        hw1Var.m = false;
                    } else if (i4 == 1) {
                        hw1Var.n = false;
                    }
                }
            }
            i5++;
            this = coordinatorLayout;
            view = view3;
            i = i3;
            i2 = i4;
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        ew1 ew1Var = ((hw1) view.getLayoutParams()).a;
        if (ew1Var != null) {
            ew1Var.getClass();
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.H;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // defpackage.hm5
    public final void e(View view, View view2, int i, int i2) {
        sc6 sc6Var = this.K;
        if (i2 == 1) {
            sc6Var.c = i;
        } else {
            sc6Var.b = i;
        }
        this.r = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ((hw1) getChildAt(i3).getLayoutParams()).getClass();
        }
    }

    @Override // defpackage.hm5
    public final void f(View view, int i) {
        sc6 sc6Var = this.K;
        if (i == 1) {
            sc6Var.c = 0;
        } else {
            sc6Var.b = 0;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            hw1 hw1Var = (hw1) childAt.getLayoutParams();
            if (hw1Var.a(i)) {
                ew1 ew1Var = hw1Var.a;
                if (ew1Var != null) {
                    ew1Var.u(this, childAt, view, i);
                }
                if (i == 0) {
                    hw1Var.m = false;
                } else if (i == 1) {
                    hw1Var.n = false;
                }
                hw1Var.o = false;
            }
        }
        this.r = null;
    }

    @Override // defpackage.hm5
    public final void g(View view, int i, int i2, int[] iArr, int i3) {
        ew1 ew1Var;
        int childCount = getChildCount();
        boolean z = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                hw1 hw1Var = (hw1) childAt.getLayoutParams();
                if (hw1Var.a(i3) && (ew1Var = hw1Var.a) != null) {
                    int[] iArr2 = this.e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    ew1Var.o(this, childAt, view, i, i2, iArr2, i3);
                    iMax = i > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i2 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z) {
            q(1);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new hw1();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof hw1) {
            return new hw1((hw1) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new hw1((ViewGroup.MarginLayoutParams) layoutParams) : new hw1(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        u();
        return Collections.unmodifiableList(this.a);
    }

    public final tv8 getLastWindowInsets() {
        return this.y;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        sc6 sc6Var = this.K;
        return sc6Var.c | sc6Var.b;
    }

    public Drawable getStatusBarBackground() {
        return this.H;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    public final void h(hw1 hw1Var, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin));
        rect.set(iMax, iMax2, i + iMax, i2 + iMax2);
    }

    public final void i(View view) {
        List list = (List) ((dg7) this.b.c).get(view);
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            View view2 = (View) list.get(i);
            ew1 ew1Var = ((hw1) view2.getLayoutParams()).a;
            if (ew1Var != null) {
                ew1Var.h(this, view2, view);
            }
        }
    }

    public final void j(View view, Rect rect, boolean z) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            l(rect, view);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final ArrayList k(View view) {
        dg7 dg7Var = (dg7) this.b.c;
        int i = dg7Var.c;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayList arrayList2 = (ArrayList) dg7Var.k(i2);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(dg7Var.g(i2));
            }
        }
        ArrayList arrayList3 = this.d;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    public final void l(Rect rect, View view) {
        ThreadLocal threadLocal = ql8.a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = ql8.a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        ql8.a(this, view, matrix);
        ThreadLocal threadLocal3 = ql8.b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int n(int i) {
        int[] iArr = this.p;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i + " out of range for " + this);
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        v(false);
        if (this.x) {
            if (this.t == null) {
                this.t = new iw1(this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.t);
        }
        if (this.y == null) {
            WeakHashMap weakHashMap = dl8.a;
            if (getFitsSystemWindows()) {
                requestApplyInsets();
            }
        }
        this.n = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        v(false);
        if (this.x && this.t != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.t);
        }
        View view = this.r;
        if (view != null) {
            f(view, 0);
        }
        this.n = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.G || this.H == null) {
            return;
        }
        tv8 tv8Var = this.y;
        int iD = tv8Var != null ? tv8Var.d() : 0;
        if (iD > 0) {
            this.H.setBounds(0, 0, getWidth(), iD);
            this.H.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            v(true);
        }
        boolean zT = t(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return zT;
        }
        v(true);
        return zT;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ew1 ew1Var;
        WeakHashMap weakHashMap = dl8.a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = (View) arrayList.get(i5);
            if (view.getVisibility() != 8 && ((ew1Var = ((hw1) view.getLayoutParams()).a) == null || !ew1Var.l(this, view, layoutDirection))) {
                r(view, layoutDirection);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:69:0x012c  */
    /* JADX WARN: Code duplicated, block: B:72:0x015d  */
    /* JADX WARN: Code duplicated, block: B:75:0x0167  */
    /* JADX WARN: Code duplicated, block: B:78:0x0186  */
    /* JADX WARN: Code duplicated, block: B:79:0x0189  */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        int i5;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        ew1 ew1Var;
        int i6;
        int i7;
        boolean z2;
        int i8;
        int i9;
        ArrayList arrayList;
        int i10;
        View view;
        int i11;
        boolean zM;
        int iMax;
        CoordinatorLayout coordinatorLayout = this;
        coordinatorLayout.u();
        int childCount = coordinatorLayout.getChildCount();
        int i12 = 0;
        loop0: while (true) {
            if (i12 >= childCount) {
                z = false;
                break;
            }
            View childAt = coordinatorLayout.getChildAt(i12);
            dg7 dg7Var = (dg7) coordinatorLayout.b.c;
            int i13 = dg7Var.c;
            for (int i14 = 0; i14 < i13; i14++) {
                ArrayList arrayList2 = (ArrayList) dg7Var.k(i14);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z = true;
                    break loop0;
                }
            }
            i12++;
        }
        if (z != coordinatorLayout.x) {
            boolean z3 = coordinatorLayout.n;
            if (z) {
                if (z3) {
                    if (coordinatorLayout.t == null) {
                        coordinatorLayout.t = new iw1(coordinatorLayout);
                    }
                    coordinatorLayout.getViewTreeObserver().addOnPreDrawListener(coordinatorLayout.t);
                }
                coordinatorLayout.x = true;
            } else {
                if (z3 && coordinatorLayout.t != null) {
                    coordinatorLayout.getViewTreeObserver().removeOnPreDrawListener(coordinatorLayout.t);
                }
                coordinatorLayout.x = false;
            }
        }
        int paddingLeft = coordinatorLayout.getPaddingLeft();
        int paddingTop = coordinatorLayout.getPaddingTop();
        int paddingRight = coordinatorLayout.getPaddingRight();
        int paddingBottom = coordinatorLayout.getPaddingBottom();
        WeakHashMap weakHashMap = dl8.a;
        int layoutDirection = coordinatorLayout.getLayoutDirection();
        boolean z4 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i15 = paddingLeft + paddingRight;
        int i16 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = coordinatorLayout.getSuggestedMinimumWidth();
        int suggestedMinimumHeight = coordinatorLayout.getSuggestedMinimumHeight();
        boolean z5 = coordinatorLayout.y != null && coordinatorLayout.getFitsSystemWindows();
        ArrayList arrayList3 = coordinatorLayout.a;
        int size3 = arrayList3.size();
        int i17 = 0;
        int iCombineMeasuredStates = 0;
        while (i17 < size3) {
            View view2 = (View) arrayList3.get(i17);
            int i18 = suggestedMinimumWidth;
            if (view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i4 = size3;
                i11 = i17;
                i6 = paddingLeft;
                suggestedMinimumWidth = i18;
                z2 = false;
                i8 = paddingRight;
            } else {
                hw1 hw1Var = (hw1) view2.getLayoutParams();
                int i19 = hw1Var.e;
                if (i19 < 0 || mode == 0) {
                    i3 = suggestedMinimumHeight;
                } else {
                    int iN = coordinatorLayout.n(i19);
                    int i20 = hw1Var.c;
                    if (i20 == 0) {
                        i20 = 8388661;
                    }
                    int absoluteGravity = Gravity.getAbsoluteGravity(i20, layoutDirection) & 7;
                    i3 = suggestedMinimumHeight;
                    if ((absoluteGravity != 3 || z4) && !(absoluteGravity == 5 && z4)) {
                        if ((absoluteGravity == 5 && !z4) || (absoluteGravity == 3 && z4)) {
                            iMax = Math.max(0, iN - paddingLeft);
                        }
                        if (z5 || view2.getFitsSystemWindows()) {
                            iMakeMeasureSpec = i;
                            iMakeMeasureSpec2 = i2;
                        } else {
                            int iC = coordinatorLayout.y.c() + coordinatorLayout.y.b();
                            int iA = coordinatorLayout.y.a() + coordinatorLayout.y.d();
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iC, mode);
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iA, mode2);
                        }
                        ew1Var = hw1Var.a;
                        if (ew1Var != null) {
                            z2 = false;
                            i6 = paddingLeft;
                            i7 = i18;
                            i8 = paddingRight;
                            i9 = i3;
                            arrayList = arrayList3;
                            int i21 = iMakeMeasureSpec;
                            i11 = i17;
                            int i22 = iMakeMeasureSpec2;
                            zM = ew1Var.m(this, view2, i21, i5, i22);
                            view = view2;
                            iMakeMeasureSpec = i21;
                            i10 = i22;
                            if (zM) {
                                coordinatorLayout = this;
                            }
                            int iMax2 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin + ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin);
                            int iMax3 = Math.max(i9, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin + ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin);
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                            suggestedMinimumWidth = iMax2;
                            suggestedMinimumHeight = iMax3;
                        } else {
                            i6 = paddingLeft;
                            i7 = i18;
                            z2 = false;
                            i8 = paddingRight;
                            i9 = i3;
                            arrayList = arrayList3;
                            i10 = iMakeMeasureSpec2;
                            view = view2;
                            i11 = i17;
                        }
                        coordinatorLayout = this;
                        coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, i5, i10, 0);
                        int iMax4 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin + ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin);
                        int iMax5 = Math.max(i9, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin + ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax4;
                        suggestedMinimumHeight = iMax5;
                    } else {
                        iMax = Math.max(0, (size - paddingRight) - iN);
                    }
                    int i23 = size3;
                    i5 = iMax;
                    i4 = i23;
                    if (z5) {
                        iMakeMeasureSpec = i;
                        iMakeMeasureSpec2 = i2;
                    } else {
                        iMakeMeasureSpec = i;
                        iMakeMeasureSpec2 = i2;
                    }
                    ew1Var = hw1Var.a;
                    if (ew1Var != null) {
                        z2 = false;
                        i6 = paddingLeft;
                        i7 = i18;
                        i8 = paddingRight;
                        i9 = i3;
                        arrayList = arrayList3;
                        int i24 = iMakeMeasureSpec;
                        i11 = i17;
                        int i25 = iMakeMeasureSpec2;
                        zM = ew1Var.m(this, view2, i24, i5, i25);
                        view = view2;
                        iMakeMeasureSpec = i24;
                        i10 = i25;
                        if (zM) {
                            coordinatorLayout = this;
                        }
                        int iMax6 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin + ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin);
                        int iMax7 = Math.max(i9, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin + ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax6;
                        suggestedMinimumHeight = iMax7;
                    } else {
                        i6 = paddingLeft;
                        i7 = i18;
                        z2 = false;
                        i8 = paddingRight;
                        i9 = i3;
                        arrayList = arrayList3;
                        i10 = iMakeMeasureSpec2;
                        view = view2;
                        i11 = i17;
                    }
                    coordinatorLayout = this;
                    coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, i5, i10, 0);
                    int iMax8 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin + ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin);
                    int iMax9 = Math.max(i9, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin + ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax8;
                    suggestedMinimumHeight = iMax9;
                }
                i4 = size3;
                i5 = 0;
                if (z5) {
                    iMakeMeasureSpec = i;
                    iMakeMeasureSpec2 = i2;
                } else {
                    iMakeMeasureSpec = i;
                    iMakeMeasureSpec2 = i2;
                }
                ew1Var = hw1Var.a;
                if (ew1Var != null) {
                    z2 = false;
                    i6 = paddingLeft;
                    i7 = i18;
                    i8 = paddingRight;
                    i9 = i3;
                    arrayList = arrayList3;
                    int i26 = iMakeMeasureSpec;
                    i11 = i17;
                    int i27 = iMakeMeasureSpec2;
                    zM = ew1Var.m(this, view2, i26, i5, i27);
                    view = view2;
                    iMakeMeasureSpec = i26;
                    i10 = i27;
                    if (zM) {
                        coordinatorLayout = this;
                    }
                    int iMax10 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin + ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin);
                    int iMax11 = Math.max(i9, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin + ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax10;
                    suggestedMinimumHeight = iMax11;
                } else {
                    i6 = paddingLeft;
                    i7 = i18;
                    z2 = false;
                    i8 = paddingRight;
                    i9 = i3;
                    arrayList = arrayList3;
                    i10 = iMakeMeasureSpec2;
                    view = view2;
                    i11 = i17;
                }
                coordinatorLayout = this;
                coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, i5, i10, 0);
                int iMax12 = Math.max(i7, view.getMeasuredWidth() + i15 + ((ViewGroup.MarginLayoutParams) hw1Var).leftMargin + ((ViewGroup.MarginLayoutParams) hw1Var).rightMargin);
                int iMax13 = Math.max(i9, view.getMeasuredHeight() + i16 + ((ViewGroup.MarginLayoutParams) hw1Var).topMargin + ((ViewGroup.MarginLayoutParams) hw1Var).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                suggestedMinimumWidth = iMax12;
                suggestedMinimumHeight = iMax13;
            }
            i17 = i11 + 1;
            paddingLeft = i6;
            paddingRight = i8;
            size3 = i4;
            arrayList3 = arrayList;
        }
        int i28 = iCombineMeasuredStates;
        coordinatorLayout.setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i, (-16777216) & i28), View.resolveSizeAndState(suggestedMinimumHeight, i2, i28 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f2, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                hw1 hw1Var = (hw1) childAt.getLayoutParams();
                if (hw1Var.a(0)) {
                    ew1 ew1Var = hw1Var.a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f2) {
        ew1 ew1Var;
        int childCount = getChildCount();
        boolean zN = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                hw1 hw1Var = (hw1) childAt.getLayoutParams();
                if (hw1Var.a(0) && (ew1Var = hw1Var.a) != null) {
                    zN |= ew1Var.n(view);
                }
            }
        }
        return zN;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        g(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        c(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i) {
        e(view, view2, i, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof kw1)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        kw1 kw1Var = (kw1) parcelable;
        super.onRestoreInstanceState(kw1Var.a);
        SparseArray sparseArray = kw1Var.c;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            ew1 ew1Var = o(childAt).a;
            if (id != -1 && ew1Var != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                ew1Var.r(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableS;
        kw1 kw1Var = new kw1(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            ew1 ew1Var = ((hw1) childAt.getLayoutParams()).a;
            if (id != -1 && ew1Var != null && (parcelableS = ew1Var.s(childAt)) != null) {
                sparseArray.append(id, parcelableS);
            }
        }
        kw1Var.c = sparseArray;
        return kw1Var;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i) {
        return d(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        f(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    /* JADX WARN: Code duplicated, block: B:15:0x0035 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037  */
    /* JADX WARN: Code duplicated, block: B:18:0x004a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015 A[PHI: r3
      0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zT;
        boolean zV;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.q == null) {
            zT = t(motionEvent, 1);
            if (!zT) {
                zV = false;
            }
            motionEventObtain = null;
            if (this.q == null) {
                zV |= super.onTouchEvent(motionEvent);
            } else if (zT) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked == 1 && actionMasked != 3) {
                return zV;
            }
            v(false);
            return zV;
        }
        zT = false;
        ew1 ew1Var = ((hw1) this.q.getLayoutParams()).a;
        if (ew1Var != null) {
            zV = ew1Var.v(this, this.q, motionEvent);
        } else {
            zV = false;
        }
        motionEventObtain = null;
        if (this.q == null) {
            zV |= super.onTouchEvent(motionEvent);
        } else if (zT) {
            long jUptimeMillis2 = SystemClock.uptimeMillis();
            motionEventObtain = MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked == 1) {
        }
        v(false);
        return zV;
    }

    public final boolean p(View view, int i, int i2) {
        f36 f36Var = P;
        Rect rectA = a();
        l(rectA, view);
        try {
            return rectA.contains(i, i2);
        } finally {
            rectA.setEmpty();
            f36Var.c(rectA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00de  */
    public final void q(int i) {
        int i2;
        Rect rect;
        int i3;
        ArrayList arrayList;
        boolean zH;
        boolean z;
        boolean z2;
        int width;
        int i4;
        int i5;
        int i6;
        int height;
        int i7;
        int i8;
        int i9;
        hw1 hw1Var;
        int i10;
        View view;
        ew1 ew1Var;
        WeakHashMap weakHashMap = dl8.a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList2 = this.a;
        int size = arrayList2.size();
        Rect rectA = a();
        Rect rectA2 = a();
        Rect rectA3 = a();
        int i11 = 0;
        while (true) {
            f36 f36Var = P;
            if (i11 >= size) {
                Rect rect2 = rectA3;
                rectA.setEmpty();
                f36Var.c(rectA);
                rectA2.setEmpty();
                f36Var.c(rectA2);
                rect2.setEmpty();
                f36Var.c(rect2);
                return;
            }
            View view2 = (View) arrayList2.get(i11);
            hw1 hw1Var2 = (hw1) view2.getLayoutParams();
            if (i != 0 || view2.getVisibility() != 8) {
                int i12 = 0;
                while (i12 < i11) {
                    if (hw1Var2.l == ((View) arrayList2.get(i12))) {
                        hw1 hw1Var3 = (hw1) view2.getLayoutParams();
                        if (hw1Var3.k != null) {
                            Rect rectA4 = a();
                            Rect rectA5 = a();
                            hw1 hw1Var4 = hw1Var2;
                            Rect rectA6 = a();
                            l(rectA4, hw1Var3.k);
                            j(view2, rectA5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            View view3 = view2;
                            int measuredHeight = view3.getMeasuredHeight();
                            hw1Var = hw1Var4;
                            i10 = i12;
                            layoutDirection = layoutDirection;
                            view = view3;
                            m(layoutDirection, rectA4, rectA6, hw1Var3, measuredWidth, measuredHeight);
                            boolean z3 = (rectA6.left == rectA5.left && rectA6.top == rectA5.top) ? false : true;
                            h(hw1Var3, rectA6, measuredWidth, measuredHeight);
                            int i13 = rectA6.left - rectA5.left;
                            int i14 = rectA6.top - rectA5.top;
                            if (i13 != 0) {
                                WeakHashMap weakHashMap2 = dl8.a;
                                view.offsetLeftAndRight(i13);
                            }
                            if (i14 != 0) {
                                WeakHashMap weakHashMap3 = dl8.a;
                                view.offsetTopAndBottom(i14);
                            }
                            if (z3 && (ew1Var = hw1Var3.a) != null) {
                                ew1Var.h(this, view, hw1Var3.k);
                            }
                            rectA4.setEmpty();
                            f36Var.c(rectA4);
                            rectA5.setEmpty();
                            f36Var.c(rectA5);
                            rectA6.setEmpty();
                            f36Var.c(rectA6);
                        } else {
                            hw1Var = hw1Var2;
                            i10 = i12;
                            view = view2;
                        }
                    } else {
                        hw1Var = hw1Var2;
                        i10 = i12;
                        view = view2;
                    }
                    i12 = i10 + 1;
                    hw1Var2 = hw1Var;
                    view2 = view;
                    arrayList2 = arrayList2;
                    size = size;
                    i11 = i11;
                    rectA3 = rectA3;
                }
                ArrayList arrayList3 = arrayList2;
                hw1 hw1Var5 = hw1Var2;
                int i15 = size;
                Rect rect3 = rectA3;
                i2 = i11;
                View view4 = view2;
                j(view4, rectA2, true);
                if (hw1Var5.g != 0 && !rectA2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(hw1Var5.g, layoutDirection);
                    int i16 = absoluteGravity & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
                    if (i16 == 48) {
                        rectA.top = Math.max(rectA.top, rectA2.bottom);
                    } else if (i16 == 80) {
                        rectA.bottom = Math.max(rectA.bottom, getHeight() - rectA2.top);
                    }
                    int i17 = absoluteGravity & 7;
                    if (i17 == 3) {
                        rectA.left = Math.max(rectA.left, rectA2.right);
                    } else if (i17 == 5) {
                        rectA.right = Math.max(rectA.right, getWidth() - rectA2.left);
                    }
                }
                if (hw1Var5.h != 0 && view4.getVisibility() == 0) {
                    WeakHashMap weakHashMap4 = dl8.a;
                    if (view4.isLaidOut() && view4.getWidth() > 0 && view4.getHeight() > 0) {
                        hw1 hw1Var6 = (hw1) view4.getLayoutParams();
                        ew1 ew1Var2 = hw1Var6.a;
                        Rect rectA7 = a();
                        Rect rectA8 = a();
                        rectA8.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                        if (ew1Var2 == null || !ew1Var2.e(rectA7, view4)) {
                            rectA7.set(rectA8);
                        } else if (!rectA8.contains(rectA7)) {
                            d6.i("Rect should be within the child's bounds. Rect:", rectA7.toShortString(), " | Bounds:", rectA8.toShortString());
                            return;
                        }
                        rectA8.setEmpty();
                        f36Var.c(rectA8);
                        if (rectA7.isEmpty()) {
                            rectA7.setEmpty();
                            f36Var.c(rectA7);
                        } else {
                            int absoluteGravity2 = Gravity.getAbsoluteGravity(hw1Var6.h, layoutDirection);
                            if ((absoluteGravity2 & 48) != 48 || (i8 = (rectA7.top - ((ViewGroup.MarginLayoutParams) hw1Var6).topMargin) - hw1Var6.j) >= (i9 = rectA.top)) {
                                z = false;
                            } else {
                                x(view4, i9 - i8);
                                z = true;
                            }
                            if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectA7.bottom) - ((ViewGroup.MarginLayoutParams) hw1Var6).bottomMargin) + hw1Var6.j) < (i7 = rectA.bottom)) {
                                x(view4, height - i7);
                                z = true;
                            }
                            if (!z) {
                                x(view4, 0);
                            }
                            if ((absoluteGravity2 & 3) != 3 || (i5 = (rectA7.left - ((ViewGroup.MarginLayoutParams) hw1Var6).leftMargin) - hw1Var6.i) >= (i6 = rectA.left)) {
                                z2 = false;
                            } else {
                                w(view4, i6 - i5);
                                z2 = true;
                            }
                            if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectA7.right) - ((ViewGroup.MarginLayoutParams) hw1Var6).rightMargin) + hw1Var6.i) < (i4 = rectA.right)) {
                                w(view4, width - i4);
                                z2 = true;
                            }
                            if (!z2) {
                                w(view4, 0);
                            }
                            rectA7.setEmpty();
                            f36Var.c(rectA7);
                        }
                    }
                }
                if (i != 2) {
                    rect = rect3;
                    rect.set(((hw1) view4.getLayoutParams()).p);
                    if (rect.equals(rectA2)) {
                        arrayList = arrayList3;
                        i3 = i15;
                    } else {
                        ((hw1) view4.getLayoutParams()).p.set(rectA2);
                    }
                } else {
                    rect = rect3;
                }
                int i18 = i2 + 1;
                i3 = i15;
                while (true) {
                    arrayList = arrayList3;
                    if (i18 >= i3) {
                        break;
                    }
                    View view5 = (View) arrayList.get(i18);
                    hw1 hw1Var7 = (hw1) view5.getLayoutParams();
                    ew1 ew1Var3 = hw1Var7.a;
                    if (ew1Var3 != null && ew1Var3.f(view5, view4)) {
                        if (i == 0 && hw1Var7.o) {
                            hw1Var7.o = false;
                        } else {
                            if (i != 2) {
                                zH = ew1Var3.h(this, view5, view4);
                            } else {
                                ew1Var3.i(this, view4);
                                zH = true;
                            }
                            if (i == 1) {
                                hw1Var7.o = zH;
                            }
                        }
                    }
                    i18++;
                    arrayList3 = arrayList;
                }
            } else {
                arrayList = arrayList2;
                i3 = size;
                rect = rectA3;
                i2 = i11;
            }
            i11 = i2 + 1;
            rectA3 = rect;
            size = i3;
            arrayList2 = arrayList;
        }
    }

    public final void r(View view, int i) {
        int i2;
        hw1 hw1Var = (hw1) view.getLayoutParams();
        View view2 = hw1Var.k;
        if (view2 == null && hw1Var.f != -1) {
            l0.e("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
            return;
        }
        f36 f36Var = P;
        if (view2 != null) {
            Rect rectA = a();
            Rect rectA2 = a();
            try {
                l(rectA, view2);
                hw1 hw1Var2 = (hw1) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                m(i, rectA, rectA2, hw1Var2, measuredWidth, measuredHeight);
                h(hw1Var2, rectA2, measuredWidth, measuredHeight);
                view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
                return;
            } finally {
                rectA.setEmpty();
                f36Var.c(rectA);
                rectA2.setEmpty();
                f36Var.c(rectA2);
            }
        }
        int i3 = hw1Var.e;
        if (i3 < 0) {
            hw1 hw1Var3 = (hw1) view.getLayoutParams();
            Rect rectA3 = a();
            rectA3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) hw1Var3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) hw1Var3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) hw1Var3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) hw1Var3).bottomMargin);
            if (this.y != null) {
                WeakHashMap weakHashMap = dl8.a;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    rectA3.left = this.y.b() + rectA3.left;
                    rectA3.top = this.y.d() + rectA3.top;
                    rectA3.right -= this.y.c();
                    rectA3.bottom -= this.y.a();
                }
            }
            Rect rectA4 = a();
            int i4 = hw1Var3.c;
            if ((i4 & 7) == 0) {
                i4 |= 8388611;
            }
            if ((i4 & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS) == 0) {
                i4 |= 48;
            }
            Gravity.apply(i4, view.getMeasuredWidth(), view.getMeasuredHeight(), rectA3, rectA4, i);
            view.layout(rectA4.left, rectA4.top, rectA4.right, rectA4.bottom);
            rectA3.setEmpty();
            f36Var.c(rectA3);
            rectA4.setEmpty();
            f36Var.c(rectA4);
            return;
        }
        hw1 hw1Var4 = (hw1) view.getLayoutParams();
        int i5 = hw1Var4.c;
        if (i5 == 0) {
            i5 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i5, i);
        int i6 = absoluteGravity & 7;
        int i7 = absoluteGravity & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i == 1) {
            i3 = width - i3;
        }
        int iN = n(i3) - measuredWidth2;
        if (i6 == 1) {
            iN += measuredWidth2 / 2;
        } else if (i6 == 5) {
            iN += measuredWidth2;
        }
        if (i7 != 16) {
            i2 = i7 != 80 ? 0 : measuredHeight2;
        } else {
            i2 = measuredHeight2 / 2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) hw1Var4).leftMargin, Math.min(iN, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) hw1Var4).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) hw1Var4).topMargin, Math.min(i2, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) hw1Var4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        ew1 ew1Var = ((hw1) view.getLayoutParams()).a;
        if (ew1Var == null || !ew1Var.q(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.k) {
            return;
        }
        v(false);
        this.k = true;
    }

    public final void s(int i, int i2, int i3, View view) {
        measureChildWithMargins(view, i, i2, i3, 0);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        y();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.I = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.H;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.H = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.H.setState(getDrawableState());
                }
                Drawable drawable3 = this.H;
                WeakHashMap weakHashMap = dl8.a;
                drawable3.setLayoutDirection(getLayoutDirection());
                this.H.setVisible(getVisibility() == 0, false);
                this.H.setCallback(this);
            }
            WeakHashMap weakHashMap2 = dl8.a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? getContext().getDrawable(i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.H;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.H.setVisible(z, false);
    }

    public final boolean t(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.c;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i2) : i2));
        }
        lw1 lw1Var = O;
        if (lw1Var != null) {
            Collections.sort(arrayList, lw1Var);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zK = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view = (View) arrayList.get(i3);
            ew1 ew1Var = ((hw1) view.getLayoutParams()).a;
            if (zK && actionMasked != 0) {
                if (ew1Var != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i == 0) {
                        ew1Var.k(this, view, motionEventObtain);
                    } else if (i == 1) {
                        ew1Var.v(this, view, motionEventObtain);
                    }
                }
            } else if (!zK && ew1Var != null) {
                if (i == 0) {
                    zK = ew1Var.k(this, view, motionEvent);
                } else if (i == 1) {
                    zK = ew1Var.v(this, view, motionEvent);
                }
                if (zK) {
                    this.q = view;
                }
            }
        }
        arrayList.clear();
        return zK;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0082  */
    /* JADX WARN: Code duplicated, block: B:34:0x0088  */
    /* JADX WARN: Code duplicated, block: B:37:0x0093  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:38:0x0097
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void u() {
        /*
            Method dump skipped, instruction units count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.u():void");
    }

    public final void v(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            ew1 ew1Var = ((hw1) childAt.getLayoutParams()).a;
            if (ew1Var != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    ew1Var.k(this, childAt, motionEventObtain);
                } else {
                    ew1Var.v(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((hw1) getChildAt(i2).getLayoutParams()).getClass();
        }
        this.q = null;
        this.k = false;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.H;
    }

    public final void y() {
        WeakHashMap weakHashMap = dl8.a;
        if (!getFitsSystemWindows()) {
            uk8.c(this, null);
            return;
        }
        if (this.J == null) {
            this.J = new jq6(this, 8);
        }
        uk8.c(this, this.J);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new hw1(getContext(), attributeSet);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }
}
