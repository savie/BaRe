package defpackage;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class id {
    public final as5 a;
    public final h81 b;
    public final jc8 c;
    public final Class d;
    public final Class e;
    public final boolean f;

    public id(s65 s65Var, Class cls, s65 s65Var2) {
        this.d = cls;
        this.b = s65Var2;
        this.c = jc8.k;
        if (s65Var == null) {
            this.a = null;
            this.e = null;
        } else {
            this.a = s65Var.i(u65.USE_ANNOTATIONS) ? s65Var.d() : null;
            if (s65Var2 != null) {
                ((t65) s65Var2).a(cls);
            }
            this.e = null;
        }
        this.f = (this.a == null || u81.p(cls)) ? false : true;
    }

    public static void d(gc8 gc8Var, ArrayList arrayList, boolean z) {
        int length;
        Class cls = gc8Var.f;
        if (z) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((gc8) arrayList.get(i)).f == cls) {
                    return;
                }
            }
            arrayList.add(gc8Var);
            if (cls == List.class || cls == Map.class) {
                return;
            }
        }
        gc8[] gc8VarArr = gc8Var.t;
        List listAsList = (gc8VarArr == null || (length = gc8VarArr.length) == 0) ? Collections.EMPTY_LIST : length != 1 ? Arrays.asList(gc8VarArr) : Collections.singletonList(gc8VarArr[0]);
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            d((gc8) it.next(), arrayList, true);
        }
    }

    public static void e(gc8 gc8Var, ArrayList arrayList, boolean z) {
        int length;
        Class cls = gc8Var.f;
        if (cls == Object.class || cls == Enum.class) {
            return;
        }
        if (z) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((gc8) arrayList.get(i)).f == cls) {
                    return;
                }
            }
            arrayList.add(gc8Var);
        }
        gc8[] gc8VarArr = gc8Var.t;
        List listAsList = (gc8VarArr == null || (length = gc8VarArr.length) == 0) ? Collections.EMPTY_LIST : length != 1 ? Arrays.asList(gc8VarArr) : Collections.singletonList(gc8VarArr[0]);
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            d((gc8) it.next(), arrayList, true);
        }
        gc8 gc8VarT0 = gc8Var.t0();
        if (gc8VarT0 != null) {
            e(gc8VarT0, arrayList, true);
        }
    }

    public static hd g(s65 s65Var, Class cls) {
        if (cls.isArray()) {
            if (s65Var != null) {
                ((t65) s65Var).c.getClass();
            }
            return new hd(cls);
        }
        id idVar = new id(s65Var, cls, s65Var);
        List list = Collections.EMPTY_LIST;
        return new hd(null, cls, list, idVar.e, idVar.f(list), idVar.c, idVar.a, s65Var, s65Var.b.a, idVar.f);
    }

    public final cy0 a(cy0 cy0Var, Annotation[] annotationArr) {
        if (annotationArr != null) {
            for (Annotation annotation : annotationArr) {
                if (!cy0Var.y(annotation)) {
                    cy0Var = cy0Var.b(annotation);
                    if (this.a.Z(annotation)) {
                        cy0Var = c(cy0Var, annotation);
                    }
                }
            }
        }
        return cy0Var;
    }

    public final cy0 b(cy0 cy0Var, Class cls, Class cls2) {
        if (cls2 != null) {
            cy0Var = a(cy0Var, u81.h(cls2));
            Iterator it = u81.i(cls2, cls, false).iterator();
            while (it.hasNext()) {
                cy0Var = a(cy0Var, u81.h((Class) it.next()));
            }
        }
        return cy0Var;
    }

    public final cy0 c(cy0 cy0Var, Annotation annotation) {
        for (Annotation annotation2 : u81.h(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention) && !cy0Var.y(annotation2)) {
                cy0Var = cy0Var.b(annotation2);
                if (this.a.Z(annotation2)) {
                    cy0Var = c(cy0Var, annotation2);
                }
            }
        }
        return cy0Var;
    }

    public final ee f(List list) {
        boolean z;
        xd xdVar = cy0.a;
        if (this.a != null) {
            h81 h81Var = this.b;
            if (h81Var == null) {
                z = false;
            } else if (h81Var instanceof jg7) {
                z = false;
            } else {
                z = true;
            }
            boolean z2 = this.f;
            if (z || z2) {
                cy0 cy0VarB = vd.j;
                Class cls = this.d;
                Class cls2 = this.e;
                if (cls2 != null) {
                    cy0VarB = b(cy0VarB, cls, cls2);
                }
                if (z2) {
                    cy0VarB = a(cy0VarB, u81.h(cls));
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    gc8 gc8Var = (gc8) it.next();
                    if (z) {
                        Class cls3 = gc8Var.f;
                        cy0VarB = b(cy0VarB, cls3, h81Var.a(cls3));
                    }
                    if (z2) {
                        cy0VarB = a(cy0VarB, u81.h(gc8Var.f));
                    }
                }
                if (z) {
                    cy0VarB = b(cy0VarB, Object.class, h81Var.a(Object.class));
                }
                return cy0VarB.d();
            }
        }
        return xdVar;
    }

    public id(s65 s65Var, gc8 gc8Var, s65 s65Var2) {
        Class cls = gc8Var.f;
        this.d = cls;
        this.b = s65Var2;
        this.c = gc8Var.n0();
        as5 as5VarD = s65Var.i(u65.USE_ANNOTATIONS) ? s65Var.d() : null;
        this.a = as5VarD;
        ((t65) s65Var2).a(cls);
        this.e = null;
        this.f = (as5VarD == null || u81.p(cls)) ? false : true;
    }
}
