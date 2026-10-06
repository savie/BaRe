package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.fragment.app.a;
import androidx.fragment.app.b0;
import androidx.fragment.app.o;
import com.google.android.material.tabs.TabLayout;
import com.jcraft.jsch.SftpATTRS;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import defpackage.cm8;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.dm8;
import defpackage.ds3;
import defpackage.em8;
import defpackage.f6;
import defpackage.fm8;
import defpackage.gm8;
import defpackage.hm8;
import defpackage.im8;
import defpackage.l0;
import defpackage.ot9;
import defpackage.ow5;
import defpackage.st4;
import defpackage.u51;
import defpackage.uk8;
import defpackage.ur3;
import defpackage.w8;
import defpackage.wv7;
import defpackage.xg;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public static final int[] q0 = {R.attr.layout_gravity};
    public static final xg r0 = new xg(10);
    public static final cm8 s0 = new cm8();
    public int G;
    public float H;
    public float I;
    public int J;
    public boolean K;
    public boolean L;
    public boolean M;
    public int N;
    public boolean O;
    public boolean P;
    public int Q;
    public int R;
    public int S;
    public float T;
    public float U;
    public float V;
    public float W;
    public int a;
    public int a0;
    public final ArrayList b;
    public VelocityTracker b0;
    public final em8 c;
    public int c0;
    public final Rect d;
    public int d0;
    public ow5 e;
    public int e0;
    public int f;
    public int f0;
    public EdgeEffect g0;
    public EdgeEffect h0;
    public boolean i0;
    public boolean j0;
    public int k;
    public int k0;
    public ArrayList l0;
    public gm8 m0;
    public Parcelable n;
    public ArrayList n0;
    public final w8 o0;
    public Scroller p;
    public int p0;
    public boolean q;
    public hm8 r;
    public int t;
    public Drawable x;
    public int y;

    public ViewPager(Context context) {
        super(context);
        this.b = new ArrayList();
        this.c = new em8();
        this.d = new Rect();
        this.k = -1;
        this.n = null;
        this.H = -3.4028235E38f;
        this.I = Float.MAX_VALUE;
        this.N = 1;
        this.a0 = -1;
        this.i0 = true;
        this.o0 = new w8(this, 4);
        this.p0 = 0;
        l();
    }

    public static boolean d(int i, int i2, int i3, View view, boolean z) {
        int i4;
        if (!(view instanceof ViewGroup)) {
            return z ? false : false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int scrollX = view.getScrollX();
        int scrollY = view.getScrollY();
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            int i5 = i2 + scrollX;
            if (i5 < childAt.getLeft() || i5 >= childAt.getRight() || (i4 = i3 + scrollY) < childAt.getTop() || i4 >= childAt.getBottom() || !d(i, i5 - childAt.getLeft(), i4 - childAt.getTop(), childAt, true)) {
            }
        }
        if (z || !view.canScrollHorizontally(-i)) {
        }
        return true;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.L != z) {
            this.L = z;
        }
    }

    public final em8 a(int i, int i2) {
        em8 em8Var = new em8();
        em8Var.b = i;
        b0 b0Var = (b0) this.e;
        ur3 ur3Var = b0Var.b;
        if (b0Var.d == null) {
            ur3Var.getClass();
            b0Var.d = new a(ur3Var);
        }
        long j = i;
        o oVarD = ur3Var.D("android:switcher:" + getId() + ":" + j);
        if (oVarD != null) {
            a aVar = b0Var.d;
            aVar.getClass();
            aVar.b(new ds3(7, oVarD));
        } else {
            oVarD = b0Var.g(i);
            b0Var.d.g(getId(), oVarD, "android:switcher:" + getId() + ":" + j, 1);
        }
        if (oVarD != b0Var.e) {
            oVarD.setMenuVisibility(false);
            if (b0Var.c == 1) {
                b0Var.d.k(oVarD, st4.d);
            } else {
                oVarD.setUserVisibleHint(false);
            }
        }
        em8Var.a = oVarD;
        this.e.getClass();
        em8Var.d = 1.0f;
        ArrayList arrayList = this.b;
        if (i2 < 0 || i2 >= arrayList.size()) {
            arrayList.add(em8Var);
            return em8Var;
        }
        arrayList.add(i2, em8Var);
        return em8Var;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        em8 em8VarI;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (em8VarI = i(childAt)) != null && em8VarI.b == this.f) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        em8 em8VarI;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (em8VarI = i(childAt)) != null && em8VarI.b == this.f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateDefaultLayoutParams();
        }
        fm8 fm8Var = (fm8) layoutParams;
        boolean z = fm8Var.a | (view.getClass().getAnnotation(dm8.class) != null);
        fm8Var.a = z;
        if (!this.K) {
            super.addView(view, i, layoutParams);
        } else if (z) {
            l0.e("Cannot add pager decor view during layout");
        } else {
            fm8Var.d = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    public final void b(gm8 gm8Var) {
        if (this.l0 == null) {
            this.l0 = new ArrayList();
        }
        this.l0.add(gm8Var);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00c5  */
    public final boolean c(int i) {
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(viewFindFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ");
                        sb.append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view ".concat(sb.toString()));
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        boolean z = true;
        boolean zO = false;
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.d;
            if (i == 17) {
                int i2 = h(rect, viewFindNextFocus).left;
                int i3 = h(rect, viewFindFocus).left;
                if (viewFindFocus == null || i2 < i3) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                } else {
                    int i4 = this.f;
                    if (i4 > 0) {
                        this.M = false;
                        w(i4 - 1, 0, true, false);
                    } else {
                        z = false;
                    }
                    zO = z;
                }
            } else if (i == 66) {
                zRequestFocus = (viewFindFocus == null || h(rect, viewFindNextFocus).left > h(rect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : o();
            }
            zO = zRequestFocus;
        } else if (i == 17 || i == 1) {
            int i5 = this.f;
            if (i5 > 0) {
                this.M = false;
                w(i5 - 1, 0, true, false);
            } else {
                z = false;
            }
            zO = z;
        } else if (i == 66 || i == 2) {
            zO = o();
        }
        if (zO) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return zO;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.H));
        }
        return i > 0 && scrollX < ((int) (((float) clientWidth) * this.I));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof fm8) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.q = true;
        if (this.p.isFinished() || !this.p.computeScrollOffset()) {
            e(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.p.getCurrX();
        int currY = this.p.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!p(currX)) {
                this.p.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = dl8.a;
        postInvalidateOnAnimation();
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0061  */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zC;
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (keyEvent.getAction() != 0) {
                zC = false;
            } else {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 21) {
                    if (keyCode == 22) {
                        zC = keyEvent.hasModifiers(2) ? o() : c(66);
                    } else if (keyCode != 61) {
                        zC = false;
                    } else if (keyEvent.hasNoModifiers()) {
                        zC = c(2);
                    } else if (keyEvent.hasModifiers(1)) {
                        zC = c(1);
                    } else {
                        zC = false;
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    int i = this.f;
                    if (i > 0) {
                        this.M = false;
                        w(i - 1, 0, true, false);
                        zC = true;
                    } else {
                        zC = false;
                    }
                } else {
                    zC = c(17);
                }
            }
            if (!zC) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        em8 em8VarI;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (em8VarI = i(childAt)) != null && em8VarI.b == this.f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        ow5 ow5Var;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (ow5Var = this.e) != null && ow5Var.c() > 1)) {
            if (!this.g0.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.H * width);
                this.g0.setSize(height, width);
                zDraw = this.g0.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.h0.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.I + 1.0f)) * width2);
                this.h0.setSize(height2, width2);
                zDraw |= this.h0.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.g0.finish();
            this.h0.finish();
        }
        if (zDraw) {
            WeakHashMap weakHashMap = dl8.a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.x;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e(boolean z) {
        boolean z2 = this.p0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.p.isFinished()) {
                this.p.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.p.getCurrX();
                int currY = this.p.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        p(currX);
                    }
                }
            }
        }
        this.M = false;
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                break;
            }
            em8 em8Var = (em8) arrayList.get(i);
            if (em8Var.c) {
                em8Var.c = false;
                z2 = true;
            }
            i++;
        }
        if (z2) {
            w8 w8Var = this.o0;
            if (!z) {
                w8Var.run();
            } else {
                WeakHashMap weakHashMap = dl8.a;
                postOnAnimation(w8Var);
            }
        }
    }

    public final void f() {
        int iC = this.e.c();
        this.a = iC;
        ArrayList arrayList = this.b;
        boolean z = arrayList.size() < (this.N * 2) + 1 && arrayList.size() < iC;
        int i = this.f;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            em8 em8Var = (em8) arrayList.get(i2);
            ow5 ow5Var = this.e;
            o oVar = em8Var.a;
            ow5Var.getClass();
        }
        Collections.sort(arrayList, r0);
        if (z) {
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                fm8 fm8Var = (fm8) getChildAt(i3).getLayoutParams();
                if (!fm8Var.a) {
                    fm8Var.c = 0.0f;
                }
            }
            w(i, 0, false, true);
            requestLayout();
        }
    }

    public final void g(int i) {
        gm8 gm8Var = this.m0;
        if (gm8Var != null) {
            gm8Var.b(i);
        }
        ArrayList arrayList = this.l0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                gm8 gm8Var2 = (gm8) this.l0.get(i2);
                if (gm8Var2 != null) {
                    gm8Var2.b(i);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        fm8 fm8Var = new fm8(-1, -1);
        fm8Var.c = 0.0f;
        return fm8Var;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        fm8 fm8Var = new fm8(context, attributeSet);
        fm8Var.c = 0.0f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q0);
        fm8Var.b = typedArrayObtainStyledAttributes.getInteger(0, 48);
        typedArrayObtainStyledAttributes.recycle();
        return fm8Var;
    }

    public ow5 getAdapter() {
        return this.e;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f;
    }

    public int getOffscreenPageLimit() {
        return this.N;
    }

    public int getPageMargin() {
        return this.t;
    }

    public final Rect h(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public final em8 i(View view) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return null;
            }
            em8 em8Var = (em8) arrayList.get(i);
            if (this.e.e(view, em8Var.a)) {
                return em8Var;
            }
            i++;
        }
    }

    public final em8 j() {
        em8 em8Var;
        int i;
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.t / clientWidth : 0.0f;
        int i2 = 0;
        boolean z = true;
        em8 em8Var2 = null;
        int i3 = -1;
        float f3 = 0.0f;
        while (true) {
            ArrayList arrayList = this.b;
            if (i2 >= arrayList.size()) {
                break;
            }
            em8 em8Var3 = (em8) arrayList.get(i2);
            if (z || em8Var3.b == (i = i3 + 1)) {
                em8Var = em8Var3;
            } else {
                float f4 = f + f3 + f2;
                em8 em8Var4 = this.c;
                em8Var4.e = f4;
                em8Var4.b = i;
                this.e.getClass();
                em8Var4.d = 1.0f;
                i2--;
                em8Var = em8Var4;
            }
            f = em8Var.e;
            float f5 = em8Var.d + f + f2;
            if (!z && scrollX < f) {
                break;
            }
            if (scrollX < f5 || i2 == arrayList.size() - 1) {
                return em8Var;
            }
            int i4 = em8Var.b;
            float f6 = em8Var.d;
            i2++;
            em8 em8Var5 = em8Var;
            i3 = i4;
            f3 = f6;
            em8Var2 = em8Var5;
            z = false;
        }
        return em8Var2;
    }

    public final em8 k(int i) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i2 >= arrayList.size()) {
                return null;
            }
            em8 em8Var = (em8) arrayList.get(i2);
            if (em8Var.b == i) {
                return em8Var;
            }
            i2++;
        }
    }

    public final void l() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.p = new Scroller(context, s0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.S = viewConfiguration.getScaledPagingTouchSlop();
        this.c0 = (int) (400.0f * f);
        this.d0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.g0 = new EdgeEffect(context);
        this.h0 = new EdgeEffect(context);
        this.e0 = (int) (25.0f * f);
        this.f0 = (int) (2.0f * f);
        this.Q = (int) (f * 16.0f);
        dl8.n(this, new u51(this, 2));
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        ot9 ot9Var = new ot9();
        ot9Var.b = this;
        ot9Var.a = new Rect();
        uk8.c(this, ot9Var);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0065  */
    public final void m(float f, int i, int i2) {
        int iMax;
        int width;
        int left;
        if (this.k0 > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                fm8 fm8Var = (fm8) childAt.getLayoutParams();
                if (fm8Var.a) {
                    int i4 = fm8Var.b & 7;
                    if (i4 != 1) {
                        if (i4 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i4 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i5 = iMax;
                    width = paddingLeft;
                    paddingLeft = i5;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        gm8 gm8Var = this.m0;
        if (gm8Var != null) {
            gm8Var.c(i, f);
        }
        ArrayList arrayList = this.l0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                gm8 gm8Var2 = (gm8) this.l0.get(i6);
                if (gm8Var2 != null) {
                    gm8Var2.c(i, f);
                }
            }
        }
        this.j0 = true;
    }

    public final void n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.a0) {
            int i = actionIndex == 0 ? 1 : 0;
            this.T = motionEvent.getX(i);
            this.a0 = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.b0;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean o() {
        ow5 ow5Var = this.e;
        if (ow5Var == null || this.f >= ow5Var.c() - 1) {
            return false;
        }
        int i = this.f + 1;
        this.M = false;
        w(i, 0, true, false);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.i0 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.o0);
        Scroller scroller = this.p;
        if (scroller != null && !scroller.isFinished()) {
            this.p.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        float f;
        super.onDraw(canvas);
        if (this.t <= 0 || this.x == null) {
            return;
        }
        ArrayList arrayList = this.b;
        if (arrayList.size() <= 0 || this.e == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f2 = width;
        float f3 = this.t / f2;
        int i2 = 0;
        em8 em8Var = (em8) arrayList.get(0);
        float f4 = em8Var.e;
        int size = arrayList.size();
        int i3 = em8Var.b;
        int i4 = ((em8) arrayList.get(size - 1)).b;
        while (i3 < i4) {
            while (true) {
                i = em8Var.b;
                if (i3 <= i || i2 >= size) {
                    break;
                }
                i2++;
                em8Var = (em8) arrayList.get(i2);
            }
            if (i3 == i) {
                float f5 = em8Var.e;
                float f6 = em8Var.d;
                f = (f5 + f6) * f2;
                f4 = f5 + f6 + f3;
            } else {
                this.e.getClass();
                f = (f4 + 1.0f) * f2;
                f4 = 1.0f + f3 + f4;
            }
            if (this.t + f > scrollX) {
                this.x.setBounds(Math.round(f), this.y, Math.round(this.t + f), this.G);
                this.x.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
            i3++;
            arrayList = arrayList;
            scrollX = scrollX;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            u();
            return false;
        }
        if (action != 0) {
            if (this.O) {
                return true;
            }
            if (this.P) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.V = x;
            this.T = x;
            float y = motionEvent.getY();
            this.W = y;
            this.U = y;
            this.a0 = motionEvent.getPointerId(0);
            this.P = false;
            this.q = true;
            this.p.computeScrollOffset();
            if (this.p0 != 2 || Math.abs(this.p.getFinalX() - this.p.getCurrX()) <= this.f0) {
                e(false);
                this.O = false;
            } else {
                this.p.abortAnimation();
                this.M = false;
                r();
                this.O = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.a0;
            if (i != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f = x2 - this.T;
                float fAbs = Math.abs(f);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.W);
                if (f != 0.0f) {
                    float f2 = this.T;
                    if ((f2 >= this.R || f <= 0.0f) && ((f2 <= getWidth() - this.R || f >= 0.0f) && d((int) f, (int) x2, (int) y2, this, false))) {
                        this.T = x2;
                        this.U = y2;
                        this.P = true;
                        return false;
                    }
                }
                float f3 = this.S;
                if (fAbs > f3 && fAbs * 0.5f > fAbs2) {
                    this.O = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    float f4 = this.V;
                    float f5 = this.S;
                    this.T = f > 0.0f ? f4 + f5 : f4 - f5;
                    this.U = y2;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f3) {
                    this.P = true;
                }
                if (this.O && q(x2)) {
                    WeakHashMap weakHashMap = dl8.a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            n(motionEvent);
        }
        if (this.b0 == null) {
            this.b0 = VelocityTracker.obtain();
        }
        this.b0.addMovement(motionEvent);
        return this.O;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        em8 em8VarI;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                fm8 fm8Var = (fm8) childAt.getLayoutParams();
                if (fm8Var.a) {
                    int i9 = fm8Var.b;
                    int i10 = i9 & 7;
                    int i11 = i9 & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
                    if (i10 != 1) {
                        if (i10 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i10 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i5 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i11 != 16) {
                            if (i11 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i11 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i6 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i12 = paddingLeft + scrollX;
                            childAt.layout(i12, paddingTop, childAt.getMeasuredWidth() + i12, childAt.getMeasuredHeight() + paddingTop);
                            i7++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i6 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i13 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i13;
                        int i14 = paddingLeft + scrollX;
                        childAt.layout(i14, paddingTop, childAt.getMeasuredWidth() + i14, childAt.getMeasuredHeight() + paddingTop);
                        i7++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i5 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i15 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i15;
                    if (i11 != 16) {
                        if (i11 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i11 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i6 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i16 = paddingLeft + scrollX;
                        childAt.layout(i16, paddingTop, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + paddingTop);
                        i7++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i6 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i17 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i17;
                    int i18 = paddingLeft + scrollX;
                    childAt.layout(i18, paddingTop, childAt.getMeasuredWidth() + i18, childAt.getMeasuredHeight() + paddingTop);
                    i7++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i19 = (i5 - paddingLeft) - paddingRight;
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt2 = getChildAt(i20);
            if (childAt2.getVisibility() != 8) {
                fm8 fm8Var2 = (fm8) childAt2.getLayoutParams();
                if (!fm8Var2.a && (em8VarI = i(childAt2)) != null) {
                    float f = i19;
                    int i21 = ((int) (em8VarI.e * f)) + paddingLeft;
                    if (fm8Var2.d) {
                        fm8Var2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f * fm8Var2.c), 1073741824), View.MeasureSpec.makeMeasureSpec((i6 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i21, paddingTop, childAt2.getMeasuredWidth() + i21, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.y = paddingTop;
        this.G = i6 - paddingBottom;
        this.k0 = i7;
        if (this.i0) {
            z2 = false;
            v(this.f, 0, false, false);
        } else {
            z2 = false;
        }
        this.i0 = z2;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        fm8 fm8Var;
        fm8 fm8Var2;
        int i3;
        setMeasuredDimension(View.getDefaultSize(0, i), View.getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.R = Math.min(measuredWidth / 10, this.Q);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i4 = 0;
        while (true) {
            boolean z = true;
            int i5 = 1073741824;
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && (fm8Var2 = (fm8) childAt.getLayoutParams()) != null && fm8Var2.a) {
                int i6 = fm8Var2.b;
                int i7 = i6 & 7;
                int i8 = i6 & OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS;
                boolean z2 = i8 == 48 || i8 == 80;
                if (i7 != 3 && i7 != 5) {
                    z = false;
                }
                int i9 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                if (z2) {
                    i3 = Integer.MIN_VALUE;
                    i9 = 1073741824;
                } else {
                    i3 = z ? 1073741824 : Integer.MIN_VALUE;
                }
                int i10 = ((ViewGroup.LayoutParams) fm8Var2).width;
                if (i10 != -2) {
                    if (i10 == -1) {
                        i10 = paddingLeft;
                    }
                    i9 = 1073741824;
                } else {
                    i10 = paddingLeft;
                }
                int i11 = ((ViewGroup.LayoutParams) fm8Var2).height;
                if (i11 == -2) {
                    i11 = measuredHeight;
                    i5 = i3;
                } else if (i11 == -1) {
                    i11 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i5));
                if (z2) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i4++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.J = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.K = true;
        r();
        this.K = false;
        int childCount2 = getChildCount();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8 && ((fm8Var = (fm8) childAt2.getLayoutParams()) == null || !fm8Var.a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * fm8Var.c), 1073741824), this.J);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        em8 em8VarI;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (em8VarI = i(childAt)) != null && em8VarI.b == this.f && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof im8)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        im8 im8Var = (im8) parcelable;
        super.onRestoreInstanceState(im8Var.a);
        ow5 ow5Var = this.e;
        int i = im8Var.c;
        if (ow5Var != null) {
            w(i, 0, false, true);
        } else {
            this.k = i;
            this.n = im8Var.d;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        im8 im8Var = new im8(super.onSaveInstanceState());
        im8Var.c = this.f;
        ow5 ow5Var = this.e;
        if (ow5Var != null) {
            ow5Var.getClass();
            im8Var.d = null;
        }
        return im8Var;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.t;
            t(i, i3, i5, i5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ow5 ow5Var;
        boolean zU = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (ow5Var = this.e) == null || ow5Var.c() == 0) {
            return false;
        }
        if (this.b0 == null) {
            this.b0 = VelocityTracker.obtain();
        }
        this.b0.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.p.abortAnimation();
            this.M = false;
            r();
            float x = motionEvent.getX();
            this.V = x;
            this.T = x;
            float y = motionEvent.getY();
            this.W = y;
            this.U = y;
            this.a0 = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.T = motionEvent.getX(actionIndex);
                        this.a0 = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        n(motionEvent);
                        this.T = motionEvent.getX(motionEvent.findPointerIndex(this.a0));
                    }
                } else if (this.O) {
                    v(this.f, 0, true, false);
                    zU = u();
                }
            } else if (!this.O) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.a0);
                if (iFindPointerIndex == -1) {
                    zU = u();
                } else {
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x2 - this.T);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y2 - this.U);
                    if (fAbs > this.S && fAbs > fAbs2) {
                        this.O = true;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        float f = this.V;
                        float f2 = x2 - f;
                        int i = this.S;
                        this.T = f2 > 0.0f ? f + i : f - i;
                        this.U = y2;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.O) {
                        zU = q(motionEvent.getX(motionEvent.findPointerIndex(this.a0)));
                    }
                }
            } else if (this.O) {
                zU = q(motionEvent.getX(motionEvent.findPointerIndex(this.a0)));
            }
        } else if (this.O) {
            VelocityTracker velocityTracker = this.b0;
            velocityTracker.computeCurrentVelocity(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, this.d0);
            int xVelocity = (int) velocityTracker.getXVelocity(this.a0);
            this.M = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            em8 em8VarJ = j();
            float f3 = clientWidth;
            float f4 = this.t / f3;
            int iMax = em8VarJ.b;
            float f5 = ((scrollX / f3) - em8VarJ.e) / (em8VarJ.d + f4);
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.a0)) - this.V)) <= this.e0 || Math.abs(xVelocity) <= this.c0) {
                iMax += (int) (f5 + (iMax >= this.f ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                iMax++;
            }
            ArrayList arrayList = this.b;
            if (arrayList.size() > 0) {
                iMax = Math.max(((em8) arrayList.get(0)).b, Math.min(iMax, ((em8) dj7.e(arrayList, 1)).b));
            }
            w(iMax, xVelocity, true, true);
            zU = u();
        }
        if (zU) {
            WeakHashMap weakHashMap = dl8.a;
            postInvalidateOnAnimation();
        }
        return true;
    }

    public final boolean p(int i) {
        if (this.b.size() == 0) {
            if (!this.i0) {
                this.j0 = false;
                m(0.0f, 0, 0);
                if (!this.j0) {
                    l0.e("onPageScrolled did not call superclass implementation");
                    return false;
                }
            }
            return false;
        }
        em8 em8VarJ = j();
        int clientWidth = getClientWidth();
        int i2 = this.t;
        int i3 = clientWidth + i2;
        float f = clientWidth;
        int i4 = em8VarJ.b;
        float f2 = ((i / f) - em8VarJ.e) / (em8VarJ.d + (i2 / f));
        this.j0 = false;
        m(f2, i4, (int) (i3 * f2));
        if (this.j0) {
            return true;
        }
        l0.e("onPageScrolled did not call superclass implementation");
        return false;
    }

    public final boolean q(float f) {
        boolean z;
        boolean z2;
        float f2 = this.T - f;
        this.T = f;
        float scrollX = getScrollX() + f2;
        float clientWidth = getClientWidth();
        float f3 = this.H * clientWidth;
        float f4 = this.I * clientWidth;
        ArrayList arrayList = this.b;
        boolean z3 = false;
        em8 em8Var = (em8) arrayList.get(0);
        em8 em8Var2 = (em8) dj7.e(arrayList, 1);
        if (em8Var.b != 0) {
            f3 = em8Var.e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (em8Var2.b != this.e.c() - 1) {
            f4 = em8Var2.e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f3) {
            if (z) {
                this.g0.onPull(Math.abs(f3 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z2) {
                this.h0.onPull(Math.abs(scrollX - f4) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.T = (scrollX - i) + this.T;
        scrollTo(i, getScrollY());
        p(i);
        return z3;
    }

    public final void r() {
        s(this.f);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.K) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c8 A[PHI: r7 r11 r16 r17
      0x00c8: PHI (r7v17 int) = (r7v16 int), (r7v4 int), (r7v19 int) binds: [B:61:0x00ed, B:58:0x00d8, B:50:0x00bf] A[DONT_GENERATE, DONT_INLINE]
      0x00c8: PHI (r11v34 int) = (r11v1 int), (r11v33 int), (r11v36 int) binds: [B:61:0x00ed, B:58:0x00d8, B:50:0x00bf] A[DONT_GENERATE, DONT_INLINE]
      0x00c8: PHI (r16v4 float) = (r16v2 float), (r16v3 float), (r16v1 float) binds: [B:61:0x00ed, B:58:0x00d8, B:50:0x00bf] A[DONT_GENERATE, DONT_INLINE]
      0x00c8: PHI (r17v3 float) = (r17v2 float), (r17v2 float), (r17v5 float) binds: [B:61:0x00ed, B:58:0x00d8, B:50:0x00bf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:87:0x014c A[PHI: r3 r13
      0x014c: PHI (r3v23 float) = (r3v21 float), (r3v22 float), (r3v20 float) binds: [B:95:0x0173, B:92:0x015d, B:85:0x0143] A[DONT_GENERATE, DONT_INLINE]
      0x014c: PHI (r13v23 int) = (r13v21 int), (r13v22 int), (r13v20 int) binds: [B:95:0x0173, B:92:0x015d, B:85:0x0143] A[DONT_GENERATE, DONT_INLINE]] */
    public final void s(int i) {
        em8 em8VarK;
        String hexString;
        ArrayList arrayList;
        em8 em8VarA;
        float f;
        em8 em8VarI;
        em8 em8VarI2;
        float paddingLeft;
        int i2;
        int i3;
        em8 em8Var;
        em8 em8Var2;
        float f2;
        int i4 = this.f;
        if (i4 != i) {
            em8VarK = k(i4);
            this.f = i;
        } else {
            em8VarK = null;
        }
        if (this.e == null || this.M || getWindowToken() == null) {
            return;
        }
        this.e.f(this);
        int i5 = this.N;
        int iMax = Math.max(0, this.f - i5);
        int iC = this.e.c();
        int iMin = Math.min(iC - 1, this.f + i5);
        if (iC != this.a) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            StringBuilder sb = new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ");
            xs1.s(sb, this.a, ", found: ", iC, " Pager id: ");
            sb.append(hexString);
            sb.append(" Pager class: ");
            sb.append(getClass());
            sb.append(" Problematic adapter: ");
            f6.l(sb, this.e.getClass());
            return;
        }
        int i6 = 0;
        while (true) {
            arrayList = this.b;
            if (i6 < arrayList.size()) {
                em8VarA = (em8) arrayList.get(i6);
                int i7 = em8VarA.b;
                int i8 = this.f;
                if (i7 >= i8) {
                    if (i7 != i8) {
                        break;
                    } else {
                        break;
                    }
                }
                i6++;
            }
            em8VarA = null;
            break;
        }
        if (em8VarA == null && iC > 0) {
            em8VarA = a(this.f, i6);
        }
        if (em8VarA != null) {
            int i9 = i6 - 1;
            em8 em8Var3 = i9 >= 0 ? (em8) arrayList.get(i9) : null;
            int clientWidth = getClientWidth();
            float f3 = 2.0f;
            if (clientWidth <= 0) {
                f = 0.0f;
                paddingLeft = 0.0f;
            } else {
                f = 0.0f;
                paddingLeft = (getPaddingLeft() / clientWidth) + (2.0f - em8VarA.d);
            }
            int i10 = this.f - 1;
            float f4 = f;
            while (i10 >= 0) {
                if (f4 < paddingLeft || i10 >= iMax) {
                    f2 = f3;
                    if (em8Var3 == null || i10 != em8Var3.b) {
                        f4 += a(i10, i9 + 1).d;
                        i6++;
                        if (i9 >= 0) {
                            em8Var3 = (em8) arrayList.get(i9);
                        } else {
                            em8Var3 = null;
                        }
                    } else {
                        f4 += em8Var3.d;
                        i9--;
                        if (i9 >= 0) {
                            em8Var3 = (em8) arrayList.get(i9);
                        } else {
                            em8Var3 = null;
                        }
                    }
                } else {
                    if (em8Var3 == null) {
                        break;
                    }
                    f2 = f3;
                    if (i10 == em8Var3.b && !em8Var3.c) {
                        arrayList.remove(i9);
                        this.e.a(em8Var3.a);
                        i9--;
                        i6--;
                        if (i9 >= 0) {
                            em8Var3 = (em8) arrayList.get(i9);
                        } else {
                            em8Var3 = null;
                        }
                    }
                }
                i10--;
                f3 = f2;
            }
            float f5 = f3;
            float f6 = em8VarA.d;
            int i11 = i6 + 1;
            if (f6 < f5) {
                em8 em8Var4 = i11 < arrayList.size() ? (em8) arrayList.get(i11) : null;
                float paddingRight = clientWidth <= 0 ? f : (getPaddingRight() / clientWidth) + f5;
                int i12 = i11;
                for (int i13 = this.f + 1; i13 < iC; i13++) {
                    if (f6 >= paddingRight && i13 > iMin) {
                        if (em8Var4 == null) {
                            break;
                        }
                        if (i13 == em8Var4.b && !em8Var4.c) {
                            arrayList.remove(i12);
                            this.e.a(em8Var4.a);
                            if (i12 < arrayList.size()) {
                                em8Var4 = (em8) arrayList.get(i12);
                            } else {
                                em8Var4 = null;
                            }
                        }
                    } else if (em8Var4 == null || i13 != em8Var4.b) {
                        em8 em8VarA2 = a(i13, i12);
                        i12++;
                        f6 += em8VarA2.d;
                        if (i12 < arrayList.size()) {
                            em8Var4 = (em8) arrayList.get(i12);
                        } else {
                            em8Var4 = null;
                        }
                    } else {
                        f6 += em8Var4.d;
                        i12++;
                        if (i12 < arrayList.size()) {
                            em8Var4 = (em8) arrayList.get(i12);
                        } else {
                            em8Var4 = null;
                        }
                    }
                }
            }
            int iC2 = this.e.c();
            int clientWidth2 = getClientWidth();
            float f7 = clientWidth2 > 0 ? this.t / clientWidth2 : f;
            if (em8VarK != null) {
                int i14 = em8VarK.b;
                int i15 = em8VarA.b;
                if (i14 < i15) {
                    float f8 = em8VarK.e + em8VarK.d + f7;
                    int i16 = i14 + 1;
                    int i17 = 0;
                    while (i16 <= em8VarA.b && i17 < arrayList.size()) {
                        Object obj = arrayList.get(i17);
                        while (true) {
                            em8Var2 = (em8) obj;
                            if (i16 <= em8Var2.b || i17 >= arrayList.size() - 1) {
                                break;
                            }
                            i17++;
                            obj = arrayList.get(i17);
                        }
                        while (i16 < em8Var2.b) {
                            this.e.getClass();
                            f8 += 1.0f + f7;
                            i16++;
                        }
                        em8Var2.e = f8;
                        f8 += em8Var2.d + f7;
                        i16++;
                    }
                } else if (i14 > i15) {
                    int size = arrayList.size() - 1;
                    float f9 = em8VarK.e;
                    int i18 = i14 - 1;
                    while (i18 >= em8VarA.b && size >= 0) {
                        Object obj2 = arrayList.get(size);
                        while (true) {
                            em8Var = (em8) obj2;
                            if (i18 >= em8Var.b || size <= 0) {
                                break;
                            }
                            size--;
                            obj2 = arrayList.get(size);
                        }
                        while (i18 > em8Var.b) {
                            this.e.getClass();
                            f9 -= 1.0f + f7;
                            i18--;
                        }
                        f9 -= em8Var.d + f7;
                        em8Var.e = f9;
                        i18--;
                    }
                }
            }
            int size2 = arrayList.size();
            float f10 = em8VarA.e;
            int i19 = em8VarA.b;
            int i20 = i19 - 1;
            this.H = i19 == 0 ? f10 : -3.4028235E38f;
            int i21 = iC2 - 1;
            this.I = i19 == i21 ? (em8VarA.d + f10) - 1.0f : Float.MAX_VALUE;
            int i22 = i6 - 1;
            while (i22 >= 0) {
                em8 em8Var5 = (em8) arrayList.get(i22);
                while (true) {
                    i3 = em8Var5.b;
                    if (i20 <= i3) {
                        break;
                    }
                    i20--;
                    this.e.getClass();
                    f10 -= 1.0f + f7;
                }
                f10 -= em8Var5.d + f7;
                em8Var5.e = f10;
                if (i3 == 0) {
                    this.H = f10;
                }
                i22--;
                i20--;
            }
            float f11 = em8VarA.e + em8VarA.d + f7;
            int i23 = em8VarA.b + 1;
            while (i11 < size2) {
                em8 em8Var6 = (em8) arrayList.get(i11);
                while (true) {
                    i2 = em8Var6.b;
                    if (i23 >= i2) {
                        break;
                    }
                    i23++;
                    this.e.getClass();
                    f11 += 1.0f + f7;
                }
                if (i2 == i21) {
                    this.I = (em8Var6.d + f11) - 1.0f;
                }
                em8Var6.e = f11;
                f11 += em8Var6.d + f7;
                i11++;
                i23++;
            }
            ow5 ow5Var = this.e;
            o oVar = em8VarA.a;
            b0 b0Var = (b0) ow5Var;
            ur3 ur3Var = b0Var.b;
            int i24 = b0Var.c;
            o oVar2 = b0Var.e;
            if (oVar != oVar2) {
                if (oVar2 != null) {
                    oVar2.setMenuVisibility(false);
                    if (i24 == 1) {
                        if (b0Var.d == null) {
                            ur3Var.getClass();
                            b0Var.d = new a(ur3Var);
                        }
                        b0Var.d.k(b0Var.e, st4.d);
                    } else {
                        b0Var.e.setUserVisibleHint(false);
                    }
                }
                oVar.setMenuVisibility(true);
                if (i24 == 1) {
                    if (b0Var.d == null) {
                        ur3Var.getClass();
                        b0Var.d = new a(ur3Var);
                    }
                    b0Var.d.k(oVar, st4.e);
                } else {
                    oVar.setUserVisibleHint(true);
                }
                b0Var.e = oVar;
            }
        } else {
            f = 0.0f;
        }
        this.e.b();
        int childCount = getChildCount();
        for (int i25 = 0; i25 < childCount; i25++) {
            View childAt = getChildAt(i25);
            fm8 fm8Var = (fm8) childAt.getLayoutParams();
            fm8Var.getClass();
            if (!fm8Var.a && fm8Var.c == f && (em8VarI2 = i(childAt)) != null) {
                fm8Var.c = em8VarI2.d;
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == null) {
                em8VarI = null;
                break;
            }
            while (true) {
                Object parent = viewFindFocus.getParent();
                if (parent == this) {
                    em8VarI = i(viewFindFocus);
                    break;
                } else {
                    if (parent == null || !(parent instanceof View)) {
                        em8VarI = null;
                        break;
                    }
                    viewFindFocus = (View) parent;
                }
            }
            if (em8VarI == null || em8VarI.b != this.f) {
                for (int i26 = 0; i26 < getChildCount(); i26++) {
                    View childAt2 = getChildAt(i26);
                    em8 em8VarI3 = i(childAt2);
                    if (em8VarI3 != null && em8VarI3.b == this.f && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    public void setAdapter(ow5 ow5Var) {
        ArrayList arrayList = this.b;
        ow5 ow5Var2 = this.e;
        if (ow5Var2 != null) {
            synchronized (ow5Var2) {
            }
            this.e.f(this);
            for (int i = 0; i < arrayList.size(); i++) {
                em8 em8Var = (em8) arrayList.get(i);
                ow5 ow5Var3 = this.e;
                int i2 = em8Var.b;
                ow5Var3.a(em8Var.a);
            }
            this.e.b();
            arrayList.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((fm8) getChildAt(i3).getLayoutParams()).a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.f = 0;
            scrollTo(0, 0);
        }
        this.e = ow5Var;
        this.a = 0;
        if (ow5Var != null) {
            if (this.r == null) {
                this.r = new hm8(this);
            }
            synchronized (this.e) {
            }
            this.M = false;
            boolean z = this.i0;
            this.i0 = true;
            this.a = this.e.c();
            if (this.k >= 0) {
                this.e.getClass();
                w(this.k, 0, false, true);
                this.k = -1;
            } else if (z) {
                requestLayout();
            } else {
                r();
            }
        }
        ArrayList arrayList2 = this.n0;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.n0.size();
        for (int i4 = 0; i4 < size; i4++) {
            wv7 wv7Var = (wv7) this.n0.get(i4);
            TabLayout tabLayout = wv7Var.b;
            if (tabLayout.j0 == this) {
                tabLayout.l(ow5Var, wv7Var.a);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.M = false;
        w(i, 0, !this.i0, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.N) {
            this.N = i;
            r();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(gm8 gm8Var) {
        this.m0 = gm8Var;
    }

    public void setPageMargin(int i) {
        int i2 = this.t;
        this.t = i;
        int width = getWidth();
        t(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.x = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.p0 == i) {
            return;
        }
        this.p0 = i;
        gm8 gm8Var = this.m0;
        if (gm8Var != null) {
            gm8Var.a(i);
        }
        ArrayList arrayList = this.l0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                gm8 gm8Var2 = (gm8) this.l0.get(i2);
                if (gm8Var2 != null) {
                    gm8Var2.a(i);
                }
            }
        }
    }

    public final void t(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.b.isEmpty()) {
            if (!this.p.isFinished()) {
                this.p.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
                return;
            }
        }
        em8 em8VarK = k(this.f);
        int iMin = (int) ((em8VarK != null ? Math.min(em8VarK.e, this.I) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            e(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public final boolean u() {
        this.a0 = -1;
        this.O = false;
        this.P = false;
        VelocityTracker velocityTracker = this.b0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.b0 = null;
        }
        this.g0.onRelease();
        this.h0.onRelease();
        return this.g0.isFinished() || this.h0.isFinished();
    }

    public final void v(int i, int i2, boolean z, boolean z2) {
        int iMax;
        int scrollX;
        int iAbs;
        em8 em8VarK = k(i);
        if (em8VarK != null) {
            iMax = (int) (Math.max(this.H, Math.min(em8VarK.e, this.I)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (!z) {
            if (z2) {
                g(i);
            }
            e(false);
            scrollTo(iMax, 0);
            p(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.p;
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                boolean z3 = this.q;
                Scroller scroller2 = this.p;
                scrollX = z3 ? scroller2.getCurrX() : scroller2.getStartX();
                this.p.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i3 = scrollX;
            int scrollY = getScrollY();
            int i4 = iMax - i3;
            int i5 = 0 - scrollY;
            if (i4 == 0 && i5 == 0) {
                e(false);
                r();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i6 = clientWidth / 2;
                float f = clientWidth;
                float f2 = i6;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i4) * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
                int iAbs2 = Math.abs(i2);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    this.e.getClass();
                    iAbs = (int) (((Math.abs(i4) / ((f * 1.0f) + this.t)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.q = false;
                this.p.startScroll(i3, scrollY, i4, i5, iMin);
                WeakHashMap weakHashMap = dl8.a;
                postInvalidateOnAnimation();
            }
        }
        if (z2) {
            g(i);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.x;
    }

    public final void w(int i, int i2, boolean z, boolean z2) {
        ow5 ow5Var = this.e;
        if (ow5Var == null || ow5Var.c() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.b;
        if (!z2 && this.f == i && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.e.c()) {
            i = this.e.c() - 1;
        }
        int i3 = this.N;
        int i4 = this.f;
        if (i > i4 + i3 || i < i4 - i3) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                ((em8) arrayList.get(i5)).c = true;
            }
        }
        boolean z3 = this.f != i;
        if (!this.i0) {
            s(i);
            v(i, i2, z, z3);
        } else {
            this.f = i;
            if (z3) {
                g(i);
            }
            requestLayout();
        }
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getDrawable(i));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new ArrayList();
        this.c = new em8();
        this.d = new Rect();
        this.k = -1;
        this.n = null;
        this.H = -3.4028235E38f;
        this.I = Float.MAX_VALUE;
        this.N = 1;
        this.a0 = -1;
        this.i0 = true;
        this.o0 = new w8(this, 4);
        this.p0 = 0;
        l();
    }
}
