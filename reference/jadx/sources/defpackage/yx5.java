package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yx5 {
    public static List a(ux5 ux5Var, String str) {
        ux5Var.getClass();
        List entries = ux5.getEntries();
        ArrayList arrayList = new ArrayList();
        z3 z3Var = (z3) entries;
        z3Var.getClass();
        w3 w3Var = new w3(z3Var);
        while (w3Var.hasNext()) {
            Object next = w3Var.next();
            if (((ux5) next) != ux5.USER_PASSWORD || (str != null && !nq7.j0(str))) {
                arrayList.add(next);
            }
        }
        return el1.n1(arrayList, new ty2(ux5Var, 1));
    }

    public static ArrayList b() {
        List listA = a(j(), k());
        ArrayList arrayList = new ArrayList(hl1.G0(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(g((ux5) it.next()));
        }
        char[] cArrM = m();
        List listI = i();
        ArrayList arrayList2 = new ArrayList(hl1.G0(listI, 10));
        Iterator it2 = listI.iterator();
        while (it2.hasNext()) {
            arrayList2.add(e((String) it2.next(), cArrM));
        }
        ArrayList arrayListG1 = el1.g1(el1.g1(arrayList, arrayList2), nc8.I(d()));
        HashSet hashSet = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayListG1) {
            if (hashSet.add(new String((char[]) obj))) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    public static ArrayList c() {
        List listA = a(j(), k());
        ArrayList arrayList = new ArrayList(hl1.G0(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(h((ux5) it.next()));
        }
        char[] cArrM = m();
        List listI = i();
        ArrayList arrayList2 = new ArrayList(hl1.G0(listI, 10));
        Iterator it2 = listI.iterator();
        while (it2.hasNext()) {
            arrayList2.add(e((String) it2.next(), cArrM));
        }
        ArrayList arrayListG1 = el1.g1(el1.g1(arrayList, arrayList2), nc8.I(d()));
        HashSet hashSet = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayListG1) {
            if (hashSet.add(new String((char[]) obj))) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    public static char[] d() {
        d45 d45Var = d45.b;
        char[] charArray = sz8.E(nq7.u0(b45.a().getUid()).toString()).toCharArray();
        charArray.getClass();
        return charArray;
    }

    public static char[] e(String str, char[] cArr) {
        if (str == null || str.length() == 0 || nq7.j0(str)) {
            Log.e("PSH", "Password strategy has invalid user password='" + str + "'");
            return cArr;
        }
        char[] charArray = (new String(cArr) + ((str.length() == 0 || nq7.j0(str)) ? null : sz8.E(str))).toCharArray();
        charArray.getClass();
        return charArray;
    }

    public static char[] f(ux5 ux5Var, String str, int i) {
        ux5Var.getClass();
        str.getClass();
        char[] cArrL = l(i, str);
        int i2 = xx5.a[ux5Var.ordinal()];
        if (i2 == 1) {
            return cArrL;
        }
        if (i2 == 2) {
            return e(k(), cArrL);
        }
        q.j();
        return null;
    }

    public static char[] g(ux5 ux5Var) {
        ux5Var.getClass();
        char[] cArrM = m();
        int i = xx5.a[ux5Var.ordinal()];
        if (i == 1) {
            return cArrM;
        }
        if (i == 2) {
            return e(k(), cArrM);
        }
        q.j();
        return null;
    }

    public static char[] h(ux5 ux5Var) {
        ux5Var.getClass();
        char[] cArrM = m();
        int i = xx5.a[ux5Var.ordinal()];
        if (i == 1) {
            return cArrM;
        }
        if (i == 2) {
            return e(k(), cArrM);
        }
        q.j();
        return null;
    }

    public static List i() {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        String string = V.INSTANCE.getZ().getString("saved_old_user_passwords", null);
        if (string == null || string.length() <= 0 || nq7.j0(string)) {
            string = null;
        }
        if (string != null) {
            List listX0 = nq7.x0(string, new String[]{","}, 6);
            ArrayList arrayList3 = new ArrayList(hl1.G0(listX0, 10));
            Iterator it = listX0.iterator();
            while (it.hasNext()) {
                arrayList3.add(nq7.H0((String) it.next()).toString());
            }
            arrayList = new ArrayList();
            for (Object obj : arrayList3) {
                String str = (String) obj;
                if (str.length() > 0 && !nq7.j0(str)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        List list = ov2.a;
        List list2 = arrayList;
        if (arrayList == null) {
            list2 = list;
        }
        Set<String> stringSet = V.INSTANCE.getZ().getStringSet("saved_old_user_passwords_set", null);
        if (stringSet != null) {
            ArrayList arrayList4 = new ArrayList();
            for (String str2 : stringSet) {
                String string2 = str2 != null ? nq7.H0(str2).toString() : null;
                if (string2 != null) {
                    arrayList4.add(string2);
                }
            }
            arrayList2 = new ArrayList();
            for (Object obj2 : arrayList4) {
                String str3 = (String) obj2;
                if (str3.length() > 0 && !nq7.j0(str3)) {
                    arrayList2.add(obj2);
                }
            }
        }
        if (arrayList2 != null) {
            list = arrayList2;
        }
        return eq3.p(el1.g1(list2, list));
    }

    public static ux5 j() {
        ux5 ux5Var;
        try {
            ux5Var = (ux5) ((kx2) ux5.getEntries()).get(V.INSTANCE.getZ().getInt("saved_password_mode", ux5.STANDARD_PASSWORD.ordinal()));
        } catch (Exception unused) {
            ux5Var = null;
        }
        return ux5Var == null ? ux5.STANDARD_PASSWORD : ux5Var;
    }

    public static String k() {
        String string = V.INSTANCE.getZ().getString("saved_user_password", null);
        if (string == null || string.length() <= 0 || nq7.j0(string)) {
            return null;
        }
        return string;
    }

    public static char[] l(int i, String str) {
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        return od2.i(Integer.valueOf(i), mFirebaseUserA.getUid(), str);
    }

    public static char[] m() {
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        char[] charArray = sz8.E(nq7.u0(mFirebaseUserA.getUid()).toString()).toCharArray();
        charArray.getClass();
        return charArray;
    }

    public static void n(String str) {
        if (str == null || str.length() <= 0 || nq7.j0(str)) {
            str = null;
        }
        V.INSTANCE.getZ().edit().putString("saved_user_password", str).apply();
    }
}
