package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.focus.FocusRingDrawable;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v85 {
    public static final ColorDrawable A;
    public static final double z = Math.cos(Math.toRadians(45.0d));
    public final MaterialCardView a;
    public final c95 c;
    public final c95 d;
    public float e;
    public int f;
    public int g;
    public int h;
    public int i;
    public Drawable j;
    public Drawable k;
    public ColorStateList l;
    public ColorStateList m;
    public rb7 n;
    public ColorStateList o;
    public RippleDrawable p;
    public LayerDrawable q;
    public c95 r;
    public boolean t;
    public ValueAnimator u;
    public final TimeInterpolator v;
    public final int w;
    public final int x;
    public final Rect b = new Rect();
    public boolean s = false;
    public float y = 0.0f;

    static {
        A = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public v85(MaterialCardView materialCardView, AttributeSet attributeSet, int i) {
        this.e = -1.0f;
        this.a = materialCardView;
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, xd6.a, i, R.style.CardView);
        c95 c95Var = new c95(materialCardView.getContext(), attributeSet, i, R.style.Widget_MaterialComponents_CardView);
        this.c = c95Var;
        c95Var.p(materialCardView.getContext());
        c95Var.v();
        sb7 sb7VarM = c95Var.k().m();
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            float dimension = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
            this.e = dimension;
            sb7VarM.b(dimension);
        }
        this.d = new c95();
        h(sb7VarM.a());
        this.v = ji8.G(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, ed.a);
        this.w = ji8.F(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.x = ji8.F(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float b(zv1 zv1Var, float f) {
        if (zv1Var instanceof pq6) {
            return (float) ((1.0d - z) * ((double) f));
        }
        if (zv1Var instanceof o72) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    public final float a() {
        float fMax = 0.0f;
        for (tb7 tb7Var : this.n.c()) {
            if (tb7Var != null) {
                zv1 zv1Var = tb7Var.a;
                c95 c95Var = this.c;
                float fB = b(zv1Var, c95Var.m());
                zv1 zv1Var2 = tb7Var.b;
                float[] fArr = c95Var.U;
                float fMax2 = Math.max(fB, b(zv1Var2, fArr != null ? fArr[0] : c95Var.b.a.d().f.a(c95Var.i())));
                zv1 zv1Var3 = tb7Var.c;
                float[] fArr2 = c95Var.U;
                float fB2 = b(zv1Var3, fArr2 != null ? fArr2[1] : c95Var.b.a.d().g.a(c95Var.i()));
                zv1 zv1Var4 = tb7Var.d;
                float[] fArr3 = c95Var.U;
                fMax = Math.max(fMax, Math.max(fMax2, Math.max(fB2, b(zv1Var4, fArr3 != null ? fArr3[2] : c95Var.b.a.d().h.a(c95Var.i())))));
            }
        }
        return fMax;
    }

    public final LayerDrawable c() {
        if (this.p == null) {
            this.r = new c95(this.n);
            this.p = new RippleDrawable(this.l, null, this.r);
        }
        if (this.q == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.p, this.d, this.k});
            FocusRingDrawable.f(this.a.getContext(), layerDrawable, this.r);
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
            this.q = layerDrawable;
        }
        return this.q;
    }

    public final u85 d(Drawable drawable) {
        int iCeil;
        int i;
        MaterialCardView materialCardView = this.a;
        if (materialCardView.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() * 1.5f) + (i() ? a() : 0.0f));
            iCeil = (int) Math.ceil(materialCardView.getMaxCardElevation() + (i() ? a() : 0.0f));
            i = iCeil2;
        } else {
            iCeil = 0;
            i = 0;
        }
        return new u85(drawable, iCeil, i, iCeil, i);
    }

    public final void e(int i, int i2) {
        int iCeil;
        int iCeil2;
        int i3;
        int i4;
        if (this.q != null) {
            MaterialCardView materialCardView = this.a;
            if (materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (i() ? a() : 0.0f)) * 2.0f);
                iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (i() ? a() : 0.0f)) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i5 = this.h;
            boolean z2 = (i5 & 8388613) == 8388613;
            int i6 = this.f;
            int i7 = z2 ? ((i - i6) - this.g) - iCeil2 : i6;
            int i8 = (i5 & 80) == 80 ? i6 : ((i2 - i6) - this.g) - iCeil;
            int i9 = (i5 & 8388613) == 8388613 ? i6 : ((i - i6) - this.g) - iCeil2;
            if ((i5 & 80) == 80) {
                i6 = ((i2 - i6) - this.g) - iCeil;
            }
            int i10 = i6;
            if (materialCardView.getLayoutDirection() == 1) {
                i4 = i9;
                i3 = i7;
            } else {
                i3 = i9;
                i4 = i7;
            }
            this.q.setLayerInset(2, i4, i10, i3, i8);
        }
    }

    public final void f(boolean z2, boolean z3) {
        Drawable drawable = this.k;
        if (drawable != null) {
            if (!z3) {
                drawable.setAlpha(z2 ? 255 : 0);
                this.y = z2 ? 1.0f : 0.0f;
                return;
            }
            float f = z2 ? 1.0f : 0.0f;
            float f2 = this.y;
            if (z2) {
                f2 = 1.0f - f2;
            }
            ValueAnimator valueAnimator = this.u;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.u = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.y, f);
            this.u = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new t85(this));
            this.u.setInterpolator(this.v);
            this.u.setDuration((long) ((z2 ? this.w : this.x) * f2));
            this.u.start();
        }
    }

    public final void g(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.k = drawableMutate;
            drawableMutate.setTintList(this.m);
            f(this.a.p, false);
        } else {
            this.k = A;
        }
        LayerDrawable layerDrawable = this.q;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.k);
        }
    }

    public final void h(rb7 rb7Var) {
        this.n = rb7Var;
        c95 c95Var = this.c;
        c95Var.x(rb7Var);
        this.d.x(rb7Var);
        c95 c95Var2 = this.r;
        if (c95Var2 != null) {
            c95Var2.x(rb7Var);
        }
        c95Var.P = !c95Var.q();
    }

    public final boolean i() {
        MaterialCardView materialCardView = this.a;
        return materialCardView.getPreventCornerOverlap() && this.c.q() && materialCardView.getUseCompatPadding();
    }

    public final boolean j() {
        View view = this.a;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    public final void k() {
        Drawable drawable = this.j;
        Drawable drawableC = j() ? c() : this.d;
        this.j = drawableC;
        if (drawable != drawableC) {
            MaterialCardView materialCardView = this.a;
            if (materialCardView.getForeground() instanceof InsetDrawable) {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableC);
            } else {
                materialCardView.setForeground(d(drawableC));
            }
        }
    }

    public final void l() {
        MaterialCardView materialCardView = this.a;
        float cardViewRadius = 0.0f;
        float fA = ((!materialCardView.getPreventCornerOverlap() || this.c.q()) && !i()) ? 0.0f : a();
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - z) * ((double) materialCardView.getCardViewRadius()));
        }
        int i = (int) (fA - cardViewRadius);
        Rect rect = this.b;
        materialCardView.c.set(rect.left + i, rect.top + i, rect.right + i, rect.bottom + i);
        oe oeVar = materialCardView.e;
        r21 r21Var = (r21) oeVar.c;
        if (!r21Var.getUseCompatPadding()) {
            oeVar.j(0, 0, 0, 0);
            return;
        }
        mq6 mq6Var = (mq6) oeVar.b;
        float f = mq6Var.e;
        float f2 = mq6Var.a;
        int iCeil = (int) Math.ceil(nq6.a(f, f2, r21Var.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(nq6.b(f, f2, r21Var.getPreventCornerOverlap()));
        oeVar.j(iCeil, iCeil2, iCeil, iCeil2);
    }

    public final void m() {
        boolean z2 = this.s;
        MaterialCardView materialCardView = this.a;
        if (!z2) {
            materialCardView.setBackgroundInternal(d(this.c));
        }
        materialCardView.setForeground(d(this.j));
    }
}
