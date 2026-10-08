package org.swiftapps.swiftbackup.settings;

import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.o;
import defpackage.er6;
import defpackage.ga7;
import defpackage.gv7;
import defpackage.ha7;
import defpackage.ix0;
import defpackage.nc8;
import defpackage.pa7;
import defpackage.pe4;
import defpackage.pr4;
import defpackage.qo0;
import defpackage.ur3;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class SettingsActivity extends er6 {
    public static final /* synthetic */ int Z = 0;
    public final gv7 X = new gv7(new pr4(this, 10));
    public o Y;

    @Override // defpackage.il0
    public final o C() {
        o oVar = this.Y;
        if (oVar != null) {
            return oVar;
        }
        pe4.F("mFragment");
        throw null;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 a0() {
        return null;
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.X;
        setContentView(((ga7) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((ga7) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.a0();
        }
        o oVarE = E(bundle);
        if (oVarE == null) {
            oVarE = new pa7();
        }
        this.Y = oVarE;
        ur3 supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(supportFragmentManager);
        o oVar = this.Y;
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
