package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import defpackage.bh6;
import defpackage.c6;
import defpackage.dl8;
import defpackage.fh6;
import defpackage.fz5;
import defpackage.g6;
import defpackage.g84;
import defpackage.hg6;
import defpackage.l39;
import defpackage.m6;
import defpackage.om5;
import defpackage.p14;
import defpackage.qg6;
import defpackage.ru3;
import defpackage.uu4;
import defpackage.vg6;
import defpackage.vu4;
import defpackage.wu4;
import defpackage.xs1;
import defpackage.xu4;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    public static final Set h0 = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));
    public boolean W;
    public int X;
    public int[] Y;
    public View[] Z;
    public final SparseIntArray a0;
    public final SparseIntArray b0;
    public final l39 c0;
    public final Rect d0;
    public int e0;
    public int f0;
    public int g0;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.W = false;
        this.X = -1;
        this.a0 = new SparseIntArray();
        this.b0 = new SparseIntArray();
        this.c0 = new l39(5);
        this.d0 = new Rect();
        this.e0 = -1;
        this.f0 = -1;
        this.g0 = -1;
        F1(a.S(context, attributeSet, i, i2).b);
    }

    public final int A1(int i, int i2) {
        if (this.H != 1 || !i1()) {
            int[] iArr = this.Y;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.Y;
        int i3 = this.X;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public final int B1(int i, vg6 vg6Var, bh6 bh6Var) {
        boolean z = bh6Var.g;
        l39 l39Var = this.c0;
        if (!z) {
            int i2 = this.X;
            l39Var.getClass();
            return l39.f(i, i2);
        }
        int iB = vg6Var.b(i);
        if (iB != -1) {
            int i3 = this.X;
            l39Var.getClass();
            return l39.f(iB, i3);
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final qg6 C() {
        return this.H == 0 ? new p14(-2, -1) : new p14(-1, -2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final int C0(int i, vg6 vg6Var, bh6 bh6Var) {
        G1();
        v1();
        return super.C0(i, vg6Var, bh6Var);
    }

    public final int C1(int i, vg6 vg6Var, bh6 bh6Var) {
        boolean z = bh6Var.g;
        l39 l39Var = this.c0;
        if (!z) {
            int i2 = this.X;
            l39Var.getClass();
            return i % i2;
        }
        int i3 = this.b0.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int iB = vg6Var.b(i);
        if (iB != -1) {
            int i4 = this.X;
            l39Var.getClass();
            return iB % i4;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 D(Context context, AttributeSet attributeSet) {
        p14 p14Var = new p14(context, attributeSet);
        p14Var.e = -1;
        p14Var.f = 0;
        return p14Var;
    }

    public final int D1(int i, vg6 vg6Var, bh6 bh6Var) {
        boolean z = bh6Var.g;
        l39 l39Var = this.c0;
        if (!z) {
            l39Var.getClass();
            return 1;
        }
        int i2 = this.a0.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (vg6Var.b(i) != -1) {
            l39Var.getClass();
            return 1;
        }
        Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i);
        return 1;
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 E(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            p14 p14Var = new p14((ViewGroup.MarginLayoutParams) layoutParams);
            p14Var.e = -1;
            p14Var.f = 0;
            return p14Var;
        }
        p14 p14Var2 = new p14(layoutParams);
        p14Var2.e = -1;
        p14Var2.f = 0;
        return p14Var2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final int E0(int i, vg6 vg6Var, bh6 bh6Var) {
        G1();
        v1();
        return super.E0(i, vg6Var, bh6Var);
    }

    public final void E1(View view, int i, boolean z) {
        int iH;
        int iH2;
        p14 p14Var = (p14) view.getLayoutParams();
        Rect rect = p14Var.b;
        int i2 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) p14Var).topMargin + ((ViewGroup.MarginLayoutParams) p14Var).bottomMargin;
        int i3 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) p14Var).leftMargin + ((ViewGroup.MarginLayoutParams) p14Var).rightMargin;
        int iA1 = A1(p14Var.e, p14Var.f);
        if (this.H == 1) {
            iH2 = a.H(false, iA1, i, i3, ((ViewGroup.MarginLayoutParams) p14Var).width);
            iH = a.H(true, this.J.n(), this.x, i2, ((ViewGroup.MarginLayoutParams) p14Var).height);
        } else {
            int iH3 = a.H(false, iA1, i, i2, ((ViewGroup.MarginLayoutParams) p14Var).height);
            int iH4 = a.H(true, this.J.n(), this.t, i3, ((ViewGroup.MarginLayoutParams) p14Var).width);
            iH = iH3;
            iH2 = iH4;
        }
        qg6 qg6Var = (qg6) view.getLayoutParams();
        if (z ? M0(view, iH2, iH, qg6Var) : K0(view, iH2, iH, qg6Var)) {
            view.measure(iH2, iH);
        }
    }

    public final void F1(int i) {
        if (i == this.X) {
            return;
        }
        this.W = true;
        if (i < 1) {
            c6.f(fz5.j(i, "Span count should be at least 1. Provided "));
            return;
        }
        this.X = i;
        this.c0.g();
        B0();
    }

    public final void G1() {
        int paddingBottom;
        int paddingTop;
        if (this.H == 1) {
            paddingBottom = this.y - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            paddingBottom = this.G - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        u1(paddingBottom - paddingTop);
    }

    @Override // androidx.recyclerview.widget.a
    public final void H0(Rect rect, int i, int i2) {
        int iR;
        int iR2;
        if (this.Y == null) {
            super.H0(rect, i, i2);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.H == 1) {
            int iHeight = rect.height() + paddingBottom;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = dl8.a;
            iR2 = a.r(i2, iHeight, recyclerView.getMinimumHeight());
            int[] iArr = this.Y;
            iR = a.r(i, iArr[iArr.length - 1] + paddingRight, this.b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + paddingRight;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = dl8.a;
            iR = a.r(i, iWidth, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.Y;
            iR2 = a.r(i2, iArr2[iArr2.length - 1] + paddingBottom, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(iR, iR2);
    }

    @Override // androidx.recyclerview.widget.a
    public final int I(vg6 vg6Var, bh6 bh6Var) {
        if (this.H == 1) {
            return Math.min(this.X, Q());
        }
        if (bh6Var.b() < 1) {
            return 0;
        }
        return B1(bh6Var.b() - 1, vg6Var, bh6Var) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public boolean P0() {
        return this.R == null && !this.W;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void R0(bh6 bh6Var, wu4 wu4Var, ru3 ru3Var) {
        int i;
        int i2 = this.X;
        for (int i3 = 0; i3 < this.X && (i = wu4Var.d) >= 0 && i < bh6Var.b() && i2 > 0; i3++) {
            ru3Var.b(wu4Var.d, Math.max(0, wu4Var.g));
            this.c0.getClass();
            i2--;
            wu4Var.d += wu4Var.e;
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final int T(vg6 vg6Var, bh6 bh6Var) {
        if (this.H == 0) {
            return Math.min(this.X, Q());
        }
        if (bh6Var.b() < 1) {
            return 0;
        }
        return B1(bh6Var.b() - 1, vg6Var, bh6Var) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View c1(vg6 vg6Var, bh6 bh6Var, boolean z, boolean z2) {
        int i;
        int iG;
        int iG2 = G();
        int i2 = 1;
        if (z2) {
            iG = G() - 1;
            i = -1;
            i2 = -1;
        } else {
            i = iG2;
            iG = 0;
        }
        int iB = bh6Var.b();
        W0();
        int iM = this.J.m();
        int i3 = this.J.i();
        View view = null;
        View view2 = null;
        while (iG != i) {
            View viewF = F(iG);
            int iR = a.R(viewF);
            if (iR >= 0 && iR < iB && C1(iR, vg6Var, bh6Var) == 0) {
                if (((qg6) viewF.getLayoutParams()).a.i()) {
                    if (view2 == null) {
                        view2 = viewF;
                    }
                } else {
                    if (this.J.g(viewF) < i3 && this.J.d(viewF) >= iM) {
                        return viewF;
                    }
                    if (view == null) {
                        view = viewF;
                    }
                }
            }
            iG += i2;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00e0, code lost:
    
        if (r13 == (r2 > r15)) goto L57;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View e0(android.view.View r23, int r24, defpackage.vg6 r25, defpackage.bh6 r26) {
        /*
            Method dump skipped, instruction units count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.e0(android.view.View, int, vg6, bh6):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final void g0(vg6 vg6Var, bh6 bh6Var, m6 m6Var) {
        super.g0(vg6Var, bh6Var, m6Var);
        m6Var.i(GridView.class.getName());
        hg6 hg6Var = this.b.x;
        if (hg6Var == null || hg6Var.b() <= 1) {
            return;
        }
        m6Var.b(g6.p);
    }

    @Override // androidx.recyclerview.widget.a
    public final void h0(vg6 vg6Var, bh6 bh6Var, View view, m6 m6Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof p14)) {
            i0(view, m6Var);
            return;
        }
        p14 p14Var = (p14) layoutParams;
        int iB1 = B1(p14Var.a.c(), vg6Var, bh6Var);
        int i = this.H;
        int i2 = p14Var.e;
        int i3 = p14Var.f;
        if (i == 0) {
            m6Var.j(om5.e(false, i2, i3, iB1, 1));
        } else {
            m6Var.j(om5.e(false, iB1, 1, i2, i3));
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void j0(int i, int i2) {
        l39 l39Var = this.c0;
        l39Var.g();
        ((SparseIntArray) l39Var.c).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void j1(vg6 vg6Var, bh6 bh6Var, wu4 wu4Var, vu4 vu4Var) {
        int i;
        int i2;
        int i3;
        int iF;
        int paddingLeft;
        int iH;
        int iH2;
        boolean z;
        int i4;
        View viewB;
        int iL = this.J.l();
        boolean z2 = iL != 1073741824;
        int i5 = G() > 0 ? this.Y[this.X] : 0;
        if (z2) {
            G1();
        }
        boolean z3 = wu4Var.e == 1;
        int iC1 = this.X;
        if (!z3) {
            iC1 = C1(wu4Var.d, vg6Var, bh6Var) + D1(wu4Var.d, vg6Var, bh6Var);
        }
        int i6 = 0;
        while (i6 < this.X && (i4 = wu4Var.d) >= 0 && i4 < bh6Var.b() && iC1 > 0) {
            int i7 = wu4Var.d;
            int iD1 = D1(i7, vg6Var, bh6Var);
            if (iD1 > this.X) {
                c6.f(xs1.m(xs1.n("Item at position ", i7, " requires ", " spans but GridLayoutManager has only ", iD1), this.X, " spans."));
                return;
            }
            iC1 -= iD1;
            if (iC1 < 0 || (viewB = wu4Var.b(vg6Var)) == null) {
                break;
            }
            this.Z[i6] = viewB;
            i6++;
        }
        if (i6 == 0) {
            vu4Var.b = true;
            return;
        }
        if (z3) {
            i3 = 1;
            i2 = i6;
            i = 0;
        } else {
            i = i6 - 1;
            i2 = -1;
            i3 = -1;
        }
        int i8 = 0;
        while (i != i2) {
            View view = this.Z[i];
            p14 p14Var = (p14) view.getLayoutParams();
            int iD2 = D1(a.R(view), vg6Var, bh6Var);
            p14Var.f = iD2;
            p14Var.e = i8;
            i8 += iD2;
            i += i3;
        }
        float f = 0.0f;
        int i9 = 0;
        for (int i10 = 0; i10 < i6; i10++) {
            View view2 = this.Z[i10];
            if (wu4Var.k != null) {
                z = false;
                if (z3) {
                    l(view2, -1, true);
                } else {
                    l(view2, 0, true);
                }
            } else if (z3) {
                z = false;
                l(view2, -1, false);
            } else {
                z = false;
                l(view2, 0, false);
            }
            n(this.d0, view2);
            E1(view2, iL, z);
            int iE = this.J.e(view2);
            if (iE > i9) {
                i9 = iE;
            }
            float f2 = (this.J.f(view2) * 1.0f) / ((p14) view2.getLayoutParams()).f;
            if (f2 > f) {
                f = f2;
            }
        }
        if (z2) {
            u1(Math.max(Math.round(f * this.X), i5));
            i9 = 0;
            for (int i11 = 0; i11 < i6; i11++) {
                View view3 = this.Z[i11];
                E1(view3, 1073741824, true);
                int iE2 = this.J.e(view3);
                if (iE2 > i9) {
                    i9 = iE2;
                }
            }
        }
        for (int i12 = 0; i12 < i6; i12++) {
            View view4 = this.Z[i12];
            if (this.J.e(view4) != i9) {
                p14 p14Var2 = (p14) view4.getLayoutParams();
                Rect rect = p14Var2.b;
                int i13 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) p14Var2).topMargin + ((ViewGroup.MarginLayoutParams) p14Var2).bottomMargin;
                int i14 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) p14Var2).leftMargin + ((ViewGroup.MarginLayoutParams) p14Var2).rightMargin;
                int iA1 = A1(p14Var2.e, p14Var2.f);
                if (this.H == 1) {
                    iH2 = a.H(false, iA1, 1073741824, i14, ((ViewGroup.MarginLayoutParams) p14Var2).width);
                    iH = View.MeasureSpec.makeMeasureSpec(i9 - i13, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - i14, 1073741824);
                    iH = a.H(false, iA1, 1073741824, i13, ((ViewGroup.MarginLayoutParams) p14Var2).height);
                    iH2 = iMakeMeasureSpec;
                }
                if (M0(view4, iH2, iH, (qg6) view4.getLayoutParams())) {
                    view4.measure(iH2, iH);
                }
            }
        }
        int paddingTop = 0;
        vu4Var.a = i9;
        int i15 = this.H;
        int i16 = wu4Var.f;
        int iF2 = wu4Var.b;
        if (i15 != 1) {
            if (i16 == -1) {
                paddingLeft = iF2 - i9;
                iF = iF2;
            } else {
                iF = iF2 + i9;
                paddingLeft = iF2;
            }
            iF2 = paddingTop;
        } else if (i16 == -1) {
            paddingTop = iF2 - i9;
            paddingLeft = 0;
            iF = 0;
        } else {
            iF = 0;
            paddingTop = iF2;
            iF2 += i9;
            paddingLeft = 0;
        }
        int i17 = 0;
        while (true) {
            View[] viewArr = this.Z;
            if (i17 >= i6) {
                Arrays.fill(viewArr, (Object) null);
                return;
            }
            View view5 = viewArr[i17];
            p14 p14Var3 = (p14) view5.getLayoutParams();
            if (this.H != 1) {
                paddingTop = getPaddingTop() + this.Y[p14Var3.e];
                iF2 = this.J.f(view5) + paddingTop;
            } else if (i1()) {
                int paddingLeft2 = getPaddingLeft() + this.Y[this.X - p14Var3.e];
                iF = paddingLeft2;
                paddingLeft = paddingLeft2 - this.J.f(view5);
            } else {
                paddingLeft = getPaddingLeft() + this.Y[p14Var3.e];
                iF = this.J.f(view5) + paddingLeft;
            }
            a.Y(view5, paddingLeft, paddingTop, iF, iF2);
            if (p14Var3.a.i() || p14Var3.a.l()) {
                vu4Var.c = true;
            }
            vu4Var.d = view5.hasFocusable() | vu4Var.d;
            i17++;
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void k0() {
        l39 l39Var = this.c0;
        l39Var.g();
        ((SparseIntArray) l39Var.c).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void k1(vg6 vg6Var, bh6 bh6Var, uu4 uu4Var, int i) {
        G1();
        if (bh6Var.b() > 0 && !bh6Var.g) {
            boolean z = i == 1;
            int iC1 = C1(uu4Var.b, vg6Var, bh6Var);
            if (z) {
                while (iC1 > 0) {
                    int i2 = uu4Var.b;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    uu4Var.b = i3;
                    iC1 = C1(i3, vg6Var, bh6Var);
                }
            } else {
                int iB = bh6Var.b() - 1;
                int i4 = uu4Var.b;
                while (i4 < iB) {
                    int i5 = i4 + 1;
                    int iC2 = C1(i5, vg6Var, bh6Var);
                    if (iC2 <= iC1) {
                        break;
                    }
                    i4 = i5;
                    iC1 = iC2;
                }
                uu4Var.b = i4;
            }
        }
        v1();
    }

    @Override // androidx.recyclerview.widget.a
    public final void l0(int i, int i2) {
        l39 l39Var = this.c0;
        l39Var.g();
        ((SparseIntArray) l39Var.c).clear();
    }

    @Override // androidx.recyclerview.widget.a
    public final void m0(int i, int i2) {
        l39 l39Var = this.c0;
        l39Var.g();
        ((SparseIntArray) l39Var.c).clear();
    }

    @Override // androidx.recyclerview.widget.a
    public final void o0(RecyclerView recyclerView, int i, int i2) {
        l39 l39Var = this.c0;
        l39Var.g();
        ((SparseIntArray) l39Var.c).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final void p0(vg6 vg6Var, bh6 bh6Var) {
        boolean z = bh6Var.g;
        SparseIntArray sparseIntArray = this.b0;
        SparseIntArray sparseIntArray2 = this.a0;
        if (z) {
            int iG = G();
            for (int i = 0; i < iG; i++) {
                p14 p14Var = (p14) F(i).getLayoutParams();
                int iC = p14Var.a.c();
                sparseIntArray2.put(iC, p14Var.f);
                sparseIntArray.put(iC, p14Var.e);
            }
        }
        super.p0(vg6Var, bh6Var);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean q(qg6 qg6Var) {
        return qg6Var instanceof p14;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final void q0(bh6 bh6Var) {
        View viewB;
        super.q0(bh6Var);
        this.W = false;
        int i = this.e0;
        if (i == -1 || (viewB = B(i)) == null) {
            return;
        }
        viewB.sendAccessibilityEvent(67108864);
        this.e0 = -1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void q1(boolean z) {
        if (z) {
            g84.j("GridLayoutManager does not support stack from end. Consider using reverse layout");
        } else {
            super.q1(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:122:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:126:0x01af A[EDGE_INSN: B:126:0x01af->B:170:0x0282 BREAK  A[LOOP:2: B:130:0x01bf->B:139:0x01e8]] */
    /* JADX WARN: Code duplicated, block: B:127:0x01b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:132:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:135:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:138:0x01e0 A[LOOP:3: B:133:0x01cd->B:138:0x01e0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:146:0x0219  */
    /* JADX WARN: Code duplicated, block: B:147:0x021b  */
    /* JADX WARN: Code duplicated, block: B:149:0x021e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:154:0x022d  */
    /* JADX WARN: Code duplicated, block: B:157:0x023b  */
    /* JADX WARN: Code duplicated, block: B:160:0x0249  */
    /* JADX WARN: Code duplicated, block: B:167:0x0268  */
    /* JADX WARN: Code duplicated, block: B:171:0x0284  */
    /* JADX WARN: Code duplicated, block: B:213:0x01eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:215:0x01e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:216:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:218:? A[LOOP:4: B:141:0x01f3->B:218:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x025a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:220:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:221:0x024f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:222:0x0257 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x0235 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:226:0x01af A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:227:0x0274 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:228:? A[LOOP:7: B:165:0x0262->B:228:?, LOOP_END, SYNTHETIC] */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final boolean u0(int i, Bundle bundle) {
        View viewF;
        fh6 fh6VarK;
        int iIntValue;
        int i2;
        TreeMap treeMap;
        int i3;
        Iterator it;
        Integer num;
        int iIntValue2;
        Iterator it2;
        Integer num2;
        TreeMap treeMap2;
        int i4;
        Iterator it3;
        Integer num3;
        int iIntValue3;
        Iterator it4;
        Integer num4;
        if (i == g6.p.a() && i != -1) {
            int i5 = 0;
            while (true) {
                if (i5 >= G()) {
                    viewF = null;
                    break;
                }
                View viewF2 = F(i5);
                Objects.requireNonNull(viewF2);
                if (viewF2.isAccessibilityFocused()) {
                    viewF = F(i5);
                    break;
                }
                i5++;
            }
            if (viewF != null && bundle != null) {
                int i6 = bundle.getInt("android.view.accessibility.action.ARGUMENT_DIRECTION_INT", -1);
                if (h0.contains(Integer.valueOf(i6)) && (fh6VarK = this.b.K(viewF)) != null) {
                    RecyclerView recyclerView = fh6VarK.r;
                    int I = recyclerView == null ? -1 : recyclerView.I(fh6VarK);
                    int iX1 = x1(I);
                    int iW1 = w1(I);
                    if (iX1 >= 0 && iW1 >= 0) {
                        if (!y1(I).contains(Integer.valueOf(this.f0)) || !z1(w1(I), I).contains(Integer.valueOf(this.g0))) {
                            this.f0 = iX1;
                            this.g0 = iW1;
                        }
                        int i7 = this.f0;
                        if (i7 == -1) {
                            i7 = iX1;
                        }
                        int i8 = this.g0;
                        if (i8 != -1) {
                            iW1 = i8;
                        }
                        if (i6 == 17) {
                            iIntValue = I - 1;
                            while (true) {
                                if (iIntValue >= 0) {
                                    int iX2 = x1(iIntValue);
                                    int iW2 = w1(iIntValue);
                                    if (iX2 >= 0 && iW2 >= 0) {
                                        if (this.H != 1) {
                                            if (y1(iIntValue).contains(Integer.valueOf(i7)) && iW2 < iW1) {
                                                this.g0 = iW2;
                                                break;
                                            }
                                            iIntValue--;
                                        } else {
                                            if ((iX2 == i7 && iW2 < iW1) || iX2 < i7) {
                                                this.f0 = iX2;
                                                this.g0 = iW2;
                                                break;
                                            }
                                            iIntValue--;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1) {
                                if (i6 == 17) {
                                    if (i6 == 66) {
                                        if (iX1 < 0) {
                                            treeMap = new TreeMap();
                                            i3 = 0;
                                            loop5: while (true) {
                                                if (i3 < Q()) {
                                                    it2 = y1(i3).iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            num2 = (Integer) it2.next();
                                                            if (num2.intValue() < 0) {
                                                                if (!treeMap.containsKey(num2)) {
                                                                    treeMap.put(num2, Integer.valueOf(i3));
                                                                }
                                                            }
                                                        } else {
                                                            i3++;
                                                        }
                                                    }
                                                } else {
                                                    it = treeMap.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            num = (Integer) it.next();
                                                            iIntValue2 = num.intValue();
                                                            if (iIntValue2 > iX1) {
                                                                iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                                this.f0 = iIntValue2;
                                                                this.g0 = 0;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                                iIntValue = -1;
                                                break;
                                            }
                                        }
                                        iIntValue = -1;
                                        break;
                                    }
                                } else {
                                    if (iX1 < 0) {
                                        treeMap2 = new TreeMap(Collections.reverseOrder());
                                        i4 = 0;
                                        loop2: while (true) {
                                            if (i4 < Q()) {
                                                it4 = y1(i4).iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        num4 = (Integer) it4.next();
                                                        if (num4.intValue() < 0) {
                                                            treeMap2.put(num4, Integer.valueOf(i4));
                                                        }
                                                    } else {
                                                        i4++;
                                                    }
                                                }
                                            } else {
                                                it3 = treeMap2.keySet().iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        num3 = (Integer) it3.next();
                                                        iIntValue3 = num3.intValue();
                                                        if (iIntValue3 < iX1) {
                                                            iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                            this.f0 = iIntValue3;
                                                            this.g0 = w1(iIntValue);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break;
                                        }
                                    }
                                    iIntValue = -1;
                                    break;
                                }
                            }
                            if (iIntValue != -1) {
                                D0(iIntValue);
                                this.e0 = iIntValue;
                                return true;
                            }
                        } else if (i6 == 33) {
                            iIntValue = I - 1;
                            while (true) {
                                if (iIntValue >= 0) {
                                    int iX3 = x1(iIntValue);
                                    int iW3 = w1(iIntValue);
                                    if (iX3 >= 0 && iW3 >= 0) {
                                        if (this.H != 1) {
                                            if (iX3 < i7 && iW3 == iW1) {
                                                this.f0 = ((Integer) Collections.max(y1(iIntValue))).intValue();
                                                break;
                                            }
                                            iIntValue--;
                                        } else {
                                            if (iX3 < i7 && z1(w1(iIntValue), iIntValue).contains(Integer.valueOf(iW1))) {
                                                this.f0 = iX3;
                                                break;
                                            }
                                            iIntValue--;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1) {
                                if (i6 == 17) {
                                    if (i6 == 66) {
                                        if (iX1 < 0) {
                                            treeMap = new TreeMap();
                                            i3 = 0;
                                            loop5: while (true) {
                                                if (i3 < Q()) {
                                                    it2 = y1(i3).iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            num2 = (Integer) it2.next();
                                                            if (num2.intValue() < 0) {
                                                                if (!treeMap.containsKey(num2)) {
                                                                    treeMap.put(num2, Integer.valueOf(i3));
                                                                }
                                                            }
                                                        } else {
                                                            i3++;
                                                        }
                                                    }
                                                } else {
                                                    it = treeMap.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            num = (Integer) it.next();
                                                            iIntValue2 = num.intValue();
                                                            if (iIntValue2 > iX1) {
                                                                iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                                this.f0 = iIntValue2;
                                                                this.g0 = 0;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                                iIntValue = -1;
                                                break;
                                            }
                                        }
                                        iIntValue = -1;
                                        break;
                                    }
                                } else {
                                    if (iX1 < 0) {
                                        treeMap2 = new TreeMap(Collections.reverseOrder());
                                        i4 = 0;
                                        loop2: while (true) {
                                            if (i4 < Q()) {
                                                it4 = y1(i4).iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        num4 = (Integer) it4.next();
                                                        if (num4.intValue() < 0) {
                                                            treeMap2.put(num4, Integer.valueOf(i4));
                                                        }
                                                    } else {
                                                        i4++;
                                                    }
                                                }
                                            } else {
                                                it3 = treeMap2.keySet().iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        num3 = (Integer) it3.next();
                                                        iIntValue3 = num3.intValue();
                                                        if (iIntValue3 < iX1) {
                                                            iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                            this.f0 = iIntValue3;
                                                            this.g0 = w1(iIntValue);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break;
                                        }
                                    }
                                    iIntValue = -1;
                                    break;
                                }
                            }
                            if (iIntValue != -1) {
                                D0(iIntValue);
                                this.e0 = iIntValue;
                                return true;
                            }
                        } else if (i6 == 66) {
                            iIntValue = I + 1;
                            while (true) {
                                if (iIntValue < Q()) {
                                    int iX4 = x1(iIntValue);
                                    int iW4 = w1(iIntValue);
                                    if (iX4 >= 0 && iW4 >= 0) {
                                        if (this.H != 1) {
                                            if (iW4 > iW1 && y1(iIntValue).contains(Integer.valueOf(i7))) {
                                                this.g0 = iW4;
                                                break;
                                            }
                                            iIntValue++;
                                        } else {
                                            if ((iX4 == i7 && iW4 > iW1) || iX4 > i7) {
                                                this.f0 = iX4;
                                                this.g0 = iW4;
                                                break;
                                            }
                                            iIntValue++;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1) {
                                if (i6 == 17) {
                                    if (i6 == 66) {
                                        if (iX1 < 0) {
                                            treeMap = new TreeMap();
                                            i3 = 0;
                                            loop5: while (true) {
                                                if (i3 < Q()) {
                                                    it2 = y1(i3).iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            num2 = (Integer) it2.next();
                                                            if (num2.intValue() < 0) {
                                                                if (!treeMap.containsKey(num2)) {
                                                                    treeMap.put(num2, Integer.valueOf(i3));
                                                                }
                                                            }
                                                        } else {
                                                            i3++;
                                                        }
                                                    }
                                                } else {
                                                    it = treeMap.keySet().iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            num = (Integer) it.next();
                                                            iIntValue2 = num.intValue();
                                                            if (iIntValue2 > iX1) {
                                                                iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                                this.f0 = iIntValue2;
                                                                this.g0 = 0;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                                iIntValue = -1;
                                                break;
                                            }
                                        }
                                        iIntValue = -1;
                                        break;
                                    }
                                } else {
                                    if (iX1 < 0) {
                                        treeMap2 = new TreeMap(Collections.reverseOrder());
                                        i4 = 0;
                                        loop2: while (true) {
                                            if (i4 < Q()) {
                                                it4 = y1(i4).iterator();
                                                while (true) {
                                                    if (it4.hasNext()) {
                                                        num4 = (Integer) it4.next();
                                                        if (num4.intValue() < 0) {
                                                            treeMap2.put(num4, Integer.valueOf(i4));
                                                        }
                                                    } else {
                                                        i4++;
                                                    }
                                                }
                                            } else {
                                                it3 = treeMap2.keySet().iterator();
                                                while (true) {
                                                    if (it3.hasNext()) {
                                                        num3 = (Integer) it3.next();
                                                        iIntValue3 = num3.intValue();
                                                        if (iIntValue3 < iX1) {
                                                            iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                            this.f0 = iIntValue3;
                                                            this.g0 = w1(iIntValue);
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break;
                                        }
                                    }
                                    iIntValue = -1;
                                    break;
                                }
                            }
                            if (iIntValue != -1) {
                                D0(iIntValue);
                                this.e0 = iIntValue;
                                return true;
                            }
                        } else if (i6 == 130) {
                            iIntValue = I + 1;
                            while (true) {
                                if (iIntValue < Q()) {
                                    int iX5 = x1(iIntValue);
                                    int iW5 = w1(iIntValue);
                                    if (iX5 >= 0 && iW5 >= 0) {
                                        if (this.H != 1) {
                                            if (iX5 > i7 && iW5 == iW1) {
                                                this.f0 = x1(iIntValue);
                                                break;
                                            }
                                            iIntValue++;
                                        } else {
                                            if (iX5 > i7 && (iW5 == iW1 || z1(w1(iIntValue), iIntValue).contains(Integer.valueOf(iW1)))) {
                                                this.f0 = iX5;
                                                break;
                                            }
                                            iIntValue++;
                                        }
                                    }
                                }
                                iIntValue = -1;
                                break;
                            }
                            if (iIntValue == -1 && (i2 = this.H) == 0) {
                                if (i6 == 17) {
                                    if (i6 == 66) {
                                        if (iX1 < 0 || i2 == 1) {
                                            iIntValue = -1;
                                            break;
                                        }
                                        treeMap = new TreeMap();
                                        i3 = 0;
                                        loop5: while (true) {
                                            if (i3 < Q()) {
                                                it2 = y1(i3).iterator();
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        num2 = (Integer) it2.next();
                                                        if (num2.intValue() < 0) {
                                                            if (!treeMap.containsKey(num2)) {
                                                                treeMap.put(num2, Integer.valueOf(i3));
                                                            }
                                                        }
                                                    } else {
                                                        i3++;
                                                    }
                                                }
                                            } else {
                                                it = treeMap.keySet().iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        num = (Integer) it.next();
                                                        iIntValue2 = num.intValue();
                                                        if (iIntValue2 > iX1) {
                                                            iIntValue = ((Integer) treeMap.get(num)).intValue();
                                                            this.f0 = iIntValue2;
                                                            this.g0 = 0;
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                            iIntValue = -1;
                                            break;
                                        }
                                    }
                                } else {
                                    if (iX1 < 0 || i2 == 1) {
                                        iIntValue = -1;
                                        break;
                                    }
                                    treeMap2 = new TreeMap(Collections.reverseOrder());
                                    i4 = 0;
                                    loop2: while (true) {
                                        if (i4 < Q()) {
                                            it4 = y1(i4).iterator();
                                            while (true) {
                                                if (it4.hasNext()) {
                                                    num4 = (Integer) it4.next();
                                                    if (num4.intValue() < 0) {
                                                        treeMap2.put(num4, Integer.valueOf(i4));
                                                    }
                                                } else {
                                                    i4++;
                                                }
                                            }
                                        } else {
                                            it3 = treeMap2.keySet().iterator();
                                            while (true) {
                                                if (it3.hasNext()) {
                                                    num3 = (Integer) it3.next();
                                                    iIntValue3 = num3.intValue();
                                                    if (iIntValue3 < iX1) {
                                                        iIntValue = ((Integer) treeMap2.get(num3)).intValue();
                                                        this.f0 = iIntValue3;
                                                        this.g0 = w1(iIntValue);
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                        iIntValue = -1;
                                        break;
                                    }
                                }
                            }
                            if (iIntValue != -1) {
                                D0(iIntValue);
                                this.e0 = iIntValue;
                                return true;
                            }
                        }
                    }
                }
            }
        } else {
            if (i != 16908343 || bundle == null) {
                return super.u0(i, bundle);
            }
            int i9 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
            int i10 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
            if (i9 != -1 && i10 != -1) {
                int iB = this.b.x.b();
                int i11 = 0;
                while (true) {
                    if (i11 >= iB) {
                        i11 = -1;
                        break;
                    }
                    RecyclerView recyclerView2 = this.b;
                    int iC1 = C1(i11, recyclerView2.c, recyclerView2.x0);
                    RecyclerView recyclerView3 = this.b;
                    int iB1 = B1(i11, recyclerView3.c, recyclerView3.x0);
                    if (this.H != 1) {
                        if (iC1 == i9 && iB1 == i10) {
                            break;
                        }
                        i11++;
                    } else {
                        if (iC1 == i10 && iB1 == i9) {
                            break;
                        }
                        i11++;
                    }
                }
                if (i11 > -1) {
                    this.P = i11;
                    this.Q = 0;
                    xu4 xu4Var = this.R;
                    if (xu4Var != null) {
                        xu4Var.a = -1;
                    }
                    B0();
                    return true;
                }
            }
        }
        return false;
    }

    public final void u1(int i) {
        int i2;
        int[] iArr = this.Y;
        int i3 = this.X;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.Y = iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final int v(bh6 bh6Var) {
        return T0(bh6Var);
    }

    public final void v1() {
        View[] viewArr = this.Z;
        if (viewArr == null || viewArr.length != this.X) {
            this.Z = new View[this.X];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final int w(bh6 bh6Var) {
        return U0(bh6Var);
    }

    public final int w1(int i) {
        int i2 = this.H;
        RecyclerView recyclerView = this.b;
        return i2 == 0 ? B1(i, recyclerView.c, recyclerView.x0) : C1(i, recyclerView.c, recyclerView.x0);
    }

    public final int x1(int i) {
        int i2 = this.H;
        RecyclerView recyclerView = this.b;
        return i2 == 1 ? B1(i, recyclerView.c, recyclerView.x0) : C1(i, recyclerView.c, recyclerView.x0);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final int y(bh6 bh6Var) {
        return T0(bh6Var);
    }

    public final HashSet y1(int i) {
        return z1(x1(i), i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.a
    public final int z(bh6 bh6Var) {
        return U0(bh6Var);
    }

    public final HashSet z1(int i, int i2) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.b;
        int iD1 = D1(i2, recyclerView.c, recyclerView.x0);
        for (int i3 = i; i3 < i + iD1; i3++) {
            hashSet.add(Integer.valueOf(i3));
        }
        return hashSet;
    }

    public GridLayoutManager(Context context, int i) {
        super(context);
        this.W = false;
        this.X = -1;
        this.a0 = new SparseIntArray();
        this.b0 = new SparseIntArray();
        this.c0 = new l39(5);
        this.d0 = new Rect();
        this.e0 = -1;
        this.f0 = -1;
        this.g0 = -1;
        F1(i);
    }

    public GridLayoutManager(Context context, int i, int i2, boolean z) {
        super(context, i2, z);
        this.W = false;
        this.X = -1;
        this.a0 = new SparseIntArray();
        this.b0 = new SparseIntArray();
        this.c0 = new l39(5);
        this.d0 = new Rect();
        this.e0 = -1;
        this.f0 = -1;
        this.g0 = -1;
        F1(i);
    }
}
