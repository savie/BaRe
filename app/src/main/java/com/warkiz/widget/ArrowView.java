package com.warkiz.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import defpackage.tu0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class ArrowView extends View {
    public final int a;
    public final int b;
    public final Path c;
    public final Paint d;

    public ArrowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int iJ = tu0.j(context, 12.0f);
        this.a = iJ;
        int iJ2 = tu0.j(context, 7.0f);
        this.b = iJ2;
        Path path = new Path();
        this.c = path;
        path.moveTo(0.0f, 0.0f);
        path.lineTo(iJ, 0.0f);
        path.lineTo(iJ / 2.0f, iJ2);
        path.close();
        Paint paint = new Paint();
        this.d = paint;
        paint.setAntiAlias(true);
        paint.setStrokeWidth(1.0f);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.drawPath(this.c, this.d);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(this.a, this.b);
    }

    public void setColor(int i) {
        this.d.setColor(i);
        invalidate();
    }

    public ArrowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowView(Context context) {
        this(context, null);
    }
}
