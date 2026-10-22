package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kb0 implements fr5 {
    public static final kb0 a = new kb0();
    public static final h63 b = h63.a("appId");
    public static final h63 c = h63.a("deviceModel");
    public static final h63 d = h63.a("sessionSdkVersion");
    public static final h63 e = h63.a("osVersion");
    public static final h63 f = h63.a("logEnvironment");
    public static final h63 g = h63.a("androidAppInfo");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        f10 f10Var = (f10) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, f10Var.a);
        gr5Var.a(c, Build.MODEL);
        gr5Var.a(d, "3.0.6");
        gr5Var.a(e, Build.VERSION.RELEASE);
        gr5Var.a(f, a15.LOG_ENVIRONMENT_PROD);
        gr5Var.a(g, f10Var.b);
    }
}
