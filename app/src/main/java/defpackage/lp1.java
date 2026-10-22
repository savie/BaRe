package defpackage;

import android.graphics.Path;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lp1 {
    public final ArrayList a;

    public lp1(int i) {
        switch (i) {
            case 1:
                this.a = new ArrayList();
                break;
            default:
                this.a = new ArrayList();
                break;
        }
    }

    public void a(Path path) {
        ArrayList arrayList = this.a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            nb8 nb8Var = (nb8) arrayList.get(size);
            di8 di8Var = mi8.a;
            if (nb8Var != null && !nb8Var.a) {
                mi8.a(path, nb8Var.d.l() / 100.0f, nb8Var.e.l() / 100.0f, nb8Var.f.l() / 360.0f);
            }
        }
    }
}
