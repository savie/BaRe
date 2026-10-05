package org.swiftapps.swiftbackup.settings;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.o;
import defpackage.cz4;
import defpackage.fj;
import defpackage.ga7;
import defpackage.gv7;
import defpackage.ha7;
import defpackage.ix0;
import defpackage.nc8;
import defpackage.pe4;
import defpackage.qo0;
import defpackage.sa1;
import defpackage.ur3;
import defpackage.uy;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppSwipeActionsActivity extends sa1 {
    public static final /* synthetic */ int Q = 0;
    public final gv7 P = new gv7(new fj(this, 9));

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.P;
        setContentView(((ga7) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((ga7) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.a0();
            supportActionBar.e0(R.string.swipe_actions);
        }
        if (bundle == null) {
            ur3 supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(supportFragmentManager);
            aVar.j(R.id.container, new uy());
            aVar.e();
        }
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_app_swipe_actions, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ha7.a.c(AppSettings.Companion.withSavedSettings());
        super.onDestroy();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.action_reset) {
            return super.onOptionsItemSelected(menuItem);
        }
        o oVarC = getSupportFragmentManager().C(R.id.container);
        uy uyVar = oVarC instanceof uy ? (uy) oVarC : null;
        if (uyVar == null) {
            return true;
        }
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences == null) {
            pe4.F("prefs");
            throw null;
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.getClass();
        editorEdit.remove("app_list_right_swipe_actions");
        editorEdit.remove("app_list_left_swipe_actions");
        editorEdit.apply();
        uyVar.l();
        return true;
    }

    @Override // defpackage.k28
    public final boolean s() {
        return false;
    }
}
