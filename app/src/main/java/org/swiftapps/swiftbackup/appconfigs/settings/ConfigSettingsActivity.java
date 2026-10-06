package org.swiftapps.swiftbackup.appconfigs.settings;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.a;
import defpackage.ah;
import defpackage.b56;
import defpackage.bh;
import defpackage.bk;
import defpackage.br1;
import defpackage.cz;
import defpackage.d76;
import defpackage.eg1;
import defpackage.ek;
import defpackage.er1;
import defpackage.f20;
import defpackage.fr1;
import defpackage.gv7;
import defpackage.ix0;
import defpackage.j51;
import defpackage.l90;
import defpackage.lr1;
import defpackage.mp6;
import defpackage.mr1;
import defpackage.nc8;
import defpackage.ph6;
import defpackage.qe3;
import defpackage.re3;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.t37;
import defpackage.t9;
import defpackage.ur3;
import defpackage.wf;
import defpackage.zc2;
import defpackage.zf1;
import defpackage.zn4;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ConfigSettingsActivity extends sa1 {
    public static final /* synthetic */ int V = 0;
    public final l90 P = new l90(ph6.a(mr1.class), new j51(this, 1), new wf(this, 3), new f20(this, 2));
    public final gv7 Q = new gv7(new ek(this, 19));
    public final gv7 R = new gv7(new ah(this, 18));
    public final gv7 S = new gv7(new bh(this, 15));
    public final gv7 T = new gv7(new d76(this, 16));
    public final t9 U = (t9) registerForActivityResult(new er1(this), new t37());

    @Override // defpackage.il0
    public final mr1 V() {
        return (mr1) this.P.getValue();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.Q;
        setContentView(((fr1) gv7Var.getValue()).a);
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            finish();
            return;
        }
        V v = V.INSTANCE;
        if (!v.getA()) {
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(this, 0));
            finish();
            return;
        }
        mr1 mr1VarU = U();
        ConfigSettings configSettings = (ConfigSettings) this.R.getValue();
        configSettings.getClass();
        int i = 1;
        if (!mr1VarU.e) {
            mr1VarU.e = true;
            mr1VarU.k(configSettings);
            if (!v.getVp()) {
                zc2 zc2Var = re3.a;
                String str = mr1VarU.b;
                ConfigsData configsData = br1.e;
                try {
                    new qe3(str, "configs=" + (configsData != null ? configsData.getSize() : null)).invoke();
                } catch (Exception unused) {
                }
            }
        }
        setSupportActionBar((Toolbar) ((ix0) ((fr1) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        ((fr1) gv7Var.getValue()).d.setOnClickListener(new zf1(this, i));
        if (bundle == null) {
            ur3 supportFragmentManager = getSupportFragmentManager();
            supportFragmentManager.getClass();
            a aVar = new a(supportFragmentManager);
            aVar.j(R.id.settings_container, new lr1());
            aVar.e();
        }
        U().f.e(this, new eg1(new cz(this, 3), i));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_config_settings, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_delete);
        if (menuItemFindItem != null) {
            Drawable icon = menuItemFindItem.getIcon();
            icon.getClass();
            int iR = sz8.r(this);
            Drawable drawableMutate = icon.mutate();
            drawableMutate.getClass();
            drawableMutate.setTint(iR);
            menuItemFindItem.setIcon(drawableMutate);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() == R.id.action_delete) {
            Const.K(this, R.string.delete_config_settings, new bk(this, 13), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
