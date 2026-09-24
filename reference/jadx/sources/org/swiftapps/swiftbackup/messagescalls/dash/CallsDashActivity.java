package org.swiftapps.swiftbackup.messagescalls.dash;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.dz5;
import defpackage.e11;
import defpackage.fj;
import defpackage.gv7;
import defpackage.i00;
import defpackage.ix0;
import defpackage.l90;
import defpackage.nc8;
import defpackage.o30;
import defpackage.oi7;
import defpackage.p30;
import defpackage.ph6;
import defpackage.q30;
import defpackage.s11;
import defpackage.sz8;
import defpackage.x01;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class CallsDashActivity extends x01 {
    public static final /* synthetic */ int T = 0;
    public final l90 P;
    public final gv7 Q = new gv7(new fj(this, 13));
    public boolean R;
    public boolean S;

    public CallsDashActivity() {
        int i = 1;
        this.P = new l90(ph6.a(s11.class), new p30(this, i), new o30(this, i), new q30(this, 3));
    }

    public static final void a0(CallsDashActivity callsDashActivity, TextView textView, Integer num) {
        String string = callsDashActivity.getString(R.string.cloud_backups);
        string.getClass();
        if (num != null && num.intValue() > 0) {
            string = string + " (" + num + ")";
        }
        textView.setText(string);
    }

    public static final void b0(CallsDashActivity callsDashActivity, TextView textView, Integer num) {
        String string = callsDashActivity.getString(R.string.device_backups);
        string.getClass();
        if (num != null && num.intValue() > 0) {
            string = string + " (" + num + ")";
        }
        textView.setText(string);
    }

    public final void X() {
        e11 e11Var = new e11(this, 0);
        dz5 dz5Var = dz5.a;
        if (dz5.h("android.permission.WRITE_CALL_LOG") && dz5.h("android.permission.READ_CALL_LOG") && dz5.h("android.permission.READ_CONTACTS")) {
            e11Var.b(true, false);
        } else {
            dz5.a(this, e11Var, "android.permission.WRITE_CALL_LOG", "android.permission.READ_CALL_LOG", "android.permission.READ_CONTACTS");
        }
    }

    public final oi7 Y() {
        return (oi7) this.Q.getValue();
    }

    @Override // defpackage.x01
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final s11 U() {
        return (s11) this.P.getValue();
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 9785) {
            X();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(Y().a);
        boolean z = false;
        if (bundle == null && getIntent().getBooleanExtra("highlight_cloud_card", false)) {
            z = true;
        }
        this.R = z;
        setSupportActionBar((Toolbar) ((ix0) Y().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.b(Y().d, 7);
        Y().c.setOnClickListener(new i00(this, 2));
        CoordinatorLayout coordinatorLayout = Y().a;
        coordinatorLayout.getClass();
        coordinatorLayout.setVisibility(8);
        X();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_calls_dash, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_calls_settings) {
            String string = getString(R.string.call_logs_backups);
            string.getClass();
            Intent intent = new Intent(this, (Class<?>) SettingsDetailActivity.class);
            intent.putExtra("category", 3);
            intent.putExtra("category_title", string);
            startActivity(intent);
        } else if (itemId == R.id.action_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
