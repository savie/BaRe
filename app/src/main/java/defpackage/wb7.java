package defpackage;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wb7 implements hy5, ul0 {
    public final boolean b;
    public final c35 c;
    public final dc7 d;
    public boolean e;
    public final Path a = new Path();
    public final lp1 f = new lp1(0);

    public wb7(c35 c35Var, am0 am0Var, nc7 nc7Var) {
        this.b = nc7Var.d;
        this.c = c35Var;
        yl0 yl0VarN = nc7Var.c.n();
        this.d = (dc7) yl0VarN;
        am0Var.g(yl0VarN);
        yl0VarN.a(this);
    }

    @Override // defpackage.hy5
    public final Path a() {
        boolean z = this.e;
        Path path = this.a;
        if (z) {
            return path;
        }
        path.reset();
        if (this.b) {
            this.e = true;
            return path;
        }
        Path path2 = (Path) this.d.f();
        if (path2 == null) {
            return path;
        }
        path.set(path2);
        path.setFillType(Path.FillType.EVEN_ODD);
        this.f.a(path);
        this.e = true;
        return path;
    }

    @Override // defpackage.ul0
    public final void b() {
        this.e = false;
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
                    this.f.a.add(nb8Var);
                    nb8Var.d(this);
                }
            }
            i++;
        }
    }
}
