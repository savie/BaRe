package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rx2 implements Serializable {
    public final Object a;
    public final Object b;

    public rx2(Class cls, z77[] z77VarArr) {
        this.a = cls;
        this.b = z77VarArr;
    }

    public static rx2 a(s65 s65Var, hd hdVar) {
        as5 as5VarD = s65Var.d();
        boolean zH = s65Var.h(lx2.WRITE_ENUMS_TO_LOWERCASE);
        Class cls = hdVar.N;
        Annotation[] annotationArr = u81.a;
        Enum[] enumArr = (Enum[]) (cls.getSuperclass() != Enum.class ? cls.getSuperclass() : cls).getEnumConstants();
        if (enumArr == null) {
            c6.f("No enum constants for class ".concat(cls.getName()));
            return null;
        }
        String[] strArrF = as5VarD.f(hdVar, enumArr, new String[enumArr.length]);
        z77[] z77VarArr = new z77[enumArr.length];
        int length = enumArr.length;
        for (int i = 0; i < length; i++) {
            Enum r5 = enumArr[i];
            String lowerCase = strArrF[i];
            String strName = r5.name();
            if (lowerCase == null) {
                lowerCase = zH ? strName.toLowerCase() : strName;
            }
            z77VarArr[r5.ordinal()] = new z77(lowerCase);
        }
        return new rx2(cls, z77VarArr);
    }

    public boolean b(Object obj) {
        Set set = (Set) this.b;
        return !(set == null || set.contains(obj)) || ((Set) this.a).contains(obj);
    }

    public rx2(Set set, Set set2) {
        this.a = set == null ? Collections.EMPTY_SET : set;
        this.b = set2;
    }
}
