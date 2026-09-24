package defpackage;

import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j65 extends y23 {
    public final Class f(Class cls) throws w70 {
        if (cls.isAssignableFrom(HashMap.class)) {
            return HashMap.class;
        }
        if (cls.isAssignableFrom(TreeMap.class)) {
            return TreeMap.class;
        }
        throw new w70("Cannot instantiate %s for %s", cls, (vb8) this.d);
    }

    public final gd4 g(mc4 mc4Var) {
        vb8 vb8Var = (vb8) this.d;
        ai5 ai5Var = (ai5) this.a;
        wi8 wi8VarA = a(mc4Var);
        Class clsB = b();
        if (wi8VarA == null) {
            if (!y23.c(clsB)) {
                clsB = f(clsB);
            }
            if (Map.class.isAssignableFrom(clsB)) {
                return ai5Var.k(clsB);
            }
            throw new w70("Invalid map %s for %s", clsB, vb8Var);
        }
        Class type = wi8VarA.getType();
        if (!y23.c(type)) {
            type = f(type);
        }
        if (Map.class.isAssignableFrom(type)) {
            return new vq(ai5Var, wi8VarA, type);
        }
        throw new w70("Invalid map %s for %s", type, vb8Var);
    }

    public final Object h() throws w70 {
        Class clsB = b();
        Class clsF = !y23.c(clsB) ? f(clsB) : clsB;
        if (Map.class.isAssignableFrom(clsF)) {
            return clsF.newInstance();
        }
        throw new w70("Invalid map %s for %s", clsB, (vb8) this.d);
    }
}
