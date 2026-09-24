package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yt2 implements hy5, ul0, ro4 {
    public final String b;
    public final c35 c;
    public final e26 d;
    public final yl0 e;
    public final i71 f;
    public boolean h;
    public final Path a = new Path();
    public final lp1 g = new lp1(0);

    public yt2(c35 c35Var, am0 am0Var, i71 i71Var) {
        this.b = i71Var.a;
        this.c = c35Var;
        yl0 yl0VarN = i71Var.c.n();
        this.d = (e26) yl0VarN;
        yl0 yl0VarN2 = i71Var.b.n();
        this.e = yl0VarN2;
        this.f = i71Var;
        am0Var.g(yl0VarN);
        am0Var.g(yl0VarN2);
        yl0VarN.a(this);
        yl0VarN2.a(this);
    }

    @Override // defpackage.hy5
    public final Path a() {
        boolean z = this.h;
        Path path = this.a;
        if (z) {
            return path;
        }
        path.reset();
        i71 i71Var = this.f;
        if (i71Var.e) {
            this.h = true;
            return path;
        }
        PointF pointF = (PointF) this.d.f();
        float f = pointF.x / 2.0f;
        float f2 = pointF.y / 2.0f;
        float f3 = f * 0.55228f;
        float f4 = f2 * 0.55228f;
        path.reset();
        if (i71Var.d) {
            float f5 = -f2;
            path.moveTo(0.0f, f5);
            float f6 = 0.0f - f3;
            float f7 = -f;
            float f8 = 0.0f - f4;
            path.cubicTo(f6, f5, f7, f8, f7, 0.0f);
            float f9 = f4 + 0.0f;
            path.cubicTo(f7, f9, f6, f2, 0.0f, f2);
            float f10 = f3 + 0.0f;
            path.cubicTo(f10, f2, f, f9, f, 0.0f);
            path.cubicTo(f, f8, f10, f5, 0.0f, f5);
        } else {
            float f11 = -f2;
            path.moveTo(0.0f, f11);
            float f12 = f3 + 0.0f;
            float f13 = 0.0f - f4;
            path.cubicTo(f12, f11, f, f13, f, 0.0f);
            float f14 = f4 + 0.0f;
            path.cubicTo(f, f14, f12, f2, 0.0f, f2);
            float f15 = 0.0f - f3;
            float f16 = -f;
            path.cubicTo(f15, f2, f16, f14, f16, 0.0f);
            path.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        }
        PointF pointF2 = (PointF) this.e.f();
        path.offset(pointF2.x, pointF2.y);
        path.close();
        this.g.a(path);
        this.h = true;
        return path;
    }

    @Override // defpackage.ul0
    public final void b() {
        this.h = false;
        this.c.invalidateSelf();
    }

    @Override // defpackage.gu1
    public final void c(List list, List list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i >= arrayList.size()) {
                return;
            }
            gu1 gu1Var = (gu1) arrayList.get(i);
            if (gu1Var instanceof nb8) {
                nb8 nb8Var = (nb8) gu1Var;
                if (nb8Var.c == 1) {
                    this.g.a.add(nb8Var);
                    nb8Var.d(this);
                }
            }
            i++;
        }
    }

    @Override // defpackage.qo4
    public final void d(po4 po4Var, int i, ArrayList arrayList, po4 po4Var2) {
        sg5.e(po4Var, i, arrayList, po4Var2, this);
    }

    @Override // defpackage.qo4
    public final void f(cd cdVar, Object obj) {
        if (obj == f35.f) {
            this.d.k(cdVar);
        } else if (obj == f35.i) {
            this.e.k(cdVar);
        }
    }

    @Override // defpackage.gu1
    public final String getName() {
        return this.b;
    }
}
