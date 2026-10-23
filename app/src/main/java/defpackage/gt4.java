package defpackage;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gt4 implements js8 {
    public final hs4 a;

    public gt4(WifiManager wifiManager) {
        wifiManager.getClass();
        this.a = new hs4(wifiManager, 1);
    }

    public static et8 a(WifiConfiguration wifiConfiguration) {
        String str = !TextUtils.isEmpty(wifiConfiguration.SSID) ? wifiConfiguration.SSID : "Unknown";
        str.getClass();
        String str2 = wifiConfiguration.preSharedKey;
        if (str2 == null) {
            str2 = "";
        }
        return new et8(str, str2, Boolean.valueOf(wifiConfiguration.hiddenSSID), wifiConfiguration.allowedKeyManagement, wifiConfiguration.allowedProtocols, wifiConfiguration.allowedPairwiseCiphers, wifiConfiguration.allowedGroupCiphers, null, 128, null);
    }

    @Override // defpackage.js8
    public final is8 read() {
        try {
            List<WifiConfiguration> configuredNetworks = ((WifiManager) this.a.b).getConfiguredNetworks();
            if (configuredNetworks == null) {
                return new gs8(ds8.LEGACY_READ_FAILED, ks8.LEGACY_PUBLIC, null);
            }
            ArrayList arrayList = new ArrayList(hl1.G0(configuredNetworks, 10));
            Iterator<T> it = configuredNetworks.iterator();
            while (it.hasNext()) {
                arrayList.add(a((WifiConfiguration) it.next()));
            }
            return new hs8(arrayList, ks8.LEGACY_PUBLIC);
        } catch (Exception e) {
            return new gs8(ds8.LEGACY_READ_FAILED, ks8.LEGACY_PUBLIC, e);
        }
    }
}
