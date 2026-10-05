package org.swiftapps.swiftbackup.home.schedule.ui;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.cp3;
import defpackage.cz4;
import defpackage.el1;
import defpackage.es;
import defpackage.ey2;
import defpackage.f37;
import defpackage.fm7;
import defpackage.gv7;
import defpackage.h00;
import defpackage.hl1;
import defpackage.il0;
import defpackage.n55;
import defpackage.nc8;
import defpackage.nm3;
import defpackage.no5;
import defpackage.nu;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.pz4;
import defpackage.qb5;
import defpackage.qo0;
import defpackage.rs;
import defpackage.sf1;
import defpackage.sz8;
import defpackage.u14;
import defpackage.xd1;
import defpackage.xx3;
import defpackage.zk3;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.views.SpeedyLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ScheduleFolderSelectActivity extends il0 {
    public static final /* synthetic */ int R = 0;
    public final gv7 K = new gv7(new no5(this, 2));
    public final gv7 L = new gv7(new qb5(this, 7));
    public final gv7 M = new gv7(new n55(this, 6));
    public final gv7 N = new gv7(new u14(this, 8));
    public final cp3 O = new cp3(true, true);
    public List P = ov2.a;
    public MenuItem Q;

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final /* bridge */ /* synthetic */ qo0 V() {
        return null;
    }

    public final ey2 N() {
        return (ey2) this.M.getValue();
    }

    public final f37 O() {
        return (f37) this.K.getValue();
    }

    public final void P(boolean z) {
        MenuItem menuItem = this.Q;
        if (menuItem != null) {
            menuItem.setChecked(z);
        }
        Drawable drawableW = Const.w(this, z ? R.drawable.checkbox_marked : R.drawable.checkbox_blank_outline, sz8.z(this));
        MenuItem menuItem2 = this.Q;
        if (menuItem2 != null) {
            menuItem2.setIcon(drawableW);
        }
    }

    public final void Q(boolean z) {
        if (z) {
            ((TextView) O().f.e).setText(getString(R.string.loading));
            return;
        }
        cp3 cp3Var = this.O;
        int iK = cp3Var.k();
        int iB = cp3Var.b();
        TextView textView = (TextView) O().f.e;
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

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        List parcelableArrayListExtra;
        super.onCreate(bundle);
        setContentView(O().a);
        setSupportActionBar((Toolbar) O().f.c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.b0(false);
        }
        Intent intent = getIntent();
        if (intent != null) {
            intent.getBooleanExtra("EXTRA_BACKUP_ALL_FOLDERS", true);
        }
        Intent intent2 = getIntent();
        if (intent2 == null || (parcelableArrayListExtra = intent2.getParcelableArrayListExtra("EXTRA_SELECTED_FOLDER_ITEMS", FolderItem.class)) == null) {
            parcelableArrayListExtra = ov2.a;
        }
        this.P = parcelableArrayListExtra;
        ((CheckedTextView) O().f.f).setText(R.string.select_folder_setups);
        Q(true);
        int i = 11;
        ((ConstraintLayout) O().f.d).setOnClickListener(new h00(this, i));
        rs rsVar = new rs(this, 7);
        cp3 cp3Var = this.O;
        cp3Var.g = rsVar;
        gv7 gv7Var = this.L;
        RecyclerView recyclerView = (RecyclerView) gv7Var.getValue();
        sz8.b(recyclerView, 7);
        recyclerView.setLayoutManager(new SpeedyLinearLayoutManager(this));
        recyclerView.setAdapter(cp3Var);
        recyclerView.setHasFixedSize(true);
        recyclerView.setItemViewCacheSize(10);
        N().d.setImageResource(R.drawable.ic_folder);
        N().f.setText(R.string.folder_setups);
        N().e.setText(R.string.create_your_first_folder_msg);
        N().b.setText(R.string.local_folder_setups);
        N().b.setOnClickListener(new es(this, 14));
        gv7 gv7Var2 = this.N;
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) gv7Var2.getValue();
        extendedFloatingActionButton.setText(R.string.save);
        extendedFloatingActionButton.setIconResource(R.drawable.ic_check);
        ((ExtendedFloatingActionButton) gv7Var2.getValue()).setOnClickListener(new xd1(this, 10));
        ArrayList arrayListG1 = el1.g1(pz4.g.c(), sf1.g.c());
        HashSet hashSet = new HashSet();
        ArrayList<FolderMetadata> arrayList = new ArrayList();
        for (Object obj : arrayListG1) {
            if (hashSet.add(((FolderMetadata) obj).getItemId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        for (FolderMetadata folderMetadata : arrayList) {
            folderMetadata.getClass();
            arrayList2.add(new zk3(folderMetadata.getFolderItem(), folderMetadata.getLatestBackupDate(), null));
        }
        List<FolderItem> list = this.P;
        ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
        for (FolderItem folderItem : list) {
            folderItem.getClass();
            arrayList3.add(new zk3(folderItem, -1L, null));
        }
        ArrayList arrayListG2 = el1.g1(arrayList2, arrayList3);
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj2 : arrayListG2) {
            if (hashSet2.add(((zk3) obj2).a.getId())) {
                arrayList4.add(obj2);
            }
        }
        List listN1 = el1.n1(arrayList4, nm3.a(FolderItem.Companion, new nu(i)));
        if (listN1.isEmpty()) {
            O().d.setVisibility(8);
            sz8.W((RecyclerView) gv7Var.getValue());
            sz8.W((ExtendedFloatingActionButton) gv7Var2.getValue());
            N().a.setVisibility(0);
            Q(false);
            return;
        }
        List list2 = this.P;
        ArrayList arrayList5 = new ArrayList(hl1.G0(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList5.add(((FolderItem) it.next()).getId());
        }
        cp3Var.w(new fm7(listN1, el1.z1(arrayList5), false, (String) null, 28), false);
        O().d.setVisibility(8);
        sz8.c0((RecyclerView) gv7Var.getValue());
        sz8.c0((ExtendedFloatingActionButton) gv7Var2.getValue());
        N().a.setVisibility(8);
        Q(false);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_folders_batch_activity, menu);
        this.Q = menu.findItem(R.id.action_select_all);
        P(this.O.p());
        return super.onCreateOptionsMenu(menu);
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.action_select_all) {
            cp3 cp3Var = this.O;
            if (cp3Var.e.a.isEmpty()) {
                Const.L();
            } else {
                menuItem.setChecked(!menuItem.isChecked());
                cp3Var.s(menuItem.isChecked());
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
