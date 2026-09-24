package org.swiftapps.swiftbackup.appconfigs.list;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import defpackage.b56;
import defpackage.bh;
import defpackage.br1;
import defpackage.d76;
import defpackage.e7;
import defpackage.ej;
import defpackage.fj;
import defpackage.fm7;
import defpackage.g84;
import defpackage.gv7;
import defpackage.h00;
import defpackage.hl1;
import defpackage.hs;
import defpackage.hv1;
import defpackage.i00;
import defpackage.il0;
import defpackage.ix0;
import defpackage.jh6;
import defpackage.jx2;
import defpackage.k3;
import defpackage.kf;
import defpackage.kx2;
import defpackage.l90;
import defpackage.lf;
import defpackage.ls;
import defpackage.mp6;
import defpackage.ms;
import defpackage.nc8;
import defpackage.nr1;
import defpackage.ns;
import defpackage.ph6;
import defpackage.qr7;
import defpackage.rj1;
import defpackage.rs9;
import defpackage.s35;
import defpackage.sz8;
import defpackage.u10;
import defpackage.u95;
import defpackage.uq1;
import defpackage.vq1;
import defpackage.vr4;
import defpackage.w3;
import defpackage.wb1;
import defpackage.wq1;
import defpackage.ym7;
import defpackage.yq1;
import defpackage.z3;
import defpackage.zn4;
import defpackage.zq1;
import defpackage.zx2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ConfigListActivity extends il0 {
    public static final /* synthetic */ int R = 0;
    public final l90 K;
    public final gv7 L = new gv7(new bh(this, 13));
    public final gv7 M = new gv7(new d76(this, 14));
    public final gv7 N = new gv7(new kf(this, 20));
    public final gv7 O = new gv7(new lf(this, 15));
    public final gv7 P = new gv7(new ej(this, 12));
    public final gv7 Q = new gv7(new fj(this, 17));

    public ConfigListActivity() {
        int i = 8;
        this.K = new l90(ph6.a(a.class), new ms(this, i), new ls(this, 6), new ns(this, i));
    }

    public final RecyclerView N() {
        return (RecyclerView) this.N.getValue();
    }

    public final nr1 O() {
        return (nr1) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public final a V() {
        return (a) this.K.getValue();
    }

    public final void Q() {
        Integer size;
        ConfigsData configsData = br1.e;
        int iIntValue = (configsData == null || (size = configsData.getSize()) == null) ? 0 : size.intValue();
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.d0(Const.p(this, iIntValue, 20, false));
        }
    }

    public final void R(ym7 ym7Var) {
        int i = wq1.a[ym7Var.ordinal()];
        gv7 gv7Var = this.Q;
        gv7 gv7Var2 = this.P;
        gv7 gv7Var3 = this.M;
        if (i == 1) {
            sz8.c0((CircularProgressIndicator) gv7Var3.getValue());
            sz8.W(N());
            ((zx2) gv7Var2.getValue()).a.setVisibility(8);
            sz8.W((ExtendedFloatingActionButton) gv7Var.getValue());
            return;
        }
        if (i == 2) {
            sz8.W((CircularProgressIndicator) gv7Var3.getValue());
            sz8.c0(N());
            ((zx2) gv7Var2.getValue()).a.setVisibility(8);
            sz8.c0((ExtendedFloatingActionButton) gv7Var.getValue());
            return;
        }
        if (i != 3) {
            g84.i(ym7Var, "Status not handled = ");
            return;
        }
        sz8.W((CircularProgressIndicator) gv7Var3.getValue());
        sz8.W(N());
        ((zx2) gv7Var2.getValue()).a.setVisibility(0);
        sz8.W((ExtendedFloatingActionButton) gv7Var.getValue());
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(O().a);
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            finish();
            return;
        }
        int i = 0;
        if (!V.INSTANCE.getA()) {
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(this, i));
            finish();
            return;
        }
        Toolbar toolbar = (Toolbar) ((ix0) O().b.c).c;
        setSupportActionBar(toolbar);
        nc8 supportActionBar = getSupportActionBar();
        int i2 = 4;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            toolbar.setOnClickListener(new hs(this, i2));
        }
        Q();
        RecyclerView recyclerViewN = N();
        int i3 = 7;
        sz8.b(recyclerViewN, 7);
        recyclerViewN.setLayoutManager(new PreCachingLinearLayoutManager(this));
        yq1 yq1Var = (yq1) this.O.getValue();
        yq1Var.i = new u10(this, 3);
        recyclerViewN.setAdapter(yq1Var);
        zx2 zx2Var = (zx2) this.P.getValue();
        zx2Var.d.setImageResource(R.drawable.ic_configs);
        zx2Var.e.setText(R.string.custom_configurations_description);
        MaterialButton materialButton = zx2Var.b;
        materialButton.setText(R.string.new_config);
        materialButton.setOnClickListener(new h00(this, 2));
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.Q.getValue();
        sz8.f0(extendedFloatingActionButton, N(), true);
        extendedFloatingActionButton.setOnClickListener(new i00(this, 5));
        R(ym7.LOADING);
        a aVarV = V();
        if (!aVarV.e) {
            aVarV.e = true;
            zn4 zn4Var2 = zn4.a;
            zn4.b(null, new zq1(aVarV, null, i));
        }
        V().g.e(this, new wb1(i2, new e7(this, 9)));
        V().h.e(this, new wb1(i2, new k3(this, i3)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_config_list, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onLabelsUpdatedEvent(vr4 vr4Var) {
        vr4Var.getClass();
        Log.d(r(), "Labels update event received: " + vr4Var);
        u95 u95Var = V().h;
        u95Var.k(u95Var.d());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        int i = 0;
        if (itemId == R.id.action_sort) {
            fm7 fm7Var = (fm7) V().h.d();
            List list = fm7Var != null ? fm7Var.a : null;
            if (list == null || list.isEmpty()) {
                Const.L();
            } else {
                jx2 entries = a.b.getEntries();
                jx2 entries2 = a.b.getEntries();
                V();
                int iIndexOf = ((kx2) entries2).indexOf(a.j().a);
                jh6 jh6Var = new jh6();
                jh6Var.a = iIndexOf;
                s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.sort);
                ArrayList arrayList = new ArrayList(hl1.G0(entries, 10));
                Iterator it = ((z3) entries).iterator();
                while (true) {
                    w3 w3Var = (w3) it;
                    if (!w3Var.hasNext()) {
                        break;
                    }
                    arrayList.add(((a.b) w3Var.next()).displayString());
                }
                s35Var.u((CharSequence[]) arrayList.toArray(new String[0]), iIndexOf, new uq1(jh6Var, i));
                s35Var.s(R.string.descending, new vq1(i, entries, jh6Var, this));
                s35Var.q(R.string.ascending, new rj1(entries, jh6Var, this));
                s35Var.m();
            }
        } else if (itemId == R.id.action_help) {
            Const.B(this, "https://www.swiftapps.org/configs");
        } else if (itemId == R.id.action_manage_labels) {
            if (V.INSTANCE.getA()) {
                Intent intentPutExtra = new Intent(this, (Class<?>) LabelsActivity.class).putExtra("labels_activity_mode", 0);
                intentPutExtra.getClass();
                startActivity(intentPutExtra);
            } else {
                rs9.u(this);
            }
        } else if (itemId == R.id.action_app_backup_settings) {
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
}
