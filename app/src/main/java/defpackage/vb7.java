package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Looper;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vb7 {
    public final mc7[] a = new mc7[4];
    public final Matrix[] b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();
    public final mc7 g = new mc7();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public final boolean l = true;

    public vb7() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new mc7();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    public static vb7 b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread() ? ub7.a : new vb7();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(tb7 tb7Var, float[] fArr, float f, RectF rectF, km8 km8Var, Path path) {
        Matrix[] matrixArr;
        float[] fArr2;
        int i;
        mc7[] mc7VarArr;
        char c;
        Matrix[] matrixArr2;
        us2 us2Var;
        char c2;
        lx1 w71Var;
        zv1 zv1Var;
        path.rewind();
        Path path2 = this.e;
        path2.rewind();
        Path path3 = this.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i2 = 0;
        while (true) {
            matrixArr = this.c;
            fArr2 = this.h;
            mc7VarArr = this.a;
            c = 0;
            matrixArr2 = this.b;
            if (i2 >= 4) {
                break;
            }
            if (fArr != null) {
                w71Var = new w71(fArr[i2]);
            } else if (i2 == 1) {
                w71Var = tb7Var.g;
            } else if (i2 != 2) {
                w71Var = i2 != 3 ? tb7Var.f : tb7Var.e;
            } else {
                w71Var = tb7Var.h;
            }
            if (i2 == 1) {
                zv1Var = tb7Var.c;
            } else if (i2 != 2) {
                zv1Var = i2 != 3 ? tb7Var.b : tb7Var.a;
            } else {
                zv1Var = tb7Var.d;
            }
            mc7 mc7Var = mc7VarArr[i2];
            zv1Var.getClass();
            zv1Var.g(mc7Var, f, w71Var.a(rectF));
            int i3 = i2 + 1;
            float f2 = (i3 % 4) * 90;
            matrixArr2[i2].reset();
            PointF pointF = this.d;
            if (i2 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i2 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i2 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f2);
            mc7 mc7Var2 = mc7VarArr[i2];
            fArr2[0] = mc7Var2.c;
            fArr2[1] = mc7Var2.d;
            matrixArr2[i2].mapPoints(fArr2);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr2[0], fArr2[1]);
            matrixArr[i2].preRotate(f2);
            i2 = i3;
        }
        char c3 = 1;
        int i4 = 0;
        for (i = 4; i4 < i; i = 4) {
            mc7 mc7Var3 = mc7VarArr[i4];
            fArr2[c] = mc7Var3.a;
            fArr2[c3] = mc7Var3.b;
            matrixArr2[i4].mapPoints(fArr2);
            if (i4 == 0) {
                path.moveTo(fArr2[c], fArr2[c3]);
            } else {
                path.lineTo(fArr2[c], fArr2[c3]);
            }
            mc7VarArr[i4].b(matrixArr2[i4], path);
            if (km8Var != null) {
                mc7 mc7Var4 = mc7VarArr[i4];
                Matrix matrix = matrixArr2[i4];
                c95 c95Var = (c95) km8Var.a;
                BitSet bitSet = c95Var.e;
                mc7Var4.getClass();
                bitSet.set(i4, (boolean) c);
                lc7[] lc7VarArr = c95Var.c;
                mc7Var4.a(mc7Var4.f);
                lc7VarArr[i4] = new fc7(new ArrayList(mc7Var4.h), new Matrix(matrix));
            }
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            mc7 mc7Var5 = mc7VarArr[i4];
            fArr2[0] = mc7Var5.c;
            fArr2[1] = mc7Var5.d;
            matrixArr2[i4].mapPoints(fArr2);
            mc7 mc7Var6 = mc7VarArr[i6];
            float f3 = mc7Var6.a;
            float[] fArr3 = this.i;
            fArr3[0] = f3;
            fArr3[1] = mc7Var6.b;
            matrixArr2[i6].mapPoints(fArr3);
            mc7[] mc7VarArr2 = mc7VarArr;
            float fMax = Math.max(((float) Math.hypot(fArr2[0] - fArr3[0], fArr2[1] - fArr3[1])) - 0.001f, 0.0f);
            mc7 mc7Var7 = mc7VarArr2[i4];
            fArr2[0] = mc7Var7.c;
            fArr2[1] = mc7Var7.d;
            matrixArr2[i4].mapPoints(fArr2);
            float fAbs = (i4 == 1 || i4 == 3) ? Math.abs(rectF.centerX() - fArr2[0]) : Math.abs(rectF.centerY() - fArr2[1]);
            mc7 mc7Var8 = this.g;
            mc7Var8.d(0.0f, 0.0f, 270.0f, 0.0f);
            if (i4 == 1) {
                us2Var = tb7Var.k;
            } else if (i4 != 2) {
                us2Var = i4 != 3 ? tb7Var.j : tb7Var.i;
            } else {
                us2Var = tb7Var.l;
            }
            us2Var.A(fMax, fAbs, f, mc7Var8);
            Path path4 = this.j;
            path4.reset();
            mc7Var8.b(matrixArr[i4], path4);
            if (this.l && (us2Var.z() || c(path4, i4) || c(path4, i6))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = mc7Var8.a;
                c3 = 1;
                fArr2[1] = mc7Var8.b;
                matrixArr[i4].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                mc7Var8.b(matrixArr[i4], path2);
            } else {
                c3 = 1;
                mc7Var8.b(matrixArr[i4], path);
            }
            if (km8Var != null) {
                Matrix matrix2 = matrixArr[i4];
                c95 c95Var2 = (c95) km8Var.a;
                c2 = 0;
                c95Var2.e.set(i4 + 4, false);
                lc7[] lc7VarArr2 = c95Var2.d;
                mc7Var8.a(mc7Var8.f);
                lc7VarArr2[i4] = new fc7(new ArrayList(mc7Var8.h), new Matrix(matrix2));
            } else {
                c2 = 0;
            }
            i4 = i5;
            c = c2;
            mc7VarArr = mc7VarArr2;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean c(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.a[i].b(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }
}
