package defpackage;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.intro.d;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.MessagesBackupRestoreActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cz implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ cz(lh6 lh6Var, fp6 fp6Var) {
        this.a = 15;
        this.b = lh6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [jv1] */
    /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v8 */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        boolean z;
        pg1 pg1Var;
        boolean z2;
        RecyclerView recyclerView;
        q63 q63Var;
        int i = this.a;
        int i2 = 10;
        int i3 = 2;
        int i4 = 1;
        ?? string = 0;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) obj;
                km5 km5Var = ((fz) obj2).h;
                bool.getClass();
                km5Var.t(bool.booleanValue());
                return be8Var;
            case 1:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                m97 m97Var = (m97) obj;
                int i5 = AppsBatchActivity.s0;
                m97Var.getClass();
                int i6 = x10.a[m97Var.ordinal()];
                if (i6 == 1 || i6 == 2) {
                    int i7 = LabelsActivity.Z;
                    us2.E(appsBatchActivity, 100, null, m97Var == m97.ADD_LABELS, 2);
                } else {
                    if (i6 != 3) {
                        q.j();
                        return null;
                    }
                    r20 r20VarL0 = appsBatchActivity.a0();
                    l20 l20Var = appsBatchActivity.m0;
                    if (l20Var == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    List listL = l20Var.l();
                    zn4 zn4Var = zn4.a;
                    zn4.b(null, new us(listL, r20VarL0, string, i4));
                }
                return be8Var;
            case 2:
                ArrayList arrayList = (ArrayList) obj2;
                ji jiVar = (ji) obj;
                jiVar.getClass();
                String packageName = jiVar.getPackageName();
                if (arrayList.isEmpty()) {
                    z = false;
                } else {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (pe4.d(((hz) it.next()).b.getPackageName(), packageName)) {
                            z = true;
                        }
                    }
                    z = false;
                }
                return Boolean.valueOf(!z);
            case 3:
                ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) obj2;
                ((tq1) configSettingsActivity.T.getValue()).a(configSettingsActivity.U().j().getApplyData());
                Intent intentPutExtra = new Intent().putExtra("extra_config_settings", configSettingsActivity.U().j());
                intentPutExtra.getClass();
                configSettingsActivity.setResult(-1, intentPutExtra);
                return be8Var;
            case 4:
                f62 f62Var = (f62) obj2;
                long jLongValue = ((Long) obj).longValue();
                g62 g62Var = (g62) f62Var.c;
                if (g62Var.c.isRunning()) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jLongValue >= f62Var.b || jCurrentTimeMillis - f62Var.a >= 2000) {
                        f62Var.a = jCurrentTimeMillis;
                        ag8.g(g62Var, Long.valueOf(jLongValue));
                    }
                }
                return be8Var;
            case 5:
                String str = (String) obj;
                str.getClass();
                String strJ = xs1.j("/", nq7.I0(str, '/'));
                ArrayList<zq2> arrayList2 = new ArrayList();
                br2 br2Var = ((b82) obj2).h;
                br2Var.getClass();
                yq2 yq2VarF = br2Var.f(strJ);
                el1.K0(yq2VarF.a, arrayList2);
                while (yq2VarF.c) {
                    String str2 = yq2VarF.b;
                    if (str2 == null || nq7.j0(str2)) {
                        str2 = null;
                    }
                    if (str2 == null) {
                        f6.g("Dropbox returned has_more without a cursor for ".concat(strJ));
                        return null;
                    }
                    br2Var.getClass();
                    fl4 fl4Var = new fl4();
                    fl4Var.u("cursor", str2);
                    yq2VarF = br2.m(br2Var.e(fl4Var, "/2/files/list_folder/continue"));
                    el1.K0(yq2VarF.a, arrayList2);
                }
                ArrayList arrayList3 = new ArrayList();
                for (zq2 zq2Var : arrayList2) {
                    String str3 = "";
                    if (zq2Var instanceof vq2) {
                        vq2 vq2Var = (vq2) zq2Var;
                        String str4 = vq2Var.a;
                        String str5 = vq2Var.f;
                        if (str4 != null) {
                            str3 = str4;
                        } else if (str5 != null) {
                            str3 = str5;
                        }
                        pg1Var = new pg1(vq2Var.b, str3);
                        pg1Var.c = vq2Var.c;
                        pg1Var.d = vq2Var.d;
                        pg1Var.e = vq2Var.e;
                        pg1Var.f = str5;
                    } else if (zq2Var instanceof wq2) {
                        wq2 wq2Var = (wq2) zq2Var;
                        String str6 = wq2Var.a;
                        String str7 = wq2Var.c;
                        if (str6 != null) {
                            str3 = str6;
                        } else if (str7 != null) {
                            str3 = str7;
                        }
                        pg1Var = new pg1(wq2Var.b, str3);
                        pg1Var.f = str7;
                        pg1Var.g = true;
                    } else {
                        pg1Var = null;
                    }
                    if (pg1Var != null) {
                        arrayList3.add(pg1Var);
                    }
                }
                return new ab1(arrayList3);
            case 6:
                x92 x92Var = (x92) obj2;
                List list = (List) obj;
                if (list != null) {
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z2 = sharedPreferences.getBoolean("compact_storage_info", false);
                        jk8 jk8Var = x92Var.b;
                        jk8Var.getClass();
                        QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ((y92) jk8Var).f.d;
                        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(x92Var.l());
                        flexboxLayoutManager.i1(2);
                        quickRecyclerView.setLayoutManager(flexboxLayoutManager);
                        jk8 jk8Var2 = x92Var.b;
                        jk8Var2.getClass();
                        RecyclerView recyclerView2 = (RecyclerView) ((y92) jk8Var2).f.c;
                        FlexboxLayoutManager flexboxLayoutManager2 = new FlexboxLayoutManager(x92Var.l());
                        flexboxLayoutManager2.i1(2);
                        recyclerView2.setLayoutManager(flexboxLayoutManager2);
                        jk8 jk8Var3 = x92Var.b;
                        if (z2) {
                            jk8Var3.getClass();
                            ((QuickRecyclerView) ((y92) jk8Var3).f.d).setVisibility(8);
                            jk8 jk8Var4 = x92Var.b;
                            jk8Var4.getClass();
                            ((RecyclerView) ((y92) jk8Var4).f.c).setVisibility(0);
                            jk8 jk8Var5 = x92Var.b;
                            jk8Var5.getClass();
                            recyclerView = (RecyclerView) ((y92) jk8Var5).f.c;
                        } else {
                            jk8Var3.getClass();
                            ((RecyclerView) ((y92) jk8Var3).f.c).setVisibility(8);
                            jk8 jk8Var6 = x92Var.b;
                            jk8Var6.getClass();
                            ((QuickRecyclerView) ((y92) jk8Var6).f.d).setVisibility(0);
                            jk8 jk8Var7 = x92Var.b;
                            jk8Var7.getClass();
                            recyclerView = (QuickRecyclerView) ((y92) jk8Var7).f.d;
                        }
                        ba2 ba2Var = new ba2(list, z2);
                        ba2Var.f = new mi(i3, ba2Var, x92Var);
                        recyclerView.setAdapter(ba2Var);
                    } catch (ClassCastException unused) {
                        z2 = false;
                    }
                }
                return be8Var;
            case 7:
                View view = (View) obj;
                view.getClass();
                ((rj2) obj2).a.d0(view, iu.DATA);
                return be8Var;
            case 8:
                return new File(((q63) obj2).n().getFile(), (String) obj).getPath();
            case XmlPullParser.COMMENT /* 9 */:
                String str8 = (String) obj;
                str8.getClass();
                return Boolean.valueOf(((HashSet) obj2).contains(str8));
            case 10:
                FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj2;
                fm7 fm7Var = (fm7) obj;
                int i8 = FoldersBatchActivity.Y;
                if (fm7Var != null) {
                    Log.d(foldersBatchActivity.r(), "onAdapterState: Folders received = " + fm7Var.a.size());
                    cp3 cp3Var = foldersBatchActivity.V;
                    cp3Var.w(fm7Var, false);
                    if (fm7Var.d) {
                        foldersBatchActivity.W().f0(0);
                    }
                    foldersBatchActivity.b0();
                    foldersBatchActivity.Z(cp3Var.p());
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                HomeActivity homeActivity = (HomeActivity) obj2;
                dd1 dd1Var = (dd1) obj;
                Map map = HomeActivity.b0;
                dd1Var.getClass();
                vr6.i$default(vr6.INSTANCE, homeActivity.r(), eq3.k("Showing previous cloud connect dialog [", dd1Var.getConstant(), "]"), null, 4, null);
                new sr1(homeActivity, dd1Var, new rm(11, homeActivity, dd1Var)).G(homeActivity, null);
                return be8Var;
            case 12:
                d dVar = (d) obj2;
                c45 c45Var = (c45) obj;
                c45Var.getClass();
                boolean z3 = c45Var.b;
                if (z3) {
                    vr6.i$default(vr6.INSTANCE, dVar.b, "Anonymous sign in successful", null, 4, null);
                } else {
                    Exception exc = c45Var.a;
                    if (exc != null) {
                        vr6.e$default(vr6.INSTANCE, dVar.b, "Anonymous auth failed", exc, null, 8, null);
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        String strB = io4.b(exc);
                        zn4 zn4Var2 = zn4.a;
                        dj7.y(contextC, strB);
                    } else {
                        vr6.e$default(vr6.INSTANCE, dVar.b, "Anonymous auth failed", null, 4, null);
                    }
                }
                dVar.getClass();
                dVar.p(z3 ? d.b.SIGNED_IN : d.b.NOT_SIGNED_IN);
                return be8Var;
            case 13:
                PremiumActivity premiumActivity = (PremiumActivity) obj2;
                v76 v76Var = (v76) obj;
                int i9 = PremiumActivity.V;
                v76Var.getClass();
                ai8.k(premiumActivity, "https://play.google.com/store/account/subscriptions?sku=" + v76Var.c + "&package=" + premiumActivity.getPackageName());
                premiumActivity.finish();
                return be8Var;
            case 14:
                q63 q63Var2 = (q63) obj;
                sa1 sa1Var = (sa1) ((nd6) obj2).getActivity();
                if (sa1Var != null) {
                    if (q63Var2 == null || !q63Var2.j()) {
                        String string2 = sa1Var.getString(R.string.no_backup_in_cloud);
                        string2.getClass();
                        zn4 zn4Var3 = zn4.a;
                        zn4.e(new cv(14, sa1Var, string2));
                    } else {
                        int i10 = MessagesBackupRestoreActivity.c0;
                        jd4.G(sa1Var, q63Var2);
                    }
                }
                return be8Var;
            case 15:
                lh6 lh6Var = (lh6) obj2;
                zy6 zy6Var = (zy6) obj;
                zy6Var.getClass();
                List list2 = zy6Var.a;
                if (!list2.isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("extract_warning_count=" + list2.size());
                    sb.append('\n');
                    int i11 = 0;
                    for (Object obj3 : list2) {
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            fl1.F0();
                            throw null;
                        }
                        sb.append("extract_warning_");
                        sb.append(i11);
                        sb.append('=');
                        sb.append((String) obj3);
                        sb.append('\n');
                        i11 = i12;
                    }
                    string = nq7.J0(sb.toString()).toString();
                }
                lh6Var.a = string;
                return be8Var;
            case Argon2.V10 /* 16 */:
                String str9 = (String) obj;
                str9.getClass();
                q47 q47VarP = ((m37) obj2).p();
                zn4 zn4Var4 = zn4.a;
                zn4.c(new lx(i2, q47VarP, str9));
                return be8Var;
            case 17:
                il0 il0Var = (il0) obj2;
                ((Boolean) obj).getClass();
                try {
                    if (!il0Var.isFinishing()) {
                        il0Var.H();
                    }
                    break;
                } catch (Exception unused2) {
                }
                return be8Var;
            case 18:
                SyncOption syncOption = (SyncOption) obj;
                syncOption.getClass();
                ScheduleItem.Messages messages = (ScheduleItem.Messages) ((ScheduleItem) obj2);
                if (!ji8.r(messages.getLocations()) || syncOption == SyncOption.WIFI) {
                    syncOption = null;
                }
                return ScheduleItem.Messages.copy$default(messages, null, null, null, syncOption != null ? syncOption.toString() : null, null, false, 55, null);
            case Argon2.V13 /* 19 */:
                ao8 ao8Var = WallApplyActivity.O;
                Const.x((WallApplyActivity) obj2);
                return be8Var;
            case 20:
                ao8 ao8Var2 = (ao8) obj;
                ao8Var2.getClass();
                ((oo8) obj2).U(ao8Var2);
                return be8Var;
            case 21:
                WallsDashActivity wallsDashActivity = (WallsDashActivity) obj2;
                yo8 yo8Var = (yo8) obj;
                int i13 = WallsDashActivity.W;
                yo8Var.getClass();
                so8 so8Var = wallsDashActivity.X().f;
                ImageView imageView = (ImageView) so8Var.d;
                ImageView imageView2 = (ImageView) so8Var.e;
                TextView textView = (TextView) so8Var.n;
                TextView textView2 = (TextView) so8Var.k;
                View view2 = (View) so8Var.f;
                MaterialButton materialButton = (MaterialButton) so8Var.b;
                materialButton.setOnClickListener(null);
                MaterialButton materialButton2 = (MaterialButton) so8Var.c;
                materialButton2.setOnClickListener(null);
                textView.setText(R.string.currently_applied);
                textView2.setText(R.string.applied_walls_summary);
                boolean z4 = yo8Var instanceof wo8;
                materialButton2.setVisibility(z4 ? 4 : 0);
                materialButton.setVisibility(z4 ? 4 : 0);
                hz4 hz4Var = (hz4) wallsDashActivity.R.getValue();
                View[] viewArr = {imageView, imageView2, view2};
                ArrayList arrayList4 = hz4Var.a;
                arrayList4.clear();
                el1.L0(arrayList4, viewArr);
                w18[] w18VarArr = {new w18(textView, sz8.z(wallsDashActivity)), new w18(textView2, sz8.A(wallsDashActivity))};
                ArrayList arrayList5 = hz4Var.b;
                arrayList5.clear();
                el1.L0(arrayList5, w18VarArr);
                hz4Var.e = true;
                hz4Var.a(z4);
                ImageView[] imageViewArr = {imageView, imageView2};
                ColorMatrix colorMatrix = new ColorMatrix();
                colorMatrix.setSaturation(z4 ? 0.0f : 1.0f);
                ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
                for (int i14 = 0; i14 < 2; i14++) {
                    imageViewArr[i14].setColorFilter(colorMatrixColorFilter);
                }
                boolean zEquals = yo8Var.equals(wo8.a);
                e66 e66Var = e66.a;
                if (zEquals) {
                    String str10 = ry5.u;
                    q63 q63Var3 = new q63(eq3.j(qy5.f(false, null).p, "home_wall.wal"), 2);
                    q63 q63Var4 = new q63(eq3.j(qy5.f(false, null).p, "lock_wall.wal"), 2);
                    if (q63Var3.j()) {
                        q63Var = q63Var3;
                        jm1.d(new yn8(q63Var, q63Var3.z(), q63Var3.A(), String.valueOf(Long.hashCode(q63Var3.A())), 48), imageView, true, e66Var);
                    } else {
                        q63Var = q63Var3;
                    }
                    if (((WallpaperManager) tv7.a.getValue()).getWallpaperId(2) != -1 && q63Var4.j()) {
                        jm1.d(new yn8(q63Var4, q63Var4.z(), q63Var4.A(), String.valueOf(Long.hashCode(q63Var4.A())), 48), imageView2, true, e66Var);
                    } else if (q63Var.j()) {
                        jm1.d(new yn8(q63Var, q63Var.z(), q63Var.A(), String.valueOf(Long.hashCode(q63Var.A())), 48), imageView2, true, e66Var);
                    }
                } else if (yo8Var instanceof xo8) {
                    xo8 xo8Var = (xo8) yo8Var;
                    q63 q63Var5 = xo8Var.a.a;
                    jm1.d(new yn8(q63Var5, q63Var5.z(), q63Var5.A(), String.valueOf(Long.hashCode(q63Var5.A())), 48), imageView, true, e66Var);
                    q63 q63Var6 = xo8Var.b.a;
                    jm1.d(new yn8(q63Var6, q63Var6.z(), q63Var6.A(), String.valueOf(Long.hashCode(q63Var6.A())), 48), imageView2, true, e66Var);
                    materialButton2.setOnClickListener(new i10(8, wallsDashActivity, yo8Var));
                    materialButton.setOnClickListener(new gs(wallsDashActivity, 11));
                } else {
                    if (!yo8Var.equals(vo8.a)) {
                        q.j();
                        return null;
                    }
                    String string3 = wallsDashActivity.getString(R.string.no_wallpapers_found);
                    string3.getClass();
                    zn4 zn4Var5 = zn4.a;
                    zn4.e(new cv(14, wallsDashActivity, string3));
                }
                return be8Var;
            case 22:
                ((yp8) obj2).h.setText((String) obj);
                return be8Var;
            case 23:
                ((yp8) obj2).h.setText((String) obj);
                return be8Var;
            default:
                ct8 ct8Var = (ct8) obj;
                ct8Var.getClass();
                boolean zEquals2 = ct8Var.equals(zs8.a);
                ex6 ex6Var = ((iu8) obj2).k;
                if (zEquals2) {
                    ex6Var.l(ct8Var);
                } else {
                    ex6Var.k(ct8Var);
                }
                return be8Var;
        }
    }

    public /* synthetic */ cz(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
