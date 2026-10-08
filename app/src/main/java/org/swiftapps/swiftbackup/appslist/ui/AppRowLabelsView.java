package org.swiftapps.swiftbackup.appslist.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import defpackage.fm6;
import defpackage.hx;
import defpackage.l73;
import defpackage.ov2;
import defpackage.tu0;
import defpackage.xl1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AppRowLabelsView extends View {
    public List G;
    public int H;
    public final float a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final RectF k;
    public final Paint n;
    public final Paint p;
    public final TextPaint q;
    public final Paint.FontMetrics r;
    public List t;
    public float x;
    public boolean y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppRowLabelsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        context.getClass();
        this.a = getResources().getDimensionPixelSize(R.dimen.spacing_low_more);
        this.b = getResources().getDimensionPixelSize(R.dimen.spacing_low_more);
        this.c = getResources().getDimensionPixelSize(R.dimen.label_chip_min_height);
        this.d = getResources().getDimension(R.dimen.label_chip_corner_radius);
        float dimension = getResources().getDimension(R.dimen.label_chip_stroke_width);
        this.e = getResources().getDimensionPixelSize(R.dimen.spacing_medium);
        this.f = getResources().getDimensionPixelSize(R.dimen.spacing_low);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.integer.letterspacing_050, typedValue, true);
        float f = typedValue.getFloat();
        this.k = new RectF();
        Paint paint = new Paint(1);
        paint.setStyle(Paint.Style.FILL);
        this.n = paint;
        Paint paint2 = new Paint(1);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(dimension);
        this.p = paint2;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setTypeface(fm6.a(context, R.font.main_bold));
        textPaint.setTextAlign(Paint.Align.LEFT);
        textPaint.setTextSize(getResources().getDimension(R.dimen.subtitle_smaller));
        textPaint.setLetterSpacing(f);
        this.q = textPaint;
        this.r = new Paint.FontMetrics();
        ov2 ov2Var = ov2.a;
        this.t = ov2Var;
        this.x = 1.0f;
        this.G = ov2Var;
        this.H = -1;
        setWillNotDraw(false);
    }

    public final void a(int i) {
        float paddingStart;
        if (this.H == i) {
            return;
        }
        TextPaint textPaint = this.q;
        Paint.FontMetrics fontMetrics = this.r;
        textPaint.getFontMetrics(fontMetrics);
        float f = fontMetrics.descent - fontMetrics.ascent;
        float f2 = 2.0f;
        float fMax = Math.max(this.c, (this.f * 2.0f) + f);
        float f3 = ((fMax - f) / 2.0f) - fontMetrics.ascent;
        ArrayList arrayList = new ArrayList(this.t.size());
        float paddingStart2 = getPaddingStart();
        float paddingTop = getPaddingTop();
        float f4 = this.a;
        float f5 = paddingTop + f4;
        int paddingStart3 = getPaddingStart() + i;
        for (LabelParams labelParams : this.t) {
            String name = labelParams.getName();
            if (name == null && (name = labelParams.getId()) == null) {
                name = "Unknown";
            }
            Locale locale = Locale.getDefault();
            locale.getClass();
            String upperCase = name.toUpperCase(locale);
            upperCase.getClass();
            float fMeasureText = textPaint.measureText(upperCase);
            float f6 = this.e;
            float f7 = paddingStart2;
            float fCeil = (float) Math.ceil((f6 * f2) + fMeasureText);
            if (f7 <= getPaddingStart() || f7 + fCeil <= paddingStart3) {
                paddingStart = f7;
            } else {
                f5 += fMax + f4;
                paddingStart = getPaddingStart();
            }
            float f8 = f5;
            int textColor = labelParams.getTextColor(this.y);
            arrayList.add(new hx(upperCase, paddingStart, f8, paddingStart + fCeil, f8 + fMax, paddingStart + f6, f8 + f3, labelParams.isBuiltInLabel() ? 0 : labelParams.getColorInt(), labelParams.isBuiltInLabel() ? textColor : 0, textColor));
            paddingStart2 = fCeil + this.b + paddingStart;
            f5 = f8;
            f2 = 2.0f;
        }
        this.G = arrayList;
        this.H = i;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.getClass();
        super.onDraw(canvas);
        if (this.t.isEmpty()) {
            return;
        }
        int width = (getWidth() - getPaddingStart()) - getPaddingEnd();
        if (width < 0) {
            width = 0;
        }
        if (width <= 0) {
            return;
        }
        a(width);
        for (hx hxVar : this.G) {
            float f = hxVar.b;
            int i = hxVar.i;
            int i2 = hxVar.h;
            float f2 = hxVar.c;
            float f3 = hxVar.d;
            float f4 = hxVar.e;
            RectF rectF = this.k;
            rectF.set(f, f2, f3, f4);
            Paint paint = this.n;
            paint.setColor(i2);
            Paint paint2 = this.p;
            paint2.setColor(i);
            int i3 = hxVar.j;
            int iG = xl1.g(i3, l73.h(tu0.v(Color.alpha(i3) * this.x), 0, 255));
            TextPaint textPaint = this.q;
            textPaint.setColor(iG);
            float f5 = this.d;
            if (i2 != 0) {
                canvas.drawRoundRect(rectF, f5, f5, paint);
            }
            if (i != 0) {
                canvas.drawRoundRect(rectF, f5, f5, paint2);
            }
            canvas.drawText(hxVar.a, hxVar.f, hxVar.g, textPaint);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int paddingTop;
        int paddingBottom;
        Float fValueOf;
        int size = View.MeasureSpec.getSize(i);
        int paddingStart = (size - getPaddingStart()) - getPaddingEnd();
        if (paddingStart < 0) {
            paddingStart = 0;
        }
        if (this.t.isEmpty() || paddingStart <= 0) {
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
        } else {
            a(paddingStart);
            Iterator it = this.G.iterator();
            if (it.hasNext()) {
                float fMax = ((hx) it.next()).e;
                while (it.hasNext()) {
                    fMax = Math.max(fMax, ((hx) it.next()).e);
                }
                fValueOf = Float.valueOf(fMax);
            } else {
                fValueOf = null;
            }
            paddingTop = (int) Math.ceil(fValueOf != null ? fValueOf.floatValue() : 0.0f);
            paddingBottom = getPaddingBottom();
        }
        setMeasuredDimension(size, View.resolveSize(paddingBottom + paddingTop, i2));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppRowLabelsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppRowLabelsView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ AppRowLabelsView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }
}
