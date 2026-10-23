package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gc7 extends lc7 {
    public final ic7 c;

    public gc7(ic7 ic7Var) {
        this.c = ic7Var;
    }

    @Override // defpackage.lc7
    public final void a(Matrix matrix, qb7 qb7Var, int i, Canvas canvas) {
        ic7 ic7Var = this.c;
        float f = ic7Var.f;
        float f2 = ic7Var.g;
        RectF rectF = new RectF(ic7Var.b, ic7Var.c, ic7Var.d, ic7Var.e);
        Paint paint = qb7Var.b;
        boolean z = f2 < 0.0f;
        Path path = qb7Var.g;
        int[] iArr = qb7.k;
        if (z) {
            iArr[0] = 0;
            iArr[1] = qb7Var.f;
            iArr[2] = qb7Var.e;
            iArr[3] = qb7Var.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            iArr[0] = 0;
            iArr[1] = qb7Var.d;
            iArr[2] = qb7Var.e;
            iArr[3] = qb7Var.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f4 = 1.0f - (i / fWidth);
        float[] fArr = qb7.l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, qb7Var.h);
        }
        canvas.drawArc(rectF, f, f2, true, paint);
        canvas.restore();
    }
}
