package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ki5 implements q18 {
    public final q18[] a;
    public final List b;

    public ki5(ArrayList arrayList) {
        int size = arrayList.size();
        q18[] q18VarArr = new q18[size];
        this.a = q18VarArr;
        arrayList.toArray(q18VarArr);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i = 0; i < size; i++) {
            linkedHashSet.addAll(q18VarArr[i].b());
        }
        this.b = Collections.unmodifiableList(new ArrayList(linkedHashSet));
    }

    @Override // defpackage.q18
    public final void a(t40 t40Var, HashMap map, r18 r18Var) {
        for (q18 q18Var : this.a) {
            q18Var.a(t40Var, map, r18Var);
        }
    }

    @Override // defpackage.q18
    public final Collection b() {
        return this.b;
    }

    @Override // defpackage.q18
    public final t40 c(t40 t40Var, Object obj, p18 p18Var) {
        if (t40Var == null) {
            xs4.b.getClass();
            return t40.b;
        }
        for (q18 q18Var : this.a) {
            t40Var = q18Var.c(t40Var, obj, p18Var);
        }
        return t40Var;
    }
}
