package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v60 extends ReplacementSpan {
    public final o75 a;
    public final p60 b;
    public final boolean c;

    public v60(o75 o75Var, p60 p60Var, boolean z) {
        this.a = o75Var;
        this.b = p60Var;
        this.c = z;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        int iS = zv1.s(canvas, charSequence);
        float textSize = paint.getTextSize();
        p60 p60Var = this.b;
        p60Var.h = iS;
        p60Var.i = textSize;
        if (p60Var.j) {
            p60Var.b();
        }
        if (p60Var.a()) {
            int i6 = i5 - p60Var.getBounds().bottom;
            int iSave = canvas.save();
            try {
                canvas.translate(f, i6);
                p60Var.draw(canvas);
                return;
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
        float fAscent = (int) ((((i5 - i3) / 2) + i3) - (((paint.ascent() + paint.descent()) / 2.0f) + 0.5f));
        if (this.c) {
            o75 o75Var = this.a;
            o75Var.getClass();
            paint.setUnderlineText(true);
            int i7 = o75Var.a;
            if (i7 != 0) {
                paint.setColor(i7);
            } else if (paint instanceof TextPaint) {
                paint.setColor(((TextPaint) paint).linkColor);
            }
        }
        canvas.drawText(charSequence, i, i2, f, fAscent, paint);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        p60 p60Var = this.b;
        if (p60Var.a()) {
            Rect bounds = p60Var.getBounds();
            if (fontMetricsInt != null) {
                int i3 = -bounds.bottom;
                fontMetricsInt.ascent = i3;
                fontMetricsInt.descent = 0;
                fontMetricsInt.top = i3;
                fontMetricsInt.bottom = 0;
            }
            return bounds.right;
        }
        if (this.c) {
            o75 o75Var = this.a;
            o75Var.getClass();
            paint.setUnderlineText(true);
            int i4 = o75Var.a;
            if (i4 != 0) {
                paint.setColor(i4);
            } else if (paint instanceof TextPaint) {
                paint.setColor(((TextPaint) paint).linkColor);
            }
        }
        return (int) (paint.measureText(charSequence, i, i2) + 0.5f);
    }
}
