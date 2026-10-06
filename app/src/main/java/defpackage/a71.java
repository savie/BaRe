package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a71 extends View {
    public int a;
    public int b;
    public Path c;
    public Paint d;
    public float e;
    public float f;
    public float k;
    public String n;

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.d.setColor(this.b);
        canvas.drawPath(this.c, this.d);
        this.d.setColor(this.a);
        canvas.drawText(this.n, this.e / 2.0f, (this.k / 4.0f) + (this.f / 2.0f), this.d);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension((int) this.e, (int) this.f);
    }

    public void setProgress(String str) {
        this.n = str;
        invalidate();
    }
}
