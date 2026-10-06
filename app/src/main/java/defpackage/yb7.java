package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yb7 implements cj8 {
    public static final yb7 a = new yb7();
    public static final ib b = ib.k("c", "v", "i", "o");

    @Override // defpackage.cj8
    public final Object r(ul4 ul4Var, float f) {
        if (ul4Var.v() == 1) {
            ul4Var.a();
        }
        ul4Var.b();
        ArrayList arrayListC = null;
        ArrayList arrayListC2 = null;
        ArrayList arrayListC3 = null;
        boolean zN = false;
        while (ul4Var.m()) {
            int iA = ul4Var.A(b);
            if (iA == 0) {
                zN = ul4Var.n();
            } else if (iA == 1) {
                arrayListC = gn4.c(ul4Var, f);
            } else if (iA == 2) {
                arrayListC2 = gn4.c(ul4Var, f);
            } else if (iA != 3) {
                ul4Var.D();
                ul4Var.G();
            } else {
                arrayListC3 = gn4.c(ul4Var, f);
            }
        }
        ul4Var.h();
        if (ul4Var.v() == 2) {
            ul4Var.g();
        }
        if (arrayListC == null || arrayListC2 == null || arrayListC3 == null) {
            c6.f("Shape data was missing information.");
            return null;
        }
        if (arrayListC.isEmpty()) {
            return new xb7(new PointF(), false, Collections.EMPTY_LIST);
        }
        int size = arrayListC.size();
        PointF pointF = (PointF) arrayListC.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i = 1; i < size; i++) {
            PointF pointF2 = (PointF) arrayListC.get(i);
            int i2 = i - 1;
            arrayList.add(new p62(sg5.a((PointF) arrayListC.get(i2), (PointF) arrayListC3.get(i2)), sg5.a(pointF2, (PointF) arrayListC2.get(i)), pointF2));
        }
        if (zN) {
            PointF pointF3 = (PointF) arrayListC.get(0);
            int i3 = size - 1;
            arrayList.add(new p62(sg5.a((PointF) arrayListC.get(i3), (PointF) arrayListC3.get(i3)), sg5.a(pointF3, (PointF) arrayListC2.get(0)), pointF3));
        }
        return new xb7(pointF, zN, arrayList);
    }
}
