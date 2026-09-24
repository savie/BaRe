package org.swiftapps.swiftbackup.cloud.connect;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import defpackage.ak;
import defpackage.bk;
import defpackage.br2;
import defpackage.cr2;
import defpackage.cv;
import defpackage.dk;
import defpackage.dr2;
import defpackage.el;
import defpackage.fl4;
import defpackage.g90;
import defpackage.gv7;
import defpackage.il0;
import defpackage.io4;
import defpackage.jd4;
import defpackage.ji;
import defpackage.kz4;
import defpackage.nq7;
import defpackage.qo0;
import defpackage.uj;
import defpackage.vj;
import defpackage.vr6;
import defpackage.z80;
import defpackage.zn4;
import java.util.Map;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class DropboxSignInActivity extends il0 {
    public static final /* synthetic */ int P = 0;
    public final gv7 K = new gv7(new ak(this, 14));
    public final gv7 L = new gv7(new bk(this, 17));
    public final gv7 M = new gv7(new el(12));
    public boolean N;
    public boolean O;

    public static final String N(DropboxSignInActivity dropboxSignInActivity, vj vjVar) {
        Map map = vjVar.d;
        String str = (String) map.get("account_id");
        if (str != null) {
            return str;
        }
        String str2 = (String) map.get("uid");
        if (str2 != null) {
            return str2;
        }
        fl4 fl4VarE = new br2(new dk(vjVar, 22), null, 62).e(null, "/2/users/get_current_account");
        String strH = jd4.H(fl4VarE, "account_id");
        if (strH == null) {
            strH = "";
        }
        jd4.H(fl4VarE, "email");
        if (nq7.j0(strH)) {
            return null;
        }
        return strH;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        String str;
        if (i != 5010) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        this.O = true;
        if (intent == null) {
            vr6.e$default(vr6.INSTANCE, r(), "Dropbox AppAuth result intent is null.", null, 4, null);
            setResult(0);
            finish();
            return;
        }
        z80 z80VarE = z80.e(intent);
        g90 g90VarJ = g90.J(intent);
        if (g90VarJ != null) {
            M(R.string.processing);
            zn4 zn4Var = zn4.a;
            zn4.b(null, new cr2(this, g90VarJ, null));
            return;
        }
        if (z80VarE == null || (str = z80VarE.d) == null) {
            String message = z80VarE != null ? z80VarE.getMessage() : null;
            if (message == null) {
                String str2 = "Dropbox authorization failed.";
                str = str2;
            } else {
                str = message;
            }
        } else {
            str = str2;
        }
        vr6.e$default(vr6.INSTANCE, r(), str, null, 4, null);
        zn4 zn4Var2 = zn4.a;
        zn4.e(new cv(14, this, str));
        setResult(0);
        finish();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(((dr2) this.K.getValue()).a);
        this.N = bundle != null ? bundle.getBoolean("dropbox_app_auth_started", false) : false;
        this.O = bundle != null ? bundle.getBoolean("dropbox_app_auth_result_received", false) : false;
        ji jiVar = (ji) kz4.g.b("com.dropbox.android");
        if (jiVar != null) {
            if (!jiVar.isInstalled()) {
                jiVar = null;
            }
            if (jiVar != null) {
                vr6.i$default(vr6.INSTANCE, r(), "Dropbox app version: " + jiVar.getVersionName() + " (" + jiVar.getVersionCode() + ")", null, 4, null);
            }
        }
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putBoolean("dropbox_app_auth_started", this.N);
        bundle.putBoolean("dropbox_app_auth_result_received", this.O);
        super.onSaveInstanceState(bundle);
    }

    @Override // defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStart() {
        Log.d(r(), "onStart");
        if (!isFinishing() && !this.N && !this.O) {
            this.N = true;
            try {
                startActivityForResult(uj.b(this, ((uj) this.M.getValue()).a().a()), 5010);
            } catch (Exception e) {
                Log.e(r(), "Error in startAuth", e);
                String strB = io4.b(e);
                vr6.e$default(vr6.INSTANCE, r(), strB, null, 4, null);
                zn4 zn4Var = zn4.a;
                zn4.e(new cv(14, this, strB));
                setResult(0);
                finish();
            }
        }
        super.onStart();
    }
}
