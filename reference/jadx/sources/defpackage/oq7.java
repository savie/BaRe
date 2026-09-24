package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class oq7 extends wx3 {
    public static String K(String str) {
        return h77.z0(new q98(new vq7(str), new w20("    ", 22)), "\n");
    }

    public static String L(String str) {
        int length;
        List listM0 = nq7.m0(str);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listM0) {
            if (!nq7.j0((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            length = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length2 = str2.length();
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (!ly8.C(str2.charAt(length))) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = str2.length();
            }
            arrayList2.add(Integer.valueOf(length));
        }
        Integer num = (Integer) el1.d1(arrayList2);
        int iIntValue = num != null ? num.intValue() : 0;
        int length3 = str.length();
        listM0.size();
        int size = listM0.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : listM0) {
            int i = length + 1;
            String strSubstring = null;
            if (length < 0) {
                fl1.F0();
                throw null;
            }
            String str3 = (String) obj2;
            if ((length != 0 && length != size) || !nq7.j0(str3)) {
                str3.getClass();
                if (iIntValue < 0) {
                    f6.g(xs1.h(iIntValue, "Requested character count ", " is less than zero."));
                    return null;
                }
                int length4 = str3.length();
                if (iIntValue <= length4) {
                    length4 = iIntValue;
                }
                strSubstring = str3.substring(length4);
            }
            if (strSubstring != null) {
                arrayList3.add(strSubstring);
            }
            length = i;
        }
        StringBuilder sb = new StringBuilder(length3);
        el1.W0(arrayList3, sb, "\n", "", "", "...", null);
        return sb.toString();
    }

    public static String M(String str) {
        if (nq7.j0("|")) {
            c6.f("marginPrefix must be non-blank string.");
            return null;
        }
        List listM0 = nq7.m0(str);
        int length = str.length();
        listM0.size();
        int size = listM0.size() - 1;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : listM0) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            String str2 = (String) obj;
            if ((i == 0 || i == size) && nq7.j0(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!ly8.C(str2.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                String strSubstring = (i3 != -1 && uq7.U(i3, str2, "|", false)) ? str2.substring("|".length() + i3) : null;
                if (strSubstring != null) {
                    str2 = strSubstring;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        el1.W0(arrayList, sb, "\n", "", "", "...", null);
        return sb.toString();
    }
}
