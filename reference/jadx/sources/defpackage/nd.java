package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nd extends ol1 {
    public final lc8 e;
    public final h81 f;
    public final boolean k;

    public nd(as5 as5Var, lc8 lc8Var, h81 h81Var, boolean z) {
        super(as5Var, 0);
        this.e = lc8Var;
        this.f = as5Var == null ? null : h81Var;
        this.k = z;
    }

    public final Map H(qc8 qc8Var, gc8 gc8Var) {
        h81 h81Var;
        Class clsA;
        md mdVar;
        gc8 gc8VarT0 = gc8Var.t0();
        if (gc8VarT0 == null) {
            return null;
        }
        Class cls = gc8Var.f;
        Map mapH = H(new ib(13, this.e, gc8VarT0.n0()), gc8VarT0);
        for (Field field : cls.getDeclaredFields()) {
            if (field.isEnumConstant() || (!field.isSynthetic() && !Modifier.isStatic(field.getModifiers()))) {
                if (mapH == null) {
                    mapH = new LinkedHashMap();
                }
                md mdVar2 = new md(qc8Var, field);
                if (this.k) {
                    mdVar2.c = e(vd.j, field.getDeclaredAnnotations());
                }
                mapH.put(field.getName(), mdVar2);
            }
        }
        if (mapH != null && (h81Var = this.f) != null && (clsA = h81Var.a(cls)) != null) {
            Iterator it = u81.i(clsA, cls, true).iterator();
            while (it.hasNext()) {
                for (Field field2 : ((Class) it.next()).getDeclaredFields()) {
                    if ((field2.isEnumConstant() || (!field2.isSynthetic() && !Modifier.isStatic(field2.getModifiers()))) && (mdVar = (md) mapH.get(field2.getName())) != null) {
                        mdVar.c = e(mdVar.c, field2.getDeclaredAnnotations());
                    }
                }
            }
        }
        return mapH;
    }
}
