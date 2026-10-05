package org.swiftapps.swiftbackup.folders.ui;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import defpackage.an3;
import defpackage.b30;
import defpackage.c7;
import defpackage.cj2;
import defpackage.ck;
import defpackage.dk;
import defpackage.e7;
import defpackage.en3;
import defpackage.f6;
import defpackage.gv7;
import defpackage.hl1;
import defpackage.hn3;
import defpackage.hv1;
import defpackage.il0;
import defpackage.in3;
import defpackage.j51;
import defpackage.k3;
import defpackage.l90;
import defpackage.ms8;
import defpackage.nc8;
import defpackage.o20;
import defpackage.p52;
import defpackage.ph6;
import defpackage.q63;
import defpackage.ra;
import defpackage.rs;
import defpackage.s35;
import defpackage.sz8;
import defpackage.tf;
import defpackage.vf;
import defpackage.wa;
import defpackage.wf;
import defpackage.wm3;
import defpackage.ym3;
import defpackage.zn4;
import defpackage.zn7;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class FolderPickerActivity extends il0 {
    public static final /* synthetic */ int Q = 0;
    public final l90 K = new l90(ph6.a(in3.class), new wf(this, 5), new vf(this, 7), new j51(this, 3));
    public final gv7 L = new gv7(new dk(this, 26));
    public final en3 M;
    public final an3 N;
    public hn3 O;
    public Menu P;

    public FolderPickerActivity() {
        en3 en3Var = new en3(this);
        en3Var.j = new b30(this, 2);
        this.M = en3Var;
        an3 an3Var = new an3(null);
        an3Var.j = new rs(this, 3);
        this.N = an3Var;
    }

    public final ym3 N() {
        return (ym3) this.L.getValue();
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final in3 V() {
        return (in3) this.K.getValue();
    }

    public final void P(hn3 hn3Var) {
        MenuItem menuItemFindItem;
        Menu menu = this.P;
        if (menu == null || (menuItemFindItem = menu.findItem(R.id.action_storage_switch)) == null) {
            return;
        }
        menuItemFindItem.setVisible(hn3Var.b.size() > 1);
        menuItemFindItem.setIcon(hn3Var.a.b ? R.drawable.ic_device_selected : R.drawable.ic_sd_selected);
        menuItemFindItem.setIconTintList(sz8.h0(sz8.z(this)));
    }

    @Override // defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(N().a);
        Serializable serializableExtra = getIntent().getSerializableExtra("extra_initial_folder");
        q63 q63Var = serializableExtra instanceof q63 ? (q63) serializableExtra : null;
        in3 in3VarV = V();
        zn4 zn4Var = zn4.a;
        zn4.c(new o20(9, in3VarV, q63Var));
        setSupportActionBar((Toolbar) N().f.c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
        }
        RecyclerView recyclerView = N().d;
        sz8.b(recyclerView, 7);
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        recyclerView.setItemAnimator(null);
        recyclerView.setAdapter(this.N);
        RecyclerView recyclerView2 = N().e;
        recyclerView2.setLayoutManager(new PreCachingLinearLayoutManager(this, 0));
        recyclerView2.setItemAnimator(null);
        recyclerView2.setAdapter(this.M);
        L(false, new ck(this, 22));
        V().h.e(this, new tf(2, new cj2(1, this, FolderPickerActivity.class, "onLoadingChange", "onLoadingChange(Z)V", 0, 2)));
        V().i.e(this, new tf(2, new c7(this, 17)));
        V().k.e(this, new tf(2, new e7(this, 14)));
        V().j.e(this, new tf(2, new k3(this, 13)));
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_folder_picker, menu);
        this.P = menu;
        menu.findItem(R.id.action_storage_switch).setVisible(false);
        hn3 hn3Var = this.O;
        if (hn3Var == null) {
            return true;
        }
        P(hn3Var);
        return true;
    }

    @Override // defpackage.il0, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.action_storage_switch) {
            if (menuItem.getItemId() != R.id.action_new_folder) {
                if (menuItem.getItemId() != 16908332) {
                    return super.onOptionsItemSelected(menuItem);
                }
                setResult(0);
                finish();
                return true;
            }
            View viewInflate = getLayoutInflater().inflate(R.layout.folder_picker_new_folder_dialog, (ViewGroup) null, false);
            int i = R.id.et_folder_name;
            TextInputEditText textInputEditText = (TextInputEditText) ms8.u(viewInflate, R.id.et_folder_name);
            if (textInputEditText != null) {
                i = R.id.til_folder_name;
                if (((TextInputLayout) ms8.u(viewInflate, R.id.til_folder_name)) != null) {
                    s35 s35Var = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
                    s35Var.v(R.string.new_folder);
                    s35Var.s(R.string.create, new wm3(0, this, textInputEditText));
                    s35Var.q(R.string.cancel, null);
                    ((ra) s35Var.b).s = (FrameLayout) viewInflate;
                    wa waVarM = s35Var.m();
                    if (waVarM != null) {
                        Button buttonF = waVarM.f(-1);
                        buttonF.setEnabled(false);
                        textInputEditText.addTextChangedListener(new p52(buttonF, 1));
                        return true;
                    }
                }
            }
            f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
            return false;
        }
        hn3 hn3Var = this.O;
        if (hn3Var != null) {
            final List list = hn3Var.b;
            int iIndexOf = list.indexOf(hn3Var.a);
            s35 s35Var2 = new s35(this, R.style.M3AlertDialogTheme, new hv1(this, R.style.M3AlertDialogTheme), null);
            s35Var2.v(R.string.select_storage);
            ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((zn7) it.next()).u());
            }
            s35Var2.u((CharSequence[]) arrayList.toArray(new String[0]), iIndexOf, new DialogInterface.OnClickListener() { // from class: xm3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    int i3 = FolderPickerActivity.Q;
                    in3 in3VarV = this.a.V();
                    zn7 zn7Var = (zn7) list.get(i2);
                    zn7Var.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.c(new d11(11, zn7Var, in3VarV));
                    dialogInterface.dismiss();
                }
            });
            s35Var2.m();
            return true;
        }
        return true;
    }
}
