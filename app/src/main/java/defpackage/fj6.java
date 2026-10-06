package defpackage;

import android.net.Uri;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fj6 {
    public final f10 a;
    public final ox1 b;

    public fj6(f10 f10Var, ox1 ox1Var) {
        f10Var.getClass();
        ox1Var.getClass();
        this.a = f10Var;
        this.b = ox1Var;
    }

    public static final URL a(fj6 fj6Var) {
        fj6Var.getClass();
        Uri.Builder builderAppendPath = new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp");
        f10 f10Var = fj6Var.a;
        Uri.Builder builderAppendPath2 = builderAppendPath.appendPath(f10Var.a).appendPath("settings");
        jb jbVar = f10Var.b;
        return new URL(builderAppendPath2.appendQueryParameter("build_version", jbVar.c).appendQueryParameter("display_version", jbVar.b).build().toString());
    }
}
