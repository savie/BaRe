package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.webkit.WebView;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import defpackage.ao;
import defpackage.be8;
import defpackage.bx3;
import defpackage.c7;
import defpackage.d45;
import defpackage.d7;
import defpackage.dj7;
import defpackage.e7;
import defpackage.el1;
import defpackage.er8;
import defpackage.gv7;
import defpackage.gz3;
import defpackage.i6;
import defpackage.il0;
import defpackage.iq0;
import defpackage.ix6;
import defpackage.kn3;
import defpackage.l90;
import defpackage.lm;
import defpackage.mo3;
import defpackage.ms;
import defpackage.nq7;
import defpackage.ns;
import defpackage.p04;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.px;
import defpackage.q04;
import defpackage.qz3;
import defpackage.u62;
import defpackage.vr6;
import defpackage.w20;
import defpackage.y20;
import defpackage.z20;
import defpackage.zs;
import defpackage.zv3;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class GmsSignInActivity extends il0 {
    public static final /* synthetic */ int N = 0;
    public final l90 K = new l90(ph6.a(gz3.class), new ns(this, 12), new ms(this, 10), new z20(this, 7));
    public final gv7 L = new gv7(new kn3(this, 2));
    public final gv7 M = new gv7(new mo3(this, 3));

    public static final zv3 N(GmsSignInActivity gmsSignInActivity) {
        SwiftApp.Companion companion = SwiftApp.d;
        String googleAuthWebClientId = SwiftApp.Companion.a().getGoogleAuthWebClientId();
        googleAuthWebClientId.getClass();
        bx3 bx3Var = new bx3(googleAuthWebClientId);
        ArrayList arrayList = new ArrayList();
        arrayList.add(bx3Var);
        return new zv3(el1.v1(arrayList), false);
    }

    public static final void O(GmsSignInActivity gmsSignInActivity, ao aoVar) {
        if (!(aoVar instanceof u62) || !pe4.d((String) aoVar.a, "com.google.android.libraries.identity.googleid.TYPE_GOOGLE_ID_TOKEN_CREDENTIAL")) {
            gmsSignInActivity.U().j("Unsupported Google credential", false);
            return;
        }
        try {
            p04 p04VarA = i6.a((Bundle) aoVar.b);
            gz3 gz3VarU = gmsSignInActivity.U();
            String str = p04VarA.c;
            if (str != null && !nq7.j0(str)) {
                qz3 qz3Var = new qz3(str, null);
                d45 d45Var = (d45) gz3VarU.f.getValue();
                px pxVar = new px(gz3VarU, 9);
                d45Var.getClass();
                FirebaseAuth.getInstance().d(qz3Var).addOnCompleteListener(new iq0(d45Var, pxVar));
                return;
            }
            ix6 ix6Var = gz3VarU.i;
            SwiftApp.Companion companion = SwiftApp.d;
            ix6Var.k(SwiftApp.Companion.c().getString(R.string.auth_failed));
        } catch (q04 e) {
            vr6.e$default(vr6.INSTANCE, gmsSignInActivity.r(), "Failed to parse Google ID token", e, null, 8, null);
            gmsSignInActivity.U().j(e.getMessage(), false);
        }
    }

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public final gz3 U() {
        return (gz3) this.K.getValue();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 2004) {
            if (i2 == -1) {
                setResult(-1);
                finish();
            } else {
                setResult(0);
                finish();
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo;
        super.onCreate(bundle);
        gz3 gz3VarU = U();
        int iIntValue = ((Number) this.M.getValue()).intValue();
        if (!gz3VarU.e) {
            gz3VarU.e = true;
            SwiftApp.Companion companion = SwiftApp.d;
            Context contextC = SwiftApp.Companion.c();
            WeakHashMap weakHashMap = er8.a;
            PackageInfo currentWebViewPackage = WebView.getCurrentWebViewPackage();
            if (currentWebViewPackage == null) {
                currentWebViewPackage = null;
                try {
                    String str = (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", null).invoke(null, null);
                    if (str != null) {
                        currentWebViewPackage = contextC.getPackageManager().getPackageInfo(str, 0);
                    }
                } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                }
            }
            if (currentWebViewPackage != null && (applicationInfo = currentWebViewPackage.applicationInfo) != null) {
                String strL = dj7.l("Name=", applicationInfo.name, ", Package=", applicationInfo.packageName);
                vr6.i$default(vr6.INSTANCE, gz3VarU.b, "WebView: ".concat(strL), null, 4, null);
                SwiftApp.Companion companion2 = SwiftApp.d;
                List<FirebaseApp> apps = FirebaseApp.getApps(SwiftApp.Companion.c());
                apps.getClass();
                if (!apps.isEmpty()) {
                    FirebaseCrashlytics.getInstance().setCustomKey("WebView", strL);
                }
            }
            be8 be8Var = be8.a;
            if (iIntValue == 1003) {
                gz3VarU.j.k(be8Var);
            } else if (iIntValue == 2004) {
                gz3VarU.k.k(be8Var);
            } else if (iIntValue == 3005) {
                gz3VarU.l.k(be8Var);
            }
        }
        U().j.e(this, new y20(3, new zs(this, 7)));
        U().k.e(this, new y20(3, new lm(this, 10)));
        U().l.e(this, new y20(3, new w20(this, 14)));
        U().g.e(this, new y20(3, new c7(this, 18)));
        U().i.e(this, new y20(3, new d7(this, 13)));
        U().h.e(this, new y20(3, new e7(this, 15)));
    }
}
