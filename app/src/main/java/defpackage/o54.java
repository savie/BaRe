package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o54 {
    public static final ai6 a = new ai6("[^\\p{L}\\p{N}]+");

    public static final int a(s54 s54Var) {
        int i = k54.a[s54Var.b.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 3;
        }
        q.j();
        return 0;
    }

    public static String b(String str) {
        String strC = c(str);
        StringBuilder sb = new StringBuilder();
        int length = strC.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = strC.charAt(i);
            if (Character.isLetterOrDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String c(String str) {
        if (str == null) {
            str = "";
        }
        String string = nq7.H0(str).toString();
        Locale locale = Locale.getDefault();
        locale.getClass();
        String lowerCase = string.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }

    public static ArrayList d(String str) {
        List listI;
        String strC = c(str);
        ai6 ai6Var = a;
        ai6Var.getClass();
        strC.getClass();
        int iEnd = 0;
        nq7.t0(0);
        Matcher matcher = ai6Var.a.matcher(strC);
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList(10);
            do {
                arrayList.add(strC.subSequence(iEnd, matcher.start()).toString());
                iEnd = matcher.end();
            } while (matcher.find());
            arrayList.add(strC.subSequence(iEnd, strC.length()).toString());
            listI = arrayList;
        } else {
            listI = nc8.I(strC.toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : listI) {
            if (((String) obj).length() > 0) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static boolean e(ArrayList arrayList, ArrayList arrayList2) {
        if (!arrayList2.isEmpty()) {
            if (arrayList2.isEmpty()) {
                return true;
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!arrayList.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (uq7.V((String) it2.next(), str, false)) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }
}
