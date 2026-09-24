package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.pcloud.sdk.AuthorizationActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sv5 extends qo0 {
    public boolean e;
    public final dd1 f = dd1.PCloud;
    public final ov5 g = new ov5();
    public final String h = "Dc7RUkyzltJ";
    public final ix6 i = new ix6();
    public final ix6 j = new ix6();
    public final ix6 k = new ix6();
    public final ix6 l = new ix6();

    public final Intent j() {
        SwiftApp.Companion companion = SwiftApp.d;
        PackageManager packageManager = SwiftApp.Companion.c().getPackageManager();
        Intent data = new Intent().setAction("android.intent.action.VIEW").addCategory("android.intent.category.BROWSABLE").setData(Uri.fromParts("http", "", null));
        data.getClass();
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(data, 0);
        listQueryIntentActivities.getClass();
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : listQueryIntentActivities) {
            Intent intent = new Intent();
            intent.setAction("android.support.customtabs.action.CustomTabsService");
            intent.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent, 0) != null) {
                arrayList.add(resolveInfo);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ResolveInfo) it.next()).activityInfo.packageName);
        }
        List list = f90.f;
        d90 d90Var = new d90();
        ArrayList arrayList3 = d90Var.d;
        arrayList3.clear();
        arrayList3.addAll(arrayList2);
        d90Var.a = 2;
        String str = this.h;
        d90Var.b = str;
        if (str == null) {
            l0.e("setClientId() not called.");
            return null;
        }
        f90 f90Var = new f90(d90Var);
        SwiftApp.Companion companion2 = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        Uri uri = AuthorizationActivity.f;
        Intent intent2 = new Intent(contextC, (Class<?>) AuthorizationActivity.class);
        intent2.putExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST", f90Var);
        return intent2;
    }
}
