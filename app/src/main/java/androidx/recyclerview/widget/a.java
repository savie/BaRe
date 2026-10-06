package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.jcraft.jsch.SftpATTRS;
import defpackage.av4;
import defpackage.bh6;
import defpackage.c6;
import defpackage.dg7;
import defpackage.dl8;
import defpackage.ee6;
import defpackage.eh6;
import defpackage.fh6;
import defpackage.hg6;
import defpackage.i61;
import defpackage.j61;
import defpackage.jq6;
import defpackage.l0;
import defpackage.l39;
import defpackage.m6;
import defpackage.ng6;
import defpackage.om5;
import defpackage.pg6;
import defpackage.qg6;
import defpackage.rl8;
import defpackage.ru3;
import defpackage.vg6;
import defpackage.z28;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public int G;
    public j61 a;
    public RecyclerView b;
    public final l39 c;
    public final l39 d;
    public av4 e;
    public boolean f;
    public boolean k;
    public final boolean n;
    public final boolean p;
    public int q;
    public boolean r;
    public int t;
    public int x;
    public int y;

    public a() {
        z28 z28Var = new z28(this, 14);
        jq6 jq6Var = new jq6(this, 16);
        this.c = new l39(z28Var);
        this.d = new l39(jq6Var);
        this.f = false;
        this.k = false;
        this.n = true;
        this.p = true;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:14:0x0022  */
    /* JADX WARN: Code duplicated, block: B:5:0x0010  */
    public static int H(boolean z, int i, int i2, int i3, int i4) {
        int iMax = Math.max(0, i - i3);
        if (z) {
            if (i4 >= 0) {
                i2 = 1073741824;
            } else if (i4 != -1 || (i2 != Integer.MIN_VALUE && (i2 == 0 || i2 != 1073741824))) {
                i2 = 0;
                i4 = 0;
            } else {
                i4 = iMax;
            }
        } else if (i4 >= 0) {
            i2 = 1073741824;
        } else if (i4 == -1) {
            i4 = iMax;
        } else if (i4 != -2) {
            i2 = 0;
            i4 = 0;
        } else if (i2 == Integer.MIN_VALUE || i2 == 1073741824) {
            i4 = iMax;
            i2 = Integer.MIN_VALUE;
        } else {
            i4 = iMax;
            i2 = 0;
        }
        return View.MeasureSpec.makeMeasureSpec(i4, i2);
    }

    public static int J(View view) {
        return view.getBottom() + ((qg6) view.getLayoutParams()).b.bottom;
    }

    public static int L(View view) {
        return view.getLeft() - ((qg6) view.getLayoutParams()).b.left;
    }

    public static int M(View view) {
        Rect rect = ((qg6) view.getLayoutParams()).b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    public static int N(View view) {
        Rect rect = ((qg6) view.getLayoutParams()).b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    public static int O(View view) {
        return view.getRight() + ((qg6) view.getLayoutParams()).b.right;
    }

    public static int P(View view) {
        return view.getTop() - ((qg6) view.getLayoutParams()).b.top;
    }

    public static int R(View view) {
        return ((qg6) view.getLayoutParams()).a.c();
    }

    public static pg6 S(Context context, AttributeSet attributeSet, int i, int i2) {
        pg6 pg6Var = new pg6();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ee6.a, i, i2);
        pg6Var.a = typedArrayObtainStyledAttributes.getInt(0, 1);
        pg6Var.b = typedArrayObtainStyledAttributes.getInt(10, 1);
        pg6Var.c = typedArrayObtainStyledAttributes.getBoolean(9, false);
        pg6Var.d = typedArrayObtainStyledAttributes.getBoolean(11, false);
        typedArrayObtainStyledAttributes.recycle();
        return pg6Var;
    }

    public static boolean X(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    public static void Y(View view, int i, int i2, int i3, int i4) {
        qg6 qg6Var = (qg6) view.getLayoutParams();
        Rect rect = qg6Var.b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) qg6Var).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) qg6Var).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) qg6Var).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) qg6Var).bottomMargin);
    }

    public static int r(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? Math.max(i2, i3) : size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    public final void A(vg6 vg6Var) {
        for (int iG = G() - 1; iG >= 0; iG--) {
            View viewF = F(iG);
            fh6 fh6VarL = RecyclerView.L(viewF);
            if (fh6VarL.p()) {
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "ignoring view " + fh6VarL);
                }
            } else if (!fh6VarL.g() || fh6VarL.i() || this.b.x.b) {
                F(iG);
                this.a.c(iG);
                vg6Var.k(viewF);
                this.b.k.e(fh6VarL);
            } else {
                if (F(iG) != null) {
                    this.a.j(iG);
                }
                vg6Var.j(fh6VarL);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
    public boolean A0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = this.y - getPaddingRight();
        int paddingBottom = this.G - getPaddingBottom();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int iWidth = rect.width() + left;
        int iHeight = rect.height() + top;
        int i = left - paddingLeft;
        int iMin = Math.min(0, i);
        int i2 = top - paddingTop;
        int iMin2 = Math.min(0, i2);
        int i3 = iWidth - paddingRight;
        int iMax = Math.max(0, i3);
        int iMax2 = Math.max(0, iHeight - paddingBottom);
        if (this.b.getLayoutDirection() != 1) {
            if (iMin == 0) {
                iMin = Math.min(i, iMax);
            }
            iMax = iMin;
        } else if (iMax == 0) {
            iMax = Math.max(iMin, i3);
        }
        if (iMin2 == 0) {
            iMin2 = Math.min(i2, iMax2);
        }
        int[] iArr = {iMax, iMin2};
        int i4 = iArr[0];
        int i5 = iArr[1];
        if (z2) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild != null) {
                int paddingLeft2 = getPaddingLeft();
                int paddingTop2 = getPaddingTop();
                int paddingRight2 = this.y - getPaddingRight();
                int paddingBottom2 = this.G - getPaddingBottom();
                Rect rect2 = this.b.q;
                K(rect2, focusedChild);
                if (rect2.left - i4 < paddingRight2 && rect2.right - i4 > paddingLeft2 && rect2.top - i5 < paddingBottom2 && rect2.bottom - i5 > paddingTop2) {
                    if (i4 == 0) {
                    }
                    if (z) {
                        recyclerView.scrollBy(i4, i5);
                        return true;
                    }
                    recyclerView.h0(i4, i5, false);
                    return true;
                }
            }
        } else if (i4 == 0 || i5 != 0) {
            if (z) {
                recyclerView.scrollBy(i4, i5);
                return true;
            }
            recyclerView.h0(i4, i5, false);
            return true;
        }
        return false;
    }

    public View B(int i) {
        int iG = G();
        for (int i2 = 0; i2 < iG; i2++) {
            View viewF = F(i2);
            fh6 fh6VarL = RecyclerView.L(viewF);
            if (fh6VarL != null && fh6VarL.c() == i && !fh6VarL.p() && (this.b.x0.g || !fh6VarL.i())) {
                return viewF;
            }
        }
        return null;
    }

    public final void B0() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public abstract qg6 C();

    public abstract int C0(int i, vg6 vg6Var, bh6 bh6Var);

    public qg6 D(Context context, AttributeSet attributeSet) {
        return new qg6(context, attributeSet);
    }

    public abstract void D0(int i);

    public qg6 E(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof qg6) {
            return new qg6((qg6) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new qg6((ViewGroup.MarginLayoutParams) layoutParams) : new qg6(layoutParams);
    }

    public abstract int E0(int i, vg6 vg6Var, bh6 bh6Var);

    public final View F(int i) {
        j61 j61Var = this.a;
        if (j61Var != null) {
            return j61Var.d(i);
        }
        return null;
    }

    public final void F0(RecyclerView recyclerView) {
        G0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    public final int G() {
        j61 j61Var = this.a;
        if (j61Var != null) {
            return j61Var.e();
        }
        return 0;
    }

    public final void G0(int i, int i2) {
        this.y = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.t = mode;
        if (mode == 0 && !RecyclerView.W0) {
            this.y = 0;
        }
        this.G = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.x = mode2;
        if (mode2 != 0 || RecyclerView.W0) {
            return;
        }
        this.G = 0;
    }

    public void H0(Rect rect, int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft() + rect.width();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + rect.height();
        RecyclerView recyclerView = this.b;
        WeakHashMap weakHashMap = dl8.a;
        this.b.setMeasuredDimension(r(i, paddingRight, recyclerView.getMinimumWidth()), r(i2, paddingBottom, this.b.getMinimumHeight()));
    }

    public int I(vg6 vg6Var, bh6 bh6Var) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.x == null || !o()) {
            return 1;
        }
        return this.b.x.b();
    }

    public final void I0(int i, int i2) {
        int iG = G();
        if (iG == 0) {
            this.b.p(i, i2);
            return;
        }
        int i3 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < iG; i7++) {
            View viewF = F(i7);
            Rect rect = this.b.q;
            K(rect, viewF);
            int i8 = rect.left;
            if (i8 < i6) {
                i6 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i4) {
                i4 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i5) {
                i5 = i11;
            }
        }
        this.b.q.set(i6, i4, i3, i5);
        H0(this.b.q, i, i2);
    }

    public final void J0(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.b = null;
            this.a = null;
            this.y = 0;
            this.G = 0;
        } else {
            this.b = recyclerView;
            this.a = recyclerView.f;
            this.y = recyclerView.getWidth();
            this.G = recyclerView.getHeight();
        }
        this.t = 1073741824;
        this.x = 1073741824;
    }

    public void K(Rect rect, View view) {
        boolean z = RecyclerView.S0;
        qg6 qg6Var = (qg6) view.getLayoutParams();
        Rect rect2 = qg6Var.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) qg6Var).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) qg6Var).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) qg6Var).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) qg6Var).bottomMargin);
    }

    final boolean K0(View view, int i, int i2, qg6 qg6Var) {
        return (!view.isLayoutRequested() && this.n && X(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) qg6Var).width) && X(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) qg6Var).height)) ? false : true;
    }

    public boolean L0() {
        return false;
    }

    public final boolean M0(View view, int i, int i2, qg6 qg6Var) {
        return (this.n && X(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) qg6Var).width) && X(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) qg6Var).height)) ? false : true;
    }

    public abstract void N0(RecyclerView recyclerView, int i);

    public final void O0(av4 av4Var) {
        av4 av4Var2 = this.e;
        if (av4Var2 != null && av4Var != av4Var2 && av4Var2.e) {
            av4Var2.h();
        }
        this.e = av4Var;
        RecyclerView recyclerView = this.b;
        eh6 eh6Var = recyclerView.u0;
        eh6Var.k.removeCallbacks(eh6Var);
        eh6Var.c.abortAnimation();
        if (av4Var.h) {
            Log.w("RecyclerView", "An instance of " + av4Var.getClass().getSimpleName() + " was started more than once. Each instance of" + av4Var.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
        }
        av4Var.b = recyclerView;
        av4Var.c = this;
        int i = av4Var.a;
        if (i == -1) {
            c6.f("Invalid target position");
            return;
        }
        recyclerView.x0.a = i;
        av4Var.e = true;
        av4Var.d = true;
        av4Var.f = recyclerView.y.B(i);
        av4Var.b.u0.b();
        av4Var.h = true;
    }

    public boolean P0() {
        return false;
    }

    public final int Q() {
        RecyclerView recyclerView = this.b;
        hg6 adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.b();
        }
        return 0;
    }

    public int T(vg6 vg6Var, bh6 bh6Var) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || recyclerView.x == null || !p()) {
            return 1;
        }
        return this.b.x.b();
    }

    public final void U(Rect rect, View view) {
        Matrix matrix;
        Rect rect2 = ((qg6) view.getLayoutParams()).b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.b.t;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public abstract boolean V();

    public boolean W() {
        return false;
    }

    public void Z(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int iE = recyclerView.f.e();
            for (int i2 = 0; i2 < iE; i2++) {
                recyclerView.f.d(i2).offsetLeftAndRight(i);
            }
        }
    }

    public void a0(int i) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            int iE = recyclerView.f.e();
            for (int i2 = 0; i2 < iE; i2++) {
                recyclerView.f.d(i2).offsetTopAndBottom(i);
            }
        }
    }

    public abstract void d0(RecyclerView recyclerView);

    public View e0(View view, int i, vg6 vg6Var, bh6 bh6Var) {
        return null;
    }

    public void f0(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.b;
        vg6 vg6Var = recyclerView.c;
        if (accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        hg6 hg6Var = this.b.x;
        if (hg6Var != null) {
            accessibilityEvent.setItemCount(hg6Var.b());
        }
    }

    public void g0(vg6 vg6Var, bh6 bh6Var, m6 m6Var) {
        if (this.b.canScrollVertically(-1) || this.b.canScrollHorizontally(-1)) {
            m6Var.a(8192);
            m6Var.o(true);
            m6Var.g(67108864, true);
        }
        if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
            m6Var.a(4096);
            m6Var.o(true);
            m6Var.g(67108864, true);
        }
        m6Var.a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(T(vg6Var, bh6Var), I(vg6Var, bh6Var), false, 0));
    }

    public final int getPaddingBottom() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final int getPaddingEnd() {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return 0;
        }
        WeakHashMap weakHashMap = dl8.a;
        return recyclerView.getPaddingEnd();
    }

    public final int getPaddingLeft() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int getPaddingRight() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int getPaddingStart() {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            return 0;
        }
        WeakHashMap weakHashMap = dl8.a;
        return recyclerView.getPaddingStart();
    }

    public final int getPaddingTop() {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public void h0(vg6 vg6Var, bh6 bh6Var, View view, m6 m6Var) {
        m6Var.j(om5.e(false, p() ? R(view) : 0, 1, o() ? R(view) : 0, 1));
    }

    public final void i0(View view, m6 m6Var) {
        fh6 fh6VarL = RecyclerView.L(view);
        if (fh6VarL == null || fh6VarL.i()) {
            return;
        }
        j61 j61Var = this.a;
        if (j61Var.c.contains(fh6VarL.a)) {
            return;
        }
        RecyclerView recyclerView = this.b;
        h0(recyclerView.c, recyclerView.x0, view, m6Var);
    }

    public final void l(View view, int i, boolean z) {
        fh6 fh6VarL = RecyclerView.L(view);
        if (z || fh6VarL.i()) {
            dg7 dg7Var = (dg7) this.b.k.a;
            rl8 rl8VarA = (rl8) dg7Var.get(fh6VarL);
            if (rl8VarA == null) {
                rl8VarA = rl8.a();
                dg7Var.put(fh6VarL, rl8VarA);
            }
            rl8VarA.a |= 1;
        } else {
            this.b.k.e(fh6VarL);
        }
        qg6 qg6Var = (qg6) view.getLayoutParams();
        if (fh6VarL.q() || fh6VarL.j()) {
            if (fh6VarL.j()) {
                fh6VarL.n.m(fh6VarL);
            } else {
                fh6VarL.j &= -33;
            }
            this.a.b(view, i, view.getLayoutParams(), false);
        } else {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.b;
            j61 j61Var = this.a;
            if (parent == recyclerView) {
                i61 i61Var = j61Var.b;
                int iIndexOfChild = ((RecyclerView) j61Var.a.a).indexOfChild(view);
                int iB = (iIndexOfChild == -1 || i61Var.d(iIndexOfChild)) ? -1 : iIndexOfChild - i61Var.b(iIndexOfChild);
                if (i == -1) {
                    i = this.a.e();
                }
                if (iB == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.b.indexOfChild(view) + this.b.A());
                }
                if (iB != i) {
                    a aVar = this.b.y;
                    View viewF = aVar.F(iB);
                    if (viewF == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iB + aVar.b.toString());
                    }
                    aVar.F(iB);
                    aVar.a.c(iB);
                    qg6 qg6Var2 = (qg6) viewF.getLayoutParams();
                    fh6 fh6VarL2 = RecyclerView.L(viewF);
                    boolean zI = fh6VarL2.i();
                    RecyclerView recyclerView2 = aVar.b;
                    if (zI) {
                        dg7 dg7Var2 = (dg7) recyclerView2.k.a;
                        rl8 rl8VarA2 = (rl8) dg7Var2.get(fh6VarL2);
                        if (rl8VarA2 == null) {
                            rl8VarA2 = rl8.a();
                            dg7Var2.put(fh6VarL2, rl8VarA2);
                        }
                        rl8VarA2.a = 1 | rl8VarA2.a;
                    } else {
                        recyclerView2.k.e(fh6VarL2);
                    }
                    aVar.a.b(viewF, i, qg6Var2, fh6VarL2.i());
                }
            } else {
                j61Var.a(view, i, false);
                qg6Var.c = true;
                av4 av4Var = this.e;
                if (av4Var != null && av4Var.e) {
                    av4Var.b.getClass();
                    fh6 fh6VarL3 = RecyclerView.L(view);
                    if ((fh6VarL3 != null ? fh6VarL3.c() : -1) == av4Var.a) {
                        av4Var.f = view;
                        if (RecyclerView.T0) {
                            Log.d("RecyclerView", "smooth scroll target view has been attached");
                        }
                    }
                }
            }
        }
        if (qg6Var.d) {
            if (RecyclerView.T0) {
                Log.d("RecyclerView", "consuming pending invalidate on child " + qg6Var.a);
            }
            fh6VarL.a.invalidate();
            qg6Var.d = false;
        }
    }

    public void m(String str) {
        RecyclerView recyclerView = this.b;
        if (recyclerView != null) {
            recyclerView.j(str);
        }
    }

    public final void n(Rect rect, View view) {
        RecyclerView recyclerView = this.b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.M(view));
        }
    }

    public abstract boolean o();

    public void o0(RecyclerView recyclerView, int i, int i2) {
        n0(i);
    }

    public abstract boolean p();

    public abstract void p0(vg6 vg6Var, bh6 bh6Var);

    public boolean q(qg6 qg6Var) {
        return qg6Var != null;
    }

    public abstract void q0(bh6 bh6Var);

    public Parcelable s0() {
        return null;
    }

    public abstract int u(bh6 bh6Var);

    /* JADX WARN: Code duplicated, block: B:18:0x0060 A[PHI: r0
      0x0060: PHI (r0v8 int) = (r0v5 int), (r0v14 int) binds: [B:24:0x007c, B:16:0x0052] A[DONT_GENERATE, DONT_INLINE]] */
    public boolean u0(int i, Bundle bundle) {
        int paddingTop;
        int paddingLeft;
        float f;
        vg6 vg6Var = this.b.c;
        int iHeight = this.G;
        int iWidth = this.y;
        Rect rect = new Rect();
        if (this.b.getMatrix().isIdentity() && this.b.getGlobalVisibleRect(rect)) {
            iHeight = rect.height();
            iWidth = rect.width();
        }
        if (i == 4096) {
            paddingTop = this.b.canScrollVertically(1) ? (iHeight - getPaddingTop()) - getPaddingBottom() : 0;
            if (this.b.canScrollHorizontally(1)) {
                paddingLeft = (iWidth - getPaddingLeft()) - getPaddingRight();
            } else {
                paddingLeft = 0;
            }
        } else if (i != 8192) {
            paddingTop = 0;
            paddingLeft = 0;
        } else {
            paddingTop = this.b.canScrollVertically(-1) ? -((iHeight - getPaddingTop()) - getPaddingBottom()) : 0;
            if (this.b.canScrollHorizontally(-1)) {
                paddingLeft = -((iWidth - getPaddingLeft()) - getPaddingRight());
            } else {
                paddingLeft = 0;
            }
        }
        if (paddingTop != 0 || paddingLeft != 0) {
            if (bundle != null) {
                f = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
                if (f < 0.0f) {
                    if (RecyclerView.S0) {
                        throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f + ")");
                    }
                }
            } else {
                f = 1.0f;
            }
            if (Float.compare(f, Float.POSITIVE_INFINITY) != 0) {
                if (Float.compare(1.0f, f) != 0 && Float.compare(0.0f, f) != 0) {
                    paddingLeft = (int) (paddingLeft * f);
                    paddingTop = (int) (paddingTop * f);
                }
                this.b.h0(paddingLeft, paddingTop, true);
                return true;
            }
            RecyclerView recyclerView = this.b;
            hg6 hg6Var = recyclerView.x;
            if (hg6Var != null) {
                if (i == 4096) {
                    recyclerView.i0(hg6Var.b() - 1);
                    return true;
                }
                if (i != 8192) {
                    return true;
                }
                recyclerView.i0(0);
                return true;
            }
        }
        return false;
    }

    public abstract int v(bh6 bh6Var);

    public final void v0() {
        for (int iG = G() - 1; iG >= 0; iG--) {
            this.a.j(iG);
        }
    }

    public abstract int w(bh6 bh6Var);

    public final void w0(vg6 vg6Var) {
        for (int iG = G() - 1; iG >= 0; iG--) {
            if (!RecyclerView.L(F(iG)).p()) {
                z0(iG, vg6Var);
            }
        }
    }

    public abstract int x(bh6 bh6Var);

    public final void x0(vg6 vg6Var) {
        ArrayList arrayList;
        int size = ((ArrayList) vg6Var.c).size();
        int i = size - 1;
        while (true) {
            arrayList = (ArrayList) vg6Var.c;
            if (i < 0) {
                break;
            }
            View view = ((fh6) arrayList.get(i)).a;
            fh6 fh6VarL = RecyclerView.L(view);
            if (!fh6VarL.p()) {
                fh6VarL.o(false);
                if (fh6VarL.k()) {
                    this.b.removeDetachedView(view, false);
                }
                ng6 ng6Var = this.b.g0;
                if (ng6Var != null) {
                    ng6Var.d(fh6VarL);
                }
                fh6VarL.o(true);
                fh6 fh6VarL2 = RecyclerView.L(view);
                fh6VarL2.n = null;
                fh6VarL2.o = false;
                fh6VarL2.j &= -33;
                vg6Var.j(fh6VarL2);
            }
            i--;
        }
        arrayList.clear();
        ArrayList arrayList2 = (ArrayList) vg6Var.d;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.b.invalidate();
        }
    }

    public abstract int y(bh6 bh6Var);

    public final void y0(View view, vg6 vg6Var) {
        j61 j61Var = this.a;
        om5 om5Var = j61Var.a;
        int i = j61Var.d;
        if (i == 1) {
            l0.e("Cannot call removeView(At) within removeView(At)");
            return;
        }
        if (i == 2) {
            l0.e("Cannot call removeView(At) within removeViewIfHidden");
            return;
        }
        try {
            j61Var.d = 1;
            j61Var.e = view;
            int iIndexOfChild = ((RecyclerView) om5Var.a).indexOfChild(view);
            if (iIndexOfChild >= 0) {
                if (j61Var.b.f(iIndexOfChild)) {
                    j61Var.k(view);
                }
                om5Var.l(iIndexOfChild);
            }
            j61Var.d = 0;
            j61Var.e = null;
            vg6Var.i(view);
        } catch (Throwable th) {
            j61Var.d = 0;
            j61Var.e = null;
            throw th;
        }
    }

    public abstract int z(bh6 bh6Var);

    public final void z0(int i, vg6 vg6Var) {
        View viewF = F(i);
        if (F(i) != null) {
            this.a.j(i);
        }
        vg6Var.i(viewF);
    }

    public void b0() {
    }

    public void k0() {
    }

    public void c0(RecyclerView recyclerView) {
    }

    public void n0(int i) {
    }

    public void r0(Parcelable parcelable) {
    }

    public void t0(int i) {
    }

    public void j0(int i, int i2) {
    }

    public void l0(int i, int i2) {
    }

    public void m0(int i, int i2) {
    }

    public void t(int i, ru3 ru3Var) {
    }

    public void s(int i, int i2, bh6 bh6Var, ru3 ru3Var) {
    }
}
