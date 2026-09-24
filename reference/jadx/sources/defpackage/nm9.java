package defpackage;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class nm9 {
    public static final ns0 a;

    static {
        int i = pg9.a;
        a = new ns0(24);
    }

    public static void a(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                nh9Var.e(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        nh9Var.k(i3);
        while (i2 < list.size()) {
            nh9Var.f(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void b(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!(list instanceof yi9)) {
            if (!z) {
                while (i2 < list.size()) {
                    int iIntValue = ((Integer) list.get(i2)).intValue();
                    nh9Var.j(i, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i2++;
                }
                return;
            }
            nh9Var.i(i, 2);
            int iN = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                int iIntValue2 = ((Integer) list.get(i3)).intValue();
                iN += nh9.n((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            nh9Var.k(iN);
            while (i2 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i2)).intValue();
                nh9Var.k((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i2++;
            }
            return;
        }
        yi9 yi9Var = (yi9) list;
        if (!z) {
            while (i2 < yi9Var.c) {
                int iD = yi9Var.d(i2);
                nh9Var.j(i, (iD >> 31) ^ (iD + iD));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iN2 = 0;
        for (int i4 = 0; i4 < yi9Var.c; i4++) {
            int iD2 = yi9Var.d(i4);
            iN2 += nh9.n((iD2 >> 31) ^ (iD2 + iD2));
        }
        nh9Var.k(iN2);
        while (i2 < yi9Var.c) {
            int iD3 = yi9Var.d(i2);
            nh9Var.k((iD3 >> 31) ^ (iD3 + iD3));
            i2++;
        }
    }

    public static void c(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                long jLongValue = ((Long) list.get(i2)).longValue();
                nh9Var.l(i, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iO = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            long jLongValue2 = ((Long) list.get(i3)).longValue();
            iO += nh9.o((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
        }
        nh9Var.k(iO);
        while (i2 < list.size()) {
            long jLongValue3 = ((Long) list.get(i2)).longValue();
            nh9Var.m((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
            i2++;
        }
    }

    public static void d(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!(list instanceof yi9)) {
            if (!z) {
                while (i2 < list.size()) {
                    nh9Var.j(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            nh9Var.i(i, 2);
            int iN = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iN += nh9.n(((Integer) list.get(i3)).intValue());
            }
            nh9Var.k(iN);
            while (i2 < list.size()) {
                nh9Var.k(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        yi9 yi9Var = (yi9) list;
        if (!z) {
            while (i2 < yi9Var.c) {
                nh9Var.j(i, yi9Var.d(i2));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iN2 = 0;
        for (int i4 = 0; i4 < yi9Var.c; i4++) {
            iN2 += nh9.n(yi9Var.d(i4));
        }
        nh9Var.k(iN2);
        while (i2 < yi9Var.c) {
            nh9Var.k(yi9Var.d(i2));
            i2++;
        }
    }

    public static void e(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                nh9Var.l(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iO = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iO += nh9.o(((Long) list.get(i3)).longValue());
        }
        nh9Var.k(iO);
        while (i2 < list.size()) {
            nh9Var.m(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static boolean f(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int g(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof yi9)) {
            int iO = 0;
            while (i < size) {
                iO += nh9.o(((Integer) list.get(i)).intValue());
                i++;
            }
            return iO;
        }
        yi9 yi9Var = (yi9) list;
        int iO2 = 0;
        while (i < size) {
            iO2 += nh9.o(yi9Var.d(i));
            i++;
        }
        return iO2;
    }

    public static int h(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (nh9.n(i << 3) + 4) * size;
    }

    public static int i(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (nh9.n(i << 3) + 8) * size;
    }

    public static int j(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof yi9)) {
            int iO = 0;
            while (i < size) {
                iO += nh9.o(((Integer) list.get(i)).intValue());
                i++;
            }
            return iO;
        }
        yi9 yi9Var = (yi9) list;
        int iO2 = 0;
        while (i < size) {
            iO2 += nh9.o(yi9Var.d(i));
            i++;
        }
        return iO2;
    }

    public static int k(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iO = 0;
        for (int i = 0; i < size; i++) {
            iO += nh9.o(((Long) list.get(i)).longValue());
        }
        return iO;
    }

    public static int l(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof yi9)) {
            int iN = 0;
            while (i < size) {
                int iIntValue = ((Integer) list.get(i)).intValue();
                iN += nh9.n((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i++;
            }
            return iN;
        }
        yi9 yi9Var = (yi9) list;
        int iN2 = 0;
        while (i < size) {
            int iD = yi9Var.d(i);
            iN2 += nh9.n((iD >> 31) ^ (iD + iD));
            i++;
        }
        return iN2;
    }

    public static int m(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iO = 0;
        for (int i = 0; i < size; i++) {
            long jLongValue = ((Long) list.get(i)).longValue();
            iO += nh9.o((jLongValue >> 63) ^ (jLongValue + jLongValue));
        }
        return iO;
    }

    public static int n(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof yi9)) {
            int iN = 0;
            while (i < size) {
                iN += nh9.n(((Integer) list.get(i)).intValue());
                i++;
            }
            return iN;
        }
        yi9 yi9Var = (yi9) list;
        int iN2 = 0;
        while (i < size) {
            iN2 += nh9.n(yi9Var.d(i));
            i++;
        }
        return iN2;
    }

    public static int o(List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int iO = 0;
        for (int i = 0; i < size; i++) {
            iO += nh9.o(((Long) list.get(i)).longValue());
        }
        return iO;
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
    public static void p(Object obj, Object obj2) {
        xi9 xi9Var = (xi9) obj;
        mn9 mn9Var = xi9Var.zzc;
        mn9 mn9Var2 = ((xi9) obj2).zzc;
        mn9 mn9Var3 = mn9.f;
        if (!mn9Var3.equals(mn9Var2)) {
            if (mn9Var3.equals(mn9Var)) {
                int i = mn9Var.a + mn9Var2.a;
                int[] iArrCopyOf = Arrays.copyOf(mn9Var.b, i);
                System.arraycopy(mn9Var2.b, 0, iArrCopyOf, mn9Var.a, mn9Var2.a);
                Object[] objArrCopyOf = Arrays.copyOf(mn9Var.c, i);
                System.arraycopy(mn9Var2.c, 0, objArrCopyOf, mn9Var.a, mn9Var2.a);
                mn9Var = new mn9(i, iArrCopyOf, objArrCopyOf, true);
            } else {
                mn9Var.getClass();
                if (!mn9Var2.equals(mn9Var3)) {
                    if (!mn9Var.e) {
                        x5.e();
                        return;
                    }
                    int i2 = mn9Var.a + mn9Var2.a;
                    mn9Var.e(i2);
                    System.arraycopy(mn9Var2.b, 0, mn9Var.b, mn9Var.a, mn9Var2.a);
                    System.arraycopy(mn9Var2.c, 0, mn9Var.c, mn9Var.a, mn9Var2.a);
                    mn9Var.a = i2;
                }
            }
        }
        xi9Var.zzc = mn9Var;
    }

    public static void q(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                boolean zBooleanValue = ((Boolean) list.get(i2)).booleanValue();
                nh9Var.k(i << 3);
                nh9Var.a(zBooleanValue ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).getClass();
            i3++;
        }
        nh9Var.k(i3);
        while (i2 < list.size()) {
            nh9Var.a(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
            i2++;
        }
    }

    public static void r(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                nh9Var.e(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).getClass();
            i3 += 8;
        }
        nh9Var.k(i3);
        while (i2 < list.size()) {
            nh9Var.f(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    public static void s(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!(list instanceof yi9)) {
            if (!z) {
                while (i2 < list.size()) {
                    nh9Var.g(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            nh9Var.i(i, 2);
            int iO = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iO += nh9.o(((Integer) list.get(i3)).intValue());
            }
            nh9Var.k(iO);
            while (i2 < list.size()) {
                nh9Var.h(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        yi9 yi9Var = (yi9) list;
        if (!z) {
            while (i2 < yi9Var.c) {
                nh9Var.g(i, yi9Var.d(i2));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iO2 = 0;
        for (int i4 = 0; i4 < yi9Var.c; i4++) {
            iO2 += nh9.o(yi9Var.d(i4));
        }
        nh9Var.k(iO2);
        while (i2 < yi9Var.c) {
            nh9Var.h(yi9Var.d(i2));
            i2++;
        }
    }

    public static void t(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!(list instanceof yi9)) {
            if (!z) {
                while (i2 < list.size()) {
                    nh9Var.c(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            nh9Var.i(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            nh9Var.k(i3);
            while (i2 < list.size()) {
                nh9Var.d(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        yi9 yi9Var = (yi9) list;
        if (!z) {
            while (i2 < yi9Var.c) {
                nh9Var.c(i, yi9Var.d(i2));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < yi9Var.c; i6++) {
            yi9Var.d(i6);
            i5 += 4;
        }
        nh9Var.k(i5);
        while (i2 < yi9Var.c) {
            nh9Var.d(yi9Var.d(i2));
            i2++;
        }
    }

    public static void u(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                nh9Var.e(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).getClass();
            i3 += 8;
        }
        nh9Var.k(i3);
        while (i2 < list.size()) {
            nh9Var.f(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void v(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                nh9Var.c(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).getClass();
            i3 += 4;
        }
        nh9Var.k(i3);
        while (i2 < list.size()) {
            nh9Var.d(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public static void w(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!(list instanceof yi9)) {
            if (!z) {
                while (i2 < list.size()) {
                    nh9Var.g(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            nh9Var.i(i, 2);
            int iO = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                iO += nh9.o(((Integer) list.get(i3)).intValue());
            }
            nh9Var.k(iO);
            while (i2 < list.size()) {
                nh9Var.h(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        yi9 yi9Var = (yi9) list;
        if (!z) {
            while (i2 < yi9Var.c) {
                nh9Var.g(i, yi9Var.d(i2));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iO2 = 0;
        for (int i4 = 0; i4 < yi9Var.c; i4++) {
            iO2 += nh9.o(yi9Var.d(i4));
        }
        nh9Var.k(iO2);
        while (i2 < yi9Var.c) {
            nh9Var.h(yi9Var.d(i2));
            i2++;
        }
    }

    public static void x(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                nh9Var.l(i, ((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int iO = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            iO += nh9.o(((Long) list.get(i3)).longValue());
        }
        nh9Var.k(iO);
        while (i2 < list.size()) {
            nh9Var.m(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void y(int i, List list, om5 om5Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        nh9 nh9Var = (nh9) om5Var.a;
        int i2 = 0;
        if (!(list instanceof yi9)) {
            if (!z) {
                while (i2 < list.size()) {
                    nh9Var.c(i, ((Integer) list.get(i2)).intValue());
                    i2++;
                }
                return;
            }
            nh9Var.i(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            nh9Var.k(i3);
            while (i2 < list.size()) {
                nh9Var.d(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        yi9 yi9Var = (yi9) list;
        if (!z) {
            while (i2 < yi9Var.c) {
                nh9Var.c(i, yi9Var.d(i2));
                i2++;
            }
            return;
        }
        nh9Var.i(i, 2);
        int i5 = 0;
        for (int i6 = 0; i6 < yi9Var.c; i6++) {
            yi9Var.d(i6);
            i5 += 4;
        }
        nh9Var.k(i5);
        while (i2 < yi9Var.c) {
            nh9Var.d(yi9Var.d(i2));
            i2++;
        }
    }
}
