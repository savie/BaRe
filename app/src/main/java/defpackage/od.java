package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class od extends jb9 implements Serializable {
    public final transient qc8 M;
    public final transient s79 N;

    public od(qc8 qc8Var, s79 s79Var) {
        this.M = qc8Var;
        this.N = s79Var;
    }

    public abstract Class p0();

    public String q0() {
        return p0().getName() + "#" + B();
    }

    public abstract Member r0();

    public abstract Object s0(Object obj);

    public final boolean t0(Class cls) {
        HashMap map;
        s79 s79Var = this.N;
        if (s79Var == null || (map = (HashMap) s79Var.b) == null) {
            return false;
        }
        return map.containsKey(cls);
    }

    public final boolean u0(Class[] clsArr) {
        s79 s79Var = this.N;
        if (s79Var == null || ((HashMap) s79Var.b) == null) {
            return false;
        }
        for (Class cls : clsArr) {
            if (((HashMap) s79Var.b).containsKey(cls)) {
                return true;
            }
        }
        return false;
    }

    public abstract jb9 v0(s79 s79Var);

    @Override // defpackage.jb9
    public final Annotation z(Class cls) {
        s79 s79Var = this.N;
        if (s79Var == null) {
            return null;
        }
        return s79Var.b(cls);
    }
}
