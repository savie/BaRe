package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class et1 {
    public final ConstraintLayout a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public final /* synthetic */ ConstraintLayout h;

    public et1(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.h = constraintLayout;
        this.a = constraintLayout2;
    }

    public static boolean a(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }
        return false;
    }

    public final void b(ot1 ot1Var, ap0 ap0Var) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iMax;
        int iMax2;
        boolean z;
        int baseline;
        int i;
        if (ot1Var == null) {
            return;
        }
        ys1 ys1Var = ot1Var.K;
        ys1 ys1Var2 = ot1Var.I;
        if (ot1Var.g0 == 8) {
            ap0Var.e = 0;
            ap0Var.f = 0;
            ap0Var.g = 0;
            return;
        }
        if (ot1Var.T == null) {
            return;
        }
        ld7 ld7Var = ConstraintLayout.H;
        int i2 = ap0Var.a;
        int i3 = ap0Var.b;
        int i4 = ap0Var.c;
        int i5 = ap0Var.d;
        int i6 = this.b + this.c;
        int i7 = this.d;
        View view = ot1Var.f0;
        int iA = dj7.A(i2);
        if (iA == 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        } else if (iA == 1) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i7, -2);
        } else if (iA == 2) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i7, -2);
            boolean z2 = ot1Var.r == 1;
            int i8 = ap0Var.j;
            if (i8 == 1 || i8 == 2) {
                boolean z3 = view.getMeasuredHeight() == ot1Var.k();
                if (ap0Var.j == 2 || !z2 || ((z2 && z3) || ot1Var.A())) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(ot1Var.q(), 1073741824);
                }
            }
        } else if (iA != 3) {
            iMakeMeasureSpec = 0;
        } else {
            int i9 = this.f;
            int i10 = ys1Var2 != null ? ys1Var2.g : 0;
            if (ys1Var != null) {
                i10 += ys1Var.g;
            }
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i9, i7 + i10, -1);
        }
        int iA2 = dj7.A(i3);
        if (iA2 == 0) {
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        } else if (iA2 == 1) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i6, -2);
        } else if (iA2 == 2) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i6, -2);
            boolean z4 = ot1Var.s == 1;
            int i11 = ap0Var.j;
            if (i11 == 1 || i11 == 2) {
                boolean z5 = view.getMeasuredWidth() == ot1Var.q();
                if (ap0Var.j == 2 || !z4 || ((z4 && z5) || ot1Var.B())) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(ot1Var.k(), 1073741824);
                }
            }
        } else if (iA2 != 3) {
            iMakeMeasureSpec2 = 0;
        } else {
            int i12 = this.g;
            int i13 = ys1Var2 != null ? ot1Var.J.g : 0;
            if (ys1Var != null) {
                i13 += ot1Var.L.g;
            }
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, i6 + i13, -1);
        }
        pt1 pt1Var = (pt1) ot1Var.T;
        ConstraintLayout constraintLayout = this.h;
        if (pt1Var != null && sz8.o(constraintLayout.p, 256) && view.getMeasuredWidth() == ot1Var.q() && view.getMeasuredWidth() < pt1Var.q() && view.getMeasuredHeight() == ot1Var.k() && view.getMeasuredHeight() < pt1Var.k() && view.getBaseline() == ot1Var.a0 && !ot1Var.z() && a(ot1Var.G, iMakeMeasureSpec, ot1Var.q()) && a(ot1Var.H, iMakeMeasureSpec2, ot1Var.k())) {
            ap0Var.e = ot1Var.q();
            ap0Var.f = ot1Var.k();
            ap0Var.g = ot1Var.a0;
            return;
        }
        boolean z6 = i2 == 3;
        boolean z7 = i3 == 3;
        boolean z8 = i3 == 4 || i3 == 1;
        boolean z9 = i2 == 4 || i2 == 1;
        boolean z10 = z6 && ot1Var.W > 0.0f;
        boolean z11 = z7 && ot1Var.W > 0.0f;
        if (view == null) {
            return;
        }
        dt1 dt1Var = (dt1) view.getLayoutParams();
        int i14 = ap0Var.j;
        if (i14 != 1 && i14 != 2 && z6 && ot1Var.r == 0 && z7 && ot1Var.s == 0) {
            i = -1;
            z = false;
            baseline = 0;
            iMax2 = 0;
            iMax = 0;
        } else {
            if ((view instanceof in8) && (ot1Var instanceof ki3)) {
                ((in8) view).l((ki3) ot1Var, iMakeMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            }
            ot1Var.G = iMakeMeasureSpec;
            ot1Var.H = iMakeMeasureSpec2;
            ot1Var.g = false;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int baseline2 = view.getBaseline();
            int i15 = ot1Var.u;
            iMax = i15 > 0 ? Math.max(i15, measuredWidth) : measuredWidth;
            int i16 = ot1Var.v;
            if (i16 > 0) {
                iMax = Math.min(i16, iMax);
            }
            int i17 = ot1Var.x;
            iMax2 = i17 > 0 ? Math.max(i17, measuredHeight) : measuredHeight;
            int i18 = iMakeMeasureSpec2;
            int i19 = ot1Var.y;
            if (i19 > 0) {
                iMax2 = Math.min(i19, iMax2);
            }
            if (!sz8.o(constraintLayout.p, 1)) {
                if (z10 && z8) {
                    iMax = (int) ((iMax2 * ot1Var.W) + 0.5f);
                } else if (z11 && z9) {
                    iMax2 = (int) ((iMax / ot1Var.W) + 0.5f);
                }
            }
            if (measuredWidth == iMax && measuredHeight == iMax2) {
                baseline = baseline2;
                i = -1;
                z = false;
            } else {
                if (measuredWidth != iMax) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                }
                int iMakeMeasureSpec3 = measuredHeight != iMax2 ? View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824) : i18;
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
                ot1Var.G = iMakeMeasureSpec;
                ot1Var.H = iMakeMeasureSpec3;
                z = false;
                ot1Var.g = false;
                int measuredWidth2 = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                iMax = measuredWidth2;
                iMax2 = measuredHeight2;
                i = -1;
            }
        }
        boolean z12 = baseline != i ? true : z;
        ap0Var.i = (iMax == ap0Var.c && iMax2 == ap0Var.d) ? z : true;
        boolean z13 = dt1Var.c0 ? true : z12;
        if (z13 && baseline != -1 && ot1Var.a0 != baseline) {
            ap0Var.i = true;
        }
        ap0Var.e = iMax;
        ap0Var.f = iMax2;
        ap0Var.h = z13;
        ap0Var.g = baseline;
    }
}
