package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.jcraft.jsch.SftpATTRS;
import defpackage.ah6;
import defpackage.av4;
import defpackage.bh6;
import defpackage.c6;
import defpackage.fh6;
import defpackage.fz5;
import defpackage.g6;
import defpackage.g67;
import defpackage.gu2;
import defpackage.hg6;
import defpackage.m6;
import defpackage.pg6;
import defpackage.qg6;
import defpackage.ru3;
import defpackage.uu4;
import defpackage.vg6;
import defpackage.vu4;
import defpackage.wu4;
import defpackage.xu4;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class LinearLayoutManager extends a implements ah6 {
    public int H;
    public wu4 I;
    public gu2 J;
    public boolean K;
    public final boolean L;
    public boolean M;
    public boolean N;
    public final boolean O;
    public int P;
    public int Q;
    public xu4 R;
    public final uu4 S;
    public final vu4 T;
    public final int U;
    public final int[] V;

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.H = 1;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = true;
        this.P = -1;
        this.Q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.R = null;
        this.S = new uu4();
        this.T = new vu4();
        this.U = 2;
        this.V = new int[2];
        pg6 pg6VarS = a.S(context, attributeSet, i, i2);
        p1(pg6VarS.a);
        boolean z = pg6VarS.c;
        m(null);
        if (z != this.L) {
            this.L = z;
            B0();
        }
        q1(pg6VarS.d);
    }

    @Override // androidx.recyclerview.widget.a
    public final View B(int i) {
        int iG = G();
        if (iG == 0) {
            return null;
        }
        int iR = i - a.R(F(0));
        if (iR >= 0 && iR < iG) {
            View viewF = F(iR);
            if (a.R(viewF) == i) {
                return viewF;
            }
        }
        return super.B(i);
    }

    @Override // androidx.recyclerview.widget.a
    public qg6 C() {
        return new qg6(-2, -2);
    }

    @Override // androidx.recyclerview.widget.a
    public int C0(int i, vg6 vg6Var, bh6 bh6Var) {
        if (this.H == 1) {
            return 0;
        }
        return o1(i, vg6Var, bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final void D0(int i) {
        this.P = i;
        this.Q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        xu4 xu4Var = this.R;
        if (xu4Var != null) {
            xu4Var.a = -1;
        }
        B0();
    }

    @Override // androidx.recyclerview.widget.a
    public int E0(int i, vg6 vg6Var, bh6 bh6Var) {
        if (this.H == 0) {
            return 0;
        }
        return o1(i, vg6Var, bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean L0() {
        if (this.x != 1073741824 && this.t != 1073741824) {
            int iG = G();
            for (int i = 0; i < iG; i++) {
                ViewGroup.LayoutParams layoutParams = F(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.a
    public void N0(RecyclerView recyclerView, int i) {
        av4 av4Var = new av4(recyclerView.getContext());
        av4Var.a = i;
        O0(av4Var);
    }

    @Override // androidx.recyclerview.widget.a
    public boolean P0() {
        return this.R == null && this.K == this.N;
    }

    public void Q0(bh6 bh6Var, int[] iArr) {
        int i;
        int iH1 = h1(bh6Var);
        if (this.I.f == -1) {
            i = 0;
        } else {
            i = iH1;
            iH1 = 0;
        }
        iArr[0] = iH1;
        iArr[1] = i;
    }

    public void R0(bh6 bh6Var, wu4 wu4Var, ru3 ru3Var) {
        int i = wu4Var.d;
        if (i < 0 || i >= bh6Var.b()) {
            return;
        }
        ru3Var.b(i, Math.max(0, wu4Var.g));
    }

    public final int S0(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        W0();
        gu2 gu2Var = this.J;
        boolean z = !this.O;
        return g67.h(bh6Var, gu2Var, Z0(z), Y0(z), this, this.O);
    }

    public final int T0(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        W0();
        gu2 gu2Var = this.J;
        boolean z = !this.O;
        return g67.i(bh6Var, gu2Var, Z0(z), Y0(z), this, this.O, this.M);
    }

    public final int U0(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        W0();
        gu2 gu2Var = this.J;
        boolean z = !this.O;
        return g67.j(bh6Var, gu2Var, Z0(z), Y0(z), this, this.O);
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean V() {
        return true;
    }

    public final int V0(int i) {
        if (i == 1) {
            return (this.H != 1 && i1()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.H != 1 && i1()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.H == 0) {
                return -1;
            }
            return SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        if (i == 33) {
            if (this.H == 1) {
                return -1;
            }
            return SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        if (i == 66) {
            if (this.H == 0) {
                return 1;
            }
            return SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        if (i == 130 && this.H == 1) {
            return 1;
        }
        return SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean W() {
        return this.L;
    }

    public final void W0() {
        if (this.I == null) {
            wu4 wu4Var = new wu4();
            wu4Var.a = true;
            wu4Var.h = 0;
            wu4Var.i = 0;
            wu4Var.k = null;
            this.I = wu4Var;
        }
    }

    public final int X0(vg6 vg6Var, wu4 wu4Var, bh6 bh6Var, boolean z) {
        int i;
        int i2 = wu4Var.c;
        int i3 = wu4Var.g;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                wu4Var.g = i3 + i2;
            }
            l1(vg6Var, wu4Var);
        }
        int i4 = wu4Var.c + wu4Var.h;
        while (true) {
            if ((!wu4Var.l && i4 <= 0) || (i = wu4Var.d) < 0 || i >= bh6Var.b()) {
                break;
            }
            vu4 vu4Var = this.T;
            vu4Var.a = 0;
            vu4Var.b = false;
            vu4Var.c = false;
            vu4Var.d = false;
            j1(vg6Var, bh6Var, wu4Var, vu4Var);
            if (!vu4Var.b) {
                int i5 = wu4Var.b;
                int i6 = vu4Var.a;
                wu4Var.b = (wu4Var.f * i6) + i5;
                if (!vu4Var.c || wu4Var.k != null || !bh6Var.g) {
                    wu4Var.c -= i6;
                    i4 -= i6;
                }
                int i7 = wu4Var.g;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    wu4Var.g = i8;
                    int i9 = wu4Var.c;
                    if (i9 < 0) {
                        wu4Var.g = i8 + i9;
                    }
                    l1(vg6Var, wu4Var);
                }
                if (z && vu4Var.d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - wu4Var.c;
    }

    public final View Y0(boolean z) {
        return this.M ? b1(0, G(), z) : b1(G() - 1, -1, z);
    }

    public final View Z0(boolean z) {
        return this.M ? b1(G() - 1, -1, z) : b1(0, G(), z);
    }

    @Override // defpackage.ah6
    public final PointF a(int i) {
        if (G() == 0) {
            return null;
        }
        int i2 = (i < a.R(F(0))) != this.M ? -1 : 1;
        return this.H == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    public final View a1(int i, int i2) {
        int i3;
        int i4;
        W0();
        if (i2 <= i && i2 >= i) {
            return F(i);
        }
        if (this.J.g(F(i)) < this.J.m()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.H == 0 ? this.c.d(i, i2, i3, i4) : this.d.d(i, i2, i3, i4);
    }

    public final View b1(int i, int i2, boolean z) {
        W0();
        int i3 = z ? 24579 : 320;
        return this.H == 0 ? this.c.d(i, i2, i3, 320) : this.d.d(i, i2, i3, 320);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0075  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079  */
    public View c1(vg6 vg6Var, bh6 bh6Var, boolean z, boolean z2) {
        int i;
        int iG;
        int i2;
        W0();
        int iG2 = G();
        if (z2) {
            iG = G() - 1;
            i = -1;
            i2 = -1;
        } else {
            i = iG2;
            iG = 0;
            i2 = 1;
        }
        int iB = bh6Var.b();
        int iM = this.J.m();
        int i3 = this.J.i();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (iG != i) {
            View viewF = F(iG);
            int iR = a.R(viewF);
            int iG3 = this.J.g(viewF);
            int iD = this.J.d(viewF);
            if (iR >= 0 && iR < iB) {
                if (!((qg6) viewF.getLayoutParams()).a.i()) {
                    boolean z3 = iD <= iM && iG3 < iM;
                    boolean z4 = iG3 >= i3 && iD > i3;
                    if (!z3 && !z4) {
                        return viewF;
                    }
                    if (z) {
                        if (z4) {
                            view2 = viewF;
                        } else if (view == null) {
                            view = viewF;
                        }
                    } else if (z3) {
                        view2 = viewF;
                    } else if (view == null) {
                        view = viewF;
                    }
                } else if (view3 == null) {
                    view3 = viewF;
                }
            }
            iG += i2;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    public final int d1(int i, vg6 vg6Var, bh6 bh6Var, boolean z) {
        int i2;
        int i3 = this.J.i() - i;
        if (i3 <= 0) {
            return 0;
        }
        int i4 = -o1(-i3, vg6Var, bh6Var);
        int i5 = i + i4;
        if (!z || (i2 = this.J.i() - i5) <= 0) {
            return i4;
        }
        this.J.r(i2);
        return i2 + i4;
    }

    @Override // androidx.recyclerview.widget.a
    public View e0(View view, int i, vg6 vg6Var, bh6 bh6Var) {
        int iV0;
        View viewA1;
        n1();
        if (G() != 0 && (iV0 = V0(i)) != Integer.MIN_VALUE) {
            W0();
            r1(iV0, (int) (this.J.n() * 0.33333334f), false, bh6Var);
            wu4 wu4Var = this.I;
            wu4Var.g = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            wu4Var.a = false;
            X0(vg6Var, wu4Var, bh6Var, true);
            boolean z = this.M;
            if (iV0 == -1) {
                viewA1 = z ? a1(G() - 1, -1) : a1(0, G());
            } else {
                viewA1 = z ? a1(0, G()) : a1(G() - 1, -1);
            }
            View viewG1 = iV0 == -1 ? g1() : f1();
            if (!viewG1.hasFocusable()) {
                return viewA1;
            }
            if (viewA1 != null) {
                return viewG1;
            }
        }
        return null;
    }

    public final int e1(int i, vg6 vg6Var, bh6 bh6Var, boolean z) {
        int iM;
        int iM2 = i - this.J.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i2 = -o1(iM2, vg6Var, bh6Var);
        int i3 = i + i2;
        if (!z || (iM = i3 - this.J.m()) <= 0) {
            return i2;
        }
        this.J.r(-iM);
        return i2 - iM;
    }

    @Override // androidx.recyclerview.widget.a
    public final void f0(AccessibilityEvent accessibilityEvent) {
        super.f0(accessibilityEvent);
        if (G() > 0) {
            View viewB1 = b1(0, G(), false);
            accessibilityEvent.setFromIndex(viewB1 == null ? -1 : a.R(viewB1));
            View viewB2 = b1(G() - 1, -1, false);
            accessibilityEvent.setToIndex(viewB2 != null ? a.R(viewB2) : -1);
        }
    }

    public final View f1() {
        return F(this.M ? 0 : G() - 1);
    }

    @Override // androidx.recyclerview.widget.a
    public void g0(vg6 vg6Var, bh6 bh6Var, m6 m6Var) {
        super.g0(vg6Var, bh6Var, m6Var);
        hg6 hg6Var = this.b.x;
        if (hg6Var == null || hg6Var.b() <= 0) {
            return;
        }
        m6Var.b(g6.l);
    }

    public final View g1() {
        return F(this.M ? G() - 1 : 0);
    }

    public int h1(bh6 bh6Var) {
        if (bh6Var.a != -1) {
            return this.J.n();
        }
        return 0;
    }

    public final boolean i1() {
        return this.b.getLayoutDirection() == 1;
    }

    public void j1(vg6 vg6Var, bh6 bh6Var, wu4 wu4Var, vu4 vu4Var) {
        int i;
        int iF;
        int i2;
        int iF2;
        View viewB = wu4Var.b(vg6Var);
        if (viewB == null) {
            vu4Var.b = true;
            return;
        }
        qg6 qg6Var = (qg6) viewB.getLayoutParams();
        List list = wu4Var.k;
        boolean z = this.M;
        int i3 = wu4Var.f;
        if (list == null) {
            if (z == (i3 == -1)) {
                l(viewB, -1, false);
            } else {
                l(viewB, 0, false);
            }
        } else {
            if (z == (i3 == -1)) {
                l(viewB, -1, true);
            } else {
                l(viewB, 0, true);
            }
        }
        qg6 qg6Var2 = (qg6) viewB.getLayoutParams();
        Rect rectM = this.b.M(viewB);
        int i4 = rectM.left + rectM.right;
        int i5 = rectM.top + rectM.bottom;
        int iH = a.H(o(), this.y, this.t, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) qg6Var2).leftMargin + ((ViewGroup.MarginLayoutParams) qg6Var2).rightMargin + i4, ((ViewGroup.MarginLayoutParams) qg6Var2).width);
        int iH2 = a.H(p(), this.G, this.x, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) qg6Var2).topMargin + ((ViewGroup.MarginLayoutParams) qg6Var2).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) qg6Var2).height);
        if (K0(viewB, iH, iH2, qg6Var2)) {
            viewB.measure(iH, iH2);
        }
        vu4Var.a = this.J.e(viewB);
        if (this.H == 1) {
            if (i1()) {
                iF2 = this.y - getPaddingRight();
                iF = iF2 - this.J.f(viewB);
            } else {
                int paddingLeft = getPaddingLeft();
                iF2 = this.J.f(viewB) + paddingLeft;
                iF = paddingLeft;
            }
            int i6 = wu4Var.f;
            i2 = wu4Var.b;
            int i7 = vu4Var.a;
            if (i6 == -1) {
                int i8 = i2 - i7;
                i = i2;
                i2 = i8;
            } else {
                i = i7 + i2;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iF3 = this.J.f(viewB) + paddingTop;
            int i9 = wu4Var.f;
            int i10 = wu4Var.b;
            int i11 = vu4Var.a;
            if (i9 == -1) {
                int i12 = i10 - i11;
                iF2 = i10;
                i2 = paddingTop;
                i = iF3;
                iF = i12;
            } else {
                int i13 = i10 + i11;
                i = iF3;
                iF = i10;
                i2 = paddingTop;
                iF2 = i13;
            }
        }
        a.Y(viewB, iF, i2, iF2, i);
        if (qg6Var.a.i() || qg6Var.a.l()) {
            vu4Var.c = true;
        }
        vu4Var.d = viewB.hasFocusable();
    }

    public final void l1(vg6 vg6Var, wu4 wu4Var) {
        if (!wu4Var.a || wu4Var.l) {
            return;
        }
        int i = wu4Var.g;
        int i2 = wu4Var.i;
        if (wu4Var.f == -1) {
            int iG = G();
            if (i < 0) {
                return;
            }
            int iH = (this.J.h() - i) + i2;
            if (this.M) {
                for (int i3 = 0; i3 < iG; i3++) {
                    View viewF = F(i3);
                    if (this.J.g(viewF) < iH || this.J.q(viewF) < iH) {
                        m1(vg6Var, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = iG - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View viewF2 = F(i5);
                if (this.J.g(viewF2) < iH || this.J.q(viewF2) < iH) {
                    m1(vg6Var, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int iG2 = G();
        if (!this.M) {
            for (int i7 = 0; i7 < iG2; i7++) {
                View viewF3 = F(i7);
                if (this.J.d(viewF3) > i6 || this.J.p(viewF3) > i6) {
                    m1(vg6Var, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = iG2 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View viewF4 = F(i9);
            if (this.J.d(viewF4) > i6 || this.J.p(viewF4) > i6) {
                m1(vg6Var, i8, i9);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void m(String str) {
        if (this.R == null) {
            super.m(str);
        }
    }

    public final void m1(vg6 vg6Var, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                z0(i, vg6Var);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                z0(i3, vg6Var);
            }
        }
    }

    public final void n1() {
        if (this.H == 1 || !i1()) {
            this.M = this.L;
        } else {
            this.M = !this.L;
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean o() {
        return this.H == 0;
    }

    public final int o1(int i, vg6 vg6Var, bh6 bh6Var) {
        if (G() != 0 && i != 0) {
            W0();
            this.I.a = true;
            int i2 = i > 0 ? 1 : -1;
            int iAbs = Math.abs(i);
            r1(i2, iAbs, true, bh6Var);
            wu4 wu4Var = this.I;
            int iX0 = X0(vg6Var, wu4Var, bh6Var, false) + wu4Var.g;
            if (iX0 >= 0) {
                if (iAbs > iX0) {
                    i = i2 * iX0;
                }
                this.J.r(-i);
                this.I.j = i;
                return i;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean p() {
        return this.H == 1;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0199  */
    /* JADX WARN: Code duplicated, block: B:107:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:110:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:114:0x01de  */
    /* JADX WARN: Code duplicated, block: B:115:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:118:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:122:0x0218 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x021c  */
    /* JADX WARN: Code duplicated, block: B:126:0x021f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:128:0x0223  */
    /* JADX WARN: Code duplicated, block: B:130:0x0226 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:131:0x0228  */
    /* JADX WARN: Code duplicated, block: B:133:0x022c  */
    /* JADX WARN: Code duplicated, block: B:135:0x0230  */
    /* JADX WARN: Code duplicated, block: B:137:0x0237  */
    /* JADX WARN: Code duplicated, block: B:138:0x023d  */
    /* JADX WARN: Code duplicated, block: B:91:0x0181  */
    /* JADX WARN: Code duplicated, block: B:98:0x0196  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v14 */
    @Override // androidx.recyclerview.widget.a
    public void p0(vg6 vg6Var, bh6 bh6Var) {
        View focusedChild;
        int iB;
        RecyclerView recyclerView;
        View focusedChild2;
        boolean z;
        boolean z2;
        View viewC1;
        boolean z3;
        gu2 gu2Var;
        int iG;
        int iD;
        int iM;
        int i;
        boolean z4;
        boolean z5;
        qg6 qg6Var;
        int i2;
        int i3;
        int i4;
        ?? r4;
        List list;
        int i5;
        int i6;
        int iD1;
        int i7;
        View viewB;
        int iG2;
        int i8;
        int i9;
        int i10 = -1;
        if (!(this.R == null && this.P == -1) && bh6Var.b() == 0) {
            w0(vg6Var);
            return;
        }
        xu4 xu4Var = this.R;
        if (xu4Var != null && (i9 = xu4Var.a) >= 0) {
            this.P = i9;
        }
        W0();
        boolean z6 = false;
        this.I.a = false;
        n1();
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 == null || (focusedChild = recyclerView2.getFocusedChild()) == null || this.a.c.contains(focusedChild)) {
            focusedChild = null;
        }
        uu4 uu4Var = this.S;
        if (!uu4Var.e || this.P != -1 || this.R != null) {
            uu4Var.c();
            uu4Var.d = this.M ^ this.N;
            if (bh6Var.g || (i2 = this.P) == -1) {
                if (G() != 0) {
                    recyclerView = this.b;
                    if (recyclerView != null || (focusedChild2 = recyclerView.getFocusedChild()) == null || this.a.c.contains(focusedChild2)) {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        qg6Var = (qg6) focusedChild2.getLayoutParams();
                        if (!qg6Var.a.i() || qg6Var.a.c() < 0 || qg6Var.a.c() >= bh6Var.b()) {
                            z = this.K;
                            z2 = this.N;
                            if (z == z2 || (viewC1 = c1(vg6Var, bh6Var, uu4Var.d, z2)) == null) {
                                uu4Var.a();
                                if (this.N) {
                                    iB = bh6Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                uu4Var.b = iB;
                            } else {
                                int iR = a.R(viewC1);
                                z3 = uu4Var.d;
                                gu2Var = uu4Var.a;
                                if (z3) {
                                    uu4Var.c = uu4Var.a.o() + gu2Var.d(viewC1);
                                } else {
                                    uu4Var.c = gu2Var.g(viewC1);
                                }
                                uu4Var.b = iR;
                                if (!bh6Var.g && P0()) {
                                    iG = this.J.g(viewC1);
                                    iD = this.J.d(viewC1);
                                    iM = this.J.m();
                                    i = this.J.i();
                                    if (iD <= iM || iG >= iM) {
                                        z4 = false;
                                    } else {
                                        z4 = true;
                                    }
                                    if (iG >= i || iD <= i) {
                                        z5 = false;
                                    } else {
                                        z5 = true;
                                    }
                                    if (z4 || z5) {
                                        if (uu4Var.d) {
                                            iM = i;
                                        }
                                        uu4Var.c = iM;
                                    }
                                }
                            }
                        } else {
                            uu4Var.b(focusedChild2, a.R(focusedChild2));
                        }
                    } else {
                        z = this.K;
                        z2 = this.N;
                        if (z == z2) {
                            uu4Var.a();
                            if (this.N) {
                                iB = bh6Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            uu4Var.b = iB;
                        } else {
                            int iR2 = a.R(viewC1);
                            z3 = uu4Var.d;
                            gu2Var = uu4Var.a;
                            if (z3) {
                                uu4Var.c = uu4Var.a.o() + gu2Var.d(viewC1);
                            } else {
                                uu4Var.c = gu2Var.g(viewC1);
                            }
                            uu4Var.b = iR2;
                            if (!bh6Var.g) {
                                iG = this.J.g(viewC1);
                                iD = this.J.d(viewC1);
                                iM = this.J.m();
                                i = this.J.i();
                                if (iD <= iM) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iG >= i) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (uu4Var.d) {
                                        iM = i;
                                    }
                                    uu4Var.c = iM;
                                } else {
                                    if (uu4Var.d) {
                                        iM = i;
                                    }
                                    uu4Var.c = iM;
                                }
                            }
                        }
                    }
                } else {
                    uu4Var.a();
                    if (this.N) {
                        iB = bh6Var.b() - 1;
                    } else {
                        iB = 0;
                    }
                    uu4Var.b = iB;
                }
            } else if (i2 < 0 || i2 >= bh6Var.b()) {
                this.P = -1;
                this.Q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                if (G() != 0) {
                    recyclerView = this.b;
                    if (recyclerView != null) {
                        focusedChild2 = null;
                    } else {
                        focusedChild2 = null;
                    }
                    if (focusedChild2 != null) {
                        qg6Var = (qg6) focusedChild2.getLayoutParams();
                        if (qg6Var.a.i()) {
                            z = this.K;
                            z2 = this.N;
                            if (z == z2) {
                                uu4Var.a();
                                if (this.N) {
                                    iB = bh6Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                uu4Var.b = iB;
                            } else {
                                int iR3 = a.R(viewC1);
                                z3 = uu4Var.d;
                                gu2Var = uu4Var.a;
                                if (z3) {
                                    uu4Var.c = uu4Var.a.o() + gu2Var.d(viewC1);
                                } else {
                                    uu4Var.c = gu2Var.g(viewC1);
                                }
                                uu4Var.b = iR3;
                                if (!bh6Var.g) {
                                    iG = this.J.g(viewC1);
                                    iD = this.J.d(viewC1);
                                    iM = this.J.m();
                                    i = this.J.i();
                                    if (iD <= iM) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iG >= i) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (uu4Var.d) {
                                            iM = i;
                                        }
                                        uu4Var.c = iM;
                                    } else {
                                        if (uu4Var.d) {
                                            iM = i;
                                        }
                                        uu4Var.c = iM;
                                    }
                                }
                            }
                        } else {
                            z = this.K;
                            z2 = this.N;
                            if (z == z2) {
                                uu4Var.a();
                                if (this.N) {
                                    iB = bh6Var.b() - 1;
                                } else {
                                    iB = 0;
                                }
                                uu4Var.b = iB;
                            } else {
                                int iR4 = a.R(viewC1);
                                z3 = uu4Var.d;
                                gu2Var = uu4Var.a;
                                if (z3) {
                                    uu4Var.c = uu4Var.a.o() + gu2Var.d(viewC1);
                                } else {
                                    uu4Var.c = gu2Var.g(viewC1);
                                }
                                uu4Var.b = iR4;
                                if (!bh6Var.g) {
                                    iG = this.J.g(viewC1);
                                    iD = this.J.d(viewC1);
                                    iM = this.J.m();
                                    i = this.J.i();
                                    if (iD <= iM) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    if (iG >= i) {
                                        z5 = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z4) {
                                        if (uu4Var.d) {
                                            iM = i;
                                        }
                                        uu4Var.c = iM;
                                    } else {
                                        if (uu4Var.d) {
                                            iM = i;
                                        }
                                        uu4Var.c = iM;
                                    }
                                }
                            }
                        }
                    } else {
                        z = this.K;
                        z2 = this.N;
                        if (z == z2) {
                            uu4Var.a();
                            if (this.N) {
                                iB = bh6Var.b() - 1;
                            } else {
                                iB = 0;
                            }
                            uu4Var.b = iB;
                        } else {
                            int iR5 = a.R(viewC1);
                            z3 = uu4Var.d;
                            gu2Var = uu4Var.a;
                            if (z3) {
                                uu4Var.c = uu4Var.a.o() + gu2Var.d(viewC1);
                            } else {
                                uu4Var.c = gu2Var.g(viewC1);
                            }
                            uu4Var.b = iR5;
                            if (!bh6Var.g) {
                                iG = this.J.g(viewC1);
                                iD = this.J.d(viewC1);
                                iM = this.J.m();
                                i = this.J.i();
                                if (iD <= iM) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                if (iG >= i) {
                                    z5 = false;
                                } else {
                                    z5 = false;
                                }
                                if (z4) {
                                    if (uu4Var.d) {
                                        iM = i;
                                    }
                                    uu4Var.c = iM;
                                } else {
                                    if (uu4Var.d) {
                                        iM = i;
                                    }
                                    uu4Var.c = iM;
                                }
                            }
                        }
                    }
                } else {
                    uu4Var.a();
                    if (this.N) {
                        iB = bh6Var.b() - 1;
                    } else {
                        iB = 0;
                    }
                    uu4Var.b = iB;
                }
            } else {
                int i11 = this.P;
                uu4Var.b = i11;
                xu4 xu4Var2 = this.R;
                if (xu4Var2 != null && xu4Var2.a >= 0) {
                    boolean z7 = xu4Var2.c;
                    uu4Var.d = z7;
                    gu2 gu2Var2 = this.J;
                    if (z7) {
                        uu4Var.c = gu2Var2.i() - this.R.b;
                    } else {
                        uu4Var.c = gu2Var2.m() + this.R.b;
                    }
                } else if (this.Q == Integer.MIN_VALUE) {
                    View viewB2 = B(i11);
                    if (viewB2 == null) {
                        if (G() > 0) {
                            uu4Var.d = (this.P < a.R(F(0))) == this.M;
                        }
                        uu4Var.a();
                    } else if (this.J.e(viewB2) > this.J.n()) {
                        uu4Var.a();
                    } else {
                        int iG3 = this.J.g(viewB2) - this.J.m();
                        gu2 gu2Var3 = this.J;
                        if (iG3 < 0) {
                            uu4Var.c = gu2Var3.m();
                            uu4Var.d = false;
                        } else if (gu2Var3.i() - this.J.d(viewB2) < 0) {
                            uu4Var.c = this.J.i();
                            uu4Var.d = true;
                        } else {
                            boolean z8 = uu4Var.d;
                            gu2 gu2Var4 = this.J;
                            uu4Var.c = z8 ? this.J.o() + gu2Var4.d(viewB2) : gu2Var4.g(viewB2);
                        }
                    }
                } else {
                    boolean z9 = this.M;
                    uu4Var.d = z9;
                    gu2 gu2Var5 = this.J;
                    if (z9) {
                        uu4Var.c = gu2Var5.i() - this.Q;
                    } else {
                        uu4Var.c = gu2Var5.m() + this.Q;
                    }
                }
            }
            uu4Var.e = true;
        } else if (focusedChild != null && (this.J.g(focusedChild) >= this.J.i() || this.J.d(focusedChild) <= this.J.m())) {
            uu4Var.b(focusedChild, a.R(focusedChild));
        }
        wu4 wu4Var = this.I;
        wu4Var.f = wu4Var.j >= 0 ? 1 : -1;
        int[] iArr = this.V;
        iArr[0] = 0;
        iArr[1] = 0;
        Q0(bh6Var, iArr);
        int iM2 = this.J.m() + Math.max(0, iArr[0]);
        int iJ = this.J.j() + Math.max(0, iArr[1]);
        if (bh6Var.g && (i7 = this.P) != -1 && this.Q != Integer.MIN_VALUE && (viewB = B(i7)) != null) {
            boolean z10 = this.M;
            gu2 gu2Var6 = this.J;
            if (z10) {
                i8 = gu2Var6.i() - this.J.d(viewB);
                iG2 = this.Q;
            } else {
                iG2 = gu2Var6.g(viewB) - this.J.m();
                i8 = this.Q;
            }
            int i12 = i8 - iG2;
            if (i12 > 0) {
                iM2 += i12;
            } else {
                iJ -= i12;
            }
        }
        boolean z11 = uu4Var.d;
        boolean z12 = this.M;
        if (!z11 ? !z12 : z12) {
            i10 = 1;
        }
        k1(vg6Var, bh6Var, uu4Var, i10);
        A(vg6Var);
        this.I.l = this.J.k() == 0 && this.J.h() == 0;
        this.I.getClass();
        this.I.i = 0;
        boolean z13 = uu4Var.d;
        int i13 = uu4Var.b;
        if (z13) {
            t1(i13, uu4Var.c);
            wu4 wu4Var2 = this.I;
            wu4Var2.h = iM2;
            X0(vg6Var, wu4Var2, bh6Var, false);
            wu4 wu4Var3 = this.I;
            i4 = wu4Var3.b;
            int i14 = wu4Var3.d;
            int i15 = wu4Var3.c;
            if (i15 > 0) {
                iJ += i15;
            }
            s1(uu4Var.b, uu4Var.c);
            wu4 wu4Var4 = this.I;
            wu4Var4.h = iJ;
            wu4Var4.d += wu4Var4.e;
            X0(vg6Var, wu4Var4, bh6Var, false);
            wu4 wu4Var5 = this.I;
            i3 = wu4Var5.b;
            int i16 = wu4Var5.c;
            if (i16 > 0) {
                t1(i14, i4);
                wu4 wu4Var6 = this.I;
                wu4Var6.h = i16;
                X0(vg6Var, wu4Var6, bh6Var, false);
                i4 = this.I.b;
            }
        } else {
            s1(i13, uu4Var.c);
            wu4 wu4Var7 = this.I;
            wu4Var7.h = iJ;
            X0(vg6Var, wu4Var7, bh6Var, false);
            wu4 wu4Var8 = this.I;
            i3 = wu4Var8.b;
            int i17 = wu4Var8.d;
            int i18 = wu4Var8.c;
            if (i18 > 0) {
                iM2 += i18;
            }
            t1(uu4Var.b, uu4Var.c);
            wu4 wu4Var9 = this.I;
            wu4Var9.h = iM2;
            wu4Var9.d += wu4Var9.e;
            X0(vg6Var, wu4Var9, bh6Var, false);
            wu4 wu4Var10 = this.I;
            int i19 = wu4Var10.b;
            int i20 = wu4Var10.c;
            if (i20 > 0) {
                s1(i17, i3);
                wu4 wu4Var11 = this.I;
                wu4Var11.h = i20;
                X0(vg6Var, wu4Var11, bh6Var, false);
                i3 = this.I.b;
            }
            i4 = i19;
        }
        if (G() > 0) {
            if (this.M ^ this.N) {
                int iD2 = d1(i3, vg6Var, bh6Var, true);
                i5 = i4 + iD2;
                i6 = i3 + iD2;
                iD1 = e1(i5, vg6Var, bh6Var, false);
            } else {
                int iE1 = e1(i4, vg6Var, bh6Var, true);
                i5 = i4 + iE1;
                i6 = i3 + iE1;
                iD1 = d1(i6, vg6Var, bh6Var, false);
            }
            i4 = i5 + iD1;
            i3 = i6 + iD1;
        }
        if (bh6Var.k && G() != 0 && !bh6Var.g && P0()) {
            List list2 = (List) vg6Var.f;
            int size = list2.size();
            int iR6 = a.R(F(0));
            int i21 = 0;
            int iE = 0;
            int iE2 = 0;
            while (i21 < size) {
                fh6 fh6Var = (fh6) list2.get(i21);
                boolean zI = fh6Var.i();
                View view = fh6Var.a;
                if (!zI) {
                    boolean z14 = fh6Var.c() < iR6 ? true : z6;
                    boolean z15 = this.M;
                    gu2 gu2Var7 = this.J;
                    if (z14 != z15) {
                        iE += gu2Var7.e(view);
                    } else {
                        iE2 += gu2Var7.e(view);
                    }
                }
                i21++;
                z6 = false;
            }
            this.I.k = list2;
            if (iE > 0) {
                t1(a.R(g1()), i4);
                wu4 wu4Var12 = this.I;
                wu4Var12.h = iE;
                r4 = 0;
                wu4Var12.c = 0;
                wu4Var12.a(null);
                X0(vg6Var, this.I, bh6Var, false);
            } else {
                r4 = 0;
            }
            if (iE2 > 0) {
                s1(a.R(f1()), i3);
                wu4 wu4Var13 = this.I;
                wu4Var13.h = iE2;
                wu4Var13.c = r4;
                list = null;
                wu4Var13.a(null);
                X0(vg6Var, this.I, bh6Var, r4);
            } else {
                list = null;
            }
            this.I.k = list;
        }
        if (bh6Var.g) {
            uu4Var.c();
        } else {
            gu2 gu2Var8 = this.J;
            gu2Var8.a = gu2Var8.n();
        }
        this.K = this.N;
    }

    public final void p1(int i) {
        if (i != 0 && i != 1) {
            c6.f(fz5.j(i, "invalid orientation:"));
            return;
        }
        m(null);
        if (i != this.H || this.J == null) {
            gu2 gu2VarB = gu2.b(this, i);
            this.J = gu2VarB;
            this.S.a = gu2VarB;
            this.H = i;
            B0();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public void q0(bh6 bh6Var) {
        this.R = null;
        this.P = -1;
        this.Q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.S.c();
    }

    public void q1(boolean z) {
        m(null);
        if (this.N == z) {
            return;
        }
        this.N = z;
        B0();
    }

    @Override // androidx.recyclerview.widget.a
    public final void r0(Parcelable parcelable) {
        if (parcelable instanceof xu4) {
            xu4 xu4Var = (xu4) parcelable;
            this.R = xu4Var;
            if (this.P != -1) {
                xu4Var.a = -1;
            }
            B0();
        }
    }

    public final void r1(int i, int i2, boolean z, bh6 bh6Var) {
        int iM;
        this.I.l = this.J.k() == 0 && this.J.h() == 0;
        this.I.f = i;
        int[] iArr = this.V;
        iArr[0] = 0;
        iArr[1] = 0;
        Q0(bh6Var, iArr);
        int iMax = Math.max(0, iArr[0]);
        int iMax2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        wu4 wu4Var = this.I;
        int i3 = z2 ? iMax2 : iMax;
        wu4Var.h = i3;
        if (!z2) {
            iMax = iMax2;
        }
        wu4Var.i = iMax;
        if (z2) {
            wu4Var.h = this.J.j() + i3;
            View viewF1 = f1();
            wu4 wu4Var2 = this.I;
            wu4Var2.e = this.M ? -1 : 1;
            int iR = a.R(viewF1);
            wu4 wu4Var3 = this.I;
            wu4Var2.d = iR + wu4Var3.e;
            wu4Var3.b = this.J.d(viewF1);
            iM = this.J.d(viewF1) - this.J.i();
        } else {
            View viewG1 = g1();
            wu4 wu4Var4 = this.I;
            wu4Var4.h = this.J.m() + wu4Var4.h;
            wu4 wu4Var5 = this.I;
            wu4Var5.e = this.M ? 1 : -1;
            int iR2 = a.R(viewG1);
            wu4 wu4Var6 = this.I;
            wu4Var5.d = iR2 + wu4Var6.e;
            wu4Var6.b = this.J.g(viewG1);
            iM = (-this.J.g(viewG1)) + this.J.m();
        }
        wu4 wu4Var7 = this.I;
        wu4Var7.c = i2;
        if (z) {
            wu4Var7.c = i2 - iM;
        }
        wu4Var7.g = iM;
    }

    @Override // androidx.recyclerview.widget.a
    public final void s(int i, int i2, bh6 bh6Var, ru3 ru3Var) {
        if (this.H != 0) {
            i = i2;
        }
        if (G() == 0 || i == 0) {
            return;
        }
        W0();
        r1(i > 0 ? 1 : -1, Math.abs(i), true, bh6Var);
        R0(bh6Var, this.I, ru3Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final Parcelable s0() {
        xu4 xu4Var = this.R;
        if (xu4Var != null) {
            xu4 xu4Var2 = new xu4();
            xu4Var2.a = xu4Var.a;
            xu4Var2.b = xu4Var.b;
            xu4Var2.c = xu4Var.c;
            return xu4Var2;
        }
        xu4 xu4Var3 = new xu4();
        if (G() <= 0) {
            xu4Var3.a = -1;
            return xu4Var3;
        }
        W0();
        boolean z = this.K ^ this.M;
        xu4Var3.c = z;
        if (z) {
            View viewF1 = f1();
            xu4Var3.b = this.J.i() - this.J.d(viewF1);
            xu4Var3.a = a.R(viewF1);
            return xu4Var3;
        }
        View viewG1 = g1();
        xu4Var3.a = a.R(viewG1);
        xu4Var3.b = this.J.g(viewG1) - this.J.m();
        return xu4Var3;
    }

    public final void s1(int i, int i2) {
        this.I.c = this.J.i() - i2;
        wu4 wu4Var = this.I;
        wu4Var.e = this.M ? -1 : 1;
        wu4Var.d = i;
        wu4Var.f = 1;
        wu4Var.b = i2;
        wu4Var.g = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    }

    @Override // androidx.recyclerview.widget.a
    public final void t(int i, ru3 ru3Var) {
        boolean z;
        int i2;
        xu4 xu4Var = this.R;
        if (xu4Var == null || (i2 = xu4Var.a) < 0) {
            n1();
            z = this.M;
            i2 = this.P;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            z = xu4Var.c;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.U && i2 >= 0 && i2 < i; i4++) {
            ru3Var.b(i2, 0);
            i2 += i3;
        }
    }

    public final void t1(int i, int i2) {
        this.I.c = i2 - this.J.m();
        wu4 wu4Var = this.I;
        wu4Var.d = i;
        wu4Var.e = this.M ? 1 : -1;
        wu4Var.f = -1;
        wu4Var.b = i2;
        wu4Var.g = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
    }

    @Override // androidx.recyclerview.widget.a
    public final int u(bh6 bh6Var) {
        return S0(bh6Var);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:21:0x0050  */
    @Override // androidx.recyclerview.widget.a
    public boolean u0(int i, Bundle bundle) {
        int iMin;
        xu4 xu4Var;
        if (super.u0(i, bundle)) {
            return true;
        }
        if (i == 16908343 && bundle != null) {
            if (this.H == 1) {
                int i2 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i2 >= 0) {
                    RecyclerView recyclerView = this.b;
                    iMin = Math.min(i2, T(recyclerView.c, recyclerView.x0) - 1);
                    if (iMin >= 0) {
                        this.P = iMin;
                        this.Q = 0;
                        xu4Var = this.R;
                        if (xu4Var != null) {
                            xu4Var.a = -1;
                        }
                        B0();
                        return true;
                    }
                }
            } else {
                int i3 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i3 >= 0) {
                    RecyclerView recyclerView2 = this.b;
                    iMin = Math.min(i3, I(recyclerView2.c, recyclerView2.x0) - 1);
                    if (iMin >= 0) {
                        this.P = iMin;
                        this.Q = 0;
                        xu4Var = this.R;
                        if (xu4Var != null) {
                            xu4Var.a = -1;
                        }
                        B0();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.a
    public int v(bh6 bh6Var) {
        return T0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public int w(bh6 bh6Var) {
        return U0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int x(bh6 bh6Var) {
        return S0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public int y(bh6 bh6Var) {
        return T0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public int z(bh6 bh6Var) {
        return U0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final void d0(RecyclerView recyclerView) {
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.H = 1;
        this.L = false;
        this.M = false;
        this.N = false;
        this.O = true;
        this.P = -1;
        this.Q = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.R = null;
        this.S = new uu4();
        this.T = new vu4();
        this.U = 2;
        this.V = new int[2];
        p1(i);
        m(null);
        if (z == this.L) {
            return;
        }
        this.L = z;
        B0();
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public void k1(vg6 vg6Var, bh6 bh6Var, uu4 uu4Var, int i) {
    }
}
