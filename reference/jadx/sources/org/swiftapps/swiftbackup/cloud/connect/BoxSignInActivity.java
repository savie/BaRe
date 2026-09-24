package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import defpackage.c7;
import defpackage.d7;
import defpackage.dj7;
import defpackage.e7;
import defpackage.g00;
import defpackage.g90;
import defpackage.il0;
import defpackage.ix6;
import defpackage.l90;
import defpackage.ms;
import defpackage.ns;
import defpackage.ov0;
import defpackage.ph6;
import defpackage.pv0;
import defpackage.uj;
import defpackage.vr6;
import defpackage.y20;
import defpackage.z20;
import defpackage.z80;
import defpackage.zn4;
import defpackage.zu0;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class BoxSignInActivity extends il0 {
    public static final /* synthetic */ int L = 0;
    public final l90 K = new l90(ph6.a(pv0.class), new ns(this, 3), new ms(this, 4), new z20(this, 1));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final pv0 U() {
        return (pv0) this.K.getValue();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        String str;
        if (i != 5011) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        pv0 pv0VarV = V();
        ix6 ix6Var = pv0VarV.h;
        if (intent == null) {
            vr6.e$default(vr6.INSTANCE, pv0VarV.b, "Box sign-in result intent is null", null, 4, null);
            ix6Var.k("Box sign-in result intent is null");
            return;
        }
        z80 z80VarE = z80.e(intent);
        g90 g90VarJ = g90.J(intent);
        if (g90VarJ != null) {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new ov0(pv0VarV, g90VarJ, null));
            return;
        }
        if (z80VarE == null || (str = z80VarE.d) == null) {
            String message = z80VarE != null ? z80VarE.getMessage() : null;
            if (message == null) {
                String str2 = "Box authorization failed";
                str = str2;
            } else {
                str = message;
            }
        } else {
            str = str2;
        }
        vr6.e$default(vr6.INSTANCE, pv0VarV.b, str, null, 4, null);
        ix6Var.k(str);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 1;
        V().g.e(this, new y20(i, new c7(this, 6)));
        int i2 = 5;
        V().h.e(this, new y20(i, new d7(this, i2)));
        V().f.e(this, new y20(i, new e7(this, i2)));
        pv0 pv0VarV = V();
        ix6 ix6Var = pv0VarV.h;
        if (pv0VarV.e) {
            return;
        }
        pv0VarV.e = true;
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("https://www.google.com"));
        List<ResolveInfo> listQueryIntentActivities = contextC.getPackageManager().queryIntentActivities(intent, 65536);
        listQueryIntentActivities.getClass();
        if (listQueryIntentActivities.isEmpty()) {
            String strG = dj7.g(R.string.no_browser_found_error);
            vr6.e$default(vr6.INSTANCE, pv0VarV.b, strG, null, 4, null);
            ix6Var.k(strG);
            return;
        }
        zu0 zu0Var = zu0.a;
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("org.swiftapps.swiftbackup.box://oauth"));
        g00 g00Var = g00.a;
        List<ResolveInfo> listQueryIntentActivities2 = g00.r().queryIntentActivities(intent2, 0);
        listQueryIntentActivities2.getClass();
        for (ResolveInfo resolveInfo : listQueryIntentActivities2) {
            vr6.i$default(vr6.INSTANCE, pv0VarV.b, "Handler activities: " + resolveInfo.activityInfo, null, 4, null);
        }
        if (listQueryIntentActivities2.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, pv0VarV.b, "No handler activity found for Box redirect URI: org.swiftapps.swiftbackup.box://oauth", null, 4, null);
            ix6Var.k("No handler activity found for Box redirect URI: org.swiftapps.swiftbackup.box://oauth");
        } else {
            ix6 ix6Var2 = pv0VarV.f;
            zu0 zu0Var2 = zu0.a;
            SwiftApp.Companion companion2 = SwiftApp.d;
            ix6Var2.k(uj.b(SwiftApp.Companion.c(), zu0.a().a().a()));
        }
    }
}
