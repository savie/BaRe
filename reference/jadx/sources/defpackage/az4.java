package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class az4 {
    public final d36 a;
    public final List b;
    public final String c;

    public az4(Class cls, Class cls2, Class cls3, List list, d36 d36Var) {
        this.a = d36Var;
        if (list.isEmpty()) {
            c6.f("Must not be empty.");
            throw null;
        }
        this.b = list;
        this.c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final ll6 a(int i, int i2, za2 za2Var, rd2 rd2Var, ou5 ou5Var) {
        d36 d36Var = this.a;
        Object objD = d36Var.d();
        ms8.j(objD, "Argument must not be null");
        List list = (List) objD;
        try {
            List list2 = this.b;
            int size = list2.size();
            ll6 ll6VarA = null;
            for (int i3 = 0; i3 < size; i3++) {
                try {
                    ll6VarA = ((ud2) list2.get(i3)).a(i, i2, za2Var, rd2Var, ou5Var);
                } catch (fy3 e) {
                    list.add(e);
                }
                if (ll6VarA != null) {
                    break;
                }
            }
            if (ll6VarA == null) {
                throw new fy3(this.c, new ArrayList(list));
            }
            d36Var.c(list);
            return ll6VarA;
        } catch (Throwable th) {
            d36Var.c(list);
            throw th;
        }
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.b.toArray()) + '}';
    }
}
