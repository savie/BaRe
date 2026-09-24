package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jb0 implements fr5 {
    public static final jb0 a = new jb0();
    public static final h63 b = h63.a("packageName");
    public static final h63 c = h63.a("versionName");
    public static final h63 d = h63.a("appBuildVersion");
    public static final h63 e = h63.a("deviceManufacturer");
    public static final h63 f = h63.a("currentProcessDetails");
    public static final h63 g = h63.a("appProcessDetails");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        jb jbVar = (jb) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, jbVar.a);
        gr5Var.a(c, jbVar.b);
        gr5Var.a(d, jbVar.c);
        gr5Var.a(e, Build.MANUFACTURER);
        gr5Var.a(f, jbVar.d);
        gr5Var.a(g, jbVar.e);
    }
}
