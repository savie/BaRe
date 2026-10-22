package defpackage;

import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class up8 {
    public static void a(az7 az7Var, qo0 qo0Var, int i) {
        qo0 qo0Var2 = (i & 2) != 0 ? null : qo0Var;
        int i2 = 1;
        boolean z = (i & 4) != 0;
        az7Var.getClass();
        ArrayList arrayList = az7Var.d;
        ArrayList arrayList2 = az7Var.e;
        HashSet hashSet = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (hashSet.add(((rv7) obj).a.v())) {
                arrayList3.add(obj);
            }
        }
        if (arrayList3.isEmpty()) {
            Log.e("WallsTask", "runTask: Wall list null or empty");
            return;
        }
        if (qo0Var2 != null) {
            int i3 = arrayList.contains(q05.CLOUD) ? R.string.backing_up_and_syncing : R.string.backing_up;
            SwiftApp.Companion companion = SwiftApp.d;
            String string = SwiftApp.Companion.c().getString(i3);
            string.getClass();
            qo0Var2.i(string);
        }
        List listE = arrayList.contains(q05.CLOUD) ? xj1.g.e() : null;
        HashSet hashSet2 = new HashSet();
        ArrayList<rv7> arrayList4 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (hashSet2.add(Long.valueOf(((rv7) obj2).a.A()))) {
                arrayList4.add(obj2);
            }
        }
        if (arrayList.contains(q05.DEVICE)) {
            int i4 = 0;
            boolean z2 = false;
            for (rv7 rv7Var : arrayList4) {
                i4 += i2;
                List list = (List) c05.g.a().c;
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((yn8) it.next()).c == rv7Var.a.A()) {
                                vr6.i$default(vr6.INSTANCE, "WallBackupHelper", xs1.h(i4, "Wallpaper (", ") already backed up on device"), null, 4, null);
                                if (!z || z2) {
                                    i2 = 1;
                                } else {
                                    SwiftApp.Companion companion2 = SwiftApp.d;
                                    Context contextC = SwiftApp.Companion.c();
                                    String string2 = contextC.getString(R.string.walls_already_backed_up_on_device);
                                    string2.getClass();
                                    zn4 zn4Var = zn4.a;
                                    dj7.y(contextC, string2);
                                    i2 = 1;
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
                String str = ry5.u;
                rv7Var.a.d(new q63(eq3.j(qy5.f(false, null).q, rv7Var.b), 2), null);
                dv.i(c05.g, true, null, false, false, 14);
                i2 = 1;
            }
        }
        if (arrayList.contains(q05.CLOUD)) {
            ArrayList arrayList5 = new ArrayList();
            for (rv7 rv7Var2 : arrayList4) {
                String str2 = ry5.u;
                q63 q63Var = new q63(eq3.j(qy5.f(false, null).r, rv7Var2.b), 2);
                rv7Var2.a.d(q63Var, null);
                arrayList5.add(new yn8(q63Var, q63Var.z(), q63Var.A(), String.valueOf(Long.hashCode(q63Var.A())), 48));
            }
            jo8.a(new jo8(z), arrayList5, listE);
            dv.i(xj1.g, true, null, false, false, 14);
        }
        if (qo0Var2 != null) {
            qo0Var2.f();
        }
    }
}
