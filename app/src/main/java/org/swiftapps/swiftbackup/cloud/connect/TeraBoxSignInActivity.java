package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import defpackage.dj7;
import defpackage.e7;
import defpackage.ez;
import defpackage.g00;
import defpackage.gl0;
import defpackage.il0;
import defpackage.ix6;
import defpackage.k08;
import defpackage.k3;
import defpackage.l08;
import defpackage.l90;
import defpackage.n55;
import defpackage.nq7;
import defpackage.ox;
import defpackage.p30;
import defpackage.ph6;
import defpackage.q30;
import defpackage.qp8;
import defpackage.vr6;
import defpackage.zn4;
import defpackage.zz7;
import java.util.List;
import okhttp3.HttpUrl;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class TeraBoxSignInActivity extends il0 {
    public static final /* synthetic */ int N = 0;
    public final l90 K;
    public boolean L;
    public boolean M;

    public TeraBoxSignInActivity() {
        int i = 9;
        this.K = new l90(ph6.a(l08.class), new q30(this, i), new p30(this, i), new gl0(this, 10));
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final l08 V() {
        return (l08) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        l08 l08VarV = V();
        zz7 zz7Var = l08VarV.g;
        ix6 ix6Var = l08VarV.k;
        int i = 1;
        if (!l08VarV.e) {
            l08VarV.e = true;
            if (zz7Var.a()) {
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setData(Uri.parse("https://www.google.com"));
                List<ResolveInfo> listQueryIntentActivities = contextC.getPackageManager().queryIntentActivities(intent, 65536);
                listQueryIntentActivities.getClass();
                if (listQueryIntentActivities.isEmpty()) {
                    String strG = dj7.g(R.string.no_browser_found_error);
                    vr6.e$default(vr6.INSTANCE, l08VarV.b, strG, null, 4, null);
                    ix6Var.k(strG);
                } else {
                    HttpUrl.Builder builderG = HttpUrl.Companion.b("https://www.terabox.com/wap/outside/login").g();
                    builderG.d("clientId", "");
                    builderG.d("isFromApp", "1");
                    String str = builderG.e().h;
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    g00 g00Var = g00.a;
                    List<ResolveInfo> listQueryIntentActivities2 = g00.r().queryIntentActivities(intent2, 0);
                    listQueryIntentActivities2.getClass();
                    for (ResolveInfo resolveInfo : listQueryIntentActivities2) {
                        vr6.i$default(vr6.INSTANCE, l08VarV.b, "Handler activities: " + resolveInfo.activityInfo, null, 4, null);
                    }
                    if (listQueryIntentActivities2.isEmpty()) {
                        vr6.e$default(vr6.INSTANCE, l08VarV.b, "No handler activity found!", null, 4, null);
                        ix6Var.k("No handler activity found!");
                    } else {
                        l08VarV.i.k(str);
                    }
                }
            } else {
                SwiftApp.Companion companion2 = SwiftApp.d;
                String strG2 = dj7.g(R.string.terabox_api_credentials_missing);
                vr6.e$default(vr6.INSTANCE, l08VarV.b, strG2, null, 4, null);
                ix6Var.k(strG2);
            }
        }
        int i2 = 4;
        V().i.e(this, new ez(i2, new e7(this, 26)));
        V().j.e(this, new ez(i2, new k3(this, 21)));
        V().k.e(this, new ez(i2, new qp8(this, i)));
        V().l.e(this, new ez(i2, new ox(this, 22)));
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        this.M = true;
        this.L = false;
        l08 l08VarV = V();
        Uri data = intent.getData();
        if (data == null) {
            vr6.e$default(vr6.INSTANCE, l08VarV.b, "handleSignInResult: Sign in result intent is null", null, 4, null);
            l08VarV.k.k("handleSignInResult: Sign in result intent is null");
        } else {
            String queryParameter = data.getQueryParameter("code");
            if (queryParameter == null || nq7.j0(queryParameter)) {
                vr6.e$default(vr6.INSTANCE, l08VarV.b, "Invalid response from server. uri=" + data, null, 4, null);
                l08VarV.j.k(Boolean.FALSE);
            } else {
                vr6.i$default(vr6.INSTANCE, l08VarV.b, "Authorization code received.", null, 4, null);
                zn4 zn4Var = zn4.a;
                zn4.b(null, new k08(l08VarV, queryParameter, null));
            }
        }
        super.onNewIntent(intent);
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        Log.d(r(), "onStart");
        if (this.L) {
            this.L = false;
            zn4 zn4Var = zn4.a;
            zn4.f(500L, new n55(this, 10));
        }
        super.onStart();
    }
}
