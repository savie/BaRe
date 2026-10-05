package org.swiftapps.swiftbackup.appsquickactions;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.a;
import androidx.fragment.app.o;
import defpackage.a40;
import defpackage.dk;
import defpackage.gv7;
import defpackage.ix0;
import defpackage.l90;
import defpackage.nc8;
import defpackage.o30;
import defpackage.p30;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.q30;
import defpackage.qo0;
import defpackage.r30;
import defpackage.sa1;
import defpackage.ur3;
import defpackage.y30;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AppsQuickActionsActivity extends sa1 {
    public static final /* synthetic */ int S = 0;
    public final l90 P;
    public final gv7 Q = new gv7(new dk(this, 8));
    public o R;

    public AppsQuickActionsActivity() {
        int i = 0;
        this.P = new l90(ph6.a(a40.class), new p30(this, i), new o30(this, i), new q30(this, i));
    }

    @Override // defpackage.il0
    public final o C() {
        o oVar = this.R;
        if (oVar != null) {
            return oVar;
        }
        pe4.F("mFragment");
        throw null;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return (a40) this.P.getValue();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.Q;
        setContentView(((r30) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((r30) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        o oVarE = E(bundle);
        if (oVarE == null) {
            oVarE = new y30();
        }
        this.R = oVarE;
        ur3 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        a aVar = new a(supportFragmentManager);
        aVar.b = 0;
        aVar.c = 0;
        aVar.d = 0;
        aVar.e = 0;
        o oVar = this.R;
        if (oVar == null) {
            pe4.F("mFragment");
            throw null;
        }
        aVar.j(R.id.fragmentContainer, oVar);
        aVar.e();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_apps_dash, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_app_backup_settings) {
            String string = getString(R.string.app_backups);
            string.getClass();
            Intent intent = new Intent(this, (Class<?>) SettingsDetailActivity.class);
            intent.putExtra("category", 1);
            intent.putExtra("category_title", string);
            startActivity(intent);
        } else if (itemId == R.id.action_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // defpackage.k28
    public final boolean s() {
        return false;
    }
}
