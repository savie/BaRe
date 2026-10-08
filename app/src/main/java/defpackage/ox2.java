package defpackage;

import java.lang.annotation.Annotation;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ox2 extends h58 implements iv1 {
    public final rx2 d;
    public final Boolean e;
    public final rx2 f;

    public ox2(rx2 rx2Var, Boolean bool, rx2 rx2Var2) {
        super((Class) rx2Var.a);
        this.d = rx2Var;
        this.e = bool;
        this.f = rx2Var2;
    }

    public static Boolean p(Class cls, bk4 bk4Var, boolean z, Boolean bool) {
        ak4 ak4Var = bk4Var.b;
        if (ak4Var == null || ak4Var == ak4.p || ak4Var == ak4.f) {
            return bool;
        }
        if (ak4Var == ak4.e || ak4Var == ak4.q) {
            return Boolean.FALSE;
        }
        if (ak4Var.a() || ak4Var == ak4.k) {
            return Boolean.TRUE;
        }
        String name = cls.getName();
        String str = z ? "class" : "property";
        StringBuilder sb = new StringBuilder("Unsupported serialization shape (");
        sb.append(ak4Var);
        sb.append(") for Enum ");
        sb.append(name);
        sb.append(", not supported as ");
        throw new IllegalArgumentException(dj7.n(sb, str, " annotation"));
    }

    public static ox2 q(Class cls, v77 v77Var, wo0 wo0Var, bk4 bk4Var) {
        hd hdVar = wo0Var.e;
        rx2 rx2VarA = rx2.a(v77Var, hdVar);
        r(v77Var, hdVar);
        as5 as5VarD = v77Var.d();
        boolean zH = v77Var.h(lx2.WRITE_ENUMS_TO_LOWERCASE);
        Class cls2 = hdVar.N;
        Annotation[] annotationArr = u81.a;
        Enum[] enumArr = (Enum[]) (cls2.getSuperclass() != Enum.class ? cls2.getSuperclass() : cls2).getEnumConstants();
        if (enumArr == null) {
            c6.f("No enum constants for class ".concat(cls2.getName()));
            return null;
        }
        String[] strArr = new String[enumArr.length];
        as5VarD.f(hdVar, enumArr, strArr);
        z77[] z77VarArr = new z77[enumArr.length];
        for (int i = 0; i < enumArr.length; i++) {
            String string = enumArr[i].toString();
            if (string == null) {
                string = "";
            }
            String str = strArr[i];
            if (str != null) {
                string = str;
            } else if (zH) {
                string = string.toLowerCase();
            }
            z77VarArr[i] = new z77(string);
        }
        return new ox2(rx2VarA, p(cls, bk4Var, true, null), new rx2(cls2, z77VarArr));
    }

    public static void r(v77 v77Var, hd hdVar) {
        Class cls;
        Object objE = v77Var.d().e(hdVar);
        boolean zI = v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS);
        v77Var.b.getClass();
        if (objE == null || (cls = (Class) objE) == nx2.class) {
            return;
        }
        if (!nx2.class.isAssignableFrom(cls)) {
            c6.f(eq3.k("Problem with AnnotationIntrospector returned Class ", u81.e(cls), "; expected `Class<EnumNamingStrategy>`"));
        } else {
            if (u81.f(cls, zI) == null) {
                return;
            }
            e6.d();
        }
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        Class cls = this.a;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, cls);
        if (bk4VarK != null) {
            Boolean bool = this.e;
            Boolean boolP = p(cls, bk4VarK, false, bool);
            if (!Objects.equals(boolP, bool)) {
                return new ox2(this.d, boolP, this.f);
            }
        }
        return this;
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        boolean zL;
        Enum r3 = (Enum) obj;
        Boolean bool = this.e;
        if (bool != null) {
            zL = bool.booleanValue();
        } else {
            zL = c87Var.a.l(x77.WRITE_ENUMS_USING_INDEX);
        }
        if (zL) {
            fk4Var.D(r3.ordinal());
            return;
        }
        if (c87Var.a.l(x77.WRITE_ENUMS_USING_TO_STRING)) {
            fk4Var.Z(((z77[]) this.f.b)[r3.ordinal()]);
        } else {
            fk4Var.Z(((z77[]) this.d.b)[r3.ordinal()]);
        }
    }
}
