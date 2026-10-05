package org.swiftapps.swiftbackup.folders.ui.batch;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.bh;
import defpackage.bk;
import defpackage.ck;
import defpackage.cp3;
import defpackage.cz;
import defpackage.cz4;
import defpackage.ey2;
import defpackage.gv7;
import defpackage.jv1;
import defpackage.l90;
import defpackage.lk3;
import defpackage.mo3;
import defpackage.nc8;
import defpackage.nf;
import defpackage.oo3;
import defpackage.ox;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.po3;
import defpackage.qo3;
import defpackage.rj0;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.tf;
import defpackage.tf2;
import defpackage.u10;
import defpackage.uf;
import defpackage.v10;
import defpackage.vf;
import defpackage.vr6;
import defpackage.wf;
import defpackage.xx3;
import defpackage.ym7;
import defpackage.zn4;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;
import org.swiftapps.swiftbackup.settings.SettingsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FoldersBatchActivity extends sa1 {
    public static final /* synthetic */ int Y = 0;
    public lk3 R;
    public Menu W;
    public MenuItem X;
    public final l90 P = new l90(ph6.a(qo3.class), new vf(this, 8), new uf(this, 9), new wf(this, 6));
    public final gv7 Q = new gv7(new mo3(this, 0));
    public final gv7 S = new gv7(new bh(this, 27));
    public final gv7 T = new gv7(new bk(this, 21));
    public final gv7 U = new gv7(new ck(this, 23));
    public final cp3 V = new cp3(2);

    public final ExtendedFloatingActionButton U() {
        return (ExtendedFloatingActionButton) this.U.getValue();
    }

    public final ey2 V() {
        return (ey2) this.T.getValue();
    }

    public final RecyclerView W() {
        return (RecyclerView) this.S.getValue();
    }

    public final oo3 X() {
        return (oo3) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final qo3 a0() {
        return (qo3) this.P.getValue();
    }

    public final void Z(boolean z) {
        MenuItem menuItem = this.X;
        if (menuItem != null) {
            menuItem.setChecked(z);
        }
        Drawable drawableW = Const.w(this, z ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline, sz8.z(this));
        MenuItem menuItem2 = this.X;
        if (menuItem2 != null) {
            menuItem2.setIcon(drawableW);
        }
    }

    public final void a0() {
        Menu menu = this.W;
        if (menu != null) {
            ym7 ym7Var = (ym7) a0().g.d();
            if (ym7Var == null) {
                ym7Var = ym7.LOADING;
            }
            menu.setGroupVisible(R.id.grp_edit, ym7Var == ym7.DATA_RECEIVED);
            if (menu.hasVisibleItems()) {
                Z(this.V.p());
            }
        }
    }

    public final void b0() {
        cp3 cp3Var = this.V;
        int iK = cp3Var.k();
        int iB = cp3Var.b();
        TextView textView = (TextView) X().f.e;
        String string = getString(R.string.selected);
        string.getClass();
        String string2 = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string2 = sharedPreferences.getString("app_locale", null);
            String lowerCase = string.toLowerCase((string2 == null || string2.length() == 0) ? xx3.h().a() : xx3.g(string2).a());
            lowerCase.getClass();
            textView.setText(iK + "/" + iB + TokenAuthenticationScheme.SCHEME_DELIMITER + lowerCase);
        } catch (ClassCastException unused) {
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(X().a);
        setSupportActionBar((Toolbar) X().f.c);
        nc8 supportActionBar = getSupportActionBar();
        final int i = 0;
        final int i2 = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        Intent intent = getIntent();
        jv1 jv1Var = null;
        lk3 lk3Var = intent != null ? (lk3) intent.getParcelableExtra("EXTRA_FOLDER_BATCH_ACTION_ITEM") : null;
        this.R = lk3Var;
        int i3 = 10;
        if (lk3Var != null) {
            vr6.i$default(vr6.INSTANCE, r(), String.valueOf(this.R), null, 4, null);
            tf2 tf2Var = X().f;
            ((CheckedTextView) tf2Var.f).setText(lk3Var.b);
            ((TextView) tf2Var.e).setText(getString(R.string.loading));
            ((ConstraintLayout) tf2Var.d).setOnClickListener(new View.OnClickListener(this) { // from class: jo3
                public final /* synthetic */ FoldersBatchActivity b;

                {
                    this.b = this;
                }

                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i4 = i;
                    final FoldersBatchActivity foldersBatchActivity = this.b;
                    switch (i4) {
                        case 0:
                            int i5 = FoldersBatchActivity.Y;
                            foldersBatchActivity.W().i0(0);
                            return;
                        default:
                            cp3 cp3Var = foldersBatchActivity.V;
                            if (cp3Var.e.b.isEmpty()) {
                                String string = foldersBatchActivity.getString(R.string.select_some_items);
                                string.getClass();
                                zn4 zn4Var = zn4.a;
                                zn4.e(new cv(14, foldersBatchActivity, string));
                                return;
                            }
                            lk3 lk3Var2 = foldersBatchActivity.R;
                            if (lk3Var2 != null) {
                                String str = lk3Var2.a;
                                List listL = cp3Var.l();
                                int i6 = 10;
                                switch (str.hashCode()) {
                                    case -1819535299:
                                        if (str.equals("Copy folder setups")) {
                                            foldersBatchActivity.U().setEnabled(false);
                                            qo3 qo3VarA0 = foldersBatchActivity.a0();
                                            ArrayList arrayList = new ArrayList(hl1.G0(listL, 10));
                                            Iterator it = listL.iterator();
                                            while (it.hasNext()) {
                                                arrayList.add(((zk3) it.next()).a);
                                            }
                                            zn4 zn4Var2 = zn4.a;
                                            zn4.c(new rm(8, arrayList, qo3VarA0));
                                            return;
                                        }
                                        break;
                                    case -1532794258:
                                        if (str.equals("Restore")) {
                                            final boolean z = lk3Var2.f;
                                            ln3 ln3Var = new ln3(foldersBatchActivity, "", false, new zi1(3));
                                            ln3Var.a0 = new qt3() { // from class: ko3
                                                @Override // defpackage.qt3
                                                public final Object invoke(Object obj, Object obj2) {
                                                    FolderRestoreStrategy folderRestoreStrategy = (FolderRestoreStrategy) obj;
                                                    int i7 = FoldersBatchActivity.Y;
                                                    folderRestoreStrategy.getClass();
                                                    zn4 zn4Var3 = zn4.a;
                                                    zn4.c(new qj3(foldersBatchActivity, z, folderRestoreStrategy));
                                                    return be8.a;
                                                }
                                            };
                                            ln3Var.l();
                                            ((MaterialButton) ln3Var.X.getValue()).setOnClickListener(new h7(ln3Var, i6));
                                            ln3Var.show();
                                            return;
                                        }
                                        break;
                                    case 763516316:
                                        if (str.equals("Delete backups")) {
                                            String string2 = foldersBatchActivity.getString(lk3Var2.k);
                                            string2.getClass();
                                            Const.I(foldersBatchActivity, string2, null, new v20(6, foldersBatchActivity, listL, lk3Var2));
                                            return;
                                        }
                                        break;
                                    case 1982161378:
                                        if (str.equals("Backup")) {
                                            new rj3(foldersBatchActivity, true, null, 26).k(new rs(foldersBatchActivity, 4));
                                            return;
                                        }
                                        break;
                                }
                                throw new io5("Unhandled batch action: ".concat(str));
                            }
                            return;
                    }
                }
            });
            rj0 rj0Var = new rj0(this, 2);
            cp3 cp3Var = this.V;
            cp3Var.g = rj0Var;
            RecyclerView recyclerViewW = W();
            sz8.b(recyclerViewW, 7);
            recyclerViewW.setLayoutManager(new SpeedyLinearLayoutManager(this));
            recyclerViewW.setAdapter(cp3Var);
            recyclerViewW.setHasFixedSize(true);
            recyclerViewW.setItemViewCacheSize(10);
            V().d.setImageResource(R.drawable.ic_folder);
            V().f.setText(R.string.list_is_empty);
            V().e.setText(R.string.folder_items_empty_list_error);
            V().b.setText(R.string.back);
            V().b.setOnClickListener(new nf(this, 7));
            ExtendedFloatingActionButton extendedFloatingActionButtonU = U();
            sz8.f0(extendedFloatingActionButtonU, W(), true);
            if (pe4.d(lk3Var.a, "Delete backups")) {
                extendedFloatingActionButtonU.setBackgroundColor(sz8.r(this));
                extendedFloatingActionButtonU.setTextColor(-1);
                extendedFloatingActionButtonU.setIconTint(sz8.h0(-1));
                extendedFloatingActionButtonU.setRippleColor(sz8.h0(sz8.U(-1, 30)));
            }
            extendedFloatingActionButtonU.setText(lk3Var.k);
            extendedFloatingActionButtonU.setIconResource(lk3Var.n);
            U().setOnClickListener(new View.OnClickListener(this) { // from class: jo3
                public final /* synthetic */ FoldersBatchActivity b;

                {
                    this.b = this;
                }

                /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i4 = i2;
                    final FoldersBatchActivity foldersBatchActivity = this.b;
                    switch (i4) {
                        case 0:
                            int i5 = FoldersBatchActivity.Y;
                            foldersBatchActivity.W().i0(0);
                            return;
                        default:
                            cp3 cp3Var2 = foldersBatchActivity.V;
                            if (cp3Var2.e.b.isEmpty()) {
                                String string = foldersBatchActivity.getString(R.string.select_some_items);
                                string.getClass();
                                zn4 zn4Var = zn4.a;
                                zn4.e(new cv(14, foldersBatchActivity, string));
                                return;
                            }
                            lk3 lk3Var2 = foldersBatchActivity.R;
                            if (lk3Var2 != null) {
                                String str = lk3Var2.a;
                                List listL = cp3Var2.l();
                                int i6 = 10;
                                switch (str.hashCode()) {
                                    case -1819535299:
                                        if (str.equals("Copy folder setups")) {
                                            foldersBatchActivity.U().setEnabled(false);
                                            qo3 qo3VarA0 = foldersBatchActivity.a0();
                                            ArrayList arrayList = new ArrayList(hl1.G0(listL, 10));
                                            Iterator it = listL.iterator();
                                            while (it.hasNext()) {
                                                arrayList.add(((zk3) it.next()).a);
                                            }
                                            zn4 zn4Var2 = zn4.a;
                                            zn4.c(new rm(8, arrayList, qo3VarA0));
                                            return;
                                        }
                                        break;
                                    case -1532794258:
                                        if (str.equals("Restore")) {
                                            final boolean z = lk3Var2.f;
                                            ln3 ln3Var = new ln3(foldersBatchActivity, "", false, new zi1(3));
                                            ln3Var.a0 = new qt3() { // from class: ko3
                                                @Override // defpackage.qt3
                                                public final Object invoke(Object obj, Object obj2) {
                                                    FolderRestoreStrategy folderRestoreStrategy = (FolderRestoreStrategy) obj;
                                                    int i7 = FoldersBatchActivity.Y;
                                                    folderRestoreStrategy.getClass();
                                                    zn4 zn4Var3 = zn4.a;
                                                    zn4.c(new qj3(foldersBatchActivity, z, folderRestoreStrategy));
                                                    return be8.a;
                                                }
                                            };
                                            ln3Var.l();
                                            ((MaterialButton) ln3Var.X.getValue()).setOnClickListener(new h7(ln3Var, i6));
                                            ln3Var.show();
                                            return;
                                        }
                                        break;
                                    case 763516316:
                                        if (str.equals("Delete backups")) {
                                            String string2 = foldersBatchActivity.getString(lk3Var2.k);
                                            string2.getClass();
                                            Const.I(foldersBatchActivity, string2, null, new v20(6, foldersBatchActivity, listL, lk3Var2));
                                            return;
                                        }
                                        break;
                                    case 1982161378:
                                        if (str.equals("Backup")) {
                                            new rj3(foldersBatchActivity, true, null, 26).k(new rs(foldersBatchActivity, 4));
                                            return;
                                        }
                                        break;
                                }
                                throw new io5("Unhandled batch action: ".concat(str));
                            }
                            return;
                    }
                }
            });
            qo3 qo3VarA0 = a0();
            if (!qo3VarA0.e) {
                qo3VarA0.e = true;
                qo3VarA0.f = lk3Var.f;
                ArrayList arrayList = qo3.k;
                if (arrayList == null) {
                    qo3VarA0.d();
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new po3(qo3VarA0, lk3Var, arrayList, jv1Var, 0));
                }
            }
        }
        lk3 lk3Var2 = this.R;
        if (lk3Var2 != null && lk3Var2.c() && !V.INSTANCE.getA()) {
            vr6.e$default(vr6.INSTANCE, r(), "User not premium! Finishing.", null, 4, null);
            finish();
            return;
        }
        int i4 = 3;
        a0().g.e(this, new tf(i4, new ox(this, 15)));
        a0().h.e(this, new tf(i4, new cz(this, i3)));
        a0().i.e(this, new tf(i4, new u10(this, 9)));
        a0().j.e(this, new tf(i4, new v10(this, 11)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_folders_batch_activity, menu);
        this.W = menu;
        this.X = menu.findItem(R.id.action_select_all);
        a0();
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        ym7 ym7Var = (ym7) a0().g.d();
        if (ym7Var == null) {
            ym7Var = ym7.LOADING;
        }
        if (ym7Var == ym7.DATA_RECEIVED) {
            int itemId = menuItem.getItemId();
            if (itemId == R.id.action_select_all) {
                cp3 cp3Var = this.V;
                if (cp3Var.e.a.isEmpty()) {
                    Const.L();
                } else {
                    menuItem.setChecked(!menuItem.isChecked());
                    cp3Var.s(menuItem.isChecked());
                }
            } else if (itemId == R.id.action_folder_settings) {
                String string = getString(R.string.folder_backup_settings);
                string.getClass();
                Intent intent = new Intent(this, (Class<?>) SettingsDetailActivity.class);
                intent.putExtra("category", 8);
                intent.putExtra("category_title", string);
                startActivity(intent);
            } else if (itemId == R.id.action_settings) {
                startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
