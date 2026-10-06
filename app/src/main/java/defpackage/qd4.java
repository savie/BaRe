package defpackage;

import android.graphics.PointF;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qd4 extends xo4 {
    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        return Integer.valueOf(l(wo4Var, f));
    }

    public final int l(wo4 wo4Var, float f) {
        Object obj = wo4Var.b;
        if (obj == null || wo4Var.c == null) {
            l0.e("Missing values for keyframe.");
            return 0;
        }
        cd cdVar = this.e;
        if (cdVar != null) {
            wo4Var.h.getClass();
            Integer num = (Integer) wo4Var.c;
            e();
            Integer num2 = (Integer) cdVar.f((Integer) obj, num);
            if (num2 != null) {
                return num2.intValue();
            }
        }
        if (wo4Var.k == 784923401) {
            wo4Var.k = ((Integer) obj).intValue();
        }
        int i = wo4Var.k;
        if (wo4Var.l == 784923401) {
            wo4Var.l = ((Integer) wo4Var.c).intValue();
        }
        int i2 = wo4Var.l;
        PointF pointF = sg5.a;
        return (int) ((f * (i2 - i)) + i);
    }
}
