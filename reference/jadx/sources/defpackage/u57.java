package defpackage;

import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class u57 {
    public static final Class a;
    public static final ke8 b;
    public static final ke8 c;

    static {
        Class<?> cls;
        Class<?> cls2;
        s96 s96Var = s96.c;
        ke8 ke8Var = null;
        try {
            cls = Class.forName("androidx.datastore.preferences.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        a = cls;
        try {
            s96 s96Var2 = s96.c;
            try {
                cls2 = Class.forName("androidx.datastore.preferences.protobuf.UnknownFieldSetSchema");
            } catch (Throwable unused2) {
                cls2 = null;
            }
            if (cls2 != null) {
                ke8Var = (ke8) cls2.getConstructor(null).newInstance(null);
            }
        } catch (Throwable unused3) {
        }
        b = ke8Var;
        c = new ke8();
    }

    public static int a(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += jk1.j(((Integer) list.get(i)).intValue());
        }
        return iJ;
    }

    public static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (jk1.h(i) + 4) * size;
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (jk1.h(i) + 8) * size;
    }

    public static int d(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += jk1.j(((Integer) list.get(i)).intValue());
        }
        return iJ;
    }

    public static int e(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += jk1.j(((Long) list.get(i)).longValue());
        }
        return iJ;
    }

    public static int f(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int iIntValue = ((Integer) list.get(i2)).intValue();
            i += jk1.i((iIntValue >> 31) ^ (iIntValue << 1));
        }
        return i;
    }

    public static int g(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            long jLongValue = ((Long) list.get(i)).longValue();
            iJ += jk1.j((jLongValue >> 63) ^ (jLongValue << 1));
        }
        return iJ;
    }

    public static int h(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += jk1.i(((Integer) list.get(i2)).intValue());
        }
        return i;
    }

    public static int i(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iJ = 0;
        for (int i = 0; i < size; i++) {
            iJ += jk1.j(((Long) list.get(i)).longValue());
        }
        return iJ;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static void k(ke8 ke8Var, Object obj, Object obj2) {
        ke8Var.getClass();
        av3 av3Var = (av3) obj;
        je8 je8Var = av3Var.unknownFields;
        je8 je8Var2 = ((av3) obj2).unknownFields;
        je8 je8Var3 = je8.f;
        if (!je8Var3.equals(je8Var2)) {
            if (je8Var3.equals(je8Var)) {
                int i = je8Var.a + je8Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(je8Var.b, i);
                System.arraycopy(je8Var2.b, 0, iArrCopyOf, je8Var.a, je8Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(je8Var.c, i);
                System.arraycopy(je8Var2.c, 0, objArrCopyOf, je8Var.a, je8Var2.a);
                je8Var = new je8(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                je8Var.getClass();
                if (!je8Var2.equals(je8Var3)) {
                    if (!je8Var.e) {
                        x5.e();
                        return;
                    }
                    int i2 = je8Var.a + je8Var2.a;
                    je8Var.a(i2);
                    System.arraycopy(je8Var2.b, 0, je8Var.b, je8Var.a, je8Var2.a);
                    System.arraycopy(je8Var2.c, 0, je8Var.c, je8Var.a, je8Var2.a);
                    je8Var.a = i2;
                }
            }
        }
        av3Var.unknownFields = je8Var;
    }

    public static boolean l(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void m(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.o(i, ((Boolean) list.get(i2)).booleanValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3++;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.m(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void n(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                double dDoubleValue = ((Double) list.get(i2)).doubleValue();
                jk1Var.getClass();
                jk1Var.t(i, Double.doubleToRawLongBits(dDoubleValue));
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3 += 8;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.u(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void o(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.v(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += jk1.j(((Integer) list.get(i3)).intValue());
        }
        jk1Var.D(iJ);
        while (i2 < list.size()) {
            jk1Var.w(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void p(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.r(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3 += 4;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.s(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void q(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3 += 8;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void r(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                float fFloatValue = ((Float) list.get(i2)).floatValue();
                jk1Var.getClass();
                jk1Var.r(i, Float.floatToRawIntBits(fFloatValue));
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3 += 4;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.s(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void s(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.v(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += jk1.j(((Integer) list.get(i3)).intValue());
        }
        jk1Var.D(iJ);
        while (i2 < list.size()) {
            jk1Var.w(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void t(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.E(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += jk1.j(((Long) list.get(i3)).longValue());
        }
        jk1Var.D(iJ);
        while (i2 < list.size()) {
            jk1Var.F(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void u(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.r(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3 += 4;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.s(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void v(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.t(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            Logger logger = jk1.f;
            i3 += 8;
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.u(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void w(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                int iIntValue = ((Integer) list.get(i2)).intValue();
                jk1Var.C(i, (iIntValue >> 31) ^ (iIntValue << 1));
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int iIntValue2 = ((Integer) list.get(i4)).intValue();
            i3 += jk1.i((iIntValue2 >> 31) ^ (iIntValue2 << 1));
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            int iIntValue3 = ((Integer) list.get(i2)).intValue();
            jk1Var.D((iIntValue3 >> 31) ^ (iIntValue3 << 1));
            i2++;
        }
    }

    public static void x(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long jLongValue = ((Long) list.get(i2)).longValue();
                jk1Var.E(i, (jLongValue >> 63) ^ (jLongValue << 1));
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            long jLongValue2 = ((Long) list.get(i3)).longValue();
            iJ += jk1.j((jLongValue2 >> 63) ^ (jLongValue2 << 1));
        }
        jk1Var.D(iJ);
        while (i2 < list.size()) {
            long jLongValue3 = ((Long) list.get(i2)).longValue();
            jk1Var.F((jLongValue3 >> 63) ^ (jLongValue3 << 1));
            i2++;
        }
    }

    public static void y(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.C(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += jk1.i(((Integer) list.get(i4)).intValue());
        }
        jk1Var.D(i3);
        while (i2 < list.size()) {
            jk1Var.D(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void z(int i, List list, fu fuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        jk1 jk1Var = (jk1) fuVar.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                jk1Var.E(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        jk1Var.B(i, 2);
        int iJ = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iJ += jk1.j(((Long) list.get(i3)).longValue());
        }
        jk1Var.D(iJ);
        while (i2 < list.size()) {
            jk1Var.F(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static Object j(Object obj, int i, xd4 xd4Var, Object obj2, ke8 ke8Var) {
        return obj2;
    }
}
