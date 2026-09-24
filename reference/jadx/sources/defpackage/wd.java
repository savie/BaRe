package defpackage;

import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wd extends cy0 {
    public final HashMap j;

    public wd(Class cls, Annotation annotation, Class cls2, Annotation annotation2) {
        HashMap map = new HashMap();
        this.j = map;
        map.put(cls, annotation);
        map.put(cls2, annotation2);
    }

    @Override // defpackage.cy0
    public final cy0 b(Annotation annotation) {
        this.j.put(annotation.annotationType(), annotation);
        return this;
    }

    @Override // defpackage.cy0
    public final s79 c() {
        s79 s79Var = new s79(1);
        for (Annotation annotation : this.j.values()) {
            if (((HashMap) s79Var.b) == null) {
                s79Var.b = new HashMap();
            }
            Annotation annotation2 = (Annotation) ((HashMap) s79Var.b).put(annotation.annotationType(), annotation);
            if (annotation2 != null) {
                annotation2.equals(annotation);
            }
        }
        return s79Var;
    }

    @Override // defpackage.cy0
    public final ee d() {
        HashMap map = this.j;
        if (map.size() != 2) {
            return new s79(map, 1);
        }
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        Map.Entry entry2 = (Map.Entry) it.next();
        return new ae((Class) entry.getKey(), (Annotation) entry.getValue(), (Class) entry2.getKey(), (Annotation) entry2.getValue());
    }

    @Override // defpackage.cy0
    public final boolean y(Annotation annotation) {
        return this.j.containsKey(annotation.annotationType());
    }
}
