package defpackage;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ea implements pi4 {
    public final ArrayList a;
    public final ArrayList b;

    public ea(ArrayList arrayList, ArrayList arrayList2) {
        this.a = arrayList;
        this.b = arrayList2;
    }

    public static da b(ArrayList arrayList, Type type, Set set) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            da daVar = (da) arrayList.get(i);
            if (wx3.g(daVar.a, type) && daVar.b.equals(set)) {
                return daVar;
            }
        }
        return null;
    }

    @Override // defpackage.pi4
    public final qi4 a(Type type, Set set, nh5 nh5Var) {
        da daVarB = b(this.a, type, set);
        da daVarB2 = b(this.b, type, set);
        qi4 qi4VarC = null;
        if (daVarB == null && daVarB2 == null) {
            return null;
        }
        if (daVarB == null || daVarB2 == null) {
            try {
                qi4VarC = nh5Var.c(this, type, set);
            } catch (IllegalArgumentException e) {
                StringBuilder sbU = dj7.u("No ", daVarB == null ? "@ToJson" : "@FromJson", " adapter for ");
                sbU.append(yh8.i(type, set));
                throw new IllegalArgumentException(sbU.toString(), e);
            }
        }
        qi4 qi4Var = qi4VarC;
        if (daVarB != null) {
            daVarB.a(nh5Var, this);
        }
        if (daVarB2 != null) {
            daVarB2.a(nh5Var, this);
        }
        return new y9(daVarB, qi4Var, nh5Var, daVarB2, set, type);
    }
}
