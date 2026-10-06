package defpackage;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ga5 {
    public static final AtomicInteger a = new AtomicInteger(0);
    public static final fa5 b = new fa5();

    public static List a(String str, List list, List list2, int i) throws UnknownHostException {
        str.getClass();
        list.getClass();
        int i2 = 2;
        if (!list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (l73.d((InetAddress) obj)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayListG1 = el1.g1(el1.n1(list2, new cz3(i2)), el1.n1(arrayList, new cz3(i2)));
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayListG1) {
                if (hashSet.add(((InetAddress) obj2).getHostAddress())) {
                    arrayList2.add(obj2);
                }
            }
            return arrayList2;
        }
        Locale locale = Locale.US;
        String strQ = dj7.q(locale, str, locale);
        if (strQ.equals("mega.co.nz") || uq7.O(strQ, ".mega.co.nz", false)) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : list) {
                if (l73.d((InetAddress) obj3)) {
                    arrayList3.add(obj3);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new UnknownHostException("MEGA host resolved only non-public addresses");
            }
            list = arrayList3;
        }
        List listN1 = el1.n1(list, new cz3(i2));
        if (!str.equalsIgnoreCase("g.api.mega.co.nz") && !str.equalsIgnoreCase("lu.api.mega.co.nz")) {
            return listN1;
        }
        ArrayList arrayList4 = new ArrayList();
        for (Object obj4 : listN1) {
            if (obj4 instanceof Inet4Address) {
                arrayList4.add(obj4);
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (Object obj5 : listN1) {
            if (!(((InetAddress) obj5) instanceof Inet4Address)) {
                arrayList5.add(obj5);
            }
        }
        if (arrayList4.size() > 1) {
            int iFloorMod = Math.floorMod(i, arrayList4.size());
            arrayList4 = el1.g1(el1.N0(iFloorMod, arrayList4), el1.p1(arrayList4, iFloorMod));
        }
        return el1.g1(arrayList4, arrayList5);
    }
}
