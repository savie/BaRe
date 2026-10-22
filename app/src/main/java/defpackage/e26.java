package defpackage;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e26 extends xo4 {
    public final PointF i;

    public e26(List list) {
        super(list);
        this.i = new PointF();
    }

    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        return l(wo4Var, f, f);
    }

    @Override // defpackage.yl0
    public final /* bridge */ /* synthetic */ Object h(wo4 wo4Var, float f, float f2, float f3) {
        return l(wo4Var, f2, f3);
    }

    public final PointF l(wo4 wo4Var, float f, float f2) {
        Object obj;
        Object obj2 = wo4Var.b;
        if (obj2 == null || (obj = wo4Var.c) == null) {
            l0.e("Missing values for keyframe.");
            return null;
        }
        PointF pointF = (PointF) obj2;
        PointF pointF2 = (PointF) obj;
        cd cdVar = this.e;
        if (cdVar != null) {
            wo4Var.h.getClass();
            e();
            PointF pointF3 = (PointF) cdVar.f(pointF, pointF2);
            if (pointF3 != null) {
                return pointF3;
            }
        }
        float f3 = pointF.x;
        float fE = xs1.e(pointF2.x, f3, f, f3);
        float f4 = pointF.y;
        float fE2 = xs1.e(pointF2.y, f4, f2, f4);
        PointF pointF4 = this.i;
        pointF4.set(fE, fE2);
        return pointF4;
    }
}
