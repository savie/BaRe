package org.swiftapps.swiftbackup.home.search;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.button.MaterialButton;
import defpackage.ai8;
import defpackage.b56;
import defpackage.b7;
import defpackage.ba2;
import defpackage.bk;
import defpackage.bt;
import defpackage.c6;
import defpackage.ck;
import defpackage.cz4;
import defpackage.d7;
import defpackage.d71;
import defpackage.dj;
import defpackage.dj7;
import defpackage.dz5;
import defpackage.e7;
import defpackage.el1;
import defpackage.f20;
import defpackage.fm7;
import defpackage.fz5;
import defpackage.g00;
import defpackage.g84;
import defpackage.gs;
import defpackage.gv7;
import defpackage.h54;
import defpackage.hj;
import defpackage.hl1;
import defpackage.hs;
import defpackage.ix6;
import defpackage.j01;
import defpackage.j51;
import defpackage.ji;
import defpackage.k3;
import defpackage.kg;
import defpackage.kn3;
import defpackage.l90;
import defpackage.lf;
import defpackage.ls;
import defpackage.mf;
import defpackage.mj;
import defpackage.mp6;
import defpackage.nq7;
import defpackage.o52;
import defpackage.od6;
import defpackage.ox;
import defpackage.pe4;
import defpackage.ph6;
import defpackage.qb1;
import defpackage.qo0;
import defpackage.qs;
import defpackage.r54;
import defpackage.rs;
import defpackage.s54;
import defpackage.s60;
import defpackage.sa1;
import defpackage.ss;
import defpackage.sz8;
import defpackage.tb1;
import defpackage.to3;
import defpackage.u14;
import defpackage.u54;
import defpackage.uf;
import defpackage.uq7;
import defpackage.v54;
import defpackage.vf;
import defpackage.vo3;
import defpackage.w01;
import defpackage.wf;
import defpackage.x54;
import defpackage.y2;
import defpackage.yc6;
import defpackage.yi5;
import defpackage.yt5;
import defpackage.z44;
import defpackage.zc6;
import defpackage.zj;
import defpackage.zn4;
import defpackage.zx2;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.tasks.PreconditionsActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class HomeSearchActivity extends sa1 {
    public static final PathInterpolator X = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
    public final l90 P;
    public final l90 Q;
    public final gv7 S;
    public boolean W;
    public final gv7 R = new gv7(new ck(this, 26));
    public final gv7 T = new gv7(new b7(18));
    public final gv7 U = new gv7(new lf(this, 22));
    public v54 V = new v54();

    public HomeSearchActivity() {
        int i = 9;
        int i2 = 8;
        this.P = new l90(ph6.a(x54.class), new vf(this, i), new uf(this, 10), new wf(this, i2));
        this.Q = new l90(ph6.a(od6.class), new f20(this, 6), new j51(this, 5), new ls(this, i));
        this.S = new gv7(new zj(i2));
    }

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return (x54) this.P.getValue();
    }

    public final void U() {
        if (isFinishing()) {
            return;
        }
        X().J.animate().cancel();
        X().G.animate().cancel();
        Y();
        finish();
        overridePendingTransition(R.anim.home_search_close_enter, R.anim.home_search_close_exit);
    }

    public final void V() {
        if (isFinishing()) {
            return;
        }
        X().J.animate().cancel();
        X().G.animate().cancel();
        Y();
        finish();
        overridePendingTransition(0, 0);
    }

    public final od6 W() {
        return (od6) this.Q.getValue();
    }

    public final z44 X() {
        return (z44) this.R.getValue();
    }

    public final void Y() {
        Object systemService = getSystemService("input_method");
        systemService.getClass();
        ((InputMethodManager) systemService).hideSoftInputFromWindow(X().f.getWindowToken(), 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.app.Activity, android.content.Context, il0, io1, java.lang.Object, k28, org.swiftapps.swiftbackup.home.search.HomeSearchActivity, sa1] */
    /* JADX WARN: Type inference failed for: r9v23, types: [android.content.Intent] */
    public final void Z(s54 s54Var) {
        String string;
        bt btVarValueOf;
        ji jiVar = s54Var.n;
        FolderItem folderItem = s54Var.p;
        int i = 1;
        if (jiVar != null) {
            Y();
            String packageName = s54Var.n.getPackageName();
            packageName.getClass();
            Intent intent = new Intent((Context) this, (Class<?>) DetailActivity.class).putExtra("detail_launched_from_shortcut", true).setPackage(packageName);
            intent.getClass();
            startActivity(intent);
            return;
        }
        if (folderItem != null) {
            Y();
            Intent intentPutExtra = new Intent((Context) this, (Class<?>) FolderDetailActivity.class).putExtra("extra_folder_info", folderItem);
            intentPutExtra.getClass();
            startActivity(intentPutExtra);
            return;
        }
        Integer num = s54Var.q;
        int i2 = 0;
        ?? r3 = 0;
        to3 to3Var = null;
        if (num != null) {
            int iIntValue = num.intValue();
            switch (iIntValue) {
                case 1:
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        string = sharedPreferences.getString("last_used_apps_section", null);
                        if (string == null || (btVarValueOf = bt.valueOf(string)) == null) {
                            btVarValueOf = bt.LOCAL;
                        }
                        btVarValueOf.getClass();
                        bt btVar = bt.CLOUD;
                        if (btVarValueOf == btVar) {
                            tb1 tb1Var = tb1.a;
                            if (qb1.m()) {
                                r3 = btVar;
                            }
                        } else {
                            r3 = btVarValueOf;
                        }
                        ?? intent2 = new Intent((Context) this, (Class<?>) AppListActivity.class);
                        intent2.putExtra("KEY_SECTION", r3);
                        startActivity(intent2);
                    } catch (ClassCastException unused) {
                        string = null;
                    }
                    break;
                case 2:
                    g00 g00Var = g00.a;
                    if (!g00.r().hasSystemFeature("android.hardware.telephony")) {
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        zn4 zn4Var = zn4.a;
                        dj7.y(contextC, "Feature not supported on this device");
                    } else {
                        Intent intentPutExtra2 = new Intent((Context) this, (Class<?>) MessagesDashActivity.class).putExtra("highlight_cloud_card", false);
                        intentPutExtra2.getClass();
                        startActivity(intentPutExtra2);
                    }
                    break;
                case 3:
                    g00 g00Var2 = g00.a;
                    if (!g00.r().hasSystemFeature("android.hardware.telephony")) {
                        SwiftApp.Companion companion2 = SwiftApp.d;
                        Context contextC2 = SwiftApp.Companion.c();
                        zn4 zn4Var2 = zn4.a;
                        dj7.y(contextC2, "Feature not supported on this device");
                    } else {
                        Intent intentPutExtra3 = new Intent((Context) this, (Class<?>) CallsDashActivity.class).putExtra("highlight_cloud_card", false);
                        intentPutExtra3.getClass();
                        startActivity(intentPutExtra3);
                    }
                    break;
                case 4:
                    ai8.q(this, WallsDashActivity.class);
                    break;
                case 5:
                    ai8.q(this, WifiActivity.class);
                    break;
                case 6:
                    to3 to3Var2 = to3.LOCAL;
                    to3Var2.getClass();
                    to3 to3Var3 = to3.CLOUD;
                    if (to3Var2 == to3Var3) {
                        tb1 tb1Var2 = tb1.a;
                        if (qb1.m()) {
                            to3Var = to3Var3;
                        }
                    } else {
                        to3Var = to3Var2;
                    }
                    Intent intent3 = new Intent((Context) this, (Class<?>) FoldersDashActivity.class);
                    intent3.putExtra("KEY_SECTION", to3Var);
                    startActivity(intent3);
                    break;
                default:
                    c6.f(fz5.j(iIntValue, "No home search shortcut action for item id: "));
                    return;
            }
            V();
            return;
        }
        zc6 zc6Var = s54Var.r;
        if (zc6Var != null) {
            Parcelable.Creator<zc6> creator = zc6.CREATOR;
            String str = zc6Var.a;
            int i3 = 3;
            if (yc6.i(str)) {
                dz5 dz5Var = dz5.a;
                if (!dz5.g()) {
                    Intent intentPutExtra4 = new Intent((Context) this, (Class<?>) PreconditionsActivity.class).putExtra("request_code", 3);
                    intentPutExtra4.getClass();
                    startActivityForResult(intentPutExtra4, 3);
                    V();
                    return;
                }
            }
            if (yc6.j(str)) {
                dz5 dz5Var2 = dz5.a;
                if (!dz5.m()) {
                    Intent intentPutExtra5 = new Intent((Context) this, (Class<?>) PreconditionsActivity.class).putExtra("request_code", 2);
                    intentPutExtra5.getClass();
                    startActivityForResult(intentPutExtra5, 2);
                    V();
                    return;
                }
            }
            if (isDestroyed()) {
                return;
            }
            boolean z = zc6Var.e;
            boolean z2 = zc6Var.q;
            if (yc6.h(str)) {
                if (zc6Var.f) {
                    mp6 mp6Var = mp6.a;
                    if (!mp6.f()) {
                        Const.O();
                        return;
                    }
                }
                if (z2) {
                    sa1.R(this, null, new kg(10, this, zc6Var), 1);
                    return;
                }
                if (!zc6Var.c() || V.INSTANCE.getA()) {
                    G().g(zc6Var);
                } else {
                    zn4 zn4Var3 = zn4.a;
                    zn4.e(new b56(this, i2));
                }
                V();
                return;
            }
            if (yc6.j(str)) {
                if (!z) {
                    ai8.q(this, MessagesBackupRestoreActivity.class);
                    V();
                    return;
                } else {
                    if (z2) {
                        sa1.R(this, null, new bk(this, 24), 1);
                        return;
                    }
                    od6 od6VarW = W();
                    zn4 zn4Var4 = zn4.a;
                    zn4.b(null, new mj(od6VarW, r3, i3));
                    return;
                }
            }
            if (yc6.i(str)) {
                if (!z) {
                    ai8.q(this, CallsBackupRestoreActivity.class);
                    V();
                    return;
                } else if (z2) {
                    sa1.R(this, null, new u14(this, i), 1);
                    return;
                } else {
                    zn4.c(new yi5(W(), 5));
                    return;
                }
            }
            if (str == null || !uq7.O(str, "FOLDERS", false)) {
                g84.h(dj7.k(r(), ".performHomeSearchQuickAction not handling ", str));
                return;
            }
            if (z && z2) {
                i2 = 1;
            }
            w01 w01Var = new w01(12, zc6Var, (Object) this);
            if (i2 != 0) {
                sa1.R(this, null, new y2(15, this, w01Var), 1);
            } else {
                w01Var.invoke();
            }
        }
    }

    public final String a0(int i, int i2) {
        String string = getString(i);
        string.getClass();
        if (i2 <= 0) {
            return string;
        }
        return string + " (" + i2 + ")";
    }

    public final void b0(v54 v54Var) {
        boolean z;
        RecyclerView recyclerView;
        String str = v54Var.a;
        boolean z2 = v54Var.h;
        List<s54> list = v54Var.b;
        List list2 = v54Var.d;
        List list3 = v54Var.c;
        str.getClass();
        list3.getClass();
        boolean z3 = !nq7.j0(str) && list3.size() > 2;
        if (!z3) {
            this.W = false;
        }
        boolean z4 = this.W;
        str.getClass();
        List listP1 = (nq7.j0(str) || list3.size() <= 2 || z4) ? list3 : el1.p1(list3, 2);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            if (((s54) obj).b == u54.APPS) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list2) {
            if (((s54) obj2).b == u54.FOLDERS) {
                arrayList2.add(obj2);
            }
        }
        boolean zIsEmpty = list.isEmpty();
        boolean z5 = !zIsEmpty;
        boolean zIsEmpty2 = list3.isEmpty();
        boolean z6 = !zIsEmpty2;
        boolean zIsEmpty3 = arrayList.isEmpty();
        boolean z7 = !zIsEmpty3;
        boolean zIsEmpty4 = arrayList2.isEmpty();
        boolean z8 = !zIsEmpty4;
        boolean z9 = !zIsEmpty3 || z2;
        int iIndexOfChild = X().H.indexOfChild(X().b);
        if (iIndexOfChild != -1) {
            if (!zIsEmpty3) {
                int iIndexOfChild2 = X().H.indexOfChild(X().k);
                if (iIndexOfChild2 != -1 && iIndexOfChild != iIndexOfChild2 - 1) {
                    X().H.removeView(X().b);
                    int iIndexOfChild3 = X().H.indexOfChild(X().k);
                    if (iIndexOfChild3 >= 0) {
                        X().H.addView(X().b, iIndexOfChild3);
                    } else {
                        X().H.addView(X().b);
                    }
                }
            } else if (iIndexOfChild != X().H.getChildCount() - 1) {
                X().H.removeView(X().b);
                X().H.addView(X().b);
            }
        }
        sz8.d0(X().I, (zIsEmpty && zIsEmpty2 && !z9 && zIsEmpty4) ? false : true);
        sz8.d0(X().O, z5);
        sz8.d0(X().K, z5);
        X().N.setText(a0(R.string.quick_actions, v54Var.e));
        sz8.d0(X().N, z6);
        sz8.d0(X().p, z6);
        sz8.d0(X().t, z6);
        MaterialButton materialButton = X().e;
        sz8.d0(materialButton, z3);
        materialButton.setText(this.W ? R.string.show_less : R.string.see_all);
        X().L.setText(a0(R.string.apps, v54Var.f));
        sz8.d0(X().L, z9);
        sz8.d0(X().b, z9);
        sz8.d0(X().q, z7);
        TextView textView = X().d;
        sz8.d0(textView, z2);
        textView.setText(v54Var.i ? R.string.hide_system_apps : R.string.show_system_apps);
        textView.setContentDescription(textView.getText());
        X().M.setText(a0(R.string.folder_setups, v54Var.g));
        sz8.d0(X().M, z8);
        sz8.d0(X().k, z8);
        sz8.d0(X().n.a, zIsEmpty && zIsEmpty2 && !z9 && zIsEmpty4 && !nq7.j0(str));
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("compact_storage_info", false);
            if (z) {
                X().y.setVisibility(8);
                sz8.d0(X().x, !list.isEmpty());
                recyclerView = X().x;
            } else {
                X().x.setVisibility(8);
                sz8.d0(X().y, !list.isEmpty());
                recyclerView = X().y;
            }
            ArrayList arrayList3 = new ArrayList(hl1.G0(list, 10));
            for (s54 s54Var : list) {
                Integer num = s54Var.q;
                int iIntValue = num != null ? num.intValue() : s54Var.x;
                int i = s54Var.e;
                int i2 = s54Var.f;
                String str2 = s54Var.c;
                str2.getClass();
                d71 d71Var = new d71();
                d71Var.a = iIntValue;
                d71Var.b = str2;
                d71Var.c = i;
                d71Var.d = i2;
                arrayList3.add(d71Var);
            }
            ba2 ba2Var = new ba2(new ArrayList(arrayList3), z);
            ba2Var.f = new qs(2, list, this);
            recyclerView.setAdapter(ba2Var);
            ((r54) this.U.getValue()).w(new fm7(listP1, (Set) null, false, (String) null, 30), false);
            ((h54) this.S.getValue()).w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), false);
            ((h54) this.T.getValue()).w(new fm7((List) arrayList2, (Set) null, false, (String) null, 30), false);
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ConstraintLayout constraintLayout = X().a;
        constraintLayout.getClass();
        if (K(constraintLayout)) {
            sz8.b(X().I, 7);
            W().i = G();
            QuickRecyclerView quickRecyclerView = X().q;
            int i = QuickRecyclerView.c1;
            int i2 = 1;
            quickRecyclerView.setLinearLayoutManager(1);
            int[] iArr = null;
            quickRecyclerView.setItemAnimator(null);
            gv7 gv7Var = this.S;
            quickRecyclerView.setAdapter((h54) gv7Var.getValue());
            QuickRecyclerView quickRecyclerView2 = X().r;
            quickRecyclerView2.setLinearLayoutManager(1);
            quickRecyclerView2.setItemAnimator(null);
            gv7 gv7Var2 = this.T;
            quickRecyclerView2.setAdapter((h54) gv7Var2.getValue());
            QuickRecyclerView quickRecyclerView3 = X().y;
            FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(this);
            flexboxLayoutManager.i1(2);
            quickRecyclerView3.setLayoutManager(flexboxLayoutManager);
            quickRecyclerView3.setItemAnimator(null);
            RecyclerView recyclerView = X().x;
            FlexboxLayoutManager flexboxLayoutManager2 = new FlexboxLayoutManager(this);
            flexboxLayoutManager2.i1(2);
            recyclerView.setLayoutManager(flexboxLayoutManager2);
            recyclerView.setItemAnimator(null);
            QuickRecyclerView quickRecyclerView4 = X().t;
            quickRecyclerView4.setLinearLayoutManager(1);
            quickRecyclerView4.setItemAnimator(null);
            gv7 gv7Var3 = this.U;
            quickRecyclerView4.setAdapter((r54) gv7Var3.getValue());
            zx2 zx2Var = X().n;
            zx2Var.d.setImageResource(R.drawable.ic_search);
            zx2Var.e.setText(R.string.no_items_for_search_query);
            int i3 = 8;
            zx2Var.b.setVisibility(8);
            int i4 = 5;
            ((h54) gv7Var.getValue()).j = new rs(this, i4);
            ((h54) gv7Var2.getValue()).j = new ss(this, i2);
            ((r54) gv7Var3.getValue()).j = new vo3(this, i2);
            X().J.setNavigationOnClickListener(new gs(this, 6));
            X().c.setOnClickListener(new dj(this, i3));
            X().e.setOnClickListener(new hs(this, i3));
            X().d.setOnClickListener(new mf(this, i3));
            X().f.addTextChangedListener(new o52(this, i2));
            l90 l90Var = this.P;
            int i5 = 14;
            ((x54) l90Var.getValue()).e.e(this, new j01(i2, new d7(this, i5)));
            int i6 = 16;
            ((ix6) W().e.getValue()).e(this, new j01(i2, new e7(this, i6)));
            W().k().e(this, new j01(i2, new k3(this, i5)));
            ((ix6) W().g.getValue()).e(this, new j01(i2, new hj(this, i6)));
            W().j().e(this, new j01(i2, new ox(this, 17)));
            L(true, new kn3(this, i4));
            x54 x54Var = (x54) l90Var.getValue();
            Editable text = X().f.getText();
            x54Var.l(text != null ? text.toString() : null);
            int[] intArrayExtra = getIntent().getIntArrayExtra("source_bounds");
            if (intArrayExtra != null && intArrayExtra.length == 4) {
                iArr = intArrayExtra;
            }
            X().G.setAlpha(1.0f);
            ConstraintLayout constraintLayout2 = X().a;
            constraintLayout2.getClass();
            yt5.a(constraintLayout2, new s60(constraintLayout2, iArr, this));
        }
    }
}
