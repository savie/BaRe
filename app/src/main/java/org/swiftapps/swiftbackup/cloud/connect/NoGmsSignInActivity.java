package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import defpackage.c7;
import defpackage.cv;
import defpackage.d45;
import defpackage.dj7;
import defpackage.f20;
import defpackage.g00;
import defpackage.gn5;
import defpackage.hz3;
import defpackage.il0;
import defpackage.in5;
import defpackage.io4;
import defpackage.ix6;
import defpackage.l90;
import defpackage.lm;
import defpackage.ls;
import defpackage.ms;
import defpackage.ne5;
import defpackage.ph6;
import defpackage.vr6;
import defpackage.w20;
import defpackage.zn4;
import defpackage.zs;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class NoGmsSignInActivity extends il0 {
    public static final /* synthetic */ int M = 0;
    public final l90 K = new l90(ph6.a(in5.class), new ls(this, 10), new f20(this, 8), new ms(this, 13));
    public int L = -1;

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final in5 V() {
        return (in5) this.K.getValue();
    }

    public final void O(Intent intent, int i) {
        try {
            startActivityForResult(intent, i);
        } catch (Exception e) {
            Log.e(r(), "Error in signIn", e);
            String strB = io4.b(e);
            vr6.e$default(vr6.INSTANCE, r(), strB, null, 4, null);
            zn4 zn4Var = zn4.a;
            zn4.e(new cv(14, this, strB));
        }
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1003) {
            V().j(intent, true);
        }
        if (i == 2004) {
            if (i2 == -1) {
                V().j(intent, false);
            } else {
                setResult(0);
                finish();
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.L = getIntent().getIntExtra("EXTRA_REQUEST_CODE", 1003);
        in5 in5VarV = V();
        int i = this.L;
        ix6 ix6Var = in5VarV.h;
        if (!in5VarV.e) {
            in5VarV.e = true;
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(Uri.parse("https://www.google.com"));
            List<ResolveInfo> listQueryIntentActivities = contextC.getPackageManager().queryIntentActivities(intent, 65536);
            listQueryIntentActivities.getClass();
            if (listQueryIntentActivities.isEmpty()) {
                String strG = dj7.g(R.string.no_browser_found_error);
                vr6.e$default(vr6.INSTANCE, in5VarV.b, strG, null, 4, null);
                ix6Var.k(strG);
            } else {
                Intent intent2 = new Intent();
                intent2.setPackage(SwiftApp.Companion.c().getPackageName());
                intent2.setAction("android.intent.action.VIEW");
                intent2.addCategory("android.intent.category.BROWSABLE");
                intent2.setData(gn5.b);
                g00 g00Var = g00.a;
                List<ResolveInfo> listQueryIntentActivities2 = g00.r().queryIntentActivities(intent2, 0);
                listQueryIntentActivities2.getClass();
                for (ResolveInfo resolveInfo : listQueryIntentActivities2) {
                    vr6.i$default(vr6.INSTANCE, in5VarV.b, "Handler activities: " + resolveInfo.activityInfo, null, 4, null);
                }
                if (listQueryIntentActivities2.isEmpty()) {
                    vr6.e$default(vr6.INSTANCE, in5VarV.b, "No handler activity found!", null, 4, null);
                    ix6Var.k("No handler activity found!");
                } else if (i == 1003) {
                    in5VarV.k(false);
                } else if (i == 2004) {
                    in5VarV.k(true);
                } else if (i == 3005) {
                    Log.d(in5VarV.b, "signOut() called");
                    hz3.b(null);
                    ((d45) in5VarV.f.getValue()).c();
                }
            }
        }
        V().i.e(this, new ne5(1, new zs(this, 12)));
        V().j.e(this, new ne5(1, new lm(this, 16)));
        V().g.e(this, new ne5(1, new w20(this, 18)));
        V().h.e(this, new ne5(1, new c7(this, 23)));
    }
}
