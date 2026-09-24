package defpackage;

import android.net.wifi.WifiManager;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.model.firebase.WifiCloudDetails;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class us8 {
    public final ke a;
    public final dt8 b;
    public ts8 c;

    public us8(WifiManager wifiManager) {
        dt8 xs8Var;
        cz4 cz4Var = new cz4(22);
        ns8 ns8Var = ns8.a;
        ke keVar = new ke(cz4Var, x65.r0(new pw5(ks8.LEGACY_PUBLIC, new gt4(wifiManager)), new pw5(ks8.ROOT_XML, new lq6()), new pw5(ks8.SHIZUKU_BINDER, new we7())));
        wifiManager.getClass();
        this.a = keVar;
        if (b67.d()) {
            xs8Var = new ys8();
            if (!b67.d()) {
                c6.f("SHelper WifiHelper should be used on Android 12 and up only!");
                throw null;
            }
        } else {
            xs8Var = b67.c() ? new xs8() : b67.b() ? new ws8() : new vs8(wifiManager);
        }
        this.b = xs8Var;
    }

    public static WifiCloudDetails c() {
        l73 l73VarA = cf3.a(re3.g().d("wifi"), true);
        if (l73VarA instanceof xe3) {
            return (WifiCloudDetails) ((xe3) l73VarA).n.c(WifiCloudDetails.class);
        }
        if (l73VarA instanceof we3) {
            u48.s("onCancelled: ", ((we3) l73VarA).n.b, "WifiHelper");
            return null;
        }
        q.j();
        return null;
    }

    public static boolean d(int i, q63 q63Var, String str) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        rf8 rf8Var = new rf8(q63Var, 23, false, null, false);
        Log.d("WifiHelper", "syncFileToDrive");
        tb1 tb1Var = tb1.a;
        ag8 ag8VarD = qb1.c().d(rf8Var);
        if (str != null && str.length() != 0) {
            ag8VarD.getClass();
            ag8VarD.b = str;
        }
        zf8 zf8VarC = ag8VarD.c();
        if (zf8VarC.a()) {
            String str2 = zf8VarC.a;
            if (str2 != null && str2.length() != 0) {
                long jA = q63Var.A();
                return cf3.c(re3.g().d("wifi"), new WifiCloudDetails(str2, jA > 0 ? Long.valueOf(jA) : null, Integer.valueOf(i))) instanceof ze3;
            }
        } else {
            vr6.e$default(vr6.INSTANCE, "WifiHelper", "onFailure: ".concat(zf8VarC.b()), null, 4, null);
            if (str != null && str.length() != 0) {
                return d(i, q63Var, null);
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:112:0x0191 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:71:0x016b  */
    /* JADX WARN: Code duplicated, block: B:84:0x01a0 A[LOOP:2: B:54:0x0122->B:84:0x01a0, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v23 */
    public final od2 a(bz7 bz7Var, boolean z) {
        String str;
        od2 od2Var;
        Object next;
        int iIntValue;
        ss8 ss8Var = ss8.i;
        rs8 rs8Var = rs8.i;
        bz7Var.getClass();
        List list = bz7Var.d;
        List<et8> listN1 = bz7Var.c;
        if (z) {
            ke keVar = this.a;
            keVar.getClass();
            is8 is8VarM = keVar.m(kt8.BACKUP);
            hs8 hs8Var = is8VarM instanceof hs8 ? (hs8) is8VarM : null;
            if (hs8Var == null) {
                return new ps8((gs8) is8VarM);
            }
            ks8 ks8Var = hs8Var.b;
            List list2 = hs8Var.a;
            listN1.getClass();
            list2.getClass();
            ArrayList arrayList = new ArrayList(list2);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = listN1.iterator();
            while (true) {
                if (!it.hasNext()) {
                    od2Var = null;
                    String.CASE_INSENSITIVE_ORDER.getClass();
                    listN1 = el1.n1(arrayList2, new gj1(5));
                    break;
                }
                et8 et8Var = (et8) it.next();
                et8Var.getClass();
                es8 es8VarF = iz1.f(et8Var);
                mt8 mt8Var = es8VarF.b;
                nd4 nd4VarY0 = fl1.y0(arrayList);
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = nd4VarY0.iterator();
                while (true) {
                    md4 md4Var = (md4) it2;
                    if (!md4Var.c) {
                        break;
                    }
                    Object next2 = md4Var.next();
                    if (iz1.f((et8) arrayList.get(((Number) next2).intValue())).a.equals(es8VarF.a)) {
                        arrayList3.add(next2);
                    }
                }
                od2Var = null;
                if (arrayList3.isEmpty()) {
                    iIntValue = -1;
                } else if (mt8Var == mt8.UNKNOWN) {
                    Integer num = (Integer) el1.l1(arrayList3);
                    if (num != null) {
                        iIntValue = num.intValue();
                    } else {
                        iIntValue = -1;
                    }
                } else {
                    Iterator it3 = arrayList3.iterator();
                    do {
                        if (!it3.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it3.next();
                    } while (iz1.f((et8) arrayList.get(((Number) next).intValue())).b != mt8Var);
                    Integer num2 = (Integer) next;
                    if (num2 != null) {
                        iIntValue = num2.intValue();
                    } else {
                        Integer num3 = (Integer) el1.l1(arrayList3);
                        if (num3 != null) {
                            iIntValue = num3.intValue();
                        } else {
                            iIntValue = -1;
                        }
                    }
                }
                if (iIntValue == -1) {
                    listN1 = null;
                    break;
                }
                arrayList2.add(arrayList.remove(iIntValue));
            }
            if (listN1 == null) {
                return qs8.i;
            }
            if (ks8Var == ks8.SHIZUKU_BINDER && !listN1.isEmpty()) {
                for (et8 et8Var2 : listN1) {
                    et8Var2.getClass();
                    boolean zO = true;
                    switch (fs8.a[iz1.f(et8Var2).b.ordinal()]) {
                        case 1:
                        case 2:
                            if (!zO) {
                                return new ps8(new gs8(ds8.INCOMPLETE_CREDENTIALS, ks8Var, od2Var));
                            }
                            od2Var = null;
                            break;
                            break;
                        case 3:
                        case 4:
                        case 5:
                            if (!iz1.q(et8Var2.getPreSharedKey())) {
                                PasswordInfo passwordInfo = et8Var2.getPasswordInfo();
                                if (!iz1.q(passwordInfo != null ? passwordInfo.getPsk() : od2Var)) {
                                    zO = false;
                                }
                            }
                            if (!zO) {
                                return new ps8(new gs8(ds8.INCOMPLETE_CREDENTIALS, ks8Var, od2Var));
                            }
                            od2Var = null;
                            break;
                            break;
                        case 6:
                            zO = iz1.o(et8Var2);
                            if (!zO) {
                                return new ps8(new gs8(ds8.INCOMPLETE_CREDENTIALS, ks8Var, od2Var));
                            }
                            od2Var = null;
                            break;
                            break;
                        case 7:
                            if (!iz1.q(et8Var2.getPreSharedKey())) {
                                PasswordInfo passwordInfo2 = et8Var2.getPasswordInfo();
                                if (!iz1.q(passwordInfo2 != null ? passwordInfo2.getPsk() : od2Var) && !iz1.o(et8Var2)) {
                                    zO = false;
                                }
                            }
                            if (!zO) {
                                return new ps8(new gs8(ds8.INCOMPLETE_CREDENTIALS, ks8Var, od2Var));
                            }
                            od2Var = null;
                            break;
                            break;
                        default:
                            q.j();
                            return od2Var;
                    }
                }
            }
        }
        if (list.contains(q05.DEVICE)) {
            String str2 = ry5.u;
            str = null;
            if (b(listN1, z, new q63(eq3.j(qy5.f(false, null).n, "wifi_networks.wfi"), 2)).a) {
            }
            return rs8Var;
        }
        str = null;
        if (list.contains(q05.CLOUD)) {
            os8 os8VarB = b(listN1, z, nh4.a());
            if (os8VarB.a) {
                WifiCloudDetails wifiCloudDetailsC = c();
                if (d(os8VarB.b, nh4.a(), wifiCloudDetailsC != null ? wifiCloudDetailsC.getDriveId() : str)) {
                }
            }
            return rs8Var;
        }
        return ss8Var;
    }

    public final os8 b(List list, boolean z, q63 q63Var) {
        ArrayList arrayList = new ArrayList();
        if (z && q63Var.j()) {
            gv7 gv7Var = w14.a;
            ft8 ft8Var = (ft8) w14.a(q63Var, ft8.class);
            if ((ft8Var != null ? ft8Var.getItems() : null) != null && !ft8Var.getItems().isEmpty()) {
                List<et8> items = ft8Var.getItems();
                arrayList = new ArrayList(list);
                for (et8 et8Var : items) {
                    list.getClass();
                    et8Var.getClass();
                    es8 es8VarF = iz1.f(et8Var);
                    mt8 mt8Var = es8VarF.b;
                    String str = es8VarF.a;
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : list) {
                        if (iz1.f((et8) obj).a.equals(str)) {
                            arrayList2.add(obj);
                        }
                    }
                    if (mt8Var != mt8.UNKNOWN && !arrayList2.isEmpty()) {
                        Iterator it = arrayList2.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (iz1.f((et8) it.next()).b == mt8Var) {
                                }
                            }
                        }
                    }
                    int i = 0;
                    if (!items.isEmpty()) {
                        Iterator<T> it2 = items.iterator();
                        while (it2.hasNext()) {
                            if (iz1.f((et8) it2.next()).a.equals(str) && (i = i + 1) < 0) {
                                fl1.E0();
                                throw null;
                            }
                        }
                    }
                    if (i != 1 || arrayList2.size() != 1) {
                        arrayList.add(et8Var);
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(list);
        }
        this.b.getClass();
        String.CASE_INSENSITIVE_ORDER.getClass();
        ArrayList arrayList3 = new ArrayList(el1.n1(arrayList, new xg(12)));
        gv7 gv7Var2 = w14.a;
        return new os8(arrayList3.size(), w14.f(ft8.Companion.wrapList(arrayList3), q63Var));
    }
}
