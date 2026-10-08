package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.TreeSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class xk1 extends y23 {
    public Class f(Class cls) throws w70 {
        if (cls.isAssignableFrom(ArrayList.class)) {
            return ArrayList.class;
        }
        if (cls.isAssignableFrom(HashSet.class)) {
            return HashSet.class;
        }
        if (cls.isAssignableFrom(TreeSet.class)) {
            return TreeSet.class;
        }
        throw new w70("Cannot instantiate %s for %s", cls, (vb8) this.d);
    }

    public gd4 g(mc4 mc4Var) {
        vb8 vb8Var = (vb8) this.d;
        ai5 ai5Var = (ai5) this.a;
        wi8 wi8VarA = a(mc4Var);
        Class clsB = b();
        if (wi8VarA == null) {
            if (!y23.c(clsB)) {
                clsB = f(clsB);
            }
            if (Collection.class.isAssignableFrom(clsB)) {
                return ai5Var.k(clsB);
            }
            throw new w70("Invalid collection %s for %s", clsB, vb8Var);
        }
        Class type = wi8VarA.getType();
        if (!y23.c(type)) {
            type = f(type);
        }
        if (Collection.class.isAssignableFrom(type)) {
            return new vq(ai5Var, wi8VarA, type);
        }
        throw new w70("Invalid collection %s for %s", type, vb8Var);
    }

    public Object h() throws w70 {
        Class clsB = b();
        Class clsF = !y23.c(clsB) ? f(clsB) : clsB;
        if (Collection.class.isAssignableFrom(clsF)) {
            return clsF.newInstance();
        }
        throw new w70("Invalid collection %s for %s", clsB, (vb8) this.d);
    }

    public String i(Object obj) {
        Class<?> cls = obj.getClass();
        boolean zIsEnum = cls.isEnum();
        x44 x44Var = (x44) this.b;
        if (zIsEnum) {
            i98 i98VarC = ((s02) x44Var.f).c(cls);
            if (i98VarC != null) {
                return i98VarC.b(obj);
            }
            throw new j98("Transform of %s not supported", cls);
        }
        i98 i98VarC2 = ((s02) x44Var.f).c(cls);
        if (i98VarC2 != null) {
            return i98VarC2.b(obj);
        }
        throw new j98("Transform of %s not supported", cls);
    }
}
