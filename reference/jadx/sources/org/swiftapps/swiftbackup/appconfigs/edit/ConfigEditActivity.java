package org.swiftapps.swiftbackup.appconfigs.edit;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputEditText;
import defpackage.b56;
import defpackage.bh;
import defpackage.br1;
import defpackage.c7;
import defpackage.dk;
import defpackage.e7;
import defpackage.ek;
import defpackage.eq3;
import defpackage.ex6;
import defpackage.gq1;
import defpackage.gs;
import defpackage.gv7;
import defpackage.h01;
import defpackage.ix0;
import defpackage.jq1;
import defpackage.jx2;
import defpackage.kq1;
import defpackage.l90;
import defpackage.lf;
import defpackage.ly8;
import defpackage.mp6;
import defpackage.ms;
import defpackage.nc8;
import defpackage.ns;
import defpackage.ph6;
import defpackage.pq1;
import defpackage.qe3;
import defpackage.qq1;
import defpackage.re3;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.vr6;
import defpackage.w20;
import defpackage.wb1;
import defpackage.xd1;
import defpackage.z20;
import defpackage.zc2;
import defpackage.zn4;
import defpackage.zs;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigsData;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ConfigEditActivity extends sa1 {
    public static final /* synthetic */ int V = 0;
    public final l90 P;
    public boolean R;
    public final gv7 Q = new gv7(new ek(this, 17));
    public final gv7 S = new gv7(new gq1(this, 1));
    public a T = a.Hide;
    public final gv7 U = new gv7(new bh(this, 12));

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    /* JADX INFO: loaded from: classes2.dex */
    public enum a {
        Run,
        Save,
        Hide;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public ConfigEditActivity() {
        int i = 7;
        this.P = new l90(ph6.a(qq1.class), new ns(this, i), new ms(this, i), new z20(this, 3));
    }

    public final kq1 U() {
        return (kq1) this.Q.getValue();
    }

    @Override // defpackage.il0
    public final qq1 V() {
        return (qq1) this.P.getValue();
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 24 && i2 == -1 && intent != null) {
            ConfigSettings configSettings = (ConfigSettings) intent.getParcelableExtra("extra_config_settings");
            if (configSettings == null) {
                return;
            }
            if (intent.getBooleanExtra("extra_config_settings_delete", false)) {
                qq1 qq1VarV = V();
                qq1VarV.l(qq1VarV.j().minusSettings(configSettings), false);
            } else {
                qq1 qq1VarV2 = V();
                qq1VarV2.l(qq1VarV2.j().plusSettings(configSettings), false);
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(U().a);
        int i = 0;
        L(false, new dk(this, 18));
        mp6 mp6Var = mp6.a;
        if (!mp6.f()) {
            finish();
            return;
        }
        V v = V.INSTANCE;
        if (!v.getA()) {
            zn4 zn4Var = zn4.a;
            zn4.e(new b56(this, i));
            finish();
        }
        Intent intent = getIntent();
        Config config = (Config) (intent != null ? intent.getParcelableExtra("extra_config") : null);
        int i2 = 1;
        this.R = config != null;
        qq1 qq1VarV = V();
        if (qq1VarV.f == null) {
            qq1VarV.f = config;
        }
        if (config != null) {
            vr6.i$default(vr6.INSTANCE, r(), eq3.k("Opened config edit screen to edit '", config.getName(), "'"), null, 4, null);
        } else {
            vr6.i$default(vr6.INSTANCE, r(), "Opened config edit screen to create a new config", null, 4, null);
        }
        Toolbar toolbar = (Toolbar) ((ix0) U().b.c).c;
        setSupportActionBar(toolbar);
        nc8 supportActionBar = getSupportActionBar();
        int i3 = 3;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.e0(this.R ? R.string.manage_config : R.string.new_config);
            toolbar.setOnClickListener(new gs(this, i3));
        }
        final TextInputEditText textInputEditText = U().f;
        Config config2 = V().f;
        textInputEditText.setText(config2 != null ? config2.get_name() : null);
        textInputEditText.addTextChangedListener(new jq1(this, i));
        final lf lfVar = new lf(this, 14);
        textInputEditText.setOnKeyListener(new View.OnKeyListener() { // from class: kl8
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
                if (keyEvent.getAction() != 0 || i4 != 66) {
                    return false;
                }
                TextInputEditText textInputEditText2 = textInputEditText;
                Context context = textInputEditText2.getContext();
                InputMethodManager inputMethodManager = context != null ? (InputMethodManager) context.getSystemService(InputMethodManager.class) : null;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(textInputEditText2.getWindowToken(), 0);
                }
                lfVar.invoke();
                return true;
            }
        });
        RecyclerView recyclerView = U().k;
        sz8.b(recyclerView, 7);
        Context context = recyclerView.getContext();
        context.getClass();
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(context));
        pq1 pq1Var = (pq1) this.S.getValue();
        pq1Var.k = true;
        pq1Var.j = new h01(this, i2);
        int i4 = 8;
        pq1Var.m = new e7(this, i4);
        pq1Var.n = new zs(this, 5);
        recyclerView.setAdapter(pq1Var);
        U().d.setOnClickListener(new xd1(this, 2));
        qq1 qq1VarV2 = V();
        if (!qq1VarV2.e) {
            qq1VarV2.e = true;
            qq1VarV2.l(qq1VarV2.j(), false);
            if (!v.getVp()) {
                zc2 zc2Var = re3.a;
                String str = qq1VarV2.b;
                ConfigsData configsData = br1.e;
                try {
                    new qe3(str, "configs=" + (configsData != null ? configsData.getSize() : null)).invoke();
                } catch (Exception unused) {
                }
            }
        }
        ((ex6) V().g.getValue()).e(this, new wb1(i3, new w20(this, i4)));
        ((ex6) V().h.getValue()).e(this, new wb1(i3, new c7(this, 12)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_config_edit, menu);
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
            Const.K(this, R.string.delete_config, new gq1(this, 0), null);
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
