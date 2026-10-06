package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class fq5 extends il0 {
    public final l90 K = new l90(ph6.a(hq5.class), new o30(this, 9), new z20(this, 13), new p30(this, 6));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final hq5 a0() {
        return (hq5) this.K.getValue();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        String str;
        if (i != 5012) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        hq5 hq5VarA0 = a0();
        ix6 ix6Var = hq5VarA0.j;
        if (intent == null) {
            vr6.e$default(vr6.INSTANCE, hq5VarA0.b, "Sign in result intent is null", null, 4, null);
            ix6Var.k("Sign in result intent is null");
            return;
        }
        z80 z80VarE = z80.e(intent);
        g90 g90VarJ = g90.J(intent);
        if (g90VarJ != null) {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new gq5(hq5VarA0, g90VarJ, null));
            return;
        }
        if (z80VarE == null || (str = z80VarE.d) == null) {
            String message = z80VarE != null ? z80VarE.getMessage() : null;
            if (message == null) {
                String str2 = "Authorization failed";
                str = str2;
            } else {
                str = message;
            }
        } else {
            str = str2;
        }
        vr6.e$default(vr6.INSTANCE, hq5VarA0.b, str, null, 4, null);
        ix6Var.k(str);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 20;
        int i2 = 2;
        a0().h.e(this, new i7(i2, new e7(this, i)));
        a0().i.e(this, new i7(i2, new k3(this, 17)));
        a0().j.e(this, new i7(i2, new hj(this, i)));
        hq5 hq5VarA0 = a0();
        Map mapSingletonMap = Collections.singletonMap("force_confirm", "yes");
        mapSingletonMap.getClass();
        uj ujVar = new uj("https://oauth.yandex.com/authorize", "https://oauth.yandex.com/token", "ec2ee695f64042bfa6285a6999ef11bf", "org.swiftapps.swiftbackup.yandex://oauth", null, mapSingletonMap, null, 208);
        nh4 nh4Var = new nh4(14);
        ix6 ix6Var = hq5VarA0.j;
        if (hq5VarA0.e) {
            return;
        }
        hq5VarA0.e = true;
        hq5VarA0.f = ujVar;
        hq5VarA0.g = nh4Var;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("https://www.google.com"));
        List<ResolveInfo> listQueryIntentActivities = contextC.getPackageManager().queryIntentActivities(intent, 65536);
        listQueryIntentActivities.getClass();
        if (listQueryIntentActivities.isEmpty()) {
            String strG = dj7.g(R.string.no_browser_found_error);
            vr6.e$default(vr6.INSTANCE, hq5VarA0.b, strG, null, 4, null);
            ix6Var.k(strG);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("org.swiftapps.swiftbackup.yandex://oauth"));
        g00 g00Var = g00.a;
        List<ResolveInfo> listQueryIntentActivities2 = g00.r().queryIntentActivities(intent2, 0);
        listQueryIntentActivities2.getClass();
        for (ResolveInfo resolveInfo : listQueryIntentActivities2) {
            vr6.i$default(vr6.INSTANCE, hq5VarA0.b, "Handler activities: " + resolveInfo.activityInfo, null, 4, null);
        }
        if (listQueryIntentActivities2.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, hq5VarA0.b, "No handler activity found for org.swiftapps.swiftbackup.yandex://oauth", null, 4, null);
            ix6Var.k("No handler activity found for org.swiftapps.swiftbackup.yandex://oauth");
        } else {
            ix6 ix6Var2 = hq5VarA0.h;
            SwiftApp.Companion companion2 = SwiftApp.d;
            ix6Var2.k(uj.b(SwiftApp.Companion.c(), ujVar.a().a()));
        }
    }
}
