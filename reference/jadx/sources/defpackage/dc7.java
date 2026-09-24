package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dc7 extends yl0 {
    public final xb7 i;
    public final Path j;

    public dc7(List list) {
        super(list);
        this.i = new xb7();
        this.j = new Path();
    }

    @Override // defpackage.yl0
    public final Object g(wo4 wo4Var, float f) {
        xb7 xb7Var = (xb7) wo4Var.b;
        xb7 xb7Var2 = (xb7) wo4Var.c;
        xb7 xb7Var3 = this.i;
        ArrayList arrayList = xb7Var3.a;
        if (xb7Var3.b == null) {
            xb7Var3.b = new PointF();
        }
        boolean z = xb7Var.c;
        ArrayList arrayList2 = xb7Var.a;
        xb7Var3.c = z || xb7Var2.c;
        int size = arrayList2.size();
        ArrayList arrayList3 = xb7Var2.a;
        if (size != arrayList3.size()) {
            m15.b("Curves must have the same number of control points. Shape 1: " + arrayList2.size() + "\tShape 2: " + arrayList3.size());
        }
        int iMin = Math.min(arrayList2.size(), arrayList3.size());
        if (arrayList.size() < iMin) {
            for (int size2 = arrayList.size(); size2 < iMin; size2++) {
                arrayList.add(new p62());
            }
        } else if (arrayList.size() > iMin) {
            for (int size3 = arrayList.size() - 1; size3 >= iMin; size3--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF pointF = xb7Var.b;
        PointF pointF2 = xb7Var2.b;
        float fD = sg5.d(pointF.x, pointF2.x, f);
        float fD2 = sg5.d(pointF.y, pointF2.y, f);
        if (xb7Var3.b == null) {
            xb7Var3.b = new PointF();
        }
        xb7Var3.b.set(fD, fD2);
        for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
            p62 p62Var = (p62) arrayList2.get(size4);
            p62 p62Var2 = (p62) arrayList3.get(size4);
            PointF pointF3 = p62Var.a;
            PointF pointF4 = p62Var.b;
            PointF pointF5 = p62Var.c;
            PointF pointF6 = p62Var2.a;
            PointF pointF7 = p62Var2.b;
            PointF pointF8 = p62Var2.c;
            ((p62) arrayList.get(size4)).a.set(sg5.d(pointF3.x, pointF6.x, f), sg5.d(pointF3.y, pointF6.y, f));
            ((p62) arrayList.get(size4)).b.set(sg5.d(pointF4.x, pointF7.x, f), sg5.d(pointF4.y, pointF7.y, f));
            ((p62) arrayList.get(size4)).c.set(sg5.d(pointF5.x, pointF8.x, f), sg5.d(pointF5.y, pointF8.y, f));
        }
        Path path = this.j;
        path.reset();
        PointF pointF9 = xb7Var3.b;
        ArrayList arrayList4 = xb7Var3.a;
        path.moveTo(pointF9.x, pointF9.y);
        PointF pointF10 = sg5.a;
        pointF10.set(pointF9.x, pointF9.y);
        for (int i = 0; i < arrayList4.size(); i++) {
            p62 p62Var3 = (p62) arrayList4.get(i);
            PointF pointF11 = p62Var3.a;
            PointF pointF12 = p62Var3.b;
            PointF pointF13 = p62Var3.c;
            if (pointF11.equals(pointF10) && pointF12.equals(pointF13)) {
                path.lineTo(pointF13.x, pointF13.y);
            } else {
                path.cubicTo(pointF11.x, pointF11.y, pointF12.x, pointF12.y, pointF13.x, pointF13.y);
            }
            pointF10.set(pointF13.x, pointF13.y);
        }
        if (xb7Var3.c) {
            path.close();
        }
        return path;
    }
}
