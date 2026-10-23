package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d28 implements LeadingMarginSpan {
    public final o75 a;
    public final Rect b = bs5.a;
    public final Paint c = bs5.c;

    public d28(o75 o75Var) {
        this.a = o75Var;
    }

    @Override // android.text.style.LeadingMarginSpan
    public final void drawLeadingMargin(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5, CharSequence charSequence, int i6, int i7, boolean z, Layout layout) {
        int width;
        int i8 = ((i5 - i3) / 2) + i3;
        Paint paint2 = this.c;
        paint2.set(paint);
        o75 o75Var = this.a;
        o75Var.getClass();
        paint2.setColor(zh8.c(paint2.getColor(), 25));
        paint2.setStyle(Paint.Style.FILL);
        int i9 = o75Var.h;
        if (i9 >= 0) {
            paint2.setStrokeWidth(i9);
        }
        int strokeWidth = (int) ((((int) (paint2.getStrokeWidth() + 0.5f)) / 2.0f) + 0.5f);
        if (i2 > 0) {
            width = canvas.getWidth();
        } else {
            width = i;
            i -= canvas.getWidth();
        }
        Rect rect = this.b;
        rect.set(i, i8 - strokeWidth, width, i8 + strokeWidth);
        canvas.drawRect(rect, paint2);
    }

    @Override // android.text.style.LeadingMarginSpan
    public final int getLeadingMargin(boolean z) {
        return 0;
    }
}
