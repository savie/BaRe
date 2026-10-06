package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import com.jcraft.jsch.SftpATTRS;
import defpackage.ah6;
import defpackage.av4;
import defpackage.bh6;
import defpackage.g84;
import defpackage.gu2;
import defpackage.mh3;
import defpackage.oh3;
import defpackage.pg6;
import defpackage.ph3;
import defpackage.qg6;
import defpackage.rh3;
import defpackage.su5;
import defpackage.th3;
import defpackage.tu5;
import defpackage.uh3;
import defpackage.vg6;
import defpackage.vh3;
import defpackage.wh3;
import defpackage.x5;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class FlexboxLayoutManager extends a implements mh3, ah6 {
    public static final Rect g0 = new Rect();
    public int H;
    public int I;
    public int J;
    public final int K;
    public final int L;
    public boolean M;
    public boolean N;
    public List O;
    public final rh3 P;
    public vg6 Q;
    public bh6 R;
    public vh3 S;
    public final th3 T;
    public gu2 U;
    public gu2 V;
    public wh3 W;
    public int X;
    public int Y;
    public int Z;
    public int a0;
    public final SparseArray b0;
    public final Context c0;
    public View d0;
    public int e0;
    public final ph3 f0;

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.L = -1;
        this.O = new ArrayList();
        this.P = new rh3(this);
        th3 th3Var = new th3(this);
        this.T = th3Var;
        this.X = -1;
        this.Y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.Z = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.a0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.b0 = new SparseArray();
        this.e0 = -1;
        this.f0 = new ph3();
        pg6 pg6VarS = a.S(context, attributeSet, i, i2);
        int i3 = pg6VarS.a;
        if (i3 != 0) {
            if (i3 == 1) {
                if (pg6VarS.c) {
                    g1(3);
                } else {
                    g1(2);
                }
            }
        } else if (pg6VarS.c) {
            g1(1);
        } else {
            g1(0);
        }
        h1(1);
        if (this.K != 4) {
            v0();
            this.O.clear();
            th3.b(th3Var);
            th3Var.d = 0;
            this.K = 4;
            B0();
        }
        this.c0 = context;
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

    @Override // androidx.recyclerview.widget.a
    public final qg6 C() {
        uh3 uh3Var = new uh3(-2, -2);
        uh3Var.e = 0.0f;
        uh3Var.f = 1.0f;
        uh3Var.k = -1;
        uh3Var.n = -1.0f;
        uh3Var.r = 16777215;
        uh3Var.t = 16777215;
        return uh3Var;
    }

    @Override // androidx.recyclerview.widget.a
    public final int C0(int i, vg6 vg6Var, bh6 bh6Var) {
        if (!j() || this.I == 0) {
            int iD1 = d1(i, vg6Var, bh6Var);
            this.b0.clear();
            return iD1;
        }
        int iE1 = e1(i);
        this.T.d += iE1;
        this.V.r(-iE1);
        return iE1;
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 D(Context context, AttributeSet attributeSet) {
        uh3 uh3Var = new uh3(context, attributeSet);
        uh3Var.e = 0.0f;
        uh3Var.f = 1.0f;
        uh3Var.k = -1;
        uh3Var.n = -1.0f;
        uh3Var.r = 16777215;
        uh3Var.t = 16777215;
        return uh3Var;
    }

    @Override // androidx.recyclerview.widget.a
    public final void D0(int i) {
        this.X = i;
        this.Y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        wh3 wh3Var = this.W;
        if (wh3Var != null) {
            wh3Var.a = -1;
        }
        B0();
    }

    @Override // androidx.recyclerview.widget.a
    public final int E0(int i, vg6 vg6Var, bh6 bh6Var) {
        if (j() || (this.I == 0 && !j())) {
            int iD1 = d1(i, vg6Var, bh6Var);
            this.b0.clear();
            return iD1;
        }
        int iE1 = e1(i);
        this.T.d += iE1;
        this.V.r(-iE1);
        return iE1;
    }

    @Override // androidx.recyclerview.widget.a
    public final void N0(RecyclerView recyclerView, int i) {
        av4 av4Var = new av4(recyclerView.getContext());
        av4Var.a = i;
        O0(av4Var);
    }

    public final int Q0(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        int iB = bh6Var.b();
        T0();
        View viewV0 = V0(iB);
        View viewX0 = X0(iB);
        if (bh6Var.b() == 0 || viewV0 == null || viewX0 == null) {
            return 0;
        }
        return Math.min(this.U.n(), this.U.d(viewX0) - this.U.g(viewV0));
    }

    public final int R0(bh6 bh6Var) {
        if (G() == 0) {
            return 0;
        }
        int iB = bh6Var.b();
        View viewV0 = V0(iB);
        View viewX0 = X0(iB);
        if (bh6Var.b() == 0 || viewV0 == null || viewX0 == null) {
            return 0;
        }
        int iR = a.R(viewV0);
        int iR2 = a.R(viewX0);
        int iAbs = Math.abs(this.U.d(viewX0) - this.U.g(viewV0));
        int[] iArr = (int[]) this.P.c;
        int i = iArr[iR];
        if (i == 0 || i == -1) {
            return 0;
        }
        return Math.round((i * (iAbs / ((iArr[iR2] - i) + 1))) + (this.U.m() - this.U.g(viewV0)));
    }

    public final int S0(bh6 bh6Var) {
        if (G() != 0) {
            int iB = bh6Var.b();
            View viewV0 = V0(iB);
            View viewX0 = X0(iB);
            if (bh6Var.b() != 0 && viewV0 != null && viewX0 != null) {
                View viewZ0 = Z0(0, G());
                int iR = viewZ0 == null ? -1 : a.R(viewZ0);
                View viewZ1 = Z0(G() - 1, -1);
                return (int) ((Math.abs(this.U.d(viewX0) - this.U.g(viewV0)) / (((viewZ1 != null ? a.R(viewZ1) : -1) - iR) + 1)) * bh6Var.b());
            }
        }
        return 0;
    }

    public final void T0() {
        if (this.U != null) {
            return;
        }
        boolean zJ = j();
        int i = this.I;
        if (zJ) {
            if (i == 0) {
                this.U = new su5(this);
                this.V = new tu5(this);
                return;
            } else {
                this.U = new tu5(this);
                this.V = new su5(this);
                return;
            }
        }
        if (i == 0) {
            this.U = new tu5(this);
            this.V = new su5(this);
        } else {
            this.U = new su5(this);
            this.V = new tu5(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:121:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:123:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:124:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:126:0x030f  */
    /* JADX WARN: Code duplicated, block: B:129:0x0335  */
    /* JADX WARN: Code duplicated, block: B:131:0x0346  */
    /* JADX WARN: Code duplicated, block: B:134:0x037c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:135:0x037e  */
    /* JADX WARN: Code duplicated, block: B:136:0x039d  */
    /* JADX WARN: Code duplicated, block: B:137:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:139:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:140:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:63:0x0116  */
    /* JADX WARN: Code duplicated, block: B:65:0x011c  */
    /* JADX WARN: Code duplicated, block: B:66:0x0129  */
    /* JADX WARN: Code duplicated, block: B:68:0x0132  */
    /* JADX WARN: Code duplicated, block: B:70:0x013d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0161  */
    /* JADX WARN: Code duplicated, block: B:76:0x0199  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c0  */
    public final int U0(vg6 vg6Var, bh6 bh6Var, vh3 vh3Var) {
        int i;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float fMax;
        int i4;
        int i5;
        int i6;
        int i7;
        View viewE;
        float f6;
        int i8;
        int i9;
        uh3 uh3Var;
        float f7;
        float f8;
        Rect rect;
        int i10;
        int i11;
        boolean z3;
        boolean z4;
        int i12;
        rh3 rh3Var;
        View view;
        boolean z5;
        int i13;
        float measuredHeight;
        float measuredHeight2;
        int i14;
        float f9;
        float f10;
        float f11;
        float f12;
        float measuredWidth;
        float fMax2;
        int i15;
        int i16;
        int i17;
        View viewE2;
        int i18;
        int i19;
        uh3 uh3Var2;
        float f13;
        float f14;
        int i20;
        boolean z6;
        rh3 rh3Var2;
        int i21;
        View view2;
        int i22 = vh3Var.f;
        if (i22 != Integer.MIN_VALUE) {
            int i23 = vh3Var.a;
            if (i23 < 0) {
                vh3Var.f = i22 + i23;
            }
            f1(vg6Var, vh3Var);
        }
        int i24 = vh3Var.a;
        boolean zJ = j();
        int i25 = i24;
        int i26 = 0;
        while (true) {
            if (i25 <= 0 && !this.S.b) {
                break;
            }
            List list = this.O;
            int i27 = vh3Var.d;
            if (i27 < 0 || i27 >= bh6Var.b() || (i = vh3Var.c) < 0 || i >= list.size()) {
                break;
            }
            oh3 oh3Var = (oh3) this.O.get(vh3Var.c);
            vh3Var.d = oh3Var.o;
            boolean zJ2 = j();
            th3 th3Var = this.T;
            boolean z7 = false;
            Rect rect2 = g0;
            rh3 rh3Var3 = this.P;
            if (zJ2) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int i28 = this.y;
                int i29 = vh3Var.e;
                if (vh3Var.h == -1) {
                    i29 -= oh3Var.g;
                }
                int i30 = i29;
                int i31 = vh3Var.d;
                int i32 = this.J;
                if (i32 != 0) {
                    i14 = i30;
                    if (i32 != 1) {
                        if (i32 == 2) {
                            float f15 = paddingLeft;
                            float f16 = (i28 - oh3Var.e) / 2.0f;
                            f10 = (i28 - paddingRight) - f16;
                            f9 = f15 + f16;
                        } else if (i32 == 3) {
                            f9 = paddingLeft;
                            int i33 = oh3Var.h;
                            f11 = (i28 - oh3Var.e) / (i33 != 1 ? i33 - 1 : 1.0f);
                            f10 = i28 - paddingRight;
                        } else if (i32 == 4) {
                            int i34 = oh3Var.h;
                            f11 = i34 != 0 ? (i28 - oh3Var.e) / i34 : 0.0f;
                            float f17 = f11 / 2.0f;
                            f9 = paddingLeft + f17;
                            f10 = (i28 - paddingRight) - f17;
                        } else {
                            if (i32 != 5) {
                                x5.g(this.J, "Invalid justifyContent is set: ");
                                return 0;
                            }
                            int i35 = oh3Var.h;
                            f11 = i35 != 0 ? (i28 - oh3Var.e) / (i35 + 1) : 0.0f;
                            f9 = paddingLeft + f11;
                            f10 = (i28 - paddingRight) - f11;
                        }
                        float f18 = th3Var.d;
                        f12 = f9 - f18;
                        measuredWidth = f10 - f18;
                        fMax2 = Math.max(f11, 0.0f);
                        i15 = oh3Var.h;
                        i16 = i31;
                        i17 = 0;
                        while (i16 < i31 + i15) {
                            viewE2 = e(i16);
                            if (viewE2 == null) {
                                rect2 = rect2;
                                i21 = i16;
                                i31 = i31;
                            } else {
                                float f19 = measuredWidth;
                                if (vh3Var.h == 1) {
                                    n(rect2, viewE2);
                                    l(viewE2, -1, z7);
                                } else {
                                    n(rect2, viewE2);
                                    l(viewE2, i17, z7);
                                    i17++;
                                }
                                int i36 = i17;
                                long j = ((long[]) rh3Var3.d)[i16];
                                i18 = (int) j;
                                i19 = (int) (j >> 32);
                                uh3Var2 = (uh3) viewE2.getLayoutParams();
                                if (j1(viewE2, i18, i19, uh3Var2)) {
                                    viewE2.measure(i18, i19);
                                }
                                f13 = f12 + ((ViewGroup.MarginLayoutParams) uh3Var2).leftMargin + ((qg6) viewE2.getLayoutParams()).b.left;
                                f14 = f19 - (((ViewGroup.MarginLayoutParams) uh3Var2).rightMargin + ((qg6) viewE2.getLayoutParams()).b.right);
                                i20 = i14 + ((qg6) viewE2.getLayoutParams()).b.top;
                                z6 = this.M;
                                rh3Var2 = this.P;
                                if (z6) {
                                    int iRound = Math.round(f14) - viewE2.getMeasuredWidth();
                                    int iRound2 = Math.round(f14);
                                    int measuredHeight3 = viewE2.getMeasuredHeight() + i20;
                                    view2 = viewE2;
                                    i21 = i16;
                                    rh3Var2.p(view2, oh3Var, iRound, i20, iRound2, measuredHeight3);
                                } else {
                                    i21 = i16;
                                    view2 = viewE2;
                                    rh3Var2.p(view2, oh3Var, Math.round(f13), i20, view2.getMeasuredWidth() + Math.round(f13), view2.getMeasuredHeight() + i20);
                                }
                                float measuredWidth2 = view2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) uh3Var2).rightMargin + ((qg6) view2.getLayoutParams()).b.right + fMax2 + f13;
                                measuredWidth = f14 - (((view2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) uh3Var2).leftMargin) + ((qg6) view2.getLayoutParams()).b.left) + fMax2);
                                f12 = measuredWidth2;
                                i17 = i36;
                            }
                            i16 = i21 + 1;
                            i15 = i15;
                            i31 = i31;
                            zJ = zJ;
                            rect2 = rect2;
                            z7 = false;
                        }
                        z = zJ;
                        vh3Var.c += this.S.h;
                        i7 = oh3Var.g;
                    } else {
                        int i37 = oh3Var.e;
                        float f20 = (i28 - i37) + paddingRight;
                        float f21 = i37 - paddingLeft;
                        f9 = f20;
                        f10 = f21;
                    }
                } else {
                    i14 = i30;
                    f9 = paddingLeft;
                    f10 = i28 - paddingRight;
                }
                f11 = 0.0f;
                float f110 = th3Var.d;
                f12 = f9 - f110;
                measuredWidth = f10 - f110;
                fMax2 = Math.max(f11, 0.0f);
                i15 = oh3Var.h;
                i16 = i31;
                i17 = 0;
                while (i16 < i31 + i15) {
                    viewE2 = e(i16);
                    if (viewE2 == null) {
                        rect2 = rect2;
                        i21 = i16;
                        i31 = i31;
                    } else {
                        float f111 = measuredWidth;
                        if (vh3Var.h == 1) {
                            n(rect2, viewE2);
                            l(viewE2, -1, z7);
                        } else {
                            n(rect2, viewE2);
                            l(viewE2, i17, z7);
                            i17++;
                        }
                        int i38 = i17;
                        long j2 = ((long[]) rh3Var3.d)[i16];
                        i18 = (int) j2;
                        i19 = (int) (j2 >> 32);
                        uh3Var2 = (uh3) viewE2.getLayoutParams();
                        if (j1(viewE2, i18, i19, uh3Var2)) {
                            viewE2.measure(i18, i19);
                        }
                        f13 = f12 + ((ViewGroup.MarginLayoutParams) uh3Var2).leftMargin + ((qg6) viewE2.getLayoutParams()).b.left;
                        f14 = f111 - (((ViewGroup.MarginLayoutParams) uh3Var2).rightMargin + ((qg6) viewE2.getLayoutParams()).b.right);
                        i20 = i14 + ((qg6) viewE2.getLayoutParams()).b.top;
                        z6 = this.M;
                        rh3Var2 = this.P;
                        if (z6) {
                            int iRound3 = Math.round(f14) - viewE2.getMeasuredWidth();
                            int iRound4 = Math.round(f14);
                            int measuredHeight4 = viewE2.getMeasuredHeight() + i20;
                            view2 = viewE2;
                            i21 = i16;
                            rh3Var2.p(view2, oh3Var, iRound3, i20, iRound4, measuredHeight4);
                        } else {
                            i21 = i16;
                            view2 = viewE2;
                            rh3Var2.p(view2, oh3Var, Math.round(f13), i20, view2.getMeasuredWidth() + Math.round(f13), view2.getMeasuredHeight() + i20);
                        }
                        float measuredWidth3 = view2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) uh3Var2).rightMargin + ((qg6) view2.getLayoutParams()).b.right + fMax2 + f13;
                        measuredWidth = f14 - (((view2.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) uh3Var2).leftMargin) + ((qg6) view2.getLayoutParams()).b.left) + fMax2);
                        f12 = measuredWidth3;
                        i17 = i38;
                    }
                    i16 = i21 + 1;
                    i15 = i15;
                    i31 = i31;
                    zJ = zJ;
                    rect2 = rect2;
                    z7 = false;
                }
                z = zJ;
                vh3Var.c += this.S.h;
                i7 = oh3Var.g;
            } else {
                z = zJ;
                Rect rect3 = rect2;
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int i39 = this.G;
                int i40 = vh3Var.e;
                if (vh3Var.h == -1) {
                    int i41 = oh3Var.g;
                    i3 = i40 + i41;
                    i2 = i40 - i41;
                } else {
                    i2 = i40;
                    i3 = i2;
                }
                int i42 = vh3Var.d;
                int i43 = this.J;
                if (i43 != 0) {
                    z2 = true;
                    if (i43 != 1) {
                        if (i43 == 2) {
                            float f22 = paddingTop;
                            float f23 = (i39 - oh3Var.e) / 2.0f;
                            f2 = (i39 - paddingBottom) - f23;
                            f = f22 + f23;
                        } else if (i43 == 3) {
                            f = paddingTop;
                            int i44 = oh3Var.h;
                            f3 = (i39 - oh3Var.e) / (i44 != 1 ? i44 - 1 : 1.0f);
                            f2 = i39 - paddingBottom;
                        } else if (i43 == 4) {
                            int i45 = oh3Var.h;
                            f3 = i45 != 0 ? (i39 - oh3Var.e) / i45 : 0.0f;
                            float f24 = f3 / 2.0f;
                            f = paddingTop + f24;
                            f2 = (i39 - paddingBottom) - f24;
                        } else {
                            if (i43 != 5) {
                                x5.g(this.J, "Invalid justifyContent is set: ");
                                return 0;
                            }
                            int i46 = oh3Var.h;
                            f3 = i46 != 0 ? (i39 - oh3Var.e) / (i46 + 1) : 0.0f;
                            f = paddingTop + f3;
                            f2 = (i39 - paddingBottom) - f3;
                        }
                        float f25 = th3Var.d;
                        f4 = f - f25;
                        f5 = f2 - f25;
                        fMax = Math.max(f3, 0.0f);
                        i4 = oh3Var.h;
                        i5 = i42;
                        i6 = 0;
                        while (i5 < i42 + i4) {
                            viewE = e(i5);
                            if (viewE == null) {
                                f6 = fMax;
                                measuredHeight2 = f5;
                                i13 = i42;
                                rect = rect3;
                                measuredHeight = f4;
                                z5 = z2;
                            } else {
                                f6 = fMax;
                                long j3 = ((long[]) rh3Var3.d)[i5];
                                i8 = (int) j3;
                                i9 = (int) (j3 >> 32);
                                uh3Var = (uh3) viewE.getLayoutParams();
                                if (j1(viewE, i8, i9, uh3Var)) {
                                    viewE.measure(i8, i9);
                                }
                                f7 = f4 + ((ViewGroup.MarginLayoutParams) uh3Var).topMargin + ((qg6) viewE.getLayoutParams()).b.top;
                                f8 = f5 - (((ViewGroup.MarginLayoutParams) uh3Var).rightMargin + ((qg6) viewE.getLayoutParams()).b.bottom);
                                if (vh3Var.h == 1) {
                                    rect = rect3;
                                    n(rect, viewE);
                                    l(viewE, -1, false);
                                } else {
                                    rect = rect3;
                                    n(rect, viewE);
                                    l(viewE, i6, false);
                                    i6++;
                                }
                                int i47 = i6;
                                i10 = i2 + ((qg6) viewE.getLayoutParams()).b.left;
                                i11 = i3 - ((qg6) viewE.getLayoutParams()).b.right;
                                z3 = this.M;
                                z4 = this.N;
                                i12 = i42;
                                rh3Var = this.P;
                                if (z3) {
                                    view = viewE;
                                    z5 = true;
                                    i13 = i12;
                                    if (z4) {
                                        rh3Var.q(view, oh3Var, z3, i10, Math.round(f8) - view.getMeasuredHeight(), view.getMeasuredWidth() + i10, Math.round(f8));
                                    } else {
                                        rh3Var.q(view, oh3Var, z3, i10, Math.round(f7), view.getMeasuredWidth() + i10, view.getMeasuredHeight() + Math.round(f7));
                                    }
                                } else if (z4) {
                                    i13 = i12;
                                    z5 = true;
                                    view = viewE;
                                    rh3Var.q(view, oh3Var, z3, i11 - viewE.getMeasuredWidth(), Math.round(f8) - viewE.getMeasuredHeight(), i11, Math.round(f8));
                                } else {
                                    view = viewE;
                                    z5 = true;
                                    i13 = i12;
                                    rh3Var.q(view, oh3Var, z3, i11 - view.getMeasuredWidth(), Math.round(f7), i11, view.getMeasuredHeight() + Math.round(f7));
                                }
                                measuredHeight = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) uh3Var).topMargin + ((qg6) view.getLayoutParams()).b.bottom + f6 + f7;
                                measuredHeight2 = f8 - (((view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) uh3Var).bottomMargin) + ((qg6) view.getLayoutParams()).b.top) + f6);
                                i6 = i47;
                            }
                            i5++;
                            f4 = measuredHeight;
                            i42 = i13;
                            z2 = z5;
                            rect3 = rect;
                            f5 = measuredHeight2;
                            rh3Var3 = rh3Var3;
                            fMax = f6;
                        }
                        vh3Var.c += this.S.h;
                        i7 = oh3Var.g;
                    } else {
                        int i48 = oh3Var.e;
                        float f26 = (i39 - i48) + paddingBottom;
                        float f27 = i48 - paddingTop;
                        f = f26;
                        f2 = f27;
                    }
                } else {
                    z2 = true;
                    f = paddingTop;
                    f2 = i39 - paddingBottom;
                }
                f3 = 0.0f;
                float f28 = th3Var.d;
                f4 = f - f28;
                f5 = f2 - f28;
                fMax = Math.max(f3, 0.0f);
                i4 = oh3Var.h;
                i5 = i42;
                i6 = 0;
                while (i5 < i42 + i4) {
                    viewE = e(i5);
                    if (viewE == null) {
                        f6 = fMax;
                        measuredHeight2 = f5;
                        i13 = i42;
                        rect = rect3;
                        measuredHeight = f4;
                        z5 = z2;
                    } else {
                        f6 = fMax;
                        long j4 = ((long[]) rh3Var3.d)[i5];
                        i8 = (int) j4;
                        i9 = (int) (j4 >> 32);
                        uh3Var = (uh3) viewE.getLayoutParams();
                        if (j1(viewE, i8, i9, uh3Var)) {
                            viewE.measure(i8, i9);
                        }
                        f7 = f4 + ((ViewGroup.MarginLayoutParams) uh3Var).topMargin + ((qg6) viewE.getLayoutParams()).b.top;
                        f8 = f5 - (((ViewGroup.MarginLayoutParams) uh3Var).rightMargin + ((qg6) viewE.getLayoutParams()).b.bottom);
                        if (vh3Var.h == 1) {
                            rect = rect3;
                            n(rect, viewE);
                            l(viewE, -1, false);
                        } else {
                            rect = rect3;
                            n(rect, viewE);
                            l(viewE, i6, false);
                            i6++;
                        }
                        int i49 = i6;
                        i10 = i2 + ((qg6) viewE.getLayoutParams()).b.left;
                        i11 = i3 - ((qg6) viewE.getLayoutParams()).b.right;
                        z3 = this.M;
                        z4 = this.N;
                        i12 = i42;
                        rh3Var = this.P;
                        if (z3) {
                            view = viewE;
                            z5 = true;
                            i13 = i12;
                            if (z4) {
                                rh3Var.q(view, oh3Var, z3, i10, Math.round(f8) - view.getMeasuredHeight(), view.getMeasuredWidth() + i10, Math.round(f8));
                            } else {
                                rh3Var.q(view, oh3Var, z3, i10, Math.round(f7), view.getMeasuredWidth() + i10, view.getMeasuredHeight() + Math.round(f7));
                            }
                        } else if (z4) {
                            i13 = i12;
                            z5 = true;
                            view = viewE;
                            rh3Var.q(view, oh3Var, z3, i11 - viewE.getMeasuredWidth(), Math.round(f8) - viewE.getMeasuredHeight(), i11, Math.round(f8));
                        } else {
                            view = viewE;
                            z5 = true;
                            i13 = i12;
                            rh3Var.q(view, oh3Var, z3, i11 - view.getMeasuredWidth(), Math.round(f7), i11, view.getMeasuredHeight() + Math.round(f7));
                        }
                        measuredHeight = view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) uh3Var).topMargin + ((qg6) view.getLayoutParams()).b.bottom + f6 + f7;
                        measuredHeight2 = f8 - (((view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) uh3Var).bottomMargin) + ((qg6) view.getLayoutParams()).b.top) + f6);
                        i6 = i49;
                    }
                    i5++;
                    f4 = measuredHeight;
                    i42 = i13;
                    z2 = z5;
                    rect3 = rect;
                    f5 = measuredHeight2;
                    rh3Var3 = rh3Var3;
                    fMax = f6;
                }
                vh3Var.c += this.S.h;
                i7 = oh3Var.g;
            }
            i26 += i7;
            if (z || !this.M) {
                vh3Var.e += oh3Var.g * vh3Var.h;
            } else {
                vh3Var.e -= oh3Var.g * vh3Var.h;
            }
            i25 -= oh3Var.g;
            zJ = z;
            i24 = i24;
        }
        int i50 = i24;
        int i51 = vh3Var.a - i26;
        vh3Var.a = i51;
        int i52 = vh3Var.f;
        if (i52 != Integer.MIN_VALUE) {
            int i53 = i52 + i26;
            vh3Var.f = i53;
            if (i51 < 0) {
                vh3Var.f = i53 + i51;
            }
            f1(vg6Var, vh3Var);
        }
        return i50 - vh3Var.a;
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean V() {
        return true;
    }

    public final View V0(int i) {
        View viewA1 = a1(0, G(), i);
        if (viewA1 == null) {
            return null;
        }
        int i2 = ((int[]) this.P.c)[a.R(viewA1)];
        if (i2 == -1) {
            return null;
        }
        return W0(viewA1, (oh3) this.O.get(i2));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    public final View W0(View view, oh3 oh3Var) {
        boolean zJ = j();
        int i = oh3Var.h;
        for (int i2 = 1; i2 < i; i2++) {
            View viewF = F(i2);
            if (viewF != null && viewF.getVisibility() != 8) {
                if (!this.M || zJ) {
                    if (this.U.g(view) > this.U.g(viewF)) {
                        view = viewF;
                    }
                } else if (this.U.d(view) < this.U.d(viewF)) {
                    view = viewF;
                }
            }
        }
        return view;
    }

    public final View X0(int i) {
        View viewA1 = a1(G() - 1, -1, i);
        if (viewA1 == null) {
            return null;
        }
        return Y0(viewA1, (oh3) this.O.get(((int[]) this.P.c)[a.R(viewA1)]));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0047  */
    public final View Y0(View view, oh3 oh3Var) {
        boolean zJ = j();
        int iG = (G() - oh3Var.h) - 1;
        for (int iG2 = G() - 2; iG2 > iG; iG2--) {
            View viewF = F(iG2);
            if (viewF != null && viewF.getVisibility() != 8) {
                if (!this.M || zJ) {
                    if (this.U.d(view) < this.U.d(viewF)) {
                        view = viewF;
                    }
                } else if (this.U.g(view) > this.U.g(viewF)) {
                    view = viewF;
                }
            }
        }
        return view;
    }

    public final View Z0(int i, int i2) {
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View viewF = F(i);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int paddingRight = this.y - getPaddingRight();
            int paddingBottom = this.G - getPaddingBottom();
            int iL = a.L(viewF) - ((ViewGroup.MarginLayoutParams) ((qg6) viewF.getLayoutParams())).leftMargin;
            int iP = a.P(viewF) - ((ViewGroup.MarginLayoutParams) ((qg6) viewF.getLayoutParams())).topMargin;
            int iO = a.O(viewF) + ((ViewGroup.MarginLayoutParams) ((qg6) viewF.getLayoutParams())).rightMargin;
            int iJ = a.J(viewF) + ((ViewGroup.MarginLayoutParams) ((qg6) viewF.getLayoutParams())).bottomMargin;
            boolean z = iL >= paddingRight || iO >= paddingLeft;
            boolean z2 = iP >= paddingBottom || iJ >= paddingTop;
            if (z && z2) {
                return viewF;
            }
            i += i3;
        }
        return null;
    }

    @Override // defpackage.ah6
    public final PointF a(int i) {
        View viewF;
        if (G() == 0 || (viewF = F(0)) == null) {
            return null;
        }
        int i2 = i < a.R(viewF) ? -1 : 1;
        return j() ? new PointF(0.0f, i2) : new PointF(i2, 0.0f);
    }

    public final View a1(int i, int i2, int i3) {
        int iR;
        T0();
        if (this.S == null) {
            vh3 vh3Var = new vh3();
            vh3Var.h = 1;
            this.S = vh3Var;
        }
        int iM = this.U.m();
        int i4 = this.U.i();
        int i5 = i2 <= i ? -1 : 1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View viewF = F(i);
            if (viewF != null && (iR = a.R(viewF)) >= 0 && iR < i3) {
                if (((qg6) viewF.getLayoutParams()).a.i()) {
                    if (view2 == null) {
                        view2 = viewF;
                    }
                } else {
                    if (this.U.g(viewF) >= iM && this.U.d(viewF) <= i4) {
                        return viewF;
                    }
                    if (view == null) {
                        view = viewF;
                    }
                }
            }
            i += i5;
        }
        return view != null ? view : view2;
    }

    @Override // defpackage.mh3
    public final View b(int i) {
        return e(i);
    }

    @Override // androidx.recyclerview.widget.a
    public final void b0() {
        v0();
    }

    public final int b1(int i, vg6 vg6Var, bh6 bh6Var, boolean z) {
        int iD1;
        int i2;
        if (j() || !this.M) {
            int i3 = this.U.i() - i;
            if (i3 <= 0) {
                return 0;
            }
            iD1 = -d1(-i3, vg6Var, bh6Var);
        } else {
            int iM = i - this.U.m();
            if (iM <= 0) {
                return 0;
            }
            iD1 = d1(iM, vg6Var, bh6Var);
        }
        int i4 = i + iD1;
        if (!z || (i2 = this.U.i() - i4) <= 0) {
            return iD1;
        }
        this.U.r(i2);
        return i2 + iD1;
    }

    @Override // defpackage.mh3
    public final int c(int i, int i2, int i3) {
        return a.H(o(), this.y, this.t, i2, i3);
    }

    @Override // androidx.recyclerview.widget.a
    public final void c0(RecyclerView recyclerView) {
        this.d0 = (View) recyclerView.getParent();
    }

    public final int c1(int i, vg6 vg6Var, bh6 bh6Var, boolean z) {
        int iD1;
        int iM;
        if (j() || !this.M) {
            int iM2 = i - this.U.m();
            if (iM2 <= 0) {
                return 0;
            }
            iD1 = -d1(iM2, vg6Var, bh6Var);
        } else {
            int i2 = this.U.i() - i;
            if (i2 <= 0) {
                return 0;
            }
            iD1 = d1(-i2, vg6Var, bh6Var);
        }
        int i3 = i + iD1;
        if (!z || (iM = i3 - this.U.m()) <= 0) {
            return iD1;
        }
        this.U.r(-iM);
        return iD1 - iM;
    }

    @Override // defpackage.mh3
    public final void d(View view, int i, int i2, oh3 oh3Var) {
        n(g0, view);
        if (j()) {
            int i3 = ((qg6) view.getLayoutParams()).b.left + ((qg6) view.getLayoutParams()).b.right;
            oh3Var.e += i3;
            oh3Var.f += i3;
        } else {
            int i4 = ((qg6) view.getLayoutParams()).b.top + ((qg6) view.getLayoutParams()).b.bottom;
            oh3Var.e += i4;
            oh3Var.f += i4;
        }
    }

    /* JADX WARN: Code duplicated, block: B:75:0x01ef  */
    public final int d1(int i, vg6 vg6Var, bh6 bh6Var) {
        int i2;
        if (G() != 0 && i != 0) {
            T0();
            this.S.i = true;
            boolean z = !j() && this.M;
            int i3 = (!z ? i > 0 : i < 0) ? -1 : 1;
            int iAbs = Math.abs(i);
            this.S.h = i3;
            boolean zJ = j();
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.y, this.t);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.G, this.x);
            boolean z2 = !zJ && this.M;
            rh3 rh3Var = this.P;
            if (i3 == 1) {
                View viewF = F(G() - 1);
                if (viewF != null) {
                    this.S.e = this.U.d(viewF);
                    int iR = a.R(viewF);
                    View viewY0 = Y0(viewF, (oh3) this.O.get(((int[]) rh3Var.c)[iR]));
                    vh3 vh3Var = this.S;
                    vh3Var.getClass();
                    int i4 = iR + 1;
                    vh3Var.d = i4;
                    int[] iArr = (int[]) rh3Var.c;
                    if (iArr.length <= i4) {
                        vh3Var.c = -1;
                    } else {
                        vh3Var.c = iArr[i4];
                    }
                    gu2 gu2Var = this.U;
                    if (z2) {
                        vh3Var.e = gu2Var.g(viewY0);
                        this.S.f = this.U.m() + (-this.U.g(viewY0));
                        vh3 vh3Var2 = this.S;
                        vh3Var2.f = Math.max(vh3Var2.f, 0);
                    } else {
                        vh3Var.e = gu2Var.d(viewY0);
                        this.S.f = this.U.d(viewY0) - this.U.i();
                    }
                    int i5 = this.S.c;
                    if ((i5 == -1 || i5 > this.O.size() - 1) && this.S.d <= this.R.b()) {
                        vh3 vh3Var3 = this.S;
                        int i6 = iAbs - vh3Var3.f;
                        ph3 ph3Var = this.f0;
                        ph3Var.b = null;
                        ph3Var.a = 0;
                        if (i6 > 0) {
                            rh3 rh3Var2 = this.P;
                            if (zJ) {
                                rh3Var2.b(ph3Var, iMakeMeasureSpec, iMakeMeasureSpec2, i6, vh3Var3.d, -1, this.O);
                            } else {
                                rh3Var2.b(ph3Var, iMakeMeasureSpec2, iMakeMeasureSpec, i6, vh3Var3.d, -1, this.O);
                                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                                iMakeMeasureSpec = iMakeMeasureSpec;
                            }
                            rh3Var.h(iMakeMeasureSpec, iMakeMeasureSpec2, this.S.d);
                            rh3Var.w(this.S.d);
                        }
                    }
                    vh3 vh3Var4 = this.S;
                    vh3Var4.a = iAbs - vh3Var4.f;
                }
            } else {
                View viewF2 = F(0);
                if (viewF2 != null) {
                    this.S.e = this.U.g(viewF2);
                    int iR2 = a.R(viewF2);
                    View viewW0 = W0(viewF2, (oh3) this.O.get(((int[]) rh3Var.c)[iR2]));
                    vh3 vh3Var5 = this.S;
                    vh3Var5.getClass();
                    int i7 = ((int[]) rh3Var.c)[iR2];
                    if (i7 == -1) {
                        i7 = 0;
                    }
                    if (i7 > 0) {
                        this.S.d = iR2 - ((oh3) this.O.get(i7 - 1)).h;
                    } else {
                        vh3Var5.d = -1;
                    }
                    vh3 vh3Var6 = this.S;
                    vh3Var6.c = i7 > 0 ? i7 - 1 : 0;
                    gu2 gu2Var2 = this.U;
                    if (z2) {
                        vh3Var6.e = gu2Var2.d(viewW0);
                        this.S.f = this.U.d(viewW0) - this.U.i();
                        vh3 vh3Var7 = this.S;
                        vh3Var7.f = Math.max(vh3Var7.f, 0);
                    } else {
                        vh3Var6.e = gu2Var2.g(viewW0);
                        this.S.f = this.U.m() + (-this.U.g(viewW0));
                    }
                    vh3 vh3Var8 = this.S;
                    vh3Var8.a = iAbs - vh3Var8.f;
                }
            }
            vh3 vh3Var9 = this.S;
            int iU0 = U0(vg6Var, bh6Var, vh3Var9) + vh3Var9.f;
            if (iU0 >= 0) {
                if (z) {
                    if (iAbs > iU0) {
                        i2 = (-i3) * iU0;
                    } else {
                        i2 = i;
                    }
                } else if (iAbs > iU0) {
                    i2 = i3 * iU0;
                } else {
                    i2 = i;
                }
                this.U.r(-i2);
                this.S.g = i2;
                return i2;
            }
        }
        return 0;
    }

    @Override // defpackage.mh3
    public final View e(int i) {
        View view = (View) this.b0.get(i);
        return view != null ? view : this.Q.d(i);
    }

    public final int e1(int i) {
        if (G() == 0 || i == 0) {
            return 0;
        }
        T0();
        boolean zJ = j();
        View view = this.d0;
        int width = zJ ? view.getWidth() : view.getHeight();
        int i2 = zJ ? this.y : this.G;
        int layoutDirection = this.b.getLayoutDirection();
        th3 th3Var = this.T;
        if (layoutDirection == 1) {
            int iAbs = Math.abs(i);
            if (i < 0) {
                return -Math.min((i2 + th3Var.d) - width, iAbs);
            }
            int i3 = th3Var.d;
            if (i3 + i > 0) {
                return -i3;
            }
        } else {
            if (i > 0) {
                return Math.min((i2 - th3Var.d) - width, i);
            }
            int i4 = th3Var.d;
            if (i4 + i < 0) {
                return -i4;
            }
        }
        return i;
    }

    @Override // defpackage.mh3
    public final int f(View view, int i, int i2) {
        int i3;
        int i4;
        if (j()) {
            i3 = ((qg6) view.getLayoutParams()).b.left;
            i4 = ((qg6) view.getLayoutParams()).b.right;
        } else {
            i3 = ((qg6) view.getLayoutParams()).b.top;
            i4 = ((qg6) view.getLayoutParams()).b.bottom;
        }
        return i3 + i4;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0069  */
    /* JADX WARN: Code duplicated, block: B:34:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x0075  */
    /* JADX WARN: Code duplicated, block: B:65:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:76:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0108 A[EDGE_INSN: B:86:0x0108->B:93:? BREAK  A[LOOP:2: B:52:0x00b7->B:71:0x0104], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x0104 A[SYNTHETIC] */
    public final void f1(vg6 vg6Var, vh3 vh3Var) {
        int iG;
        int i;
        int iG2;
        int i2;
        View viewF;
        int i3;
        if (vh3Var.i) {
            int i4 = vh3Var.h;
            int i5 = vh3Var.f;
            rh3 rh3Var = this.P;
            int i6 = -1;
            if (i4 == -1) {
                if (i5 < 0 || (iG2 = G()) == 0 || (viewF = F((i2 = iG2 - 1))) == null || (i3 = ((int[]) rh3Var.c)[a.R(viewF)]) == -1) {
                    return;
                }
                oh3 oh3Var = (oh3) this.O.get(i3);
                for (int i7 = i2; i7 >= 0; i7--) {
                    View viewF2 = F(i7);
                    if (viewF2 != null) {
                        int i8 = vh3Var.f;
                        if (!j() && this.M) {
                            if (this.U.d(viewF2) > i8) {
                                break;
                            }
                            if (oh3Var.o != a.R(viewF2)) {
                                continue;
                            } else if (i3 <= 0) {
                                iG2 = i7;
                                break;
                            } else {
                                i3 += vh3Var.h;
                                oh3Var = (oh3) this.O.get(i3);
                                iG2 = i7;
                            }
                        } else {
                            if (this.U.g(viewF2) < this.U.h() - i8) {
                                break;
                            }
                            if (oh3Var.o != a.R(viewF2)) {
                                continue;
                            } else if (i3 <= 0) {
                                iG2 = i7;
                                break;
                            } else {
                                i3 += vh3Var.h;
                                oh3Var = (oh3) this.O.get(i3);
                                iG2 = i7;
                            }
                        }
                    }
                }
                while (i2 >= iG2) {
                    z0(i2, vg6Var);
                    i2--;
                }
                return;
            }
            if (i5 >= 0 && (iG = G()) != 0) {
                int i9 = 0;
                View viewF3 = F(0);
                if (viewF3 == null || (i = ((int[]) rh3Var.c)[a.R(viewF3)]) == -1) {
                    return;
                }
                oh3 oh3Var2 = (oh3) this.O.get(i);
                while (true) {
                    if (i9 < iG) {
                        View viewF4 = F(i9);
                        if (viewF4 != null) {
                            int i10 = vh3Var.f;
                            if (j() || !this.M) {
                                if (this.U.d(viewF4) <= i10) {
                                    if (oh3Var2.p != a.R(viewF4)) {
                                        continue;
                                    } else {
                                        if (i >= this.O.size() - 1) {
                                            break;
                                        }
                                        i += vh3Var.h;
                                        oh3Var2 = (oh3) this.O.get(i);
                                        i6 = i9;
                                    }
                                }
                            } else if (this.U.h() - this.U.g(viewF4) <= i10) {
                                if (oh3Var2.p != a.R(viewF4)) {
                                    continue;
                                } else if (i >= this.O.size() - 1) {
                                    break;
                                    break;
                                } else {
                                    i += vh3Var.h;
                                    oh3Var2 = (oh3) this.O.get(i);
                                    i6 = i9;
                                }
                            }
                        }
                        i9++;
                    }
                    i9 = i6;
                    break;
                }
                while (i9 >= 0) {
                    z0(i9, vg6Var);
                    i9--;
                }
            }
        }
    }

    @Override // defpackage.mh3
    public final int g(int i, int i2, int i3) {
        return a.H(p(), this.G, this.x, i2, i3);
    }

    public final void g1(int i) {
        if (this.H != i) {
            v0();
            this.H = i;
            this.U = null;
            this.V = null;
            this.O.clear();
            th3 th3Var = this.T;
            th3.b(th3Var);
            th3Var.d = 0;
            B0();
        }
    }

    @Override // defpackage.mh3
    public final int getAlignContent() {
        return 5;
    }

    @Override // defpackage.mh3
    public final int getAlignItems() {
        return this.K;
    }

    @Override // defpackage.mh3
    public final int getFlexDirection() {
        return this.H;
    }

    @Override // defpackage.mh3
    public final int getFlexItemCount() {
        return this.R.b();
    }

    @Override // defpackage.mh3
    public final List getFlexLinesInternal() {
        return this.O;
    }

    @Override // defpackage.mh3
    public final int getFlexWrap() {
        return this.I;
    }

    @Override // defpackage.mh3
    public final int getLargestMainSize() {
        if (this.O.size() == 0) {
            return 0;
        }
        int size = this.O.size();
        int iMax = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        for (int i = 0; i < size; i++) {
            iMax = Math.max(iMax, ((oh3) this.O.get(i)).e);
        }
        return iMax;
    }

    @Override // defpackage.mh3
    public final int getMaxLine() {
        return this.L;
    }

    @Override // defpackage.mh3
    public final int getSumOfCrossSize() {
        int size = this.O.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((oh3) this.O.get(i2)).g;
        }
        return i;
    }

    public final void h1(int i) {
        if (i == 2) {
            g84.j("wrap_reverse is not supported in FlexboxLayoutManager");
            return;
        }
        int i2 = this.I;
        if (i2 != i) {
            if (i2 == 0 || i == 0) {
                v0();
                this.O.clear();
                th3 th3Var = this.T;
                th3.b(th3Var);
                th3Var.d = 0;
            }
            this.I = i;
            this.U = null;
            this.V = null;
            B0();
        }
    }

    @Override // defpackage.mh3
    public final void i(View view, int i) {
        this.b0.put(i, view);
    }

    public final void i1(int i) {
        if (this.J != i) {
            this.J = i;
            B0();
        }
    }

    @Override // defpackage.mh3
    public final boolean j() {
        int i = this.H;
        return i == 0 || i == 1;
    }

    @Override // androidx.recyclerview.widget.a
    public final void j0(int i, int i2) {
        k1(i);
    }

    public final boolean j1(View view, int i, int i2, uh3 uh3Var) {
        return (!view.isLayoutRequested() && this.n && X(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) uh3Var).width) && X(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) uh3Var).height)) ? false : true;
    }

    @Override // defpackage.mh3
    public final int k(View view) {
        int i;
        int i2;
        if (j()) {
            i = ((qg6) view.getLayoutParams()).b.top;
            i2 = ((qg6) view.getLayoutParams()).b.bottom;
        } else {
            i = ((qg6) view.getLayoutParams()).b.left;
            i2 = ((qg6) view.getLayoutParams()).b.right;
        }
        return i + i2;
    }

    public final void k1(int i) {
        View viewZ0 = Z0(G() - 1, -1);
        if (i >= (viewZ0 != null ? a.R(viewZ0) : -1)) {
            return;
        }
        int iG = G();
        rh3 rh3Var = this.P;
        rh3Var.j(iG);
        rh3Var.k(iG);
        rh3Var.i(iG);
        if (i >= ((int[]) rh3Var.c).length) {
            return;
        }
        this.e0 = i;
        View viewF = F(0);
        if (viewF == null) {
            return;
        }
        this.X = a.R(viewF);
        if (j() || !this.M) {
            this.Y = this.U.g(viewF) - this.U.m();
        } else {
            this.Y = this.U.j() + this.U.d(viewF);
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void l0(int i, int i2) {
        k1(Math.min(i, i2));
    }

    public final void l1(th3 th3Var, boolean z, boolean z2) {
        int i;
        if (z2) {
            int i2 = j() ? this.x : this.t;
            this.S.b = i2 == 0 || i2 == Integer.MIN_VALUE;
        } else {
            this.S.b = false;
        }
        if (j() || !this.M) {
            this.S.a = this.U.i() - th3Var.c;
        } else {
            this.S.a = th3Var.c - getPaddingRight();
        }
        vh3 vh3Var = this.S;
        vh3Var.d = th3Var.a;
        vh3Var.h = 1;
        vh3Var.e = th3Var.c;
        vh3Var.f = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        vh3Var.c = th3Var.b;
        if (!z || this.O.size() <= 1 || (i = th3Var.b) < 0 || i >= this.O.size() - 1) {
            return;
        }
        oh3 oh3Var = (oh3) this.O.get(th3Var.b);
        vh3 vh3Var2 = this.S;
        vh3Var2.c++;
        vh3Var2.d += oh3Var.h;
    }

    @Override // androidx.recyclerview.widget.a
    public final void m0(int i, int i2) {
        k1(i);
    }

    public final void m1(th3 th3Var, boolean z, boolean z2) {
        if (z2) {
            int i = j() ? this.x : this.t;
            this.S.b = i == 0 || i == Integer.MIN_VALUE;
        } else {
            this.S.b = false;
        }
        if (j() || !this.M) {
            this.S.a = th3Var.c - this.U.m();
        } else {
            this.S.a = (this.d0.getWidth() - th3Var.c) - this.U.m();
        }
        vh3 vh3Var = this.S;
        vh3Var.d = th3Var.a;
        vh3Var.h = -1;
        vh3Var.e = th3Var.c;
        vh3Var.f = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        int i2 = th3Var.b;
        vh3Var.c = i2;
        if (!z || i2 <= 0) {
            return;
        }
        int size = this.O.size();
        int i3 = th3Var.b;
        if (size > i3) {
            oh3 oh3Var = (oh3) this.O.get(i3);
            vh3 vh3Var2 = this.S;
            vh3Var2.c--;
            vh3Var2.d -= oh3Var.h;
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void n0(int i) {
        k1(i);
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean o() {
        if (this.I == 0) {
            return j();
        }
        if (!j()) {
            return true;
        }
        int i = this.y;
        View view = this.d0;
        return i > (view != null ? view.getWidth() : 0);
    }

    @Override // androidx.recyclerview.widget.a
    public final void o0(RecyclerView recyclerView, int i, int i2) {
        k1(i);
        k1(i);
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean p() {
        if (this.I == 0) {
            return !j();
        }
        if (!j()) {
            int i = this.G;
            View view = this.d0;
            if (i <= (view != null ? view.getHeight() : 0)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x017b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0192  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:113:0x01af  */
    /* JADX WARN: Code duplicated, block: B:114:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:116:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:118:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:119:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:130:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:131:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:135:0x0215  */
    /* JADX WARN: Code duplicated, block: B:139:0x021b  */
    /* JADX WARN: Code duplicated, block: B:142:0x0228  */
    /* JADX WARN: Code duplicated, block: B:143:0x0235  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:79:0x010a  */
    /* JADX WARN: Code duplicated, block: B:80:0x010f  */
    /* JADX WARN: Code duplicated, block: B:82:0x0120  */
    /* JADX WARN: Code duplicated, block: B:83:0x012a  */
    /* JADX WARN: Code duplicated, block: B:85:0x0137  */
    /* JADX WARN: Code duplicated, block: B:86:0x0143  */
    /* JADX WARN: Code duplicated, block: B:88:0x0149  */
    /* JADX WARN: Code duplicated, block: B:89:0x0155  */
    /* JADX WARN: Code duplicated, block: B:91:0x015d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0171  */
    /* JADX WARN: Code duplicated, block: B:98:0x0173  */
    @Override // androidx.recyclerview.widget.a
    public final void p0(vg6 vg6Var, bh6 bh6Var) {
        View viewV0;
        FlexboxLayoutManager flexboxLayoutManager;
        gu2 gu2Var;
        int iR;
        int i;
        int size;
        int i2;
        int i3;
        View viewB;
        View viewF;
        boolean z;
        int iG;
        gu2 gu2Var2;
        boolean z2;
        gu2 gu2Var3;
        int iG2;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        int i6;
        int i7;
        this.Q = vg6Var;
        this.R = bh6Var;
        int iB = bh6Var.b();
        if (iB == 0 && bh6Var.g) {
            return;
        }
        int layoutDirection = this.b.getLayoutDirection();
        int i8 = this.H;
        if (i8 == 0) {
            this.M = layoutDirection == 1;
            this.N = this.I == 2;
        } else if (i8 == 1) {
            this.M = layoutDirection != 1;
            this.N = this.I == 2;
        } else if (i8 == 2) {
            boolean z5 = layoutDirection == 1;
            this.M = z5;
            if (this.I == 2) {
                this.M = !z5;
            }
            this.N = false;
        } else if (i8 != 3) {
            this.M = false;
            this.N = false;
        } else {
            boolean z6 = layoutDirection == 1;
            this.M = z6;
            if (this.I == 2) {
                this.M = !z6;
            }
            this.N = true;
        }
        T0();
        if (this.S == null) {
            vh3 vh3Var = new vh3();
            vh3Var.h = 1;
            this.S = vh3Var;
        }
        rh3 rh3Var = this.P;
        rh3Var.j(iB);
        rh3Var.k(iB);
        rh3Var.i(iB);
        this.S.i = false;
        wh3 wh3Var = this.W;
        if (wh3Var != null && (i7 = wh3Var.a) >= 0 && i7 < iB) {
            this.X = i7;
        }
        th3 th3Var = this.T;
        if (!th3Var.f || this.X != -1 || wh3Var != null) {
            th3.b(th3Var);
            wh3 wh3Var2 = this.W;
            if (bh6Var.g || (i3 = this.X) == -1) {
                if (G() != 0) {
                    if (th3Var.e) {
                        viewV0 = X0(bh6Var.b());
                    } else {
                        viewV0 = V0(bh6Var.b());
                    }
                    if (viewV0 != null) {
                        flexboxLayoutManager = th3Var.h;
                        if (flexboxLayoutManager.I == 0) {
                            gu2Var = flexboxLayoutManager.V;
                        } else {
                            gu2Var = flexboxLayoutManager.U;
                        }
                        if (flexboxLayoutManager.j() && flexboxLayoutManager.M) {
                            if (th3Var.e) {
                                th3Var.c = gu2Var.o() + gu2Var.g(viewV0);
                            } else {
                                th3Var.c = gu2Var.d(viewV0);
                            }
                        } else if (th3Var.e) {
                            th3Var.c = gu2Var.o() + gu2Var.d(viewV0);
                        } else {
                            th3Var.c = gu2Var.g(viewV0);
                        }
                        iR = a.R(viewV0);
                        th3Var.a = iR;
                        th3Var.g = false;
                        int[] iArr = (int[]) flexboxLayoutManager.P.c;
                        if (iR == -1) {
                            iR = 0;
                        }
                        i = iArr[iR];
                        if (i == -1) {
                            i = 0;
                        }
                        th3Var.b = i;
                        size = flexboxLayoutManager.O.size();
                        i2 = th3Var.b;
                        if (size > i2) {
                            th3Var.a = ((oh3) flexboxLayoutManager.O.get(i2)).o;
                        }
                    } else {
                        th3.a(th3Var);
                        th3Var.a = 0;
                        th3Var.b = 0;
                    }
                } else {
                    th3.a(th3Var);
                    th3Var.a = 0;
                    th3Var.b = 0;
                }
            } else if (i3 < 0 || i3 >= bh6Var.b()) {
                this.X = -1;
                this.Y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
                if (G() != 0) {
                    if (th3Var.e) {
                        viewV0 = X0(bh6Var.b());
                    } else {
                        viewV0 = V0(bh6Var.b());
                    }
                    if (viewV0 != null) {
                        flexboxLayoutManager = th3Var.h;
                        if (flexboxLayoutManager.I == 0) {
                            gu2Var = flexboxLayoutManager.V;
                        } else {
                            gu2Var = flexboxLayoutManager.U;
                        }
                        if (flexboxLayoutManager.j()) {
                            if (th3Var.e) {
                                th3Var.c = gu2Var.o() + gu2Var.d(viewV0);
                            } else {
                                th3Var.c = gu2Var.g(viewV0);
                            }
                        } else if (th3Var.e) {
                            th3Var.c = gu2Var.o() + gu2Var.d(viewV0);
                        } else {
                            th3Var.c = gu2Var.g(viewV0);
                        }
                        iR = a.R(viewV0);
                        th3Var.a = iR;
                        th3Var.g = false;
                        int[] iArr2 = (int[]) flexboxLayoutManager.P.c;
                        if (iR == -1) {
                            iR = 0;
                        }
                        i = iArr2[iR];
                        if (i == -1) {
                            i = 0;
                        }
                        th3Var.b = i;
                        size = flexboxLayoutManager.O.size();
                        i2 = th3Var.b;
                        if (size > i2) {
                            th3Var.a = ((oh3) flexboxLayoutManager.O.get(i2)).o;
                        }
                    } else {
                        th3.a(th3Var);
                        th3Var.a = 0;
                        th3Var.b = 0;
                    }
                } else {
                    th3.a(th3Var);
                    th3Var.a = 0;
                    th3Var.b = 0;
                }
            } else {
                int i9 = this.X;
                th3Var.a = i9;
                th3Var.b = ((int[]) rh3Var.c)[i9];
                wh3 wh3Var3 = this.W;
                if (wh3Var3 != null) {
                    int iB2 = bh6Var.b();
                    int i10 = wh3Var3.a;
                    if (i10 >= 0 && i10 < iB2) {
                        th3Var.c = this.U.m() + wh3Var2.b;
                        th3Var.g = true;
                        th3Var.b = -1;
                    } else if (this.Y == Integer.MIN_VALUE) {
                        viewB = B(this.X);
                        if (viewB != null) {
                            if (G() > 0 && (viewF = F(0)) != null) {
                                if (this.X < a.R(viewF)) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                th3Var.e = z;
                            }
                            th3.a(th3Var);
                        } else if (this.U.e(viewB) > this.U.n()) {
                            th3.a(th3Var);
                        } else {
                            iG = this.U.g(viewB) - this.U.m();
                            gu2Var2 = this.U;
                            if (iG < 0) {
                                th3Var.c = gu2Var2.m();
                                th3Var.e = false;
                            } else if (gu2Var2.i() - this.U.d(viewB) < 0) {
                                th3Var.c = this.U.i();
                                th3Var.e = true;
                            } else {
                                z2 = th3Var.e;
                                gu2Var3 = this.U;
                                if (z2) {
                                    iG2 = this.U.o() + gu2Var3.d(viewB);
                                } else {
                                    iG2 = gu2Var3.g(viewB);
                                }
                                th3Var.c = iG2;
                            }
                        }
                    } else if (j() && this.M) {
                        th3Var.c = this.Y - this.U.j();
                    } else {
                        th3Var.c = this.U.m() + this.Y;
                    }
                } else if (this.Y == Integer.MIN_VALUE) {
                    viewB = B(this.X);
                    if (viewB != null) {
                        if (G() > 0) {
                            if (this.X < a.R(viewF)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            th3Var.e = z;
                        }
                        th3.a(th3Var);
                    } else if (this.U.e(viewB) > this.U.n()) {
                        th3.a(th3Var);
                    } else {
                        iG = this.U.g(viewB) - this.U.m();
                        gu2Var2 = this.U;
                        if (iG < 0) {
                            th3Var.c = gu2Var2.m();
                            th3Var.e = false;
                        } else if (gu2Var2.i() - this.U.d(viewB) < 0) {
                            th3Var.c = this.U.i();
                            th3Var.e = true;
                        } else {
                            z2 = th3Var.e;
                            gu2Var3 = this.U;
                            if (z2) {
                                iG2 = this.U.o() + gu2Var3.d(viewB);
                            } else {
                                iG2 = gu2Var3.g(viewB);
                            }
                            th3Var.c = iG2;
                        }
                    }
                } else if (j()) {
                    th3Var.c = this.U.m() + this.Y;
                } else {
                    th3Var.c = this.U.m() + this.Y;
                }
            }
            th3Var.f = true;
        }
        A(vg6Var);
        if (th3Var.e) {
            m1(th3Var, false, true);
        } else {
            l1(th3Var, false, true);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.y, this.t);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.G, this.x);
        int i11 = this.y;
        int i12 = this.G;
        boolean zJ = j();
        Context context = this.c0;
        if (zJ) {
            int i13 = this.Z;
            z3 = (i13 == Integer.MIN_VALUE || i13 == i11) ? false : true;
            vh3 vh3Var2 = this.S;
            i4 = vh3Var2.b ? context.getResources().getDisplayMetrics().heightPixels : vh3Var2.a;
        } else {
            int i14 = this.a0;
            z3 = (i14 == Integer.MIN_VALUE || i14 == i12) ? false : true;
            vh3 vh3Var3 = this.S;
            i4 = vh3Var3.b ? context.getResources().getDisplayMetrics().widthPixels : vh3Var3.a;
        }
        int i15 = i4;
        this.Z = i11;
        this.a0 = i12;
        int i16 = this.e0;
        ph3 ph3Var = this.f0;
        if (i16 != -1 || (this.X == -1 && !z3)) {
            int iMin = th3Var.a;
            if (i16 != -1) {
                iMin = Math.min(i16, iMin);
            }
            ph3Var.b = null;
            ph3Var.a = 0;
            boolean zJ2 = j();
            List list = this.O;
            if (zJ2) {
                if (list.size() > 0) {
                    rh3Var.d(iMin, this.O);
                    this.P.b(this.f0, iMakeMeasureSpec, iMakeMeasureSpec2, i15, iMin, th3Var.a, this.O);
                } else {
                    rh3Var.i(iB);
                    this.P.b(this.f0, iMakeMeasureSpec, iMakeMeasureSpec2, i15, 0, -1, this.O);
                }
            } else if (list.size() > 0) {
                rh3Var.d(iMin, this.O);
                int i17 = iMin;
                this.P.b(this.f0, iMakeMeasureSpec2, iMakeMeasureSpec, i15, i17, th3Var.a, this.O);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
                iMin = i17;
            } else {
                rh3Var.i(iB);
                this.P.b(this.f0, iMakeMeasureSpec2, iMakeMeasureSpec, i15, 0, -1, this.O);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.O = ph3Var.b;
            rh3Var.h(iMakeMeasureSpec, iMakeMeasureSpec2, iMin);
            rh3Var.w(iMin);
        } else if (!th3Var.e) {
            this.O.clear();
            ph3Var.b = null;
            ph3Var.a = 0;
            boolean zJ3 = j();
            int i18 = th3Var.a;
            rh3 rh3Var2 = this.P;
            ph3 ph3Var2 = this.f0;
            if (zJ3) {
                rh3Var2.b(ph3Var2, iMakeMeasureSpec, iMakeMeasureSpec2, i15, 0, i18, this.O);
            } else {
                rh3Var2.b(ph3Var2, iMakeMeasureSpec2, iMakeMeasureSpec, i15, 0, i18, this.O);
                iMakeMeasureSpec2 = iMakeMeasureSpec2;
                iMakeMeasureSpec = iMakeMeasureSpec;
            }
            this.O = ph3Var.b;
            rh3Var.h(iMakeMeasureSpec, iMakeMeasureSpec2, 0);
            rh3Var.w(0);
            int i19 = ((int[]) rh3Var.c)[th3Var.a];
            th3Var.b = i19;
            this.S.c = i19;
        }
        U0(vg6Var, bh6Var, this.S);
        boolean z7 = th3Var.e;
        vh3 vh3Var4 = this.S;
        if (z7) {
            i6 = vh3Var4.e;
            z4 = true;
            l1(th3Var, true, false);
            U0(vg6Var, bh6Var, this.S);
            i5 = this.S.e;
        } else {
            z4 = true;
            i5 = vh3Var4.e;
            m1(th3Var, true, false);
            U0(vg6Var, bh6Var, this.S);
            i6 = this.S.e;
        }
        if (G() > 0) {
            if (th3Var.e) {
                c1(b1(i5, vg6Var, bh6Var, z4) + i6, vg6Var, bh6Var, false);
            } else {
                b1(c1(i6, vg6Var, bh6Var, z4) + i5, vg6Var, bh6Var, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean q(qg6 qg6Var) {
        return qg6Var instanceof uh3;
    }

    @Override // androidx.recyclerview.widget.a
    public final void q0(bh6 bh6Var) {
        this.W = null;
        this.X = -1;
        this.Y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.e0 = -1;
        th3.b(this.T);
        this.b0.clear();
    }

    @Override // androidx.recyclerview.widget.a
    public final void r0(Parcelable parcelable) {
        if (parcelable instanceof wh3) {
            this.W = (wh3) parcelable;
            B0();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final Parcelable s0() {
        wh3 wh3Var = this.W;
        if (wh3Var != null) {
            wh3 wh3Var2 = new wh3();
            wh3Var2.a = wh3Var.a;
            wh3Var2.b = wh3Var.b;
            return wh3Var2;
        }
        wh3 wh3Var3 = new wh3();
        if (G() <= 0) {
            wh3Var3.a = -1;
            return wh3Var3;
        }
        View viewF = F(0);
        wh3Var3.a = a.R(viewF);
        wh3Var3.b = this.U.g(viewF) - this.U.m();
        return wh3Var3;
    }

    @Override // defpackage.mh3
    public final void setFlexLines(List list) {
        this.O = list;
    }

    @Override // androidx.recyclerview.widget.a
    public final int u(bh6 bh6Var) {
        return Q0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int v(bh6 bh6Var) {
        return R0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int w(bh6 bh6Var) {
        return S0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int x(bh6 bh6Var) {
        return Q0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int y(bh6 bh6Var) {
        return R0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final int z(bh6 bh6Var) {
        return S0(bh6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final void d0(RecyclerView recyclerView) {
    }

    @Override // defpackage.mh3
    public final void h(oh3 oh3Var) {
    }

    public FlexboxLayoutManager(Context context, int i) {
        this(context, i, 1);
    }

    public FlexboxLayoutManager(Context context, int i, int i2) {
        this.L = -1;
        this.O = new ArrayList();
        this.P = new rh3(this);
        th3 th3Var = new th3(this);
        this.T = th3Var;
        this.X = -1;
        this.Y = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.Z = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.a0 = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        this.b0 = new SparseArray();
        this.e0 = -1;
        this.f0 = new ph3();
        g1(i);
        h1(i2);
        if (this.K != 4) {
            v0();
            this.O.clear();
            th3.b(th3Var);
            th3Var.d = 0;
            this.K = 4;
            B0();
        }
        this.c0 = context;
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }
}
