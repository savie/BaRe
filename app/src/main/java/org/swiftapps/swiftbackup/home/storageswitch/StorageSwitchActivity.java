package org.swiftapps.swiftbackup.home.storageswitch;

import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import defpackage.as4;
import defpackage.b7;
import defpackage.el1;
import defpackage.eo7;
import defpackage.er6;
import defpackage.gl0;
import defpackage.gv7;
import defpackage.hs4;
import defpackage.ii4;
import defpackage.ix0;
import defpackage.j01;
import defpackage.l90;
import defpackage.nc8;
import defpackage.oo7;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.px;
import defpackage.qo7;
import defpackage.so7;
import defpackage.sz8;
import defpackage.to5;
import defpackage.uf;
import defpackage.us5;
import defpackage.v10;
import defpackage.vf;
import defpackage.w45;
import defpackage.yi5;
import defpackage.yo7;
import defpackage.zn7;
import defpackage.zs;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class StorageSwitchActivity extends er6 {
    public static final /* synthetic */ int f0 = 0;
    public final l90 X = new l90(ph6.a(yo7.class), new uf(this, 12), new gl0(this, 9), new vf(this, 10));
    public final gv7 Y = new gv7(new as4(this, 16));
    public final gv7 Z = new gv7(new b7(27));
    public final gv7 a0 = new gv7(new yi5(this, 9));
    public final gv7 b0 = new gv7(new to5(this, 10));
    public final gv7 c0 = new gv7(new hs4(this, 13));
    public final gv7 d0 = new gv7(new us5(this, 7));
    public w45 e0;

    @Override // defpackage.il0
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final yo7 V() {
        return (yo7) this.X.getValue();
    }

    public final void Z() {
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.d0.getValue();
        so7 so7Var = (so7) el1.U0(((qo7) this.c0.getValue()).l());
        zn7 zn7Var = so7Var != null ? so7Var.a : null;
        final boolean z = (zn7Var == null || pe4.d(zn7Var.a, ((zn7) this.Z.getValue()).a)) ? false : true;
        sz8.d0(extendedFloatingActionButton, z);
        if (sz8.I(extendedFloatingActionButton)) {
            ColorStateList colorStateListWithAlpha = extendedFloatingActionButton.getTextColors().withAlpha(z ? 255 : 128);
            colorStateListWithAlpha.getClass();
            extendedFloatingActionButton.setTextColor(colorStateListWithAlpha);
            extendedFloatingActionButton.setIconTint(colorStateListWithAlpha);
            extendedFloatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: io7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i = StorageSwitchActivity.f0;
                    if (z) {
                        StorageSwitchActivity storageSwitchActivity = this;
                        zn7 zn7Var2 = ((so7) el1.S0(((qo7) storageSwitchActivity.c0.getValue()).l())).a;
                        int i2 = 1;
                        jv1 jv1Var = null;
                        if (q63.e) {
                            boolean z2 = zn7Var2.b;
                            gv7 gv7Var = zn7Var2.f;
                            if (z2 && zn7Var2.m() && !zn7Var2.g()) {
                                hq0 hq0Var = new hq0(6, zn7Var2, storageSwitchActivity);
                                storageSwitchActivity.T = zn7Var2;
                                storageSwitchActivity.U = hq0Var;
                                if (storageSwitchActivity.P) {
                                    String string = storageSwitchActivity.getString(R.string.storage_select_root_path_request, (String) gv7Var.getValue());
                                    string.getClass();
                                    zn4.e(new l30(15, storageSwitchActivity, string));
                                    er6.X(zn7Var2, storageSwitchActivity);
                                    return;
                                }
                                s35 s35Var = new s35(storageSwitchActivity, R.style.M3AlertDialogTheme, new hv1(storageSwitchActivity, R.style.M3AlertDialogTheme), null);
                                s35Var.v(R.string.attention);
                                ((ra) s35Var.b).f = storageSwitchActivity.getString(R.string.storage_select_root_path_request, (String) gv7Var.getValue());
                                s35Var.s(R.string.ok, new fp3(2, zn7Var2, storageSwitchActivity));
                                s35Var.q(R.string.cancel, null);
                                s35Var.m();
                                storageSwitchActivity.P = true;
                                return;
                            }
                        }
                        zn4 zn4Var = zn4.a;
                        zn4.b(null, new as0(zn7Var2, storageSwitchActivity, jv1Var, i2));
                    }
                }
            });
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gv7 gv7Var = this.Y;
        setContentView(((oo7) gv7Var.getValue()).a);
        setSupportActionBar((Toolbar) ((ix0) ((oo7) gv7Var.getValue()).b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        int i = 1;
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        sz8.c0((CircularProgressIndicator) this.a0.getValue());
        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) this.b0.getValue();
        sz8.b(quickRecyclerView, 7);
        quickRecyclerView.setItemAnimator(null);
        quickRecyclerView.setLinearLayoutManager(1);
        qo7 qo7Var = (qo7) this.c0.getValue();
        qo7Var.j = new ii4(i, qo7Var, this);
        quickRecyclerView.setAdapter(qo7Var);
        Z();
        U().e.e(this, new j01(2, new v10(this, 21)));
        U().f.e(this, new j01(2, new px(this, 17)));
        eo7.c.e(this, new j01(2, new zs(this, 15)));
    }
}
