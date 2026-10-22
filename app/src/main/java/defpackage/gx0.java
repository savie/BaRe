package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.LeadingMarginSpan;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gx0 implements LeadingMarginSpan {
    public final o75 a;
    public final Paint b = bs5.c;
    public final RectF c = bs5.b;
    public final Rect d = bs5.a;
    public final int e;

    public gx0(o75 o75Var, int i) {
        this.a = o75Var;
        this.e = i;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        RectF rectF = this.c;
        Rect rect = this.d;
        if (z && (charSequence instanceof Spanned) && ((Spanned) charSequence).getSpanStart(this) == i6) {
            Paint paint2 = this.b;
            paint2.set(paint);
            o75 o75Var = this.a;
            o75Var.getClass();
            int i8 = o75Var.b;
            paint2.setColor(paint2.getColor());
            int i9 = o75Var.d;
            if (i9 != 0) {
                paint2.setStrokeWidth(i9);
            }
            int iSave = canvas.save();
            try {
                int iMin = Math.min(i8, (int) ((paint2.descent() - paint2.ascent()) + 0.5f)) / 2;
                int i10 = o75Var.e;
                if (i10 != 0 && i10 <= iMin) {
                    iMin = i10;
                }
                int i11 = (i8 - iMin) / 2;
                if (i2 <= 0) {
                    i -= i8;
                }
                int i12 = i + i11;
                int i13 = i12 + iMin;
                int iDescent = (i4 + ((int) (((paint2.descent() + paint2.ascent()) / 2.0f) + 0.5f))) - (iMin / 2);
                int i14 = iMin + iDescent;
                int i15 = this.e;
                if (i15 == 0 || i15 == 1) {
                    rectF.set(i12, iDescent, i13, i14);
                    paint2.setStyle(i15 == 0 ? Paint.Style.FILL : Paint.Style.STROKE);
                    canvas.drawOval(rectF, paint2);
                } else {
                    rect.set(i12, iDescent, i13, i14);
                    paint2.setStyle(Paint.Style.FILL);
                    canvas.drawRect(rect, paint2);
                }
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return this.a.b;
    }
}
