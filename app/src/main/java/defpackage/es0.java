package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class es0 {
    public static final BlacklistData a(BlacklistData blacklistData) {
        ArrayList arrayList = null;
        if (blacklistData != null) {
            List<BlacklistApp> items = blacklistData.getItems();
            if (items == null || items.isEmpty()) {
                blacklistData = null;
            }
            if (blacklistData != null) {
                List<BlacklistApp> items2 = blacklistData.getItems();
                List<BlacklistApp> listP1 = items2 != null ? el1.p1(items2, 100) : null;
                if (listP1 != null) {
                    arrayList = new ArrayList(hl1.G0(listP1, 10));
                    for (BlacklistApp blacklistApp : listP1) {
                        BlacklistApp blacklistAppCopy$default = BlacklistApp.copy$default(blacklistApp, null, null, 0, 7, null);
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        String packageName = blacklistApp.getPackageName();
                        boolean z = false;
                        if (packageName != null) {
                            try {
                                contextC.getPackageManager().getPackageInfo(packageName, 0);
                                z = true;
                            } catch (PackageManager.NameNotFoundException unused) {
                            }
                        }
                        blacklistAppCopy$default.setInstalled(z);
                        arrayList.add(blacklistAppCopy$default);
                    }
                }
                BlacklistData.Companion.getClass();
                return ds0.a(arrayList);
            }
        }
        return null;
    }
}
