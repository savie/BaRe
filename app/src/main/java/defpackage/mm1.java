package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mm1 {
    public static void a(q63 q63Var, String str, ArrayList arrayList) {
        arrayList.add(new km1(q63Var, q63Var.x() ? eq3.j(nq7.K0(str, '/'), "/") : nq7.K0(str, '/')));
        if (q63Var.x()) {
            Iterable<q63> iterableB = q63Var.B();
            if (iterableB == null) {
                iterableB = ov2.a;
            }
            for (q63 q63Var2 : iterableB) {
                a(q63Var2, nq7.K0(str, '/') + "/" + d(q63Var2.p()), arrayList);
            }
        }
    }

    public static ArrayList b(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                q63 q63Var = (q63) it.next();
                if (!q63Var.y() && !q63Var.x()) {
                    c6.f("CommonsSevenZipPacker: All items must exist as files or directories");
                    return null;
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj : arrayList) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            q63 q63Var2 = (q63) obj;
            a(q63Var2, d(q63Var2.p()), arrayList2);
            i = i2;
        }
        return arrayList2;
    }

    public static final void c(kh6 kh6Var, long j, kh6 kh6Var2, kh6 kh6Var3, boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = jCurrentTimeMillis - kh6Var.a;
        long j3 = kh6Var2.a;
        boolean z2 = j == j3;
        if (z || j2 >= 2000 || z2) {
            if (j2 > 0 && !z2) {
                tu0.w(((j3 - kh6Var3.a) * 1000.0d) / j2);
            }
            kh6Var.a = jCurrentTimeMillis;
            kh6Var3.a = kh6Var2.a;
        }
    }

    public static String d(String str) {
        String strReplace = str.replace('\\', '/');
        strReplace.getClass();
        List listW0 = nq7.w0(nq7.I0(strReplace, '/'), new char[]{'/'}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW0) {
            String str2 = (String) obj;
            if (str2.length() > 0 && !str2.equals(".")) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            c6.f("CommonsSevenZipPacker: Empty archive entry name");
            return null;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (pe4.d((String) it.next(), "..")) {
                    f6.g("CommonsSevenZipPacker: Unsafe archive entry name: ".concat(str));
                    return null;
                }
            }
        }
        return el1.Y0(arrayList, "/", null, null, null, 62);
    }

    public static List e(xp1 xp1Var) throws hf8 {
        int i;
        if (xp1Var == xp1.NO_COMPRESSION) {
            return nc8.I(new gb7(fb7.COPY, null));
        }
        switch (lm1.a[xp1Var.ordinal()]) {
            case 1:
                i = 0;
                break;
            case 2:
                i = 1;
                break;
            case 3:
                i = 3;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 7;
                break;
            case 6:
                i = 9;
                break;
            default:
                q.j();
                return null;
        }
        eq4 eq4Var = new eq4();
        eq4Var.d(i);
        return nc8.I(new gb7(fb7.LZMA2, eq4Var));
    }
}
