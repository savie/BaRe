package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u88 extends c95 implements z08 {
    public CharSequence Z;
    public final Context a0;
    public final Paint.FontMetrics b0;
    public final a18 c0;
    public final t88 d0;
    public final Rect e0;
    public int f0;
    public int g0;
    public int h0;
    public int i0;
    public boolean j0;
    public int k0;
    public int l0;
    public float m0;
    public float n0;
    public float o0;
    public float p0;
    public float q0;

    public u88(Context context, int i) {
        super(context, null, 0, i);
        this.b0 = new Paint.FontMetrics();
        a18 a18Var = new a18(this);
        this.c0 = a18Var;
        this.d0 = new t88(this);
        this.e0 = new Rect();
        this.m0 = 1.0f;
        this.n0 = 1.0f;
        this.o0 = 0.5f;
        this.p0 = 0.5f;
        this.q0 = 1.0f;
        this.a0 = context;
        float f = context.getResources().getDisplayMetrics().density;
        TextPaint textPaint = a18Var.a;
        textPaint.density = f;
        textPaint.setTextAlign(Paint.Align.CENTER);
    }

    public final float F() {
        int i;
        Rect rect = this.e0;
        if (((rect.right - getBounds().right) - this.l0) - this.i0 < 0) {
            i = ((rect.right - getBounds().right) - this.l0) - this.i0;
        } else {
            if (((rect.left - getBounds().left) - this.l0) + this.i0 <= 0) {
                return 0.0f;
            }
            i = ((rect.left - getBounds().left) - this.l0) + this.i0;
        }
        return i;
    }

    public final js5 G() {
        float f = -F();
        float fWidth = (float) ((((double) getBounds().width()) - (Math.sqrt(2.0d) * ((double) this.k0))) / 2.0d);
        return new js5(new h75(this.k0), Math.min(Math.max(f, -fWidth), fWidth));
    }

    @Override // defpackage.c95, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Canvas canvas2;
        canvas.save();
        float F = F();
        float f = (float) (-((Math.sqrt(2.0d) * ((double) this.k0)) - ((double) this.k0)));
        canvas.scale(this.m0, this.n0, (getBounds().width() * this.o0) + getBounds().left, (getBounds().height() * this.p0) + getBounds().top);
        canvas.translate(F, f);
        super.draw(canvas);
        if (this.Z == null) {
            canvas2 = canvas;
        } else {
            Rect bounds = getBounds();
            float fCenterY = bounds.centerY();
            a18 a18Var = this.c0;
            TextPaint textPaint = a18Var.a;
            Paint.FontMetrics fontMetrics = this.b0;
            textPaint.getFontMetrics(fontMetrics);
            int i = (int) (fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            if (a18Var.g != null) {
                textPaint.drawableState = getState();
                a18Var.g.d(this.a0, a18Var.a, a18Var.b);
                textPaint.setAlpha((int) (this.q0 * 255.0f));
            }
            CharSequence charSequence = this.Z;
            canvas2 = canvas;
            canvas2.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), i, textPaint);
        }
        canvas2.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) Math.max(this.c0.a.getTextSize(), this.h0);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f = this.f0 * 2;
        CharSequence charSequence = this.Z;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.c0.a(charSequence.toString())), this.g0);
    }

    @Override // defpackage.c95, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.j0) {
            sb7 sb7VarM = k().m();
            sb7VarM.k = G();
            setShapeAppearanceModel(sb7VarM.a());
        }
    }
}
