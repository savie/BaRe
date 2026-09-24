package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.ReplacementSpan;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax7 extends ReplacementSpan {
    public final ex7 a;
    public final List b;
    public final ArrayList c;
    public final boolean e;
    public final boolean f;
    public int p;
    public int q;
    public ib r;
    public final Rect k = new Rect();
    public final Paint n = new Paint(1);
    public final TextPaint d = new TextPaint();

    public ax7(ex7 ex7Var, ArrayList arrayList, boolean z, boolean z2) {
        this.a = ex7Var;
        this.b = arrayList;
        this.c = new ArrayList(arrayList.size());
        this.e = z;
        this.f = z2;
    }

    public final void a(int i, int i2, zw7 zw7Var) {
        xw7 xw7Var = new xw7(this, i, i2, zw7Var);
        uj7 uj7Var = zw7Var.b;
        int i3 = zw7Var.a;
        StaticLayout staticLayout = new StaticLayout(uj7Var, this.d, i2, i3 != 1 ? i3 != 2 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        m18[] m18VarArr = (m18[]) uj7Var.getSpans(0, uj7Var.length(), m18.class);
        if (m18VarArr != null) {
            for (m18 m18Var : m18VarArr) {
                uj7Var.removeSpan(m18Var);
            }
        }
        uj7Var.setSpan(new m18(staticLayout), 0, uj7Var.length(), 18);
        v60[] v60VarArr = (v60[]) uj7Var.getSpans(0, uj7Var.length(), v60.class);
        if (v60VarArr != null && v60VarArr.length > 0) {
            for (v60 v60Var : v60VarArr) {
                p60 p60Var = v60Var.b;
                if (p60Var.getCallback() == null) {
                    p60Var.c(new yw7(xw7Var));
                }
            }
        }
        this.c.add(i, staticLayout);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x014b  */
    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        float f2;
        float f3;
        boolean z;
        ib ibVar;
        int iS = zv1.s(canvas, charSequence);
        int i6 = this.p;
        boolean z2 = this.e;
        ArrayList arrayList = this.c;
        ex7 ex7Var = this.a;
        if (i6 != iS) {
            this.p = iS;
            boolean z3 = paint instanceof TextPaint;
            TextPaint textPaint = this.d;
            if (z3) {
                textPaint.set((TextPaint) paint);
            } else {
                textPaint.set(paint);
            }
            textPaint.setFakeBoldText(z2);
            List list = this.b;
            f2 = 1.0f;
            f3 = 0.5f;
            int size = ((int) (((this.p * 1.0f) / list.size()) + 0.5f)) - (ex7Var.a * 2);
            arrayList.clear();
            int size2 = list.size();
            for (int i7 = 0; i7 < size2; i7++) {
                a(i7, size, (zw7) list.get(i7));
            }
        } else {
            f2 = 1.0f;
            f3 = 0.5f;
        }
        int i8 = ex7Var.a;
        int size3 = arrayList.size();
        int i9 = this.p;
        int i10 = (int) (((i9 * f2) / size3) + f3);
        int i11 = i10 - (i9 / size3);
        Paint paint2 = this.n;
        if (z2) {
            paint2.setColor(0);
            paint2.setStyle(Paint.Style.FILL);
            i11 = i11;
        } else if (this.f) {
            int iC = ex7Var.d;
            if (iC == 0) {
                iC = zh8.c(paint2.getColor(), 22);
            }
            paint2.setColor(iC);
            paint2.setStyle(Paint.Style.FILL);
        } else {
            i11 = i11;
            paint2.setColor(0);
            paint2.setStyle(Paint.Style.FILL);
        }
        int color = paint2.getColor();
        Rect rect = this.k;
        if (color != 0) {
            int iSave = canvas.save();
            try {
                rect.set(0, 0, this.p, i5 - i3);
                canvas.translate(f, i3);
                canvas.drawRect(rect, paint2);
                canvas.restoreToCount(iSave);
            } catch (Throwable th) {
                canvas.restoreToCount(iSave);
                throw th;
            }
        }
        paint2.set(paint);
        int iC2 = ex7Var.b;
        if (iC2 == 0) {
            iC2 = zh8.c(paint2.getColor(), 75);
        }
        paint2.setColor(iC2);
        paint2.setStyle(Paint.Style.FILL);
        int strokeWidth = ex7Var.c;
        if (strokeWidth == -1) {
            strokeWidth = (int) (paint2.getStrokeWidth() + f3);
        }
        boolean z4 = strokeWidth > 0;
        int i12 = i5 - i3;
        int i13 = (i12 - this.q) / 4;
        if (z4) {
            cx7[] cx7VarArr = (cx7[]) ((Spanned) charSequence).getSpans(i, i2, cx7.class);
            if (cx7VarArr == null || cx7VarArr.length <= 0) {
                z = false;
            } else {
                cx7 cx7Var = cx7VarArr[0];
                if ((charSequence instanceof Spanned) && ((Spanned) charSequence).getSpanStart(cx7Var) == i) {
                    rect.set((int) f, i3, this.p, i3 + strokeWidth);
                    canvas.drawRect(rect, paint2);
                    z = true;
                } else {
                    z = false;
                }
            }
            rect.set((int) f, i5 - strokeWidth, this.p, i5);
            canvas.drawRect(rect, paint2);
        } else {
            z = false;
        }
        int i14 = strokeWidth / 2;
        int i15 = z ? strokeWidth : 0;
        int i16 = i12 - strokeWidth;
        int i17 = 0;
        int height = 0;
        while (i17 < size3) {
            ArrayList arrayList2 = arrayList;
            Layout layout = (Layout) arrayList2.get(i17);
            int iSave2 = canvas.save();
            int i18 = size3;
            try {
                canvas.translate(f + (i17 * i10), i3);
                if (z4) {
                    if (i17 == 0) {
                        rect.set(0, i15, strokeWidth, i16);
                    } else {
                        rect.set(-i14, i15, i14, i16);
                    }
                    canvas.drawRect(rect, paint2);
                    if (i17 == i18 - 1) {
                        rect.set((i10 - strokeWidth) - i11, i15, i10 - i11, i16);
                        canvas.drawRect(rect, paint2);
                    }
                }
                int i19 = i8;
                int i20 = i15;
                canvas.translate(i19, i19 + i13);
                layout.draw(canvas);
                if (layout.getHeight() > height) {
                    height = layout.getHeight();
                }
                canvas.restoreToCount(iSave2);
                i17++;
                i15 = i20;
                i8 = i19;
                size3 = i18;
                arrayList = arrayList2;
            } catch (Throwable th2) {
                canvas.restoreToCount(iSave2);
                throw th2;
            }
        }
        if (this.q == height || (ibVar = this.r) == null) {
            return;
        }
        TextView textView = (TextView) ibVar.c;
        ib0 ib0Var = (ib0) ibVar.b;
        textView.removeCallbacks(ib0Var);
        textView.post(ib0Var);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        ArrayList arrayList = this.c;
        if (arrayList.size() > 0 && fontMetricsInt != null) {
            Iterator it = arrayList.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                int height = ((Layout) it.next()).getHeight();
                if (height > i3) {
                    i3 = height;
                }
            }
            this.q = i3;
            int i4 = -((this.a.a * 2) + i3);
            fontMetricsInt.ascent = i4;
            fontMetricsInt.descent = 0;
            fontMetricsInt.top = i4;
            fontMetricsInt.bottom = 0;
        }
        return this.p;
    }
}
