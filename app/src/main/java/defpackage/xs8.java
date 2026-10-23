package defpackage;

import android.os.Looper;
import android.widget.Toast;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class xs8 implements dt8 {
    public Toast a;

    @Override // defpackage.dt8
    public final void a(et8 et8Var) throws IOException {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
        } else {
            f(et8Var, true);
        }
    }

    @Override // defpackage.dt8
    public final boolean b(List list, cz czVar) {
        list.getClass();
        boolean z = false;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        vr6.i$default(vr6.INSTANCE, d(), xs1.h(list.size(), "restoreAll: ", " items"), null, 4, null);
        czVar.invoke(at8.a);
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                if (arrayList.isEmpty()) {
                    z = true;
                } else {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (!((Boolean) it2.next()).booleanValue()) {
                        }
                    }
                    z = true;
                }
                czVar.invoke(zs8.a);
                return z;
            }
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            et8 et8Var = (et8) next;
            vr6 vr6Var = vr6.INSTANCE;
            String strD = d();
            int size = list.size();
            String ssid = et8Var.getSSID();
            StringBuilder sbN = xs1.n("Restoring ", i2, "/", ": ", size);
            sbN.append(ssid);
            vr6.i$default(vr6Var, strD, sbN.toString(), null, 4, null);
            czVar.invoke(new bt8(et8Var, i2, list.size()));
            if (list.size() != 1) {
                z2 = false;
            }
            arrayList.add(Boolean.valueOf(f(et8Var, z2)));
            i = i2;
        }
    }

    @Override // defpackage.dt8
    public final boolean c() {
        mp6 mp6Var = mp6.a;
        return mp6.f();
    }

    public String d() {
        return "RHelper";
    }

    public boolean e() {
        return true;
    }

    public final boolean f(et8 et8Var, boolean z) throws IOException {
        String strM;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return false;
            }
            ny2.b().e(new lt8(et8Var));
            return false;
        }
        if (z) {
            vr6.i$default(vr6.INSTANCE, d(), xs1.j("Connecting with ", et8Var.getSSID()), null, 4, null);
            boolean z2 = g42.a;
            String ssid = et8Var.getSSID();
            String properPreSharedKey = et8Var.getProperPreSharedKey();
            boolean zIsOpenNetwork = et8Var.isOpenNetwork();
            boolean zIsHiddenSsid = et8Var.isHiddenSsid();
            ssid.getClass();
            properPreSharedKey.getClass();
            strM = g42.m("connect", ssid, properPreSharedKey, zIsOpenNetwork, zIsHiddenSsid);
        } else {
            vr6.i$default(vr6.INSTANCE, d(), xs1.j("Adding ", et8Var.getSSID()), null, 4, null);
            boolean z3 = g42.a;
            String ssid2 = et8Var.getSSID();
            String properPreSharedKey2 = et8Var.getProperPreSharedKey();
            boolean zIsOpenNetwork2 = et8Var.isOpenNetwork();
            boolean zIsHiddenSsid2 = et8Var.isHiddenSsid();
            ssid2.getClass();
            properPreSharedKey2.getClass();
            strM = g42.m("add", ssid2, properPreSharedKey2, zIsOpenNetwork2, zIsHiddenSsid2);
        }
        List listH = mp6Var.h(new String[]{strM}, ip6.SHIZUKU);
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, d(), xs1.l("Output=", listH), null, 4, null);
        if (et8Var.isHiddenSsid() && e()) {
            vr6.i$default(vr6Var, d(), "Workaround for hidden WiFi", null, 4, null);
            q63 q63Var = new q63(b67.c() ? "/data/misc/apexdata/com.android.wifi/WifiConfigStore.xml" : "/data/misc/wifi/WifiConfigStore.xml", 4);
            SwiftApp.Companion companion = SwiftApp.d;
            new q63(SwiftApp.Companion.c().getCacheDir(), "wifi/system_config_file.xml", 2);
            if (q63Var.j()) {
                ArrayList<String> arrayListQ = rs9.q(q63Var.a());
                ArrayList arrayList = new ArrayList(hl1.G0(arrayListQ, 10));
                boolean Z = false;
                for (String str : arrayListQ) {
                    if (nq7.Z(str, "name=\"SSID\"", false)) {
                        Z = nq7.Z(str, ">&quot;" + uq7.T(et8Var.getSSID(), "\"", "") + "&quot;<", false);
                    }
                    if (Z && nq7.Z(str, "name=\"HiddenSSID\"", false) && !nq7.Z(str, "value=\"true\"", false)) {
                        str = "<boolean name=\"HiddenSSID\" value=\"true\" />";
                    }
                    arrayList.add(str);
                }
                if (!arrayListQ.equals(arrayList)) {
                    vr6.i$default(vr6.INSTANCE, d(), "Committing attributes", null, 4, null);
                    OutputStream outputStreamF = q63Var.F(true);
                    try {
                        n84.f(arrayList, outputStreamF, Charset.defaultCharset());
                        outputStreamF.close();
                        zn4 zn4Var = zn4.a;
                        zn4.e(new qb5(this, 14));
                        return true;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(outputStreamF, th);
                            throw th2;
                        }
                    }
                }
            }
        }
        return true;
    }
}
