package org.swiftapps.swiftbackup.messagescalls.dash;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.dz5;
import defpackage.gs;
import defpackage.gv7;
import defpackage.ix0;
import defpackage.je5;
import defpackage.l90;
import defpackage.ms;
import defpackage.n55;
import defpackage.nc8;
import defpackage.ns;
import defpackage.oi7;
import defpackage.pf;
import defpackage.ph6;
import defpackage.sz8;
import defpackage.ud5;
import defpackage.ye5;
import defpackage.z20;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.messagescalls.conversationsview.ConversationsActivity;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class MessagesDashActivity extends je5 {
    public static final /* synthetic */ int T = 0;
    public final l90 P;
    public final gv7 Q = new gv7(new n55(this, 2));
    public boolean R;
    public boolean S;

    public MessagesDashActivity() {
        int i = 12;
        this.P = new l90(ph6.a(ye5.class), new ns(this, 15), new ms(this, i), new z20(this, i));
    }

    public static final void a0(MessagesDashActivity messagesDashActivity, TextView textView, Integer num) {
        String string = messagesDashActivity.getString(R.string.cloud_backups);
        string.getClass();
        if (num != null && num.intValue() > 0) {
            string = string + " (" + num + ")";
        }
        textView.setText(string);
    }

    public static final void b0(MessagesDashActivity messagesDashActivity, TextView textView, Integer num) {
        String string = messagesDashActivity.getString(R.string.device_backups);
        string.getClass();
        if (num != null && num.intValue() > 0) {
            string = string + " (" + num + ")";
        }
        textView.setText(string);
    }

    public final void X() {
        gv7 gv7Var = ud5.a;
        pf pfVar = new pf(this, 7);
        dz5 dz5Var = dz5.a;
        if (dz5.h("android.permission.READ_SMS") && dz5.h("android.permission.READ_CONTACTS")) {
            pfVar.b(true, false);
        } else {
            dz5.a(this, pfVar, "android.permission.READ_SMS", "android.permission.READ_CONTACTS");
        }
    }

    public final oi7 Y() {
        return (oi7) this.Q.getValue();
    }

    @Override // defpackage.je5
    /* JADX INFO: renamed from: Z, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final ye5 U() {
        return (ye5) this.P.getValue();
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
        Y().c.setOnClickListener(new gs(this, 7));
        CoordinatorLayout coordinatorLayout = Y().a;
        coordinatorLayout.getClass();
        coordinatorLayout.setVisibility(8);
        X();
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_sms_dash, menu);
        menu.findItem(R.id.action_view_messages).setVisible(false);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_sms_settings) {
            String string = getString(R.string.messages_backups);
            string.getClass();
            Intent intent = new Intent(this, (Class<?>) SettingsDetailActivity.class);
            intent.putExtra("category", 2);
            intent.putExtra("category_title", string);
            startActivity(intent);
        } else if (itemId == R.id.action_view_messages) {
            startActivity(new Intent(this, (Class<?>) ConversationsActivity.class));
        } else if (itemId == R.id.action_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
