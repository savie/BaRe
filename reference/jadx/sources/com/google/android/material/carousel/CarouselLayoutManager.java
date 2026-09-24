package com.google.android.material.carousel;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import defpackage.ah6;
import defpackage.bh6;
import defpackage.c6;
import defpackage.fz5;
import defpackage.l0;
import defpackage.qb6;
import defpackage.qg6;
import defpackage.t21;
import defpackage.td6;
import defpackage.u21;
import defpackage.v21;
import defpackage.vg6;
import defpackage.vr2;
import defpackage.w21;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class CarouselLayoutManager extends a implements ah6 {
    public final vr2 H;
    public qb6 I;
    public final View.OnLayoutChangeListener J;

    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new u21();
        this.J = new View.OnLayoutChangeListener() { // from class: s21
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                if (i5 - i3 == i9 - i7 && i6 - i4 == i10 - i8) {
                    return;
                }
                view.post(new j70(this.a, 1));
            }
        };
        this.H = new vr2();
        B0();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, td6.g);
            typedArrayObtainStyledAttributes.getInt(0, 0);
            B0();
            T0(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean A0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override // androidx.recyclerview.widget.a
    public final qg6 C() {
        return new qg6(-2, -2);
    }

    @Override // androidx.recyclerview.widget.a
    public final int C0(int i, vg6 vg6Var, bh6 bh6Var) {
        if (!R0() || G() == 0 || i == 0) {
            return 0;
        }
        vg6Var.d(0);
        l0.e("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int E0(int i, vg6 vg6Var, bh6 bh6Var) {
        if (!p() || G() == 0 || i == 0) {
            return 0;
        }
        vg6Var.d(0);
        l0.e("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final void K(Rect rect, View view) {
        super.K(rect, view);
        rect.centerY();
        if (R0()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.a
    public final void N0(RecyclerView recyclerView, int i) {
        t21 t21Var = new t21(recyclerView.getContext());
        t21Var.a = i;
        O0(t21Var);
    }

    public final float Q0(float f, float f2) {
        return S0() ? f - f2 : f + f2;
    }

    public final boolean R0() {
        return this.I.a == 0;
    }

    public final boolean S0() {
        return R0() && this.b.getLayoutDirection() == 1;
    }

    public final void T0(int i) {
        qb6 w21Var;
        if (i != 0 && i != 1) {
            c6.f(fz5.j(i, "invalid orientation:"));
            return;
        }
        m(null);
        qb6 qb6Var = this.I;
        if (qb6Var == null || i != qb6Var.a) {
            if (i == 0) {
                w21Var = new w21(this);
            } else {
                if (i != 1) {
                    c6.f("invalid orientation");
                    return;
                }
                w21Var = new v21(this);
            }
            this.I = w21Var;
            B0();
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean V() {
        return true;
    }

    @Override // defpackage.ah6
    public final PointF a(int i) {
        return null;
    }

    @Override // androidx.recyclerview.widget.a
    public final void c0(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        vr2 vr2Var = this.H;
        float dimension = vr2Var.a;
        if (dimension <= 0.0f) {
            dimension = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_min);
        }
        vr2Var.a = dimension;
        float dimension2 = vr2Var.b;
        if (dimension2 <= 0.0f) {
            dimension2 = context.getResources().getDimension(R.dimen.m3_carousel_small_item_size_max);
        }
        vr2Var.b = dimension2;
        B0();
        recyclerView.addOnLayoutChangeListener(this.J);
    }

    @Override // androidx.recyclerview.widget.a
    public final void d0(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.J);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0047  */
    @Override // androidx.recyclerview.widget.a
    public final View e0(View view, int i, vg6 vg6Var, bh6 bh6Var) {
        byte b;
        if (G() != 0) {
            int i2 = this.I.a;
            if (i == 1) {
                b = -1;
            } else if (i == 2) {
                b = 1;
            } else if (i != 17) {
                if (i != 33) {
                    if (i != 66) {
                        if (i != 130) {
                            Log.d("CarouselLayoutManager", "Unknown focus request:" + i);
                        } else if (i2 == 1) {
                            b = 1;
                        }
                        b = -2147483648;
                    } else if (i2 != 0) {
                        b = -2147483648;
                    } else if (S0()) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                } else if (i2 == 1) {
                    b = -1;
                } else {
                    b = -2147483648;
                }
            } else if (i2 != 0) {
                b = -2147483648;
            } else if (S0()) {
                b = 1;
            } else {
                b = -1;
            }
            if (b != -2147483648) {
                if (b == -1) {
                    if (a.R(view) != 0) {
                        int iR = a.R(F(0)) - 1;
                        if (iR < 0 || iR >= Q()) {
                            return F(S0() ? G() - 1 : 0);
                        }
                        this.I.d();
                        throw null;
                    }
                } else if (a.R(view) != Q() - 1) {
                    int iR2 = a.R(F(G() - 1)) + 1;
                    if (iR2 < 0 || iR2 >= Q()) {
                        return F(S0() ? 0 : G() - 1);
                    }
                    this.I.d();
                    throw null;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.a
    public final void f0(AccessibilityEvent accessibilityEvent) {
        super.f0(accessibilityEvent);
        if (G() > 0) {
            accessibilityEvent.setFromIndex(a.R(F(0)));
            accessibilityEvent.setToIndex(a.R(F(G() - 1)));
        }
    }

    @Override // androidx.recyclerview.widget.a
    public final void j0(int i, int i2) {
        Q();
    }

    @Override // androidx.recyclerview.widget.a
    public final void k0() {
        Q();
    }

    @Override // androidx.recyclerview.widget.a
    public final void m0(int i, int i2) {
        Q();
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean o() {
        return R0();
    }

    @Override // androidx.recyclerview.widget.a
    public final boolean p() {
        return !R0();
    }

    @Override // androidx.recyclerview.widget.a
    public final void p0(vg6 vg6Var, bh6 bh6Var) {
        if (bh6Var.b() > 0) {
            if ((R0() ? this.y : this.G) > 0.0f) {
                S0();
                vg6Var.d(0);
                l0.e("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
                return;
            }
        }
        w0(vg6Var);
    }

    @Override // androidx.recyclerview.widget.a
    public final void q0(bh6 bh6Var) {
        if (G() == 0) {
            return;
        }
        a.R(F(0));
    }

    @Override // androidx.recyclerview.widget.a
    public final int u(bh6 bh6Var) {
        G();
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int v(bh6 bh6Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int w(bh6 bh6Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int x(bh6 bh6Var) {
        G();
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int y(bh6 bh6Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final int z(bh6 bh6Var) {
        return 0;
    }

    @Override // androidx.recyclerview.widget.a
    public final void D0(int i) {
    }

    public CarouselLayoutManager() {
        vr2 vr2Var = new vr2();
        new u21();
        this.J = new View.OnLayoutChangeListener() { // from class: s21
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                if (i5 - i3 == i9 - i7 && i6 - i4 == i10 - i8) {
                    return;
                }
                view.post(new j70(this.a, 1));
            }
        };
        this.H = vr2Var;
        B0();
        T0(0);
    }
}
