package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import defpackage.as4;
import defpackage.dj7;
import defpackage.e7;
import defpackage.g00;
import defpackage.h90;
import defpackage.hj;
import defpackage.il0;
import defpackage.io4;
import defpackage.ix6;
import defpackage.k3;
import defpackage.l90;
import defpackage.nq7;
import defpackage.o30;
import defpackage.ox;
import defpackage.p30;
import defpackage.ph6;
import defpackage.q30;
import defpackage.qv5;
import defpackage.rv5;
import defpackage.sv5;
import defpackage.v80;
import defpackage.vr6;
import defpackage.xs1;
import defpackage.zn4;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PCloudSignInActivity extends il0 {
    public static final /* synthetic */ int M = 0;
    public final l90 K;
    public final int L = 1856;

    public PCloudSignInActivity() {
        int i = 7;
        this.K = new l90(ph6.a(sv5.class), new p30(this, i), new o30(this, 10), new q30(this, i));
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final sv5 V() {
        return (sv5) this.K.getValue();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        v80 v80Var;
        super.onActivityResult(i, i2, intent);
        if (i == this.L && i2 == -1) {
            sv5 sv5VarV = V();
            if (intent != null && (v80Var = (v80) io4.j(sv5VarV.b, "onActivityResult", false, new as4(intent, 7), 12)) != null) {
                if (v80Var.b == h90.a) {
                    String str = v80Var.c;
                    if (str == null || str.length() == 0 || nq7.j0(str)) {
                        vr6.e$default(vr6.INSTANCE, sv5VarV.b, xs1.j("Invalid token from server ", str), null, 4, null);
                        sv5VarV.j.k(Boolean.FALSE);
                        return;
                    }
                    vr6 vr6Var = vr6.INSTANCE;
                    String str2 = sv5VarV.b;
                    String strG0 = nq7.G0(5, str);
                    int length = str.length();
                    vr6.i$default(vr6Var, str2, dj7.l("Token received: ", strG0, "...", str.substring(length - (5 > length ? length : 5))), null, 4, null);
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new rv5(sv5VarV, str, null));
                    return;
                }
                vr6.e$default(vr6.INSTANCE, sv5VarV.b, "handleSignInResult:: authData=" + v80Var, null, 4, null);
                sv5VarV.k.k(v80Var.n);
            }
        }
        setResult(0);
        finish();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sv5 sv5VarV = V();
        ix6 ix6Var = sv5VarV.k;
        int i = 0;
        if (!sv5VarV.e) {
            sv5VarV.e = true;
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(Uri.parse("https://www.google.com"));
            List<ResolveInfo> listQueryIntentActivities = contextC.getPackageManager().queryIntentActivities(intent, 65536);
            listQueryIntentActivities.getClass();
            if (listQueryIntentActivities.isEmpty()) {
                String strG = dj7.g(R.string.no_browser_found_error);
                vr6.e$default(vr6.INSTANCE, sv5VarV.b, strG, null, 4, null);
                ix6Var.k(strG);
            } else {
                Intent intentJ = sv5VarV.j();
                g00 g00Var = g00.a;
                List<ResolveInfo> listQueryIntentActivities2 = g00.r().queryIntentActivities(intentJ, 0);
                listQueryIntentActivities2.getClass();
                for (ResolveInfo resolveInfo : listQueryIntentActivities2) {
                    vr6.i$default(vr6.INSTANCE, sv5VarV.b, "Handler activities: " + resolveInfo.activityInfo, null, 4, null);
                }
                if (listQueryIntentActivities2.isEmpty()) {
                    vr6.e$default(vr6.INSTANCE, sv5VarV.b, "No handler activity found!", null, 4, null);
                    ix6Var.k("No handler activity found!");
                } else {
                    sv5VarV.i.k(sv5VarV.j());
                }
            }
        }
        V().i.e(this, new qv5(new e7(this, 22), i));
        V().j.e(this, new qv5(new k3(this, 18), i));
        V().k.e(this, new qv5(new hj(this, 21), i));
        V().l.e(this, new qv5(new ox(this, 20), i));
    }

    @Override // defpackage.io1, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
    }
}
