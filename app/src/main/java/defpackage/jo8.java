package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jo8 {
    public final boolean a;

    public jo8(boolean z) {
        this.a = z;
    }

    /* JADX WARN: Code duplicated, block: B:71:0x0175  */
    public static boolean a(jo8 jo8Var, ArrayList arrayList, List list) {
        Boolean boolValueOf;
        boolean z;
        boolean z2;
        ArrayList arrayList2 = new ArrayList();
        if (list == null || list.isEmpty()) {
            arrayList2.addAll(arrayList);
        } else {
            Iterator it = arrayList.iterator();
            int i = 0;
            boolean z3 = false;
            while (it.hasNext()) {
                i++;
                yn8 yn8Var = (yn8) it.next();
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((yn8) it2.next()).c == yn8Var.c) {
                                vr6.i$default(vr6.INSTANCE, "WallUploadHelper", xs1.h(i, "Wallpaper (", ") already backed up on cloud"), null, 4, null);
                                if (jo8Var.a && !z3) {
                                    SwiftApp.Companion companion = SwiftApp.d;
                                    Context contextC = SwiftApp.Companion.c();
                                    String string = contextC.getString(R.string.walls_already_backed_up_in_cloud);
                                    string.getClass();
                                    zn4 zn4Var = zn4.a;
                                    dj7.y(contextC, string);
                                    z3 = true;
                                }
                            }
                        }
                    }
                }
                if (!arrayList2.contains(yn8Var)) {
                    arrayList2.add(yn8Var);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return true;
        }
        int iQ0 = x65.q0(hl1.G0(arrayList2, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (Object obj : arrayList2) {
            linkedHashMap.put(((yn8) obj).a.v(), obj);
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Iterator it3 = linkedHashMap.values().iterator();
        long j = 0;
        while (it3.hasNext()) {
            j += ((yn8) it3.next()).c;
        }
        Long lValueOf = Long.valueOf(j);
        if (j <= 0) {
            lValueOf = null;
        }
        long jLongValue = lValueOf != null ? lValueOf.longValue() : 1L;
        kh6 kh6Var = new kh6();
        ArrayList arrayList3 = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            String str = (String) entry.getKey();
            yn8 yn8Var2 = (yn8) entry.getValue();
            zn4 zn4Var2 = zn4.a;
            arrayList3.add(new vn4(new oz(jo8Var, yn8Var2, concurrentHashMap, str, kh6Var, jLongValue)));
            jo8Var = jo8Var;
        }
        zn4 zn4Var3 = zn4.a;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            z = false;
        } else {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z2 = sharedPreferences.getBoolean("parallel_cloud_transfers", false);
                if (z2) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (ClassCastException unused2) {
                z2 = false;
            }
        }
        List listA = zn4.a(4, arrayList3, z);
        if (listA == null || !listA.isEmpty()) {
            Iterator it4 = listA.iterator();
            while (it4.hasNext()) {
                if (!((Boolean) it4.next()).booleanValue()) {
                    return false;
                }
            }
        }
        return true;
    }
}
