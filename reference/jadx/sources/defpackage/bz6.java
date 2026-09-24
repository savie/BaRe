package defpackage;

import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bz6 extends cu3 implements qt3 {
    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        Throwable th = (Throwable) obj;
        Map map = (Map) obj2;
        th.getClass();
        map.getClass();
        ((n02) this.receiver).getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        List<FirebaseApp> apps = FirebaseApp.getApps(SwiftApp.Companion.c());
        apps.getClass();
        if (!apps.isEmpty()) {
            mp1 mp1Var = new mp1();
            for (Map.Entry entry : map.entrySet()) {
                mp1Var.a.put((String) entry.getKey(), (String) entry.getValue());
            }
            FirebaseCrashlytics.getInstance().recordException(th, new y62(mp1Var));
        }
        return be8.a;
    }
}
