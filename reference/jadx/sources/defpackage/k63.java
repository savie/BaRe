package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k63 extends bu1 {
    public final be a;
    public final cu1 b;

    public k63(ri2 ri2Var, x44 x44Var) {
        bu1 bu1VarA;
        this.a = new be(ri2Var, x44Var);
        cu1 cu1Var = new cu1();
        this.b = cu1Var;
        eg2 eg2VarD = ri2Var.d();
        eg2 eg2VarI = ri2Var.i();
        Class clsJ = ri2Var.j();
        if (clsJ != null && (bu1VarA = x44Var.a(clsJ, eg2VarD)) != null) {
            addAll(bu1VarA);
        }
        List<i63> listH = ri2Var.h();
        if (eg2VarI == eg2.a) {
            for (i63 i63Var : listH) {
                Annotation[] annotationArr = i63Var.a;
                Field field = i63Var.b;
                Class<?> type = field.getType();
                if (!Modifier.isStatic(field.getModifiers()) && !Modifier.isTransient(field.getModifiers())) {
                    Type genericType = field.getGenericType();
                    ParameterizedType parameterizedType = genericType instanceof ParameterizedType ? (ParameterizedType) genericType : null;
                    Annotation annotationB = this.a.b(type, parameterizedType != null ? z85.l(parameterizedType) : new Class[0]);
                    if (annotationB != null) {
                        c(field, annotationB, annotationArr);
                    }
                }
            }
        }
        for (i63 i63Var2 : ri2Var.h()) {
            Annotation[] annotationArr2 = i63Var2.a;
            Field field2 = i63Var2.b;
            for (Annotation annotation : annotationArr2) {
                if (annotation instanceof u70) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof ut2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof jt2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof pt2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof gt2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof ct2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof mt2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof at2) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof vj8) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof q08) {
                    c(field2, annotation, annotationArr2);
                }
                if (annotation instanceof r98) {
                    cu1Var.remove(new j63(field2));
                }
            }
        }
        Iterator it = cu1Var.iterator();
        while (it.hasNext()) {
            add((au1) it.next());
        }
    }

    public final void c(Field field, Annotation annotation, Annotation[] annotationArr) {
        g63 g63Var = new g63(field, annotation, annotationArr);
        j63 j63Var = new j63(field);
        if (!field.isAccessible()) {
            field.setAccessible(true);
        }
        cu1 cu1Var = this.b;
        au1 au1Var = (au1) cu1Var.remove(j63Var);
        au1 au1Var2 = g63Var;
        if (au1Var != null && (g63Var.c instanceof q08)) {
            au1Var2 = g63Var;
            au1Var2 = au1Var;
        }
        au1Var2 = g63Var;
        cu1Var.put(j63Var, au1Var2);
    }
}
