package org.swiftapps.swiftbackup.settings;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.o;
import defpackage.a3;
import defpackage.cf5;
import defpackage.eu1;
import defpackage.fs4;
import defpackage.ga7;
import defpackage.gv7;
import defpackage.ha7;
import defpackage.hs4;
import defpackage.ix0;
import defpackage.nc8;
import defpackage.pe4;
import defpackage.qo0;
import defpackage.sa1;
import defpackage.sj1;
import defpackage.ur3;
import defpackage.v11;
import defpackage.zn3;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SettingsDetailActivity extends sa1 {
    public static final /* synthetic */ int R = 0;
    public final gv7 P = new gv7(new hs4(this, 11));
    public o Q;

    @Override // defpackage.il0
    public final o C() {
        o oVar = this.Q;
        if (oVar != null) {
            return oVar;
        }
        pe4.F("mFragment");
        throw null;
    }

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
            supportActionBar.f0(getIntent().getStringExtra("category_title"));
        }
        o oVarE = E(bundle);
        if (oVarE == null) {
            Intent intent = getIntent();
            intent.getClass();
            switch (intent.getIntExtra("category", 1)) {
                case 1:
                    oVarE = new a();
                    break;
                case 2:
                    oVarE = new cf5();
                    break;
                case 3:
                    oVarE = new v11();
                    break;
                case 4:
                    oVarE = new fs4();
                    break;
                case 5:
                    oVarE = new eu1();
                    break;
                case 6:
                    oVarE = new a3();
                    break;
                case 7:
                    oVarE = new sj1();
                    break;
                case 8:
                    oVarE = new zn3();
                    break;
                default:
                    oVarE = new a();
                    break;
            }
        }
        this.Q = oVarE;
        ur3 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(supportFragmentManager);
        o oVar = this.Q;
        if (oVar == null) {
            pe4.F("mFragment");
            throw null;
        }
        aVar.j(R.id.container, oVar);
        aVar.e();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        ha7.a.c(AppSettings.Companion.withSavedSettings());
        super.onDestroy();
    }

    @Override // defpackage.k28
    public final boolean s() {
        return false;
    }
}
