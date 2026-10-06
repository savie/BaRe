package defpackage;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Looper;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.wifi.PasswordInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vs8 implements dt8 {
    public final WifiManager a;

    public vs8(WifiManager wifiManager) {
        wifiManager.getClass();
        this.a = wifiManager;
    }

    public static WifiConfiguration d(et8 et8Var) {
        WifiConfiguration wifiConfiguration = new WifiConfiguration();
        wifiConfiguration.SSID = et8Var.getSSID();
        if (!et8Var.isOpenNetwork()) {
            wifiConfiguration.preSharedKey = eq3.k("\"", et8Var.getProperPreSharedKey(), "\"");
        }
        Boolean hiddenSSID = et8Var.getHiddenSSID();
        if (hiddenSSID != null) {
            wifiConfiguration.hiddenSSID = hiddenSSID.booleanValue();
        }
        BitSet allowedGroupCiphers = et8Var.getAllowedGroupCiphers();
        if (allowedGroupCiphers != null) {
            wifiConfiguration.allowedGroupCiphers = allowedGroupCiphers;
        }
        BitSet allowedPairwiseCiphers = et8Var.getAllowedPairwiseCiphers();
        if (allowedPairwiseCiphers != null) {
            wifiConfiguration.allowedPairwiseCiphers = allowedPairwiseCiphers;
        }
        BitSet allowedKeyManagement = et8Var.getAllowedKeyManagement();
        if (allowedKeyManagement != null) {
            wifiConfiguration.allowedKeyManagement = allowedKeyManagement;
        }
        BitSet allowedProtocols = et8Var.getAllowedProtocols();
        if (allowedProtocols != null) {
            wifiConfiguration.allowedProtocols = allowedProtocols;
        }
        PasswordInfo passwordInfo = et8Var.getPasswordInfo();
        if (passwordInfo != null && passwordInfo.hasValidEnterpriseDetails()) {
            wifiConfiguration.enterpriseConfig = passwordInfo.getEnterpriseConfig();
        }
        return wifiConfiguration;
    }

    @Override // defpackage.dt8
    public final void a(et8 et8Var) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return;
        }
        WifiConfiguration wifiConfigurationD = d(et8Var);
        WifiManager wifiManager = this.a;
        int iAddNetwork = wifiManager.addNetwork(wifiConfigurationD);
        if (iAddNetwork != -1) {
            try {
                wifiManager.enableNetwork(iAddNetwork, true);
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "LegacyHelper", xs1.j("Error: ", e.getMessage()), null, 4, null);
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String string = contextC.getString(R.string.unknown_error_occured);
                string.getClass();
                zn4 zn4Var = zn4.a;
                dj7.y(contextC, string);
            }
        }
    }

    @Override // defpackage.dt8
    public final boolean b(List list, cz czVar) {
        boolean z;
        WifiManager wifiManager;
        boolean z2;
        list.getClass();
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return false;
        }
        vr6.i$default(vr6.INSTANCE, "LegacyHelper", xs1.h(list.size(), "restoreAll: ", " items"), null, 4, null);
        czVar.invoke(at8.a);
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        Iterator it = list.iterator();
        int i = 0;
        while (true) {
            boolean z3 = true;
            if (!it.hasNext()) {
                if (arrayList.isEmpty()) {
                    z = true;
                } else {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (!((Boolean) it2.next()).booleanValue()) {
                            z = false;
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
            int size = list.size();
            String ssid = et8Var.getSSID();
            StringBuilder sbN = xs1.n("Restoring ", i2, "/", ": ", size);
            sbN.append(ssid);
            vr6.i$default(vr6Var, "LegacyHelper", sbN.toString(), null, 4, null);
            czVar.invoke(new bt8(et8Var, i2, list.size()));
            boolean z4 = list.size() == 1;
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return false;
            }
            WifiManager wifiManager2 = this.a;
            if (wifiManager2.isWifiEnabled()) {
                wifiManager = wifiManager2;
                z2 = false;
            } else {
                wifiManager = wifiManager2;
                z2 = false;
                vr6.i$default(vr6Var, "LegacyHelper", dj7.m("Enabled wifi=", wifiManager2.setWifiEnabled(true)), null, 4, null);
            }
            int iAddNetwork = wifiManager.addNetwork(d(et8Var));
            vr6.i$default(vr6Var, "LegacyHelper", fz5.j(iAddNetwork, "Added network id="), null, 4, null);
            if (z4) {
                vr6.i$default(vr6Var, "LegacyHelper", dj7.m("Enabled network=", wifiManager.enableNetwork(iAddNetwork, true)), null, 4, null);
            }
            if (iAddNetwork == -1) {
                z3 = z2;
            }
            arrayList.add(Boolean.valueOf(z3));
            i = i2;
        }
    }

    @Override // defpackage.dt8
    public final boolean c() {
        return true;
    }
}
