package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hc7 extends lc7 {
    public final jc7 c;
    public final float d;
    public final float e;

    public hc7(jc7 jc7Var, float f, float f2) {
        this.c = jc7Var;
        this.d = f;
        this.e = f2;
    }

    @Override // defpackage.lc7
    public final void a(Matrix matrix, qb7 qb7Var, int i, Canvas canvas) {
        jc7 jc7Var = this.c;
        float f = jc7Var.c;
        float f2 = this.e;
        float f3 = jc7Var.b;
        float f4 = this.d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
        Matrix matrix2 = this.a;
        matrix2.set(matrix);
        matrix2.preTranslate(f4, f2);
        matrix2.preRotate(b());
        qb7Var.getClass();
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int i2 = qb7Var.f;
        int[] iArr = qb7.i;
        iArr[0] = i2;
        iArr[1] = qb7Var.e;
        iArr[2] = qb7Var.d;
        Paint paint = qb7Var.c;
        float f5 = rectF.left;
        paint.setShader(new LinearGradient(f5, rectF.top, f5, rectF.bottom, iArr, qb7.j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    public final float b() {
        jc7 jc7Var = this.c;
        return (float) Math.toDegrees(Math.atan((jc7Var.c - this.e) / (jc7Var.b - this.d)));
    }
}
