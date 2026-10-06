package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.recaptcha.internal.zzce;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g84 implements er5, mo1, kt4 {
    public static final g84 a = new g84();

    public static /* synthetic */ void c() {
        throw new IllegalStateException();
    }

    public static /* synthetic */ void d(int i, int i2, Throwable th) throws zzce {
        throw new zzce(i, i2, th);
    }

    public static /* synthetic */ void e(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void f(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void g(Object obj, String str) throws fk7 {
        throw new fk7(str + obj);
    }

    public static /* synthetic */ void h(String str) {
        throw new RuntimeException(str);
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new io5(str + obj);
    }

    public static /* synthetic */ void j(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void k(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static List l(String str, ip6 ip6Var) {
        ip6Var.getClass();
        return mp6.a.h(new String[]{str}, ip6Var);
    }

    @Override // defpackage.kt4
    public String a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.minSdkVersion) : "";
    }

    @Override // defpackage.er5
    public Object construct() {
        return new LinkedHashMap();
    }

    @Override // defpackage.mo1
    public Object m(pp0 pp0Var) {
        ps4 ps4Var = ExecutorsRegistrar.a;
        return kd8.a;
    }
}
