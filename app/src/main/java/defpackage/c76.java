package defpackage;

import android.net.wifi.WifiConfiguration;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c76 extends cu3 implements mt3 {
    public static final c76 a = new c76(1, f76.class, "decodePrivilegedWifiSlice", "decodePrivilegedWifiSlice(Ljava/lang/Object;)Ljava/util/List;", 1);

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws ReflectiveOperationException {
        obj.getClass();
        Object objInvoke = obj.getClass().getMethod("getList", null).invoke(obj, null);
        List list = objInvoke instanceof List ? (List) objInvoke : null;
        if (list == null) {
            throw new ReflectiveOperationException("getList did not return a list");
        }
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        for (Object obj2 : list) {
            WifiConfiguration wifiConfiguration = obj2 instanceof WifiConfiguration ? (WifiConfiguration) obj2 : null;
            if (wifiConfiguration == null) {
                throw new ReflectiveOperationException("getList contained an unexpected value");
            }
            arrayList.add(wifiConfiguration);
        }
        return arrayList;
    }
}
