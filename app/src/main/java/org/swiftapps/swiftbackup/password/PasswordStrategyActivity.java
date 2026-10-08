package org.swiftapps.swiftbackup.password;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import defpackage.by5;
import defpackage.ez;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.ha7;
import defpackage.hj;
import defpackage.hs4;
import defpackage.il0;
import defpackage.ix0;
import defpackage.kx2;
import defpackage.l90;
import defpackage.nc8;
import defpackage.nq7;
import defpackage.p30;
import defpackage.ph6;
import defpackage.q30;
import defpackage.s52;
import defpackage.sz8;
import defpackage.to5;
import defpackage.us5;
import defpackage.ux5;
import defpackage.wx5;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class PasswordStrategyActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final gv7 L;
    public final gv7 N;
    public final l90 K = new l90(ph6.a(by5.class), new q30(this, 8), new p30(this, 8), new gl0(this, 8));
    public final gv7 M = new gv7(new hs4(this, 6));

    public PasswordStrategyActivity() {
        int i = 1;
        this.L = new gv7(new to5(this, i));
        this.N = new gv7(new us5(this, i));
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public final by5 V() {
        return (by5) this.K.getValue();
    }

    @Override // androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1981811) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        V v = V.INSTANCE;
        String str = null;
        String string = v.getZ().getString("saved_user_password", null);
        if (string == null || string.length() <= 0 || nq7.j0(string)) {
            string = null;
        }
        by5 by5VarA0 = a0();
        if (string == null || string.length() == 0 || nq7.j0(string)) {
            ux5 ux5Var = ux5.STANDARD_PASSWORD;
            ux5Var.getClass();
            v.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var)).apply();
            v.getZ().edit().putString("saved_user_password", null).apply();
        } else {
            ux5 ux5Var2 = ux5.USER_PASSWORD;
            ux5Var2.getClass();
            v.getZ().edit().putInt("saved_password_mode", ((kx2) ux5.getEntries()).indexOf(ux5Var2)).apply();
            if (string.length() > 0 && !nq7.j0(string)) {
                str = string;
            }
            v.getZ().edit().putString("saved_user_password", str).apply();
        }
        by5VarA0.k();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.L;
        setContentView(((wx5) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((wx5) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(((wx5) gv7Var.getValue()).e, 7);
        a0().e.e(this, new ez(3, new s52(1, this, PasswordStrategyActivity.class, "updateState", "updateState(Lorg/swiftapps/swiftbackup/password/PasswordStrategyVM$State;)V", 0, 2)));
        a0().f.e(this, new ez(3, new hj(this, 22)));
    }

    @Override // defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(new Bundle());
    }

    @Override // defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onStop() {
        super.onStop();
        ha7.a.c(AppSettings.Companion.withSavedSettings());
    }
}
