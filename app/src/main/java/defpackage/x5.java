package defpackage;

import android.app.ApplicationExitInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x5 implements ig2, ObjectConstructor, mo1, kt4, f18 {
    public static /* bridge */ /* synthetic */ ApplicationExitInfo d(Object obj) {
        return (ApplicationExitInfo) obj;
    }

    public static /* synthetic */ void e() {
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void f(int i, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void g(int i, String str) {
        throw new IllegalStateException(str + i);
    }

    public static /* synthetic */ void i(Object obj, Object obj2, String str) {
        throw new mj4(str + obj + ((Object) " at path ") + obj2);
    }

    @Override // defpackage.kt4
    public String a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "AnalyticsConnector now available.", null);
        }
        ga6Var.get().getClass();
        throw new ClassCastException();
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newDefaultImplementationConstructor$17();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        return (ScheduledExecutorService) ExecutorsRegistrar.b.get();
    }
}
