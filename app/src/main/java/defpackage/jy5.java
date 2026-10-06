package defpackage;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jy5 extends xo4 {
    public final PointF i;
    public final float[] j;
    public final PathMeasure k;
    public iy5 l;

    public jy5(ArrayList arrayList) {
        super(arrayList);
        this.i = new PointF();
        this.j = new float[2];
        this.k = new PathMeasure();
    }

    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        iy5 iy5Var = (iy5) wo4Var;
        Path path = iy5Var.q;
        if (path == null) {
            return (PointF) wo4Var.b;
        }
        cd cdVar = this.e;
        if (cdVar != null) {
            iy5Var.h.getClass();
            PointF pointF = (PointF) iy5Var.b;
            PointF pointF2 = (PointF) iy5Var.c;
            e();
            PointF pointF3 = (PointF) cdVar.f(pointF, pointF2);
            if (pointF3 != null) {
                return pointF3;
            }
        }
        iy5 iy5Var2 = this.l;
        PathMeasure pathMeasure = this.k;
        if (iy5Var2 != iy5Var) {
            pathMeasure.setPath(path, false);
            this.l = iy5Var;
        }
        float length = pathMeasure.getLength() * f;
        float[] fArr = this.j;
        pathMeasure.getPosTan(length, fArr, null);
        float f2 = fArr[0];
        float f3 = fArr[1];
        PointF pointF4 = this.i;
        pointF4.set(f2, f3);
        return pointF4;
    }
}
