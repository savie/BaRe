package defpackage;

import android.os.Looper;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fk {
    public static String a(String str) {
        str.getClass();
        try {
            String strA0 = nq7.A0(str, "-", "");
            if (strA0.length() == 2) {
                return strA0;
            }
            return null;
        } catch (Throwable th) {
            Log.e("AppBackup", "Error when retrieving backupTag: " + th);
            return null;
        }
    }

    public static List b(String str) {
        ArrayList arrayListB;
        str.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        q63 q63VarC = c(str, false);
        if (q63VarC.j() && (arrayListB = q63VarC.B()) != null && !arrayListB.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator it = arrayListB.iterator();
            while (it.hasNext()) {
                hk hkVar = new hk(((q63) it.next()).p(), str, false);
                if (!hkVar.E()) {
                    hkVar = null;
                }
                if (hkVar != null) {
                    arrayList.add(hkVar);
                }
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            if (arrayList != null) {
                return el1.n1(arrayList, new cl7(1));
            }
        }
        return null;
    }

    public static q63 c(String str, boolean z) {
        String str2;
        str.getClass();
        if (z) {
            String str3 = ry5.u;
            str2 = qy5.f(false, null).h;
        } else {
            String str4 = ry5.u;
            str2 = qy5.f(false, null).g;
        }
        return new q63(str2, str, 2);
    }

    public static String d(long j, List list) {
        list.getClass();
        String str = ((SimpleDateFormat) hk.I.getValue()).format(Long.valueOf(j));
        String str2 = null;
        while (true) {
            if ((str2 != null && str2.length() != 0) || el1.M0(list, str2)) {
                break;
            }
            String strK = nh4.k(2, true, false, null, (Random) xe6.b.a.get());
            strK.getClass();
            String upperCase = strK.toUpperCase(Locale.ROOT);
            upperCase.getClass();
            if (upperCase.charAt(0) != upperCase.charAt(1)) {
                str2 = upperCase;
            }
        }
        return dj7.k(str, "-", str2);
    }

    public static Long e(String str) {
        str.getClass();
        try {
            Date date = ((SimpleDateFormat) hk.I.getValue()).parse(nq7.F0(str, "-", str));
            Long lValueOf = date != null ? Long.valueOf(date.getTime()) : null;
            if (lValueOf == null || lValueOf.longValue() <= 0) {
                return null;
            }
            return lValueOf;
        } catch (Throwable th) {
            if (!str.equals("main") && !str.equals("archived")) {
                vr6.e$default(vr6.INSTANCE, "AppBackup", eq3.k("Error when parsing date from id '", str, "'"), th, null, 8, null);
            }
        }
    }
}
