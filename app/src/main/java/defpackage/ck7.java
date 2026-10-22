package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ck7 extends yl0 {
    public final PointF i;
    public final PointF j;
    public final xh3 k;
    public final xh3 l;
    public cd m;
    public cd n;

    public ck7(xh3 xh3Var, xh3 xh3Var2) {
        super(Collections.EMPTY_LIST);
        this.i = new PointF();
        this.j = new PointF();
        this.k = xh3Var;
        this.l = xh3Var2;
        j(this.d);
    }

    @Override // defpackage.yl0
    public final Object f() {
        return l(0.0f);
    }

    @Override // defpackage.yl0
    public final /* bridge */ /* synthetic */ Object g(wo4 wo4Var, float f) {
        return l(f);
    }

    @Override // defpackage.yl0
    public final void j(float f) {
        xh3 xh3Var = this.k;
        xh3Var.j(f);
        xh3 xh3Var2 = this.l;
        xh3Var2.j(f);
        this.i.set(((Float) xh3Var.f()).floatValue(), ((Float) xh3Var2.f()).floatValue());
        int i = 0;
        while (true) {
            ArrayList arrayList = this.a;
            if (i >= arrayList.size()) {
                return;
            }
            ((ul0) arrayList.get(i)).b();
            i++;
        }
    }

    public final PointF l(float f) {
        Float f2;
        xh3 xh3Var;
        wo4 wo4VarB;
        xh3 xh3Var2;
        wo4 wo4VarB2;
        Float f3 = null;
        if (this.m == null || (wo4VarB2 = (xh3Var2 = this.k).b()) == null) {
            f2 = null;
        } else {
            xh3Var2.d();
            f2 = (Float) this.m.f((Float) wo4VarB2.b, (Float) wo4VarB2.c);
        }
        if (this.n != null && (wo4VarB = (xh3Var = this.l).b()) != null) {
            xh3Var.d();
            f3 = (Float) this.n.f((Float) wo4VarB.b, (Float) wo4VarB.c);
        }
        PointF pointF = this.i;
        PointF pointF2 = this.j;
        if (f2 == null) {
            pointF2.set(pointF.x, 0.0f);
        } else {
            pointF2.set(f2.floatValue(), 0.0f);
        }
        if (f3 == null) {
            pointF2.set(pointF2.x, pointF.y);
            return pointF2;
        }
        pointF2.set(pointF2.x, f3.floatValue());
        return pointF2;
    }
}
