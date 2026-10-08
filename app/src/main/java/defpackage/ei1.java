package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ei1 {
    public static final ai6 a = new ai6("%20", 0);
    public static final ai6 b = new ai6("%28", 0);
    public static final ai6 c = new ai6("%29", 0);

    public static ArrayList a(ArrayList arrayList, Set set, qf1 qf1Var) {
        qf1Var.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(b((String) it.next(), qf1Var));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!linkedHashSet.contains(b(((wa1) obj).b, qf1Var))) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static String b(String str, qf1 qf1Var) {
        if (qf1Var == qf1.OPAQUE) {
            return str;
        }
        String strReplace = c.c(b.c(a.c(str, TokenAuthenticationScheme.SCHEME_DELIMITER), "("), ")").replace('\\', '/');
        strReplace.getClass();
        List listW0 = nq7.w0(strReplace, new char[]{'/'}, 6);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW0) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        String strY0 = el1.Y0(arrayList, "/", null, null, null, 62);
        int i = di1.a[qf1Var.ordinal()];
        if (i == 1 || i == 2) {
            return strY0;
        }
        if (i == 3) {
            Locale locale = Locale.ROOT;
            return dj7.q(locale, strY0, locale);
        }
        q.j();
        return null;
    }

    public static mn6 c(ArrayList arrayList, ArrayList arrayList2, Set set, qf1 qf1Var) {
        qf1Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : arrayList2) {
            String strB = b(((wa1) obj).b, qf1Var);
            Object arrayList3 = linkedHashMap.get(strB);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap.put(strB, arrayList3);
            }
            ((List) arrayList3).add(obj);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(b((String) it.next(), qf1Var));
        }
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            wa1 wa1Var = (wa1) it2.next();
            String strB2 = b(wa1Var.b, qf1Var);
            List list = (List) linkedHashMap.get(strB2);
            wa1 wa1Var2 = list != null ? (wa1) el1.l1(list) : null;
            if (wa1Var2 == null || linkedHashSet.contains(strB2) || wa1Var.e != wa1Var2.e || wa1Var.g != wa1Var2.g) {
                arrayList5.add(wa1Var);
            } else {
                arrayList4.add(wa1Var2);
            }
        }
        return new mn6(arrayList4, arrayList5);
    }
}
