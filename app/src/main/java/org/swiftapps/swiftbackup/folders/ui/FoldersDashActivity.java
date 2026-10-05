package org.swiftapps.swiftbackup.folders.ui;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.o;
import com.google.android.material.tabs.TabLayout;
import defpackage.ak;
import defpackage.bk;
import defpackage.ck;
import defpackage.cv;
import defpackage.dj7;
import defpackage.eg1;
import defpackage.f20;
import defpackage.gv7;
import defpackage.ik3;
import defpackage.j51;
import defpackage.kp3;
import defpackage.l3;
import defpackage.l30;
import defpackage.l90;
import defpackage.nc8;
import defpackage.ph6;
import defpackage.sa1;
import defpackage.to3;
import defpackage.u10;
import defpackage.uo3;
import defpackage.wf;
import defpackage.wo3;
import defpackage.xo3;
import defpackage.yo3;
import defpackage.zn4;
import defpackage.zo3;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FoldersDashActivity extends sa1 {
    public static final /* synthetic */ int U = 0;
    public final l90 P;
    public final gv7 Q = new gv7(new bk(this, 22));
    public final gv7 R = new gv7(new ck(this, 24));
    public final xo3 S = new xo3(this);
    public final wo3 T = new wo3(this);

    public FoldersDashActivity() {
        int i = 4;
        this.P = new l90(ph6.a(zo3.class), new j51(this, i), new wf(this, 7), new f20(this, i));
    }

    public static final kp3 U(FoldersDashActivity foldersDashActivity) {
        o oVarD = foldersDashActivity.getSupportFragmentManager().D(dj7.i("android:switcher:", foldersDashActivity.V().d.getId(), foldersDashActivity.V().d.getCurrentItem(), ":"));
        if (oVarD instanceof kp3) {
            return (kp3) oVarD;
        }
        return null;
    }

    public final yo3 V() {
        return (yo3) this.Q.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public final zo3 V() {
        return (zo3) this.P.getValue();
    }

    @Override // defpackage.sa1, androidx.fragment.app.u, defpackage.io1, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1) {
            return;
        }
        boolean z = false;
        if (i != 4987) {
            if (i != 4988) {
                return;
            }
            FolderItem folderItem = (FolderItem) (intent != null ? intent.getParcelableExtra("extra_folder_item") : null);
            if (folderItem == null) {
                return;
            }
            zn4.c(new ik3(V(), folderItem, z));
            return;
        }
        FolderItem folderItem2 = (FolderItem) (intent != null ? intent.getParcelableExtra("extra_folder_item") : null);
        if (folderItem2 == null) {
            return;
        }
        if (intent != null && intent.getBooleanExtra("saveLocalItemFromCloud", false)) {
            zn4.c(new l30(8, V(), folderItem2));
            return;
        }
        zo3 zo3VarV = V();
        zn4 zn4Var = zn4.a;
        zn4.c(new cv(10, zo3VarV, folderItem2));
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        to3 to3Var;
        super.onCreate(bundle);
        setContentView(V().a);
        Intent intent = getIntent();
        if (intent == null || (to3Var = (to3) intent.getSerializableExtra("KEY_SECTION")) == null) {
            to3Var = to3.LOCAL;
        }
        setSupportActionBar((Toolbar) V().c.b);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        V().b.a(this.S);
        V().d.setOffscreenPageLimit(((l3) to3.getEntries()).d());
        V().d.setAdapter((uo3) this.R.getValue());
        V().b.setupWithViewPager(V().d);
        V().d.setCurrentItem(to3Var.ordinal());
        L(false, new ak(this, 18));
        A(!(V().d.getCurrentItem() == 0));
        addMenuProvider(this.T);
        V().e.e(this, new eg1(new u10(this, 10), 2));
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        TabLayout tabLayout = V().b;
        tabLayout.g0.remove(this.S);
        ArrayList arrayList = V().d.l0;
        if (arrayList != null) {
            arrayList.clear();
        }
    }
}
