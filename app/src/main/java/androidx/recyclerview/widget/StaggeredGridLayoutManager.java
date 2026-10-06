package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import com.jcraft.jsch.SftpATTRS;
import defpackage.ah6;
import defpackage.aq2;
import defpackage.av4;
import defpackage.bh6;
import defpackage.c00;
import defpackage.c6;
import defpackage.dj7;
import defpackage.dl8;
import defpackage.g67;
import defpackage.gu2;
import defpackage.m6;
import defpackage.ms4;
import defpackage.om5;
import defpackage.p35;
import defpackage.pg6;
import defpackage.qg6;
import defpackage.ru3;
import defpackage.vg6;
import defpackage.wk7;
import defpackage.xk7;
import defpackage.yk7;
import defpackage.zk7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class StaggeredGridLayoutManager extends a implements ah6 {
    public int H;
    public p35[] I;
    public final gu2 J;
    public final gu2 K;
    public final int L;
    public int M;
    public final ms4 N;
    public boolean O;
    public boolean P;
    public BitSet Q;
    public int R;
    public int S;
    public final c00 T;
    public final int U;
    public boolean V;
    public boolean W;
    public zk7 X;
    public final Rect Y;
    public final wk7 Z;
    public final boolean a0;
    public int[] b0;
    public final aq2 c0;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.H = -1;
        this.O = false;
        this.P = false;
        this.R = -1;
        this.S = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.T = new c00(13, false);
        this.U = 2;
        this.Y = new Rect();
        this.Z = new wk7(this);
        this.a0 = true;
        this.c0 = new aq2(this, 3);
        pg6 pg6VarS = a.S(context, attributeSet, i, i2);
        int i3 = pg6VarS.a;
        if (i3 != 0 && i3 != 1) {
            c6.f("invalid orientation.");
            throw null;
        }
        m(null);
        if (i3 != this.L) {
            this.L = i3;
            gu2 gu2Var = this.J;
            this.J = this.K;
            this.K = gu2Var;
            B0();
        }
        o1(pg6VarS.b);
        boolean z = pg6VarS.c;
        m(null);
        zk7 zk7Var = this.X;
        if (zk7Var != null && zk7Var.n != z) {
            zk7Var.n = z;
        }
        this.O = z;
        B0();
        this.N = new ms4();
        this.J = gu2.b(this, this.L);
        this.K = gu2.b(this, 1 - this.L);
    }

    public static int r1(int i, int i2, int i3) {
        int mode;
        return (!(i2 == 0 && i3 == 0) && ((mode = View.MeasureSpec.getMode(i)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 C() {
        return this.L == 0 ? new xk7(-2, -1) : new xk7(-1, -2);
    }

    @Override // androidx.recyclerview.widget.a
    public final int C0(int i, vg6 vg6Var, bh6 bh6Var) {
        return m1(i, vg6Var, bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 D(Context context, AttributeSet attributeSet) {
        return new xk7(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.a
    public final void D0(int i) {
        zk7 zk7Var = this.X;
        if (zk7Var != null && zk7Var.a != i) {
            zk7Var.d = null;
            zk7Var.c = 0;
            zk7Var.a = -1;
            zk7Var.b = -1;
        }
        this.R = i;
        this.S = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        B0();
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 E(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new xk7((ViewGroup.MarginLayoutParams) layoutParams) : new xk7(layoutParams);
    }

    @Override // androidx.recyclerview.widget.a
    public final int E0(int i, vg6 vg6Var, bh6 bh6Var) {
        return m1(i, vg6Var, bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final void H0(Rect rect, int i, int i2) {
        int iR;
        int iR2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.L == 1) {
            int iHeight = rect.height() + paddingBottom;
            RecyclerView recyclerView = this.b;
            WeakHashMap weakHashMap = dl8.a;
            iR2 = a.r(i2, iHeight, recyclerView.getMinimumHeight());
            iR = a.r(i, (this.M * this.H) + paddingRight, this.b.getMinimumWidth());
        } else {
            int iWidth = rect.width() + paddingRight;
            RecyclerView recyclerView2 = this.b;
            WeakHashMap weakHashMap2 = dl8.a;
            iR = a.r(i, iWidth, recyclerView2.getMinimumWidth());
            iR2 = a.r(i2, (this.M * this.H) + paddingBottom, this.b.getMinimumHeight());
        }
        this.b.setMeasuredDimension(iR, iR2);
    }

    @Override // androidx.recyclerview.widget.a
    public final int I(vg6 vg6Var, bh6 bh6Var) {
        if (this.L == 1) {
            return Math.min(this.H, bh6Var.b());
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.a
    public final void N0(RecyclerView recyclerView, int i) {
        av4 av4Var = new av4(recyclerView.getContext());
        av4Var.a = i;
        O0(av4Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean P0() {
        return this.X == null;
    }

    public final boolean Q0() {
        int iX0;
        if (G() != 0 && this.U != 0 && this.k) {
            if (this.P) {
                iX0 = Y0();
                X0();
            } else {
                iX0 = X0();
                Y0();
            }
            if (iX0 == 0 && c1() != null) {
                this.T.a();
                this.f = true;
                B0();
                return true;
            }
        }
        return false;
    }

    public final int R0(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        boolean z = !this.a0;
        return g67.i(bh6Var, this.J, U0(z), T0(z), this, this.a0, this.P);
    }

    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    public final int S0(vg6 vg6Var, ms4 ms4Var, bh6 bh6Var) {
        p35 p35Var;
        ?? r8;
        int iK;
        int iE;
        int iE2;
        int i;
        int i2;
        int i3;
        int i4;
        vg6 vg6Var2 = vg6Var;
        int i5 = 0;
        int i6 = 1;
        this.Q.set(0, this.H, true);
        ms4 ms4Var2 = this.N;
        int i7 = ms4Var2.i ? ms4Var.e == 1 ? Integer.MAX_VALUE : SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED : ms4Var.e == 1 ? ms4Var.g + ms4Var.b : ms4Var.f - ms4Var.b;
        int i8 = ms4Var.e;
        for (int i9 = 0; i9 < this.H; i9++) {
            if (!((ArrayList) this.I[i9].f).isEmpty()) {
                q1(this.I[i9], i8, i7);
            }
        }
        boolean z = this.P;
        gu2 gu2Var = this.J;
        int i10 = z ? gu2Var.i() : gu2Var.m();
        boolean z2 = false;
        while (true) {
            int i11 = ms4Var.c;
            if (i11 < 0 || i11 >= bh6Var.b() || (!ms4Var2.i && this.Q.isEmpty())) {
                break;
            }
            View viewD = vg6Var2.d(ms4Var.c);
            ms4Var.c += ms4Var.d;
            xk7 xk7Var = (xk7) viewD.getLayoutParams();
            int iC = xk7Var.a.c();
            c00 c00Var = this.T;
            int[] iArr = (int[]) c00Var.b;
            int i12 = (iArr == null || iC >= iArr.length) ? -1 : iArr[iC];
            if (i12 == -1) {
                boolean zG1 = g1(ms4Var.e);
                int i13 = this.H;
                if (zG1) {
                    i4 = i13 - 1;
                    i3 = -1;
                    i2 = -1;
                } else {
                    i2 = i6;
                    i3 = i13;
                    i4 = i5;
                }
                p35 p35Var2 = null;
                if (ms4Var.e == i6) {
                    int iM = gu2Var.m();
                    int i14 = Integer.MAX_VALUE;
                    while (i4 != i3) {
                        p35 p35Var3 = this.I[i4];
                        int i15 = i4;
                        int i16 = p35Var3.i(iM);
                        if (i16 < i14) {
                            p35Var2 = p35Var3;
                            i14 = i16;
                        }
                        i4 = i15 + i2;
                    }
                } else {
                    int i17 = gu2Var.i();
                    int i18 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                    while (i4 != i3) {
                        p35 p35Var4 = this.I[i4];
                        int i19 = i3;
                        int iK2 = p35Var4.k(i17);
                        if (iK2 > i18) {
                            i18 = iK2;
                            p35Var2 = p35Var4;
                        }
                        i4 += i2;
                        i3 = i19;
                    }
                }
                p35Var = p35Var2;
                c00Var.f(iC);
                ((int[]) c00Var.b)[iC] = p35Var.e;
            } else {
                p35Var = this.I[i12];
            }
            xk7Var.e = p35Var;
            if (ms4Var.e == 1) {
                r8 = 0;
                l(viewD, -1, false);
            } else {
                r8 = 0;
                l(viewD, 0, false);
            }
            int i20 = this.L;
            if (i20 == 1) {
                e1(viewD, a.H(r8, this.M, this.t, r8, ((ViewGroup.MarginLayoutParams) xk7Var).width), a.H(true, this.G, this.x, getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) xk7Var).height));
            } else {
                e1(viewD, a.H(true, this.y, this.t, getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) xk7Var).width), a.H(false, this.M, this.x, 0, ((ViewGroup.MarginLayoutParams) xk7Var).height));
            }
            if (ms4Var.e == 1) {
                iE = p35Var.i(i10);
                iK = gu2Var.e(viewD) + iE;
            } else {
                iK = p35Var.k(i10);
                iE = iK - gu2Var.e(viewD);
            }
            int i21 = ms4Var.e;
            p35 p35Var5 = xk7Var.e;
            if (i21 == 1) {
                p35Var5.getClass();
                xk7 xk7Var2 = (xk7) viewD.getLayoutParams();
                xk7Var2.e = p35Var5;
                ArrayList arrayList = (ArrayList) p35Var5.f;
                arrayList.add(viewD);
                p35Var5.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                if (arrayList.size() == 1) {
                    p35Var5.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                }
                if (xk7Var2.a.i() || xk7Var2.a.l()) {
                    p35Var5.d = ((StaggeredGridLayoutManager) p35Var5.g).J.e(viewD) + p35Var5.d;
                }
            } else {
                p35Var5.getClass();
                xk7 xk7Var3 = (xk7) viewD.getLayoutParams();
                xk7Var3.e = p35Var5;
                ArrayList arrayList2 = (ArrayList) p35Var5.f;
                arrayList2.add(0, viewD);
                p35Var5.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                if (arrayList2.size() == 1) {
                    p35Var5.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                }
                if (xk7Var3.a.i() || xk7Var3.a.l()) {
                    p35Var5.d = ((StaggeredGridLayoutManager) p35Var5.g).J.e(viewD) + p35Var5.d;
                }
            }
            boolean zD1 = d1();
            gu2 gu2Var2 = this.K;
            if (zD1 && i20 == 1) {
                i = gu2Var2.i() - (((this.H - 1) - p35Var.e) * this.M);
                iE2 = i - gu2Var2.e(viewD);
            } else {
                int iM2 = (p35Var.e * this.M) + gu2Var2.m();
                int iE3 = gu2Var2.e(viewD) + iM2;
                iE2 = iM2;
                i = iE3;
            }
            if (i20 == 1) {
                a.Y(viewD, iE2, iE, i, iK);
            } else {
                a.Y(viewD, iE, iE2, iK, i);
            }
            q1(p35Var, ms4Var2.e, i7);
            vg6Var2 = vg6Var;
            i1(vg6Var2, ms4Var2);
            if (ms4Var2.h && viewD.hasFocusable()) {
                this.Q.set(p35Var.e, false);
            }
            i6 = 1;
            z2 = true;
            i5 = 0;
        }
        if (!z2) {
            i1(vg6Var2, ms4Var2);
        }
        int iM3 = ms4Var2.e == -1 ? gu2Var.m() - a1(gu2Var.m()) : Z0(gu2Var.i()) - gu2Var.i();
        if (iM3 > 0) {
            return Math.min(ms4Var.b, iM3);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int T(vg6 vg6Var, bh6 bh6Var) {
        if (this.L == 0) {
            return Math.min(this.H, bh6Var.b());
        }
        return -1;
    }

    public final View T0(boolean z) {
        gu2 gu2Var = this.J;
        int iM = gu2Var.m();
        int i = gu2Var.i();
        View view = null;
        for (int iG = G() - 1; iG >= 0; iG--) {
            View viewF = F(iG);
            int iG2 = gu2Var.g(viewF);
            int iD = gu2Var.d(viewF);
            if (iD > iM && iG2 < i) {
                if (iD <= i || !z) {
                    return viewF;
                }
                if (view == null) {
                    view = viewF;
                }
            }
        }
        return view;
    }

    public final View U0(boolean z) {
        gu2 gu2Var = this.J;
        int iM = gu2Var.m();
        int i = gu2Var.i();
        int iG = G();
        View view = null;
        for (int i2 = 0; i2 < iG; i2++) {
            View viewF = F(i2);
            int iG2 = gu2Var.g(viewF);
            if (gu2Var.d(viewF) > iM && iG2 < i) {
                if (iG2 >= iM || !z) {
                    return viewF;
                }
                if (view == null) {
                    view = viewF;
                }
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean V() {
        return this.U != 0;
    }

    public final void V0(vg6 vg6Var, bh6 bh6Var, boolean z) {
        int i;
        int iZ0 = Z0(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
        if (iZ0 != Integer.MIN_VALUE && (i = this.J.i() - iZ0) > 0) {
            int i2 = i - (-m1(-i, vg6Var, bh6Var));
            if (!z || i2 <= 0) {
                return;
            }
            this.J.r(i2);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean W() {
        return this.O;
    }

    public final void W0(vg6 vg6Var, bh6 bh6Var, boolean z) {
        int iM;
        int iA1 = a1(Integer.MAX_VALUE);
        if (iA1 != Integer.MAX_VALUE && (iM = iA1 - this.J.m()) > 0) {
            int iM1 = iM - m1(iM, vg6Var, bh6Var);
            if (!z || iM1 <= 0) {
                return;
            }
            this.J.r(-iM1);
        }
    }

    public final int X0() {
        if (G() == 0) {
            return 0;
        }
        return a.R(F(0));
    }

    public final int Y0() {
        int iG = G();
        if (iG == 0) {
            return 0;
        }
        return a.R(F(iG - 1));
    }

    @Override // androidx.recyclerview.widget.a
    public final void Z(int i) {
        super.Z(i);
        for (int i2 = 0; i2 < this.H; i2++) {
            p35 p35Var = this.I[i2];
            int i3 = p35Var.b;
            if (i3 != Integer.MIN_VALUE) {
                p35Var.b = i3 + i;
            }
            int i4 = p35Var.c;
            if (i4 != Integer.MIN_VALUE) {
                p35Var.c = i4 + i;
            }
        }
    }

    public final int Z0(int i) {
        int i2 = this.I[0].i(i);
        for (int i3 = 1; i3 < this.H; i3++) {
            int i4 = this.I[i3].i(i);
            if (i4 > i2) {
                i2 = i4;
            }
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000c  */
    @Override // defpackage.ah6
    public final PointF a(int i) {
        int i2 = -1;
        if (G() != 0) {
            if ((i < X0()) == this.P) {
                i2 = 1;
            }
        } else if (this.P) {
            i2 = 1;
        }
        PointF pointF = new PointF();
        if (i2 == 0) {
            return null;
        }
        if (this.L == 0) {
            pointF.x = i2;
            pointF.y = 0.0f;
            return pointF;
        }
        pointF.x = 0.0f;
        pointF.y = i2;
        return pointF;
    }

    @Override // androidx.recyclerview.widget.a
    public final void a0(int i) {
        super.a0(i);
        for (int i2 = 0; i2 < this.H; i2++) {
            p35 p35Var = this.I[i2];
            int i3 = p35Var.b;
            if (i3 != Integer.MIN_VALUE) {
                p35Var.b = i3 + i;
            }
            int i4 = p35Var.c;
            if (i4 != Integer.MIN_VALUE) {
                p35Var.c = i4 + i;
            }
        }
    }

    public final int a1(int i) {
        int iK = this.I[0].k(i);
        for (int i2 = 1; i2 < this.H; i2++) {
            int iK2 = this.I[i2].k(i);
            if (iK2 < iK) {
                iK = iK2;
            }
        }
        return iK;
    }

    @Override // androidx.recyclerview.widget.a
    public final void b0() {
        this.T.a();
        for (int i = 0; i < this.H; i++) {
            this.I[i].b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0035  */
    /* JADX WARN: Code duplicated, block: B:22:0x0037  */
    /* JADX WARN: Code duplicated, block: B:24:0x003e  */
    /* JADX WARN: Code duplicated, block: B:27:0x004d A[LOOP:0: B:23:0x003c->B:27:0x004d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0053  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x0074 A[LOOP:1: B:32:0x0063->B:36:0x0074, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x007a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0093  */
    /* JADX WARN: Code duplicated, block: B:43:0x009d  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:47:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:61:0x0050 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x0051 A[EDGE_INSN: B:62:0x0051->B:29:0x0051 BREAK  A[LOOP:0: B:23:0x003c->B:27:0x004d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:64:0x0078 A[EDGE_INSN: B:64:0x0078->B:38:0x0078 BREAK  A[LOOP:1: B:32:0x0063->B:36:0x0074], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
    public final void b1(int i, int i2, int i3) {
        int i4;
        int i5;
        c00 c00Var;
        int[] iArr;
        int iY0;
        ArrayList arrayList;
        int size;
        yk7 yk7Var;
        int size2;
        int i6;
        int i7;
        int[] iArr2;
        int iY1 = this.P ? Y0() : X0();
        if (i3 == 8) {
            if (i < i2) {
                i4 = i2 + 1;
            } else {
                i4 = i + 1;
                i5 = i2;
            }
            c00Var = this.T;
            iArr = (int[]) c00Var.b;
            if (iArr != null && i5 < iArr.length) {
                arrayList = (ArrayList) c00Var.c;
                if (arrayList == null) {
                    i7 = -1;
                } else {
                    size = arrayList.size() - 1;
                    while (true) {
                        if (size >= 0) {
                            yk7Var = null;
                            break;
                        }
                        yk7Var = (yk7) ((ArrayList) c00Var.c).get(size);
                        if (yk7Var.a == i5) {
                            break;
                        } else {
                            size--;
                        }
                    }
                    if (yk7Var != null) {
                        ((ArrayList) c00Var.c).remove(yk7Var);
                    }
                    size2 = ((ArrayList) c00Var.c).size();
                    i6 = 0;
                    while (true) {
                        if (i6 < size2) {
                            i6 = -1;
                            break;
                        } else if (((yk7) ((ArrayList) c00Var.c).get(i6)).a >= i5) {
                            break;
                        } else {
                            i6++;
                        }
                    }
                    if (i6 != -1) {
                        yk7 yk7Var2 = (yk7) ((ArrayList) c00Var.c).get(i6);
                        ((ArrayList) c00Var.c).remove(i6);
                        i7 = yk7Var2.a;
                    } else {
                        i7 = -1;
                    }
                }
                iArr2 = (int[]) c00Var.b;
                if (i7 == -1) {
                    Arrays.fill(iArr2, i5, iArr2.length, -1);
                    int length = ((int[]) c00Var.b).length;
                } else {
                    Arrays.fill((int[]) c00Var.b, i5, Math.min(i7 + 1, iArr2.length), -1);
                }
            }
            if (i3 != 1) {
                c00Var.l(i, i2);
            } else if (i3 != 2) {
                c00Var.m(i, i2);
            } else if (i3 == 8) {
                c00Var.m(i, 1);
                c00Var.l(i2, 1);
            }
            if (i4 <= iY1) {
                return;
            }
            if (this.P) {
                iY0 = X0();
            } else {
                iY0 = Y0();
            }
            if (i5 <= iY0) {
                B0();
            }
        }
        i4 = i + i2;
        i5 = i;
        c00Var = this.T;
        iArr = (int[]) c00Var.b;
        if (iArr != null) {
            arrayList = (ArrayList) c00Var.c;
            if (arrayList == null) {
                i7 = -1;
            } else {
                size = arrayList.size() - 1;
                while (true) {
                    if (size >= 0) {
                        yk7Var = null;
                        break;
                    }
                    yk7Var = (yk7) ((ArrayList) c00Var.c).get(size);
                    if (yk7Var.a == i5) {
                        break;
                        break;
                    }
                    size--;
                }
                if (yk7Var != null) {
                    ((ArrayList) c00Var.c).remove(yk7Var);
                }
                size2 = ((ArrayList) c00Var.c).size();
                i6 = 0;
                while (true) {
                    if (i6 < size2) {
                        i6 = -1;
                        break;
                    } else {
                        if (((yk7) ((ArrayList) c00Var.c).get(i6)).a >= i5) {
                            break;
                            break;
                        }
                        i6++;
                    }
                }
                if (i6 != -1) {
                    yk7 yk7Var3 = (yk7) ((ArrayList) c00Var.c).get(i6);
                    ((ArrayList) c00Var.c).remove(i6);
                    i7 = yk7Var3.a;
                } else {
                    i7 = -1;
                }
            }
            iArr2 = (int[]) c00Var.b;
            if (i7 == -1) {
                Arrays.fill(iArr2, i5, iArr2.length, -1);
                int length2 = ((int[]) c00Var.b).length;
            } else {
                Arrays.fill((int[]) c00Var.b, i5, Math.min(i7 + 1, iArr2.length), -1);
            }
        }
        if (i3 != 1) {
            c00Var.l(i, i2);
        } else if (i3 != 2) {
            c00Var.m(i, i2);
        } else if (i3 == 8) {
            c00Var.m(i, 1);
            c00Var.l(i2, 1);
        }
        if (i4 <= iY1) {
            return;
        }
        if (this.P) {
            iY0 = X0();
        } else {
            iY0 = Y0();
        }
        if (i5 <= iY0) {
            B0();
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x002c A[SYNTHETIC] */
    public final View c1() {
        boolean z;
        boolean z2;
        int iG = G();
        int i = iG - 1;
        BitSet bitSet = new BitSet(this.H);
        bitSet.set(0, this.H, true);
        byte b = (this.L == 1 && d1()) ? (byte) 1 : (byte) -1;
        if (this.P) {
            iG = -1;
        } else {
            i = 0;
        }
        int i2 = i < iG ? 1 : -1;
        while (i != iG) {
            View viewF = F(i);
            xk7 xk7Var = (xk7) viewF.getLayoutParams();
            boolean z3 = bitSet.get(xk7Var.e.e);
            gu2 gu2Var = this.J;
            if (z3) {
                p35 p35Var = xk7Var.e;
                if (this.P) {
                    int i3 = p35Var.c;
                    if (i3 == Integer.MIN_VALUE) {
                        p35Var.a();
                        i3 = p35Var.c;
                    }
                    if (i3 < gu2Var.i()) {
                        ((xk7) ((View) dj7.e((ArrayList) p35Var.f, 1)).getLayoutParams()).getClass();
                        return viewF;
                    }
                } else {
                    int i4 = p35Var.b;
                    ArrayList arrayList = (ArrayList) p35Var.f;
                    if (i4 == Integer.MIN_VALUE) {
                        View view = (View) arrayList.get(0);
                        xk7 xk7Var2 = (xk7) view.getLayoutParams();
                        p35Var.b = ((StaggeredGridLayoutManager) p35Var.g).J.g(view);
                        xk7Var2.getClass();
                        i4 = p35Var.b;
                    }
                    if (i4 > gu2Var.m()) {
                        ((xk7) ((View) arrayList.get(0)).getLayoutParams()).getClass();
                        return viewF;
                    }
                }
                bitSet.clear(xk7Var.e.e);
            }
            i += i2;
            if (i != iG) {
                View viewF2 = F(i);
                if (this.P) {
                    int iD = gu2Var.d(viewF);
                    int iD2 = gu2Var.d(viewF2);
                    if (iD >= iD2) {
                        if (iD == iD2) {
                            if (xk7Var.e.e - ((xk7) viewF2.getLayoutParams()).e.e < 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (b < 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z != z2) {
                            }
                        } else {
                            continue;
                        }
                    }
                    return viewF;
                }
                int iG2 = gu2Var.g(viewF);
                int iG3 = gu2Var.g(viewF2);
                if (iG2 <= iG3) {
                    if (iG2 == iG3) {
                        if (xk7Var.e.e - ((xk7) viewF2.getLayoutParams()).e.e < 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (b < 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z != z2) {
                        }
                    } else {
                        continue;
                    }
                }
                return viewF;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.a
    public final void d0(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.b;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.c0);
        }
        for (int i = 0; i < this.H; i++) {
            this.I[i].b();
        }
        recyclerView.requestLayout();
    }

    public final boolean d1() {
        return this.b.getLayoutDirection() == 1;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0046  */
    /* JADX WARN: Code duplicated, block: B:34:0x004d  */
    @Override // androidx.recyclerview.widget.a
    public final View e0(View view, int i, vg6 vg6Var, bh6 bh6Var) {
        View viewC;
        int i2;
        if (G() != 0) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (viewC = recyclerView.C(view)) == null || this.a.c.contains(viewC)) {
                viewC = null;
            }
            if (viewC != null) {
                l1();
                int i3 = this.L;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 17) {
                            if (i != 33) {
                                if (i == 66 ? i3 == 0 : !(i != 130 || i3 != 1)) {
                                    i2 = 1;
                                }
                            } else if (i3 == 1) {
                                i2 = -1;
                            }
                            i2 = Integer.MIN_VALUE;
                        } else if (i3 == 0) {
                            i2 = -1;
                        } else {
                            i2 = Integer.MIN_VALUE;
                        }
                    } else if (i3 != 1 && d1()) {
                        i2 = -1;
                    } else {
                        i2 = 1;
                    }
                } else if (i3 != 1 && d1()) {
                    i2 = 1;
                } else {
                    i2 = -1;
                }
                if (i2 != Integer.MIN_VALUE) {
                    xk7 xk7Var = (xk7) viewC.getLayoutParams();
                    xk7Var.getClass();
                    p35 p35Var = xk7Var.e;
                    int iY0 = i2 == 1 ? Y0() : X0();
                    p1(iY0, bh6Var);
                    n1(i2);
                    ms4 ms4Var = this.N;
                    ms4Var.c = ms4Var.d + iY0;
                    ms4Var.b = (int) (this.J.n() * 0.33333334f);
                    ms4Var.h = true;
                    ms4Var.a = false;
                    S0(vg6Var, ms4Var, bh6Var);
                    this.V = this.P;
                    View viewJ = p35Var.j(iY0, i2);
                    if (viewJ != null && viewJ != viewC) {
                        return viewJ;
                    }
                    if (g1(i2)) {
                        for (int i4 = this.H - 1; i4 >= 0; i4--) {
                            View viewJ2 = this.I[i4].j(iY0, i2);
                            if (viewJ2 != null && viewJ2 != viewC) {
                                return viewJ2;
                            }
                        }
                    } else {
                        for (int i5 = 0; i5 < this.H; i5++) {
                            View viewJ3 = this.I[i5].j(iY0, i2);
                            if (viewJ3 != null && viewJ3 != viewC) {
                                return viewJ3;
                            }
                        }
                    }
                    boolean z = (this.O ^ true) == (i2 == -1);
                    View viewB = B(z ? p35Var.e() : p35Var.f());
                    if (viewB != null && viewB != viewC) {
                        return viewB;
                    }
                    if (g1(i2)) {
                        for (int i6 = this.H - 1; i6 >= 0; i6--) {
                            if (i6 != p35Var.e) {
                                p35[] p35VarArr = this.I;
                                View viewB2 = B(z ? p35VarArr[i6].e() : p35VarArr[i6].f());
                                if (viewB2 != null && viewB2 != viewC) {
                                    return viewB2;
                                }
                            }
                        }
                    } else {
                        for (int i7 = 0; i7 < this.H; i7++) {
                            p35[] p35VarArr2 = this.I;
                            View viewB3 = B(z ? p35VarArr2[i7].e() : p35VarArr2[i7].f());
                            if (viewB3 != null && viewB3 != viewC) {
                                return viewB3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final void e1(View view, int i, int i2) {
        Rect rect = this.Y;
        n(rect, view);
        xk7 xk7Var = (xk7) view.getLayoutParams();
        int iR1 = r1(i, ((ViewGroup.MarginLayoutParams) xk7Var).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) xk7Var).rightMargin + rect.right);
        int iR2 = r1(i2, ((ViewGroup.MarginLayoutParams) xk7Var).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) xk7Var).bottomMargin + rect.bottom);
        if (K0(view, iR1, iR2, xk7Var)) {
            view.measure(iR1, iR2);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void f0(AccessibilityEvent accessibilityEvent) {
        super.f0(accessibilityEvent);
        if (G() > 0) {
            View viewU0 = U0(false);
            View viewT0 = T0(false);
            if (viewU0 == null || viewT0 == null) {
                return;
            }
            int iR = a.R(viewU0);
            int iR2 = a.R(viewT0);
            if (iR < iR2) {
                accessibilityEvent.setFromIndex(iR);
                accessibilityEvent.setToIndex(iR2);
            } else {
                accessibilityEvent.setFromIndex(iR2);
                accessibilityEvent.setToIndex(iR);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x018e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0190  */
    /* JADX WARN: Code duplicated, block: B:123:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:131:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:133:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:253:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:264:0x01de A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x01de A[SYNTHETIC] */
    public final void f1(vg6 vg6Var, bh6 bh6Var, boolean z) {
        boolean z2;
        zk7 zk7Var;
        p35[] p35VarArr;
        int iG;
        int i;
        int iR;
        int iR2;
        int iG2;
        int i2;
        boolean z3;
        zk7 zk7Var2 = this.X;
        wk7 wk7Var = this.Z;
        if (!(zk7Var2 == null && this.R == -1) && bh6Var.b() == 0) {
            w0(vg6Var);
            wk7Var.a();
            return;
        }
        boolean z4 = wk7Var.e;
        StaggeredGridLayoutManager staggeredGridLayoutManager = wk7Var.g;
        boolean z5 = (z4 && this.R == -1 && this.X == null) ? false : true;
        c00 c00Var = this.T;
        if (z5) {
            wk7Var.a();
            zk7 zk7Var3 = this.X;
            gu2 gu2Var = this.J;
            if (zk7Var3 != null) {
                int i3 = zk7Var3.c;
                if (i3 > 0) {
                    if (i3 == this.H) {
                        for (int i4 = 0; i4 < this.H; i4++) {
                            this.I[i4].b();
                            zk7 zk7Var4 = this.X;
                            int i5 = zk7Var4.d[i4];
                            if (i5 != Integer.MIN_VALUE) {
                                i5 += zk7Var4.p ? gu2Var.i() : gu2Var.m();
                            }
                            p35 p35Var = this.I[i4];
                            p35Var.b = i5;
                            p35Var.c = i5;
                        }
                    } else {
                        zk7Var3.d = null;
                        zk7Var3.c = 0;
                        zk7Var3.e = 0;
                        zk7Var3.f = null;
                        zk7Var3.k = null;
                        zk7Var3.a = zk7Var3.b;
                    }
                }
                zk7 zk7Var5 = this.X;
                this.W = zk7Var5.q;
                boolean z6 = zk7Var5.n;
                m(null);
                zk7 zk7Var6 = this.X;
                if (zk7Var6 != null && zk7Var6.n != z6) {
                    zk7Var6.n = z6;
                }
                this.O = z6;
                B0();
                l1();
                zk7 zk7Var7 = this.X;
                int i6 = zk7Var7.a;
                if (i6 != -1) {
                    this.R = i6;
                    wk7Var.c = zk7Var7.p;
                } else {
                    wk7Var.c = this.P;
                }
                if (zk7Var7.e > 1) {
                    c00Var.b = zk7Var7.f;
                    c00Var.c = zk7Var7.k;
                }
            } else {
                l1();
                wk7Var.c = this.P;
            }
            if (bh6Var.g || (i2 = this.R) == -1) {
                if (this.V) {
                    int iB = bh6Var.b();
                    iG2 = G() - 1;
                    while (true) {
                        if (iG2 < 0) {
                            iR2 = 0;
                            break;
                        }
                        iR2 = a.R(F(iG2));
                        if (iR2 < 0 && iR2 < iB) {
                            break;
                        } else {
                            iG2--;
                        }
                    }
                } else {
                    int iB2 = bh6Var.b();
                    iG = G();
                    i = 0;
                    while (true) {
                        if (i >= iG) {
                            iR2 = 0;
                            break;
                        }
                        iR = a.R(F(i));
                        if (iR < 0 && iR < iB2) {
                            iR2 = iR;
                            break;
                        }
                        i++;
                    }
                }
                wk7Var.a = iR2;
                wk7Var.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else if (i2 < 0 || i2 >= bh6Var.b()) {
                this.R = -1;
                this.S = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                if (this.V) {
                    int iB3 = bh6Var.b();
                    iG2 = G() - 1;
                    while (true) {
                        if (iG2 < 0) {
                            iR2 = 0;
                            break;
                        } else {
                            iR2 = a.R(F(iG2));
                            if (iR2 < 0) {
                            }
                            iG2--;
                        }
                    }
                } else {
                    int iB4 = bh6Var.b();
                    iG = G();
                    i = 0;
                    while (true) {
                        if (i >= iG) {
                            iR2 = 0;
                            break;
                        } else {
                            iR = a.R(F(i));
                            if (iR < 0) {
                            }
                            i++;
                        }
                    }
                }
                wk7Var.a = iR2;
                wk7Var.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            } else {
                zk7 zk7Var8 = this.X;
                if (zk7Var8 == null || zk7Var8.a == -1 || zk7Var8.c < 1) {
                    View viewB = B(this.R);
                    if (viewB != null) {
                        wk7Var.a = this.P ? Y0() : X0();
                        if (this.S != Integer.MIN_VALUE) {
                            if (wk7Var.c) {
                                wk7Var.b = (gu2Var.i() - this.S) - gu2Var.d(viewB);
                            } else {
                                wk7Var.b = (gu2Var.m() + this.S) - gu2Var.g(viewB);
                            }
                        } else if (gu2Var.e(viewB) > gu2Var.n()) {
                            wk7Var.b = wk7Var.c ? gu2Var.i() : gu2Var.m();
                        } else {
                            int iG3 = gu2Var.g(viewB) - gu2Var.m();
                            if (iG3 < 0) {
                                wk7Var.b = -iG3;
                            } else {
                                int i7 = gu2Var.i() - gu2Var.d(viewB);
                                if (i7 < 0) {
                                    wk7Var.b = i7;
                                } else {
                                    wk7Var.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                                }
                            }
                        }
                    } else {
                        int i8 = this.R;
                        wk7Var.a = i8;
                        int i9 = this.S;
                        if (i9 == Integer.MIN_VALUE) {
                            if (G() != 0) {
                                if ((i8 < X0()) != this.P) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                            } else if (this.P) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            wk7Var.c = z3;
                            gu2 gu2Var2 = staggeredGridLayoutManager.J;
                            wk7Var.b = z3 ? gu2Var2.i() : gu2Var2.m();
                        } else {
                            boolean z7 = wk7Var.c;
                            gu2 gu2Var3 = staggeredGridLayoutManager.J;
                            if (z7) {
                                wk7Var.b = gu2Var3.i() - i9;
                            } else {
                                wk7Var.b = gu2Var3.m() + i9;
                            }
                        }
                        wk7Var.d = true;
                    }
                } else {
                    wk7Var.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                    wk7Var.a = this.R;
                }
            }
            wk7Var.e = true;
        }
        if (this.X == null && this.R == -1 && (wk7Var.c != this.V || d1() != this.W)) {
            c00Var.a();
            wk7Var.d = true;
        }
        if (G() > 0 && ((zk7Var = this.X) == null || zk7Var.c < 1)) {
            if (wk7Var.d) {
                for (int i10 = 0; i10 < this.H; i10++) {
                    this.I[i10].b();
                    int i11 = wk7Var.b;
                    if (i11 != Integer.MIN_VALUE) {
                        p35 p35Var2 = this.I[i10];
                        p35Var2.b = i11;
                        p35Var2.c = i11;
                    }
                }
            } else if (z5 || wk7Var.f == null) {
                int i12 = 0;
                while (true) {
                    int i13 = this.H;
                    p35VarArr = this.I;
                    if (i12 >= i13) {
                        break;
                    }
                    p35 p35Var3 = p35VarArr[i12];
                    boolean z8 = this.P;
                    int i14 = wk7Var.b;
                    StaggeredGridLayoutManager staggeredGridLayoutManager2 = (StaggeredGridLayoutManager) p35Var3.g;
                    int i15 = z8 ? p35Var3.i(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED) : p35Var3.k(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
                    p35Var3.b();
                    if (i15 != Integer.MIN_VALUE && ((!z8 || i15 >= staggeredGridLayoutManager2.J.i()) && (z8 || i15 <= staggeredGridLayoutManager2.J.m()))) {
                        if (i14 != Integer.MIN_VALUE) {
                            i15 += i14;
                        }
                        p35Var3.c = i15;
                        p35Var3.b = i15;
                    }
                    i12++;
                }
                int length = p35VarArr.length;
                int[] iArr = wk7Var.f;
                if (iArr == null || iArr.length < length) {
                    wk7Var.f = new int[staggeredGridLayoutManager.I.length];
                }
                for (int i16 = 0; i16 < length; i16++) {
                    wk7Var.f[i16] = p35VarArr[i16].k(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
                }
            } else {
                for (int i17 = 0; i17 < this.H; i17++) {
                    p35 p35Var4 = this.I[i17];
                    p35Var4.b();
                    int i18 = wk7Var.f[i17];
                    p35Var4.b = i18;
                    p35Var4.c = i18;
                }
            }
        }
        A(vg6Var);
        ms4 ms4Var = this.N;
        ms4Var.a = false;
        gu2 gu2Var4 = this.K;
        int iN = gu2Var4.n();
        this.M = iN / this.H;
        View.MeasureSpec.makeMeasureSpec(iN, gu2Var4.k());
        p1(wk7Var.a, bh6Var);
        if (wk7Var.c) {
            n1(-1);
            S0(vg6Var, ms4Var, bh6Var);
            n1(1);
            ms4Var.c = wk7Var.a + ms4Var.d;
            S0(vg6Var, ms4Var, bh6Var);
        } else {
            n1(1);
            S0(vg6Var, ms4Var, bh6Var);
            n1(-1);
            ms4Var.c = wk7Var.a + ms4Var.d;
            S0(vg6Var, ms4Var, bh6Var);
        }
        if (gu2Var4.k() != 1073741824) {
            int iG4 = G();
            float fMax = 0.0f;
            for (int i19 = 0; i19 < iG4; i19++) {
                View viewF = F(i19);
                float fE = gu2Var4.e(viewF);
                if (fE >= fMax) {
                    ((xk7) viewF.getLayoutParams()).getClass();
                    fMax = Math.max(fMax, fE);
                }
            }
            int i20 = this.M;
            int iRound = Math.round(fMax * this.H);
            if (gu2Var4.k() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, gu2Var4.n());
            }
            this.M = iRound / this.H;
            View.MeasureSpec.makeMeasureSpec(iRound, gu2Var4.k());
            if (this.M != i20) {
                for (int i21 = 0; i21 < iG4; i21++) {
                    View viewF2 = F(i21);
                    xk7 xk7Var = (xk7) viewF2.getLayoutParams();
                    xk7Var.getClass();
                    boolean zD1 = d1();
                    int i22 = this.L;
                    if (zD1 && i22 == 1) {
                        int i23 = -((this.H - 1) - xk7Var.e.e);
                        viewF2.offsetLeftAndRight((this.M * i23) - (i23 * i20));
                    } else {
                        int i24 = xk7Var.e.e;
                        int i25 = this.M * i24;
                        int i26 = i24 * i20;
                        if (i22 == 1) {
                            viewF2.offsetLeftAndRight(i25 - i26);
                        } else {
                            viewF2.offsetTopAndBottom(i25 - i26);
                        }
                    }
                }
            }
        }
        if (G() > 0) {
            if (this.P) {
                V0(vg6Var, bh6Var, true);
                W0(vg6Var, bh6Var, false);
            } else {
                W0(vg6Var, bh6Var, true);
                V0(vg6Var, bh6Var, false);
            }
        }
        if (z && !bh6Var.g && this.U != 0 && G() > 0 && c1() != null) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.removeCallbacks(this.c0);
            }
            z2 = Q0();
        }
        if (bh6Var.g) {
            wk7Var.a();
        }
        this.V = wk7Var.c;
        this.W = d1();
        if (z2) {
            wk7Var.a();
            f1(vg6Var, bh6Var, false);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void g0(vg6 vg6Var, bh6 bh6Var, m6 m6Var) {
        super.g0(vg6Var, bh6Var, m6Var);
        m6Var.i("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    public final boolean g1(int i) {
        if (this.L == 0) {
            return (i == -1) != this.P;
        }
        return ((i == -1) == this.P) == d1();
    }

    @Override // androidx.recyclerview.widget.a
    public final void h0(vg6 vg6Var, bh6 bh6Var, View view, m6 m6Var) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof xk7)) {
            i0(view, m6Var);
            return;
        }
        p35 p35Var = ((xk7) layoutParams).e;
        if (this.L == 0) {
            m6Var.j(om5.e(false, p35Var == null ? -1 : p35Var.e, 1, -1, -1));
        } else {
            m6Var.j(om5.e(false, -1, -1, p35Var == null ? -1 : p35Var.e, 1));
        }
    }

    public final void h1(int i, bh6 bh6Var) {
        int iX0;
        int i2;
        if (i > 0) {
            iX0 = Y0();
            i2 = 1;
        } else {
            iX0 = X0();
            i2 = -1;
        }
        ms4 ms4Var = this.N;
        ms4Var.a = true;
        p1(iX0, bh6Var);
        n1(i2);
        ms4Var.c = iX0 + ms4Var.d;
        ms4Var.b = Math.abs(i);
    }

    public final void i1(vg6 vg6Var, ms4 ms4Var) {
        if (!ms4Var.a || ms4Var.i) {
            return;
        }
        int i = ms4Var.b;
        int i2 = ms4Var.e;
        if (i == 0) {
            if (i2 == -1) {
                j1(ms4Var.g, vg6Var);
                return;
            } else {
                k1(ms4Var.f, vg6Var);
                return;
            }
        }
        int i3 = 1;
        if (i2 == -1) {
            int i4 = ms4Var.f;
            int iK = this.I[0].k(i4);
            while (i3 < this.H) {
                int iK2 = this.I[i3].k(i4);
                if (iK2 > iK) {
                    iK = iK2;
                }
                i3++;
            }
            int i5 = i4 - iK;
            int iMin = ms4Var.g;
            if (i5 >= 0) {
                iMin -= Math.min(i5, ms4Var.b);
            }
            j1(iMin, vg6Var);
            return;
        }
        int i6 = ms4Var.g;
        int i7 = this.I[0].i(i6);
        while (i3 < this.H) {
            int i8 = this.I[i3].i(i6);
            if (i8 < i7) {
                i7 = i8;
            }
            i3++;
        }
        int i9 = i7 - ms4Var.g;
        int iMin2 = ms4Var.f;
        if (i9 >= 0) {
            iMin2 += Math.min(i9, ms4Var.b);
        }
        k1(iMin2, vg6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final void j0(int i, int i2) {
        b1(i, i2, 1);
    }

    public final void j1(int i, vg6 vg6Var) {
        for (int iG = G() - 1; iG >= 0; iG--) {
            View viewF = F(iG);
            gu2 gu2Var = this.J;
            if (gu2Var.g(viewF) < i || gu2Var.q(viewF) < i) {
                return;
            }
            xk7 xk7Var = (xk7) viewF.getLayoutParams();
            xk7Var.getClass();
            if (((ArrayList) xk7Var.e.f).size() == 1) {
                return;
            }
            p35 p35Var = xk7Var.e;
            ArrayList arrayList = (ArrayList) p35Var.f;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            xk7 xk7Var2 = (xk7) view.getLayoutParams();
            xk7Var2.e = null;
            if (xk7Var2.a.i() || xk7Var2.a.l()) {
                p35Var.d -= ((StaggeredGridLayoutManager) p35Var.g).J.e(view);
            }
            if (size == 1) {
                p35Var.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            }
            p35Var.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            y0(viewF, vg6Var);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void k0() {
        this.T.a();
        B0();
    }

    public final void k1(int i, vg6 vg6Var) {
        while (G() > 0) {
            View viewF = F(0);
            gu2 gu2Var = this.J;
            if (gu2Var.d(viewF) > i || gu2Var.p(viewF) > i) {
                return;
            }
            xk7 xk7Var = (xk7) viewF.getLayoutParams();
            xk7Var.getClass();
            if (((ArrayList) xk7Var.e.f).size() == 1) {
                return;
            }
            p35 p35Var = xk7Var.e;
            ArrayList arrayList = (ArrayList) p35Var.f;
            View view = (View) arrayList.remove(0);
            xk7 xk7Var2 = (xk7) view.getLayoutParams();
            xk7Var2.e = null;
            if (arrayList.size() == 0) {
                p35Var.c = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            }
            if (xk7Var2.a.i() || xk7Var2.a.l()) {
                p35Var.d -= ((StaggeredGridLayoutManager) p35Var.g).J.e(view);
            }
            p35Var.b = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
            y0(viewF, vg6Var);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void l0(int i, int i2) {
        b1(i, i2, 8);
    }

    public final void l1() {
        if (this.L == 1 || !d1()) {
            this.P = this.O;
        } else {
            this.P = !this.O;
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void m(String str) {
        if (this.X == null) {
            super.m(str);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void m0(int i, int i2) {
        b1(i, i2, 2);
    }

    public final int m1(int i, vg6 vg6Var, bh6 bh6Var) {
        if (G() == 0 || i == 0) {
            return 0;
        }
        h1(i, bh6Var);
        ms4 ms4Var = this.N;
        int iS0 = S0(vg6Var, ms4Var, bh6Var);
        if (ms4Var.b >= iS0) {
            i = i < 0 ? -iS0 : iS0;
        }
        this.J.r(-i);
        this.V = this.P;
        ms4Var.b = 0;
        i1(vg6Var, ms4Var);
        return i;
    }

    public final void n1(int i) {
        ms4 ms4Var = this.N;
        ms4Var.e = i;
        ms4Var.d = this.P != (i == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean o() {
        return this.L == 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final void o0(RecyclerView recyclerView, int i, int i2) {
        b1(i, i2, 4);
    }

    public final void o1(int i) {
        m(null);
        if (i != this.H) {
            this.T.a();
            B0();
            this.H = i;
            this.Q = new BitSet(this.H);
            this.I = new p35[this.H];
            for (int i2 = 0; i2 < this.H; i2++) {
                this.I[i2] = new p35(this, i2);
            }
            B0();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean p() {
        return this.L == 1;
    }

    @Override // androidx.recyclerview.widget.a
    public final void p0(vg6 vg6Var, bh6 bh6Var) {
        f1(vg6Var, bh6Var, true);
    }

    public final void p1(int i, bh6 bh6Var) {
        int iN;
        int iN2;
        int i2;
        ms4 ms4Var = this.N;
        boolean z = false;
        ms4Var.b = 0;
        ms4Var.c = i;
        av4 av4Var = this.e;
        gu2 gu2Var = this.J;
        if (av4Var == null || !av4Var.e || (i2 = bh6Var.a) == -1) {
            iN = 0;
            iN2 = 0;
        } else {
            if (this.P == (i2 < i)) {
                iN = gu2Var.n();
                iN2 = 0;
            } else {
                iN2 = gu2Var.n();
                iN = 0;
            }
        }
        RecyclerView recyclerView = this.b;
        if (recyclerView == null || !recyclerView.n) {
            ms4Var.g = gu2Var.h() + iN;
            ms4Var.f = -iN2;
        } else {
            ms4Var.f = gu2Var.m() - iN2;
            ms4Var.g = gu2Var.i() + iN;
        }
        ms4Var.h = false;
        ms4Var.a = true;
        if (gu2Var.k() == 0 && gu2Var.h() == 0) {
            z = true;
        }
        ms4Var.i = z;
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean q(qg6 qg6Var) {
        return qg6Var instanceof xk7;
    }

    @Override // androidx.recyclerview.widget.a
    public final void q0(bh6 bh6Var) {
        this.R = -1;
        this.S = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.X = null;
        this.Z.a();
    }

    public final void q1(p35 p35Var, int i, int i2) {
        int i3 = p35Var.d;
        int i4 = p35Var.e;
        if (i != -1) {
            int i5 = p35Var.c;
            if (i5 == Integer.MIN_VALUE) {
                p35Var.a();
                i5 = p35Var.c;
            }
            if (i5 - i3 >= i2) {
                this.Q.set(i4, false);
                return;
            }
            return;
        }
        int i6 = p35Var.b;
        if (i6 == Integer.MIN_VALUE) {
            View view = (View) ((ArrayList) p35Var.f).get(0);
            xk7 xk7Var = (xk7) view.getLayoutParams();
            p35Var.b = ((StaggeredGridLayoutManager) p35Var.g).J.g(view);
            xk7Var.getClass();
            i6 = p35Var.b;
        }
        if (i6 + i3 <= i2) {
            this.Q.set(i4, false);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void r0(Parcelable parcelable) {
        if (parcelable instanceof zk7) {
            zk7 zk7Var = (zk7) parcelable;
            this.X = zk7Var;
            if (this.R != -1) {
                zk7Var.a = -1;
                zk7Var.b = -1;
                zk7Var.d = null;
                zk7Var.c = 0;
                zk7Var.e = 0;
                zk7Var.f = null;
                zk7Var.k = null;
            }
            B0();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void s(int i, int i2, bh6 bh6Var, ru3 ru3Var) {
        ms4 ms4Var;
        int i3;
        int iK;
        if (this.L != 0) {
            i = i2;
        }
        if (G() == 0 || i == 0) {
            return;
        }
        h1(i, bh6Var);
        int[] iArr = this.b0;
        if (iArr == null || iArr.length < this.H) {
            this.b0 = new int[this.H];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.H;
            ms4Var = this.N;
            if (i4 >= i6) {
                break;
            }
            if (ms4Var.d == -1) {
                i3 = ms4Var.f;
                iK = this.I[i4].k(i3);
            } else {
                i3 = this.I[i4].i(ms4Var.g);
                iK = ms4Var.g;
            }
            int i7 = i3 - iK;
            if (i7 >= 0) {
                this.b0[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.b0, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = ms4Var.c;
            if (i9 < 0 || i9 >= bh6Var.b()) {
                return;
            }
            ru3Var.b(ms4Var.c, this.b0[i8]);
            ms4Var.c += ms4Var.d;
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final Parcelable s0() {
        int iK;
        int iM;
        int[] iArr;
        zk7 zk7Var = this.X;
        if (zk7Var != null) {
            zk7 zk7Var2 = new zk7();
            zk7Var2.c = zk7Var.c;
            zk7Var2.a = zk7Var.a;
            zk7Var2.b = zk7Var.b;
            zk7Var2.d = zk7Var.d;
            zk7Var2.e = zk7Var.e;
            zk7Var2.f = zk7Var.f;
            zk7Var2.n = zk7Var.n;
            zk7Var2.p = zk7Var.p;
            zk7Var2.q = zk7Var.q;
            zk7Var2.k = zk7Var.k;
            return zk7Var2;
        }
        zk7 zk7Var3 = new zk7();
        zk7Var3.n = this.O;
        zk7Var3.p = this.V;
        zk7Var3.q = this.W;
        c00 c00Var = this.T;
        if (c00Var == null || (iArr = (int[]) c00Var.b) == null) {
            zk7Var3.e = 0;
        } else {
            zk7Var3.f = iArr;
            zk7Var3.e = iArr.length;
            zk7Var3.k = (ArrayList) c00Var.c;
        }
        if (G() <= 0) {
            zk7Var3.a = -1;
            zk7Var3.b = -1;
            zk7Var3.c = 0;
            return zk7Var3;
        }
        zk7Var3.a = this.V ? Y0() : X0();
        View viewT0 = this.P ? T0(true) : U0(true);
        zk7Var3.b = viewT0 != null ? a.R(viewT0) : -1;
        int i = this.H;
        zk7Var3.c = i;
        zk7Var3.d = new int[i];
        for (int i2 = 0; i2 < this.H; i2++) {
            boolean z = this.V;
            p35[] p35VarArr = this.I;
            gu2 gu2Var = this.J;
            if (z) {
                iK = p35VarArr[i2].i(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
                if (iK != Integer.MIN_VALUE) {
                    iM = gu2Var.i();
                    iK -= iM;
                }
            } else {
                iK = p35VarArr[i2].k(SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED);
                if (iK != Integer.MIN_VALUE) {
                    iM = gu2Var.m();
                    iK -= iM;
                }
            }
            zk7Var3.d[i2] = iK;
        }
        return zk7Var3;
    }

    @Override // androidx.recyclerview.widget.a
    public final void t0(int i) {
        if (i == 0) {
            Q0();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final int u(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        boolean z = !this.a0;
        return g67.h(bh6Var, this.J, U0(z), T0(z), this, this.a0);
    }

    @Override // androidx.recyclerview.widget.a
    public final int v(bh6 bh6Var) {
        return R0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int w(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        boolean z = !this.a0;
        return g67.j(bh6Var, this.J, U0(z), T0(z), this, this.a0);
    }

    @Override // androidx.recyclerview.widget.a
    public final int x(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        boolean z = !this.a0;
        return g67.h(bh6Var, this.J, U0(z), T0(z), this, this.a0);
    }

    @Override // androidx.recyclerview.widget.a
    public final int y(bh6 bh6Var) {
        return R0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int z(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        boolean z = !this.a0;
        return g67.j(bh6Var, this.J, U0(z), T0(z), this, this.a0);
    }

    public StaggeredGridLayoutManager(int i, int i2) {
        this.H = -1;
        this.O = false;
        this.P = false;
        this.R = -1;
        this.S = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.T = new c00(13, false);
        this.U = 2;
        this.Y = new Rect();
        this.Z = new wk7(this);
        this.a0 = true;
        this.c0 = new aq2(this, 3);
        this.L = i2;
        o1(i);
        this.N = new ms4();
        this.J = gu2.b(this, this.L);
        this.K = gu2.b(this, 1 - this.L);
    }
}
