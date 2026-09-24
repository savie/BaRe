package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wk0 extends Drawable implements z08 {
    public final WeakReference a;
    public final c95 b;
    public final a18 c;
    public final Rect d;
    public final yk0 e;
    public float f;
    public float k;
    public final int n;
    public float p;
    public float q;
    public float r;
    public WeakReference t;
    public WeakReference x;

    public wk0(Context context, xk0 xk0Var) {
        u08 u08Var;
        WeakReference weakReference = new WeakReference(context);
        this.a = weakReference;
        jd4.f(context, jd4.h, "Theme.MaterialComponents");
        this.d = new Rect();
        a18 a18Var = new a18(this);
        this.c = a18Var;
        Paint.Align align = Paint.Align.CENTER;
        TextPaint textPaint = a18Var.a;
        textPaint.setTextAlign(align);
        yk0 yk0Var = new yk0(context, xk0Var);
        this.e = yk0Var;
        boolean zG = g();
        xk0 xk0Var2 = yk0Var.b;
        c95 c95Var = new c95(tb7.g(context, zG ? xk0Var2.k.intValue() : xk0Var2.e.intValue(), g() ? xk0Var2.n.intValue() : xk0Var2.f.intValue()).a());
        this.b = c95Var;
        i();
        Context context2 = (Context) weakReference.get();
        if (context2 != null && a18Var.g != (u08Var = new u08(context2, xk0Var2.d.intValue()))) {
            a18Var.c(u08Var, context2);
            textPaint.setColor(xk0Var2.c.intValue());
            invalidateSelf();
            k();
            invalidateSelf();
        }
        int i = xk0Var2.t;
        if (i != -2) {
            this.n = ((int) Math.pow(10.0d, ((double) i) - 1.0d)) - 1;
        } else {
            this.n = xk0Var2.x;
        }
        a18Var.e = true;
        k();
        invalidateSelf();
        a18Var.e = true;
        i();
        k();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(xk0Var2.b.intValue());
        if (c95Var.b.c != colorStateListValueOf) {
            c95Var.t(colorStateListValueOf);
            invalidateSelf();
        }
        textPaint.setColor(xk0Var2.c.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.t;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.t.get();
            WeakReference weakReference3 = this.x;
            j(view, weakReference3 != null ? (FrameLayout) weakReference3.get() : null);
        }
        k();
        setVisible(xk0Var2.L.booleanValue(), false);
    }

    @Override // defpackage.z08
    public final void a() {
        invalidateSelf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(View view, View view2) {
        float y;
        float x;
        ViewParent parent;
        boolean z;
        FrameLayout frameLayoutE = e();
        if (frameLayoutE == null) {
            float y2 = view.getY();
            x = view.getX();
            parent = view.getParent();
            y = y2;
        } else {
            y = 0.0f;
            x = 0.0f;
            parent = frameLayoutE;
        }
        while (true) {
            z = parent instanceof View;
            if (!z || parent == view2) {
                break;
            }
            ViewParent parent2 = parent.getParent();
            if (!(parent2 instanceof ViewGroup) || ((ViewGroup) parent2).getClipChildren()) {
                break;
            }
            View view3 = (View) parent;
            y += view3.getY();
            x += view3.getX();
            parent = parent.getParent();
        }
        if (z) {
            float f = (this.k - this.r) + y;
            float f2 = (this.f - this.q) + x;
            View view4 = (View) parent;
            float height = ((this.k + this.r) - view4.getHeight()) + y;
            float width = ((this.f + this.q) - view4.getWidth()) + x;
            if (f < 0.0f) {
                this.k = Math.abs(f) + this.k;
            }
            if (f2 < 0.0f) {
                this.f = Math.abs(f2) + this.f;
            }
            if (height > 0.0f) {
                this.k -= Math.abs(height);
            }
            if (width > 0.0f) {
                this.f -= Math.abs(width);
            }
        }
    }

    public final String c() {
        yk0 yk0Var = this.e;
        xk0 xk0Var = yk0Var.b;
        xk0 xk0Var2 = yk0Var.b;
        String str = xk0Var.q;
        WeakReference weakReference = this.a;
        if (str == null) {
            if (!h()) {
                return null;
            }
            int i = this.n;
            if (i == -2 || f() <= i) {
                return NumberFormat.getInstance(xk0Var2.y).format(f());
            }
            Context context = (Context) weakReference.get();
            return context == null ? "" : String.format(xk0Var2.y, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(i), "+");
        }
        int i2 = xk0Var.t;
        if (i2 == -2 || str == null || str.length() <= i2) {
            return str;
        }
        Context context2 = (Context) weakReference.get();
        if (context2 == null) {
            return "";
        }
        return String.format(context2.getString(R.string.m3_exceed_max_badge_text_suffix), str.substring(0, i2 - 1), "…");
    }

    public final CharSequence d() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        yk0 yk0Var = this.e;
        xk0 xk0Var = yk0Var.b;
        if (xk0Var.q != null) {
            CharSequence charSequence = xk0Var.G;
            return charSequence != null ? charSequence : yk0Var.b.q;
        }
        boolean zH = h();
        xk0 xk0Var2 = yk0Var.b;
        if (!zH) {
            return xk0Var2.H;
        }
        if (xk0Var2.I == 0 || (context = (Context) this.a.get()) == null) {
            return null;
        }
        int i = this.n;
        return (i == -2 || f() <= i) ? context.getResources().getQuantityString(xk0Var2.I, f(), Integer.valueOf(f())) : context.getString(xk0Var2.J, Integer.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        String strC;
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.b.draw(canvas);
        if (!g() || (strC = c()) == null) {
            return;
        }
        Rect rect = new Rect();
        a18 a18Var = this.c;
        a18Var.a.getTextBounds(strC, 0, strC.length(), rect);
        float fExactCenterY = this.k - rect.exactCenterY();
        canvas.drawText(strC, this.f, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), a18Var.a);
    }

    public final FrameLayout e() {
        WeakReference weakReference = this.x;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    public final int f() {
        int i = this.e.b.r;
        if (i != -1) {
            return i;
        }
        return 0;
    }

    public final boolean g() {
        return this.e.b.q != null || h();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.e.b.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.d.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.d.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final boolean h() {
        xk0 xk0Var = this.e.b;
        return xk0Var.q == null && xk0Var.r != -1;
    }

    public final void i() {
        Context context = (Context) this.a.get();
        if (context == null) {
            return;
        }
        boolean zG = g();
        yk0 yk0Var = this.e;
        this.b.setShapeAppearanceModel(tb7.g(context, zG ? yk0Var.b.k.intValue() : yk0Var.b.e.intValue(), g() ? yk0Var.b.n.intValue() : yk0Var.b.f.intValue()).a());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    public final void j(View view, FrameLayout frameLayout) {
        this.t = new WeakReference(view);
        this.x = new WeakReference(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        k();
        invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0110 A[PHI: r13
      0x0110: PHI (r13v2 int) = (r13v1 int), (r13v8 int) binds: [B:41:0x00dc, B:43:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    public final void k() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        WeakReference weakReference = this.a;
        Context context = (Context) weakReference.get();
        WeakReference weakReference2 = this.t;
        View view = weakReference2 != null ? (View) weakReference2.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = this.d;
        rect.set(rect2);
        Rect rect3 = new Rect();
        view.getDrawingRect(rect3);
        WeakReference weakReference3 = this.x;
        ViewGroup viewGroup = weakReference3 != null ? (ViewGroup) weakReference3.get() : null;
        if (viewGroup != null) {
            viewGroup.offsetDescendantRectToMyCoords(view, rect3);
        }
        boolean zG = g();
        yk0 yk0Var = this.e;
        float f7 = zG ? yk0Var.d : yk0Var.c;
        this.p = f7;
        if (f7 != -1.0f) {
            this.q = f7;
            this.r = f7;
        } else {
            this.q = Math.round((g() ? yk0Var.g : yk0Var.e) / 2.0f);
            this.r = Math.round((g() ? yk0Var.h : yk0Var.f) / 2.0f);
        }
        if (g()) {
            String strC = c();
            float f8 = this.q;
            a18 a18Var = this.c;
            this.q = Math.max(f8, (a18Var.a(strC) / 2.0f) + yk0Var.b.M.intValue());
            float f9 = this.r;
            if (a18Var.e) {
                a18Var.b(strC);
            }
            float fMax = Math.max(f9, (a18Var.d / 2.0f) + yk0Var.b.N.intValue());
            this.r = fMax;
            this.q = Math.max(this.q, fMax);
        }
        xk0 xk0Var = yk0Var.b;
        xk0 xk0Var2 = yk0Var.b;
        int i = yk0Var.k;
        int iIntValue = xk0Var.P.intValue();
        if (g()) {
            iIntValue = xk0Var.R.intValue();
            Context context2 = (Context) weakReference.get();
            if (context2 != null) {
                iIntValue = ed.c(ed.b(0.0f, 1.0f, 0.3f, 1.0f, context2.getResources().getConfiguration().fontScale - 1.0f), iIntValue, iIntValue - xk0Var.U.intValue());
            }
        }
        if (i == 0) {
            iIntValue -= Math.round(this.r);
        }
        int iIntValue2 = xk0Var.T.intValue() + iIntValue;
        int iIntValue3 = xk0Var2.K.intValue();
        if (iIntValue3 == 8388691 || iIntValue3 == 8388693) {
            this.k = rect3.bottom - iIntValue2;
        } else {
            this.k = rect3.top + iIntValue2;
        }
        int iIntValue4 = g() ? xk0Var.Q.intValue() : xk0Var2.O.intValue();
        if (i == 1) {
            iIntValue4 += g() ? yk0Var.j : yk0Var.i;
        }
        int iIntValue5 = xk0Var.S.intValue() + iIntValue4;
        int iIntValue6 = xk0Var2.K.intValue();
        if (iIntValue6 == 8388659 || iIntValue6 == 8388691) {
            if (yk0Var.l == 0) {
                if (view.getLayoutDirection() == 0) {
                    f = rect3.left + this.q;
                    f2 = (this.r * 2.0f) - iIntValue5;
                    f3 = f - f2;
                } else {
                    f3 = (rect3.right - this.q) + ((this.r * 2.0f) - iIntValue5);
                }
            } else if (view.getLayoutDirection() == 0) {
                f3 = (rect3.left - this.q) + iIntValue5;
            } else {
                f = rect3.right + this.q;
                f2 = iIntValue5;
                f3 = f - f2;
            }
            this.f = f3;
        } else {
            if (yk0Var.l == 0) {
                if (view.getLayoutDirection() == 0) {
                    f4 = rect3.right + this.q;
                    f5 = iIntValue5;
                    f6 = f4 - f5;
                } else {
                    f6 = (rect3.left - this.q) + iIntValue5;
                }
            } else if (view.getLayoutDirection() == 0) {
                f6 = (rect3.right - this.q) + ((this.r * 2.0f) - iIntValue5);
            } else {
                f4 = rect3.left + this.q;
                f5 = (this.r * 2.0f) - iIntValue5;
                f6 = f4 - f5;
            }
            this.f = f6;
        }
        if (xk0Var.V.booleanValue()) {
            ViewParent viewParentE = e();
            if (viewParentE == null) {
                viewParentE = view.getParent();
            }
            if ((viewParentE instanceof View) && (viewParentE.getParent() instanceof View)) {
                b(view, (View) viewParentE.getParent());
            }
        } else {
            b(view, null);
        }
        float f10 = this.f;
        float f11 = this.k;
        float f12 = this.q;
        float f13 = this.r;
        rect2.set((int) (f10 - f12), (int) (f11 - f13), (int) (f10 + f12), (int) (f11 + f13));
        float f14 = this.p;
        c95 c95Var = this.b;
        if (f14 != -1082130432) {
            c95Var.setShapeAppearanceModel(c95Var.b.a.a(f14));
        }
        if (rect.equals(rect2)) {
            return;
        }
        c95Var.setBounds(rect2);
    }

    @Override // android.graphics.drawable.Drawable, defpackage.z08
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        yk0 yk0Var = this.e;
        yk0Var.a.p = i;
        yk0Var.b.p = i;
        this.c.a.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
