package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.focus.FocusRingDrawable;
import java.lang.ref.WeakReference;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p85 {
    public final MaterialButton a;
    public rb7 b;
    public hk7 c;
    public gb d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public PorterDuff.Mode k;
    public ColorStateList l;
    public ColorStateList m;
    public ColorStateList n;
    public c95 o;
    public boolean s;
    public RippleDrawable u;
    public int v;
    public boolean p = false;
    public boolean q = false;
    public boolean r = false;
    public boolean t = true;

    public p85(MaterialButton materialButton, rb7 rb7Var) {
        this.a = materialButton;
        this.b = rb7Var;
    }

    public final c95 a(boolean z) {
        RippleDrawable rippleDrawable = this.u;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (c95) ((LayerDrawable) ((InsetDrawable) this.u.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }

    public final void b(int i, int i2, int i3, int i4) {
        MaterialButton materialButton = this.a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i5 = this.e;
        int i6 = this.g;
        int i7 = this.f;
        int i8 = this.h;
        this.e = i;
        this.g = i2;
        this.f = i3;
        this.h = i4;
        if (!this.q) {
            c();
        }
        materialButton.setPaddingRelative((paddingStart + i) - i5, (paddingTop + i2) - i6, (paddingEnd + i3) - i7, (paddingBottom + i4) - i8);
    }

    public final void c() {
        c95 c95Var = new c95(this.b);
        hk7 hk7Var = this.c;
        if (hk7Var != null) {
            c95Var.r(hk7Var);
        }
        gb gbVar = this.d;
        if (gbVar != null) {
            c95Var.W = gbVar;
        }
        MaterialButton materialButton = this.a;
        Context context = materialButton.getContext();
        c95Var.p(context);
        c95Var.setTintList(this.l);
        PorterDuff.Mode mode = this.k;
        if (mode != null) {
            c95Var.setTintMode(mode);
        }
        float f = this.j;
        ColorStateList colorStateList = this.m;
        c95Var.A(f);
        c95Var.y(colorStateList);
        c95 c95Var2 = new c95(this.b);
        hk7 hk7Var2 = this.c;
        if (hk7Var2 != null) {
            c95Var2.r(hk7Var2);
        }
        c95Var2.setTint(0);
        float f2 = this.j;
        int iC = this.p ? z85.C(materialButton.getContext(), jm1.U(materialButton, R.attr.colorSurface)) : 0;
        c95Var2.A(f2);
        c95Var2.y(ColorStateList.valueOf(iC));
        c95 c95Var3 = new c95(this.b);
        this.o = c95Var3;
        hk7 hk7Var3 = this.c;
        if (hk7Var3 != null) {
            c95Var3.r(hk7Var3);
        }
        this.o.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(xn6.c(this.n), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{c95Var2, c95Var}), this.e, this.g, this.f, this.h), this.o);
        this.u = rippleDrawable;
        FocusRingDrawable.f(context, rippleDrawable, null);
        materialButton.setInternalBackground(this.u);
        c95 c95VarA = a(false);
        if (c95VarA != null) {
            c95VarA.s(this.v);
            c95VarA.setState(materialButton.getDrawableState());
        }
        FocusRingDrawable focusRingDrawableC = FocusRingDrawable.c(materialButton.getBackground());
        if (focusRingDrawableC != null) {
            focusRingDrawableC.n = new WeakReference(c95VarA);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0038  */
    public final void d() {
        tc7 tc7Var;
        c95 c95VarA = a(false);
        if (c95VarA != null) {
            c95VarA.x(this.b);
            hk7 hk7Var = this.c;
            if (hk7Var != null) {
                c95VarA.r(hk7Var);
            }
        }
        c95 c95VarA2 = a(true);
        if (c95VarA2 != null) {
            c95VarA2.x(this.b);
            hk7 hk7Var2 = this.c;
            if (hk7Var2 != null) {
                c95VarA2.r(hk7Var2);
            }
        }
        RippleDrawable rippleDrawable = this.u;
        if (rippleDrawable != null) {
            Object objFindDrawableByLayerId = rippleDrawable.findDrawableByLayerId(android.R.id.mask);
            if (objFindDrawableByLayerId instanceof tc7) {
                tc7Var = (tc7) objFindDrawableByLayerId;
            } else {
                tc7Var = null;
            }
        } else {
            tc7Var = null;
        }
        if (tc7Var != null) {
            boolean z = tc7Var instanceof c95;
            rb7 rb7Var = this.b;
            if (!z) {
                tc7Var.setShapeAppearanceModel(rb7Var.d());
                return;
            }
            c95 c95Var = (c95) tc7Var;
            c95Var.x(rb7Var);
            hk7 hk7Var3 = this.c;
            if (hk7Var3 != null) {
                c95Var.r(hk7Var3);
            }
        }
    }

    public final void e() {
        int iC = 0;
        c95 c95VarA = a(false);
        c95 c95VarA2 = a(true);
        if (c95VarA != null) {
            float f = this.j;
            ColorStateList colorStateList = this.m;
            c95VarA.A(f);
            c95VarA.y(colorStateList);
            if (c95VarA2 != null) {
                float f2 = this.j;
                if (this.p) {
                    MaterialButton materialButton = this.a;
                    iC = z85.C(materialButton.getContext(), jm1.U(materialButton, R.attr.colorSurface));
                }
                c95VarA2.A(f2);
                c95VarA2.y(ColorStateList.valueOf(iC));
            }
        }
    }
}
