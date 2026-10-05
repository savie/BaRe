package org.swiftapps.swiftbackup.notice;

import android.os.Bundle;
import android.util.Log;
import androidx.appcompat.widget.Toolbar;
import defpackage.f20;
import defpackage.gv7;
import defpackage.hs4;
import defpackage.il0;
import defpackage.ix0;
import defpackage.l90;
import defpackage.lo5;
import defpackage.ls;
import defpackage.ms;
import defpackage.nc8;
import defpackage.ph6;
import defpackage.qo0;
import defpackage.sz8;
import defpackage.to5;
import defpackage.uo5;
import defpackage.w92;
import defpackage.yi5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class NoticeViewActivity extends il0 {
    public static final /* synthetic */ int O = 0;
    public final l90 K = new l90(ph6.a(uo5.class), new ls(this, 11), new f20(this, 9), new ms(this, 14));
    public final gv7 L = new gv7(new yi5(this, 1));
    public final gv7 M = new gv7(new to5(this, 0));
    public final gv7 N = new gv7(new hs4(this, 5));

    @Override // defpackage.il0
    public final boolean D() {
        return false;
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return (uo5) this.K.getValue();
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        nc8 supportActionBar;
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("extra_message");
        if (stringExtra == null || stringExtra.length() == 0) {
            Log.d(r(), "Invalid message = " + stringExtra);
            finish();
            return;
        }
        gv7 gv7Var = this.L;
        setContentView(((lo5) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((lo5) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.Z(true);
        }
        sz8.b(((lo5) gv7Var.getValue()).c, 7);
        String stringExtra2 = getIntent().getStringExtra("extra_title");
        if (stringExtra2 != null) {
            if (stringExtra2.length() <= 0) {
                stringExtra2 = null;
            }
            if (stringExtra2 != null && (supportActionBar = getSupportActionBar()) != null) {
                supportActionBar.f0(stringExtra2);
            }
        }
        l90 l90Var = this.K;
        ((uo5) l90Var.getValue()).e.k(stringExtra);
        ((uo5) l90Var.getValue()).e.e(this, new w92(this, 2));
    }
}
