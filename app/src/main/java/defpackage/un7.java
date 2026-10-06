package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class un7 extends vm4 implements Serializable {
    public static void J(hd hdVar, ik5 ik5Var, s65 s65Var, as5 as5Var, HashMap map) {
        String strN;
        if (ik5Var.c == null && (strN = as5Var.N(hdVar)) != null) {
            ik5Var = new ik5(ik5Var.a, strN);
        }
        ik5 ik5Var2 = new ik5(ik5Var.a, null);
        if (map.containsKey(ik5Var2)) {
            if (ik5Var.c == null || ((ik5) map.get(ik5Var2)).c != null) {
                return;
            }
            map.put(ik5Var2, ik5Var);
            return;
        }
        map.put(ik5Var2, ik5Var);
        List listM = as5Var.M(hdVar);
        if (listM != null) {
            ArrayList<ik5> arrayList = (ArrayList) listM;
            if (arrayList.isEmpty()) {
                return;
            }
            for (ik5 ik5Var3 : arrayList) {
                J(id.g(s65Var, ik5Var3.a), ik5Var3, s65Var, as5Var, map);
            }
        }
    }

    public final ArrayList K(s65 s65Var, od odVar, gc8 gc8Var) {
        Class clsC;
        List listM;
        as5 as5VarD = s65Var.d();
        if (gc8Var != null) {
            clsC = gc8Var.f;
        } else {
            if (odVar == null) {
                c6.f("Both property and base type are nulls");
                return null;
            }
            clsC = odVar.C();
        }
        HashMap map = new HashMap();
        if (odVar != null && (listM = as5VarD.M(odVar)) != null) {
            for (ik5 ik5Var : (ArrayList) listM) {
                J(id.g(s65Var, ik5Var.a), ik5Var, s65Var, as5VarD, map);
            }
        }
        J(id.g(s65Var, clsC), new ik5(clsC, null), s65Var, as5VarD, map);
        return new ArrayList(map.values());
    }
}
