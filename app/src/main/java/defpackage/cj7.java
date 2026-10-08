package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cj7 extends am0 {
    public final RectF A;
    public final vp4 B;
    public final float[] C;
    public final Path D;
    public final js4 E;
    public xi8 F;

    public cj7(c35 c35Var, js4 js4Var) {
        super(c35Var, js4Var);
        this.A = new RectF();
        vp4 vp4Var = new vp4();
        this.B = vp4Var;
        this.C = new float[8];
        this.D = new Path();
        this.E = js4Var;
        vp4Var.setAlpha(0);
        vp4Var.setStyle(Paint.Style.FILL);
        vp4Var.setColor(js4Var.l);
    }

    @Override // defpackage.am0, defpackage.rp2
    public final void e(RectF rectF, Matrix matrix, boolean z) {
        super.e(rectF, matrix, z);
        js4 js4Var = this.E;
        float f = js4Var.j;
        float f2 = js4Var.k;
        RectF rectF2 = this.A;
        rectF2.set(0.0f, 0.0f, f, f2);
        this.l.mapRect(rectF2);
        rectF.set(rectF2);
    }

    @Override // defpackage.am0, defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        super.f(cdVar, obj);
        if (obj == f35.F) {
            this.F = new xi8(cdVar, null);
        }
    }

    @Override // defpackage.am0
    public final void k(Canvas canvas, Matrix matrix, int i) {
        js4 js4Var = this.E;
        int iAlpha = Color.alpha(js4Var.l);
        if (iAlpha == 0) {
            return;
        }
        yl0 yl0Var = this.u.j;
        int iIntValue = (int) ((((iAlpha / 255.0f) * (yl0Var == null ? 100 : ((Integer) yl0Var.f()).intValue())) / 100.0f) * (i / 255.0f) * 255.0f);
        vp4 vp4Var = this.B;
        vp4Var.setAlpha(iIntValue);
        xi8 xi8Var = this.F;
        if (xi8Var != null) {
            vp4Var.setColorFilter((ColorFilter) xi8Var.f());
        }
        if (iIntValue > 0) {
            float[] fArr = this.C;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            float f = js4Var.j;
            fArr[2] = f;
            fArr[3] = 0.0f;
            fArr[4] = f;
            float f2 = js4Var.k;
            fArr[5] = f2;
            fArr[6] = 0.0f;
            fArr[7] = f2;
            matrix.mapPoints(fArr);
            Path path = this.D;
            path.reset();
            path.moveTo(fArr[0], fArr[1]);
            path.lineTo(fArr[2], fArr[3]);
            path.lineTo(fArr[4], fArr[5]);
            path.lineTo(fArr[6], fArr[7]);
            path.lineTo(fArr[0], fArr[1]);
            path.close();
            canvas.drawPath(path, vp4Var);
        }
    }
}
