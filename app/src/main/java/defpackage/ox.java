package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import android.view.View;
import android.view.animation.PathInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import androidx.preference.Preference;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.textfield.TextInputEditText;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.PCloudSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.TeraBoxSignInActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.b;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ox implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ox(pe4 pe4Var, a aVar) {
        this.a = 7;
        this.b = pe4Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        List<BlacklistApp> items;
        String string;
        String str;
        int i = this.a;
        int i2 = 14;
        int i3 = 3;
        int i4 = 4;
        int i5 = 2;
        List listN1 = null;
        listN1 = null;
        int i6 = 1;
        boolean z = false;
        z = false;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                org.swiftapps.swiftbackup.settings.a aVar = (org.swiftapps.swiftbackup.settings.a) obj2;
                yu yuVar = (yu) obj;
                yuVar.getClass();
                wu wuVar = yu.Companion;
                wuVar.getClass();
                int id = yuVar.getId();
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("restore_runtime_permissions", id).apply();
                gv7 gv7Var = aVar.r;
                if (((Preference) gv7Var.getValue()).g()) {
                    Preference preference = (Preference) gv7Var.getValue();
                    wuVar.getClass();
                    preference.B(wu.a().asDisplayString());
                }
                return be8.a;
            case 1:
                AppsBatchActivity appsBatchActivity = (AppsBatchActivity) obj2;
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                if (zBooleanValue) {
                    appsBatchActivity.r0.a(new py7(zBooleanValue));
                } else {
                    int i7 = AppsBatchActivity.s0;
                    String string2 = appsBatchActivity.getString(R.string.disable_apps);
                    string2.getClass();
                    Const.I(appsBatchActivity, string2, appsBatchActivity.getString(R.string.disable_apps_warning), new w10(appsBatchActivity, zBooleanValue, z ? 1 : 0));
                }
                return be8.a;
            case 2:
                il0 il0Var = (il0) obj2;
                po0 po0Var = (po0) obj;
                be8 be8Var = be8.a;
                if (pe4.d(po0Var, ho0.a)) {
                    if (!il0Var.isFinishing()) {
                        il0Var.finish();
                    }
                } else if (pe4.d(po0Var, no0.a)) {
                    if (!il0Var.isFinishing()) {
                        il0Var.recreate();
                    }
                } else if (po0Var instanceof io0) {
                    ai8.q(il0Var, HomeActivity.class);
                } else if (pe4.d(po0Var, ko0.a)) {
                    int i8 = AppListActivity.q0;
                    y13.H(il0Var);
                } else if (po0Var instanceof jo0) {
                    zc6 zc6Var = ((jo0) po0Var).a;
                    zc6Var.getClass();
                    if (!zc6Var.c() || V.INSTANCE.getA()) {
                        Intent intentPutExtra = new Intent(il0Var, (Class<?>) AppsBatchActivity.class).putExtra("quick_action_item", zc6Var);
                        intentPutExtra.getClass();
                        il0Var.startActivity(intentPutExtra);
                    } else {
                        zn4 zn4Var = zn4.a;
                        zn4.e(new b56(il0Var, z ? 1 : 0));
                    }
                } else if (po0Var instanceof lo0) {
                    k30 k30Var = ((lo0) po0Var).a;
                    k30Var.getClass();
                    if (V.INSTANCE.getA()) {
                        Intent intentPutExtra2 = new Intent(il0Var, (Class<?>) AppsConfigRunActivity.class).putExtra("extra_config_run_item", k30Var);
                        intentPutExtra2.getClass();
                        il0Var.startActivity(intentPutExtra2);
                    } else {
                        zn4 zn4Var2 = zn4.a;
                        zn4.e(new b56(il0Var, z ? 1 : 0));
                    }
                } else if (po0Var instanceof mo0) {
                    hy7 hy7Var = hy7.a;
                    gz7 gz7Var = TaskService.b;
                    if (TaskService.b.isRunning()) {
                        il0Var.finish();
                    } else {
                        Intent intent = new Intent(il0Var, (Class<?>) DetailActivity.class).putExtra("detail_launched_from_shortcut", true).setPackage(((mo0) po0Var).a);
                        intent.getClass();
                        il0Var.startActivity(intent);
                    }
                } else if (po0Var instanceof oo0) {
                    hy7 hy7Var2 = hy7.a;
                    oo0 oo0Var = (oo0) po0Var;
                    hy7.a(oo0Var.a, oo0Var.b);
                    hy7.e(il0Var, null);
                } else {
                    if (!(po0Var instanceof go0)) {
                        q.j();
                        return null;
                    }
                    b05.l(il0Var, "Error", ((go0) po0Var).a, 8);
                }
                return be8Var;
            case 3:
                final BlacklistActivity blacklistActivity = (BlacklistActivity) obj2;
                os0 os0Var = (os0) obj;
                int i9 = BlacklistActivity.P;
                os0Var.getClass();
                final List list = os0Var.c;
                final Set set = os0Var.d;
                s35 s35Var = new s35(blacklistActivity, R.style.M3AlertDialogTheme, new hv1(blacklistActivity, R.style.M3AlertDialogTheme), null);
                ((ra) s35Var.b).d = Const.p(blacklistActivity, set.size(), 100, true);
                s35Var.o(os0Var.a, os0Var.b, new DialogInterface.OnMultiChoiceClickListener() { // from class: sr0
                    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                    public final void onClick(DialogInterface dialogInterface, int i10, boolean z2) {
                        int i11 = BlacklistActivity.P;
                        dialogInterface.getClass();
                        wa waVar = (wa) dialogInterface;
                        ji jiVar = (ji) list.get(i10);
                        Set set2 = set;
                        if (z2) {
                            BlacklistApp.Companion.getClass();
                            jiVar.getClass();
                            BlacklistApp blacklistApp = new BlacklistApp(jiVar.getName(), jiVar.getPackageName(), 0, 4, null);
                            blacklistApp.setInstalled(jiVar.isInstalled());
                            set2.add(blacklistApp);
                        } else {
                            Iterator it = set2.iterator();
                            while (it.hasNext()) {
                                BlacklistApp blacklistApp2 = (BlacklistApp) it.next();
                                blacklistApp2.getClass();
                                if (pe4.d(blacklistApp2.getPackageName(), jiVar.getPackageName())) {
                                    it.remove();
                                }
                            }
                        }
                        int size = set2.size();
                        BlacklistActivity blacklistActivity2 = blacklistActivity;
                        if (size >= 100) {
                            String string3 = blacklistActivity2.getString(R.string.maximum_num_blacklist_limit_message);
                            string3.getClass();
                            Toast toast = blacklistActivity2.O;
                            if (toast != null) {
                                toast.cancel();
                            }
                            Toast toastMakeText = Toast.makeText(blacklistActivity2, string3, 0);
                            blacklistActivity2.O = toastMakeText;
                            if (toastMakeText != null) {
                                toastMakeText.show();
                            }
                        }
                        waVar.f(-1).setEnabled(!(set2.size() > 100));
                        waVar.setTitle(Const.p(blacklistActivity2, set2.size(), 100, true));
                    }
                });
                s35Var.s(R.string.add_apps, new sy(set, i6));
                s35Var.q(R.string.cancel, null);
                s35Var.m();
                return be8.a;
            case 4:
                u95 u95Var = (u95) obj2;
                BlacklistData blacklistData = (BlacklistData) obj;
                if (blacklistData != null && (items = blacklistData.getItems()) != null) {
                    String.CASE_INSENSITIVE_ORDER.getClass();
                    listN1 = el1.n1(items, new xg(i3));
                }
                if (listN1 == null) {
                    listN1 = ov2.a;
                }
                u95Var.k(new fm7(listN1, (Set) null, false, (String) null, 30));
                return be8.a;
            case 5:
                CallsBackupRestoreActivity callsBackupRestoreActivity = (CallsBackupRestoreActivity) obj2;
                gv7 gv7Var2 = callsBackupRestoreActivity.Z;
                b.a aVar2 = (b.a) obj;
                int i10 = CallsBackupRestoreActivity.c0;
                aVar2.getClass();
                Log.i(callsBackupRestoreActivity.r(), "updateViews: status = " + aVar2);
                int i11 = org.swiftapps.swiftbackup.messagescalls.backuprestore.a.a[aVar2.ordinal()];
                if (i11 == 1) {
                    callsBackupRestoreActivity.U(false, (View[]) Arrays.copyOf(new View[]{callsBackupRestoreActivity.V(), callsBackupRestoreActivity.Y(), callsBackupRestoreActivity.W().a}, 3));
                    callsBackupRestoreActivity.U(true, (View[]) Arrays.copyOf(new View[]{callsBackupRestoreActivity.X()}, 1));
                } else if (i11 == 2) {
                    callsBackupRestoreActivity.U(false, (View[]) Arrays.copyOf(new View[]{callsBackupRestoreActivity.X(), callsBackupRestoreActivity.W().a}, 2));
                    callsBackupRestoreActivity.U(true, (View[]) Arrays.copyOf(new View[]{callsBackupRestoreActivity.V(), callsBackupRestoreActivity.Y()}, 2));
                } else {
                    if (i11 != 3) {
                        q.j();
                        return null;
                    }
                    callsBackupRestoreActivity.U(false, (View[]) Arrays.copyOf(new View[]{callsBackupRestoreActivity.V(), callsBackupRestoreActivity.X(), callsBackupRestoreActivity.Y()}, 3));
                    callsBackupRestoreActivity.U(true, (View[]) Arrays.copyOf(new View[]{callsBackupRestoreActivity.W().a}, 1));
                    ((ImageView) callsBackupRestoreActivity.Y.getValue()).setImageResource(R.drawable.ic_no_backup);
                    ((TextView) callsBackupRestoreActivity.X.getValue()).setText(R.string.no_call_logs_found);
                    Object value = gv7Var2.getValue();
                    value.getClass();
                    ((Button) value).setText(R.string.back);
                    Object value2 = gv7Var2.getValue();
                    value2.getClass();
                    ((Button) value2).setOnClickListener(new es(callsBackupRestoreActivity, i5));
                }
                return be8.a;
            case 6:
                String str2 = (String) obj;
                int i12 = CloudConnectActivity.Q;
                str2.getClass();
                tb1 tb1Var = tb1.a;
                qb1.t(str2);
                ((CloudConnectActivity) obj2).a0().j();
                return be8.a;
            case 7:
                org.swiftapps.swiftbackup.cloud.orphans.b bVar = (org.swiftapps.swiftbackup.cloud.orphans.b) obj;
                bVar.getClass();
                ii1 ii1Var = (ii1) ((pe4) obj2);
                ArrayList arrayList = ii1Var.m;
                org.swiftapps.swiftbackup.cloud.orphans.b bVarA = org.swiftapps.swiftbackup.cloud.orphans.b.a(bVar, null, arrayList, sv2.a, null, 0, 0, 7423);
                a.EnumC0013a enumC0013a = a.EnumC0013a.RESULTS;
                if (arrayList.isEmpty()) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    string = SwiftApp.Companion.c().getString(R.string.cloud_orphan_none_found);
                } else {
                    SwiftApp.Companion companion2 = SwiftApp.d;
                    string = SwiftApp.Companion.c().getString(R.string.cloud_orphan_found_count, Integer.valueOf(arrayList.size()));
                }
                return org.swiftapps.swiftbackup.cloud.orphans.b.a(bVarA, enumC0013a, null, null, string, ii1Var.n, ii1Var.o, 895);
            case 8:
                return CreateDigitalCredentialController.handleResponse$lambda$1((CreateDigitalCredentialController) obj2, (c12) obj);
            case XmlPullParser.COMMENT /* 9 */:
                int i13 = CsActivity.P0;
                ((TextInputEditText) ((CsActivity) obj2).C0.getValue()).setText((String) obj);
                return be8.a;
            case 10:
                x92 x92Var = (x92) obj2;
                x92Var.l().J(new w20(x92Var, 11));
                return be8.a;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                View view = (View) obj;
                view.getClass();
                ((rj2) obj2).a.d0(view, iu.APP);
                return be8.a;
            case 12:
                fj5 fj5Var = (fj5) obj;
                fj5Var.getClass();
                nh nhVar = fj5Var.a;
                gy5 gy5Var = fj5Var.b;
                if (((qn5) nhVar.b).U(gy5Var).getValue() != null) {
                    return new b98(false, null);
                }
                new rd2(gy5Var).e(obj2);
                Object objF = t62.f(obj2);
                ui8.c(objF);
                nhVar.b = ((qn5) nhVar.b).h0(gy5Var, xh8.a(objF, qv2.e));
                return new b98(true, ((qn5) nhVar.b).U(gy5Var));
            case 13:
                return Boolean.valueOf(nq7.y0((CharSequence) ((mt3) obj2).invoke(obj), '.'));
            case 14:
                String str3 = (String) obj;
                str3.getClass();
                return Boolean.valueOf(((HashSet) obj2).contains(str3));
            case 15:
                FoldersBatchActivity foldersBatchActivity = (FoldersBatchActivity) obj2;
                ym7 ym7Var = (ym7) obj;
                int i14 = FoldersBatchActivity.Y;
                if (ym7Var != null) {
                    Log.d(foldersBatchActivity.r(), "onViewStatusUI: " + ym7Var);
                    foldersBatchActivity.a0();
                    int i15 = no3.a[ym7Var.ordinal()];
                    if (i15 == 1) {
                        foldersBatchActivity.X().d.setVisibility(0);
                        sz8.W(foldersBatchActivity.W());
                        sz8.W(foldersBatchActivity.U());
                        foldersBatchActivity.V().a.setVisibility(8);
                    } else if (i15 == 2) {
                        foldersBatchActivity.X().d.setVisibility(8);
                        sz8.c0(foldersBatchActivity.W());
                        sz8.c0(foldersBatchActivity.U());
                        foldersBatchActivity.V().a.setVisibility(8);
                    } else {
                        if (i15 != 3 && i15 != 4) {
                            g84.i(ym7Var, "Unhandled onViewStatusUI: ");
                            return null;
                        }
                        foldersBatchActivity.X().d.setVisibility(8);
                        sz8.W(foldersBatchActivity.W());
                        sz8.W(foldersBatchActivity.U());
                        foldersBatchActivity.V().a.setVisibility(0);
                    }
                }
                return be8.a;
            case Argon2.V10 /* 16 */:
                pu3 pu3Var = (pu3) obj2;
                Exception exc = (Exception) obj;
                exc.getClass();
                int i16 = pu3Var.f;
                int i17 = pu3Var.e;
                if (i16 < i17) {
                    vz3 vz3Var = exc instanceof vz3 ? (vz3) exc : null;
                    if (pu3Var.h(vz3Var != null ? vz3Var.d : null)) {
                        z = true;
                    }
                }
                if (z) {
                    int i18 = pu3Var.f + 1;
                    pu3Var.f = i18;
                    vr6.i$default(vr6.INSTANCE, pu3Var.k, dj7.j("Retrying Google Drive upload (", i18, "/", ")", i17), null, 4, null);
                }
                return Boolean.valueOf(z);
            case 17:
                HomeSearchActivity homeSearchActivity = (HomeSearchActivity) obj2;
                q63 q63Var = (q63) obj;
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                if (q63Var == null || !q63Var.j()) {
                    String string3 = homeSearchActivity.getString(R.string.no_backup_in_cloud);
                    string3.getClass();
                    zn4 zn4Var3 = zn4.a;
                    zn4.e(new cv(i2, homeSearchActivity, string3));
                } else {
                    g00 g00Var = g00.a;
                    if (g00.r().hasSystemFeature("android.hardware.telephony")) {
                        Intent intentPutExtra3 = new Intent(homeSearchActivity, (Class<?>) CallsBackupRestoreActivity.class).putExtra("EXTRA_BACKUP_FILE_PATH", q63Var.v());
                        intentPutExtra3.getClass();
                        homeSearchActivity.startActivity(intentPutExtra3);
                    } else {
                        SwiftApp.Companion companion3 = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        zn4 zn4Var4 = zn4.a;
                        dj7.y(contextC, "Feature not supported on this device");
                    }
                    homeSearchActivity.V();
                }
                return be8.a;
            case 18:
                jh jhVar = (jh) obj2;
                Set<String> set2 = (Set) obj;
                set2.getClass();
                q05.Companion.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (String str4 : set2) {
                    q05.Companion.getClass();
                    q05 q05VarA = o05.a(str4);
                    if (q05VarA != null) {
                        arrayList2.add(q05VarA);
                    }
                }
                jhVar.invoke(new ArrayList(arrayList2));
                return be8.a;
            case Argon2.V13 /* 19 */:
                final if5 if5Var = (if5) obj2;
                qw6 qw6Var = (qw6) obj;
                TextView textView = if5Var.h;
                TextView textView2 = if5Var.d;
                ShapeableImageView shapeableImageView = if5Var.e;
                if5Var.b.a.setVisibility(0);
                TaskActivity taskActivity = if5Var.a;
                final dy7 dy7Var = new dy7(taskActivity, if5Var.g);
                if5Var.c.setText(R.string.messages);
                final ff5 ff5Var = (ff5) (qw6Var != null ? qw6Var.a : null);
                if (ff5Var == null) {
                    String string4 = (qw6Var == null || !qw6Var.a()) ? taskActivity.getString(R.string.waiting) : taskActivity.getString(R.string.x_messages, "0");
                    string4.getClass();
                    textView2.setText(string4);
                    sz8.W(textView);
                    shapeableImageView.setVisibility(8);
                } else {
                    sz8.c0(textView);
                    shapeableImageView.setVisibility(0);
                    shapeableImageView.setImageResource(R.drawable.ic_message_raster);
                    textView2.setText(taskActivity.getString(R.string.x_messages, String.valueOf(ff5Var.n)));
                    ff5Var.g.e(taskActivity, new tf(i4, new q24(i6, ff5Var, if5Var)));
                    ff5Var.d.e(taskActivity, new tf(i4, new u10(dy7Var, i2)));
                    ff5Var.i.e(taskActivity, new tf(i4, new v10(if5Var, 16)));
                    if (((zy7) ff5Var.a).c) {
                        if5Var.f.t(true);
                        dy7Var.e = false;
                        dy7Var.d();
                    } else {
                        final lh6 lh6Var = new lh6();
                        ff5Var.e.e(taskActivity, new tf(i4, new mt3() { // from class: gf5
                            @Override // defpackage.mt3
                            public final Object invoke(Object obj3) {
                                km5 km5Var = if5Var.f;
                                Integer num = (Integer) obj3;
                                be8 be8Var2 = be8.a;
                                if (num != null) {
                                    int i19 = ff5Var.n;
                                    dy7 dy7Var2 = dy7Var;
                                    if (i19 <= 0) {
                                        km5Var.u(1);
                                        dy7Var2.b(0);
                                        return be8Var2;
                                    }
                                    lh6 lh6Var2 = lh6Var;
                                    Integer num2 = (Integer) lh6Var2.a;
                                    int iIntValue = num.intValue();
                                    if (num2 == null || num2.intValue() != iIntValue) {
                                        lh6Var2.a = num;
                                        km5Var.u(i19);
                                        km5Var.v(num.intValue(), num2 != null);
                                        dy7Var2.b((num.intValue() * 100) / i19);
                                        return be8Var2;
                                    }
                                }
                                return be8Var2;
                            }
                        }));
                    }
                    ff5Var.c.e(taskActivity, new tf(i4, new mt3() { // from class: hf5
                        @Override // defpackage.mt3
                        public final Object invoke(Object obj3) {
                            gz7 gz7Var2 = (gz7) obj3;
                            if5 if5Var2 = if5Var;
                            if (if5Var2.a.L) {
                                gz7Var2 = gz7.COMPLETE;
                            }
                            be8 be8Var2 = be8.a;
                            if (gz7Var2 != null) {
                                dy7Var.c(!gz7Var2.isComplete());
                                if (gz7Var2.isComplete()) {
                                    if5Var2.f.w();
                                    ff5Var.o(null);
                                }
                            }
                            return be8Var2;
                        }
                    }));
                }
                return be8.a;
            case 20:
                PCloudSignInActivity pCloudSignInActivity = (PCloudSignInActivity) obj2;
                int i19 = PCloudSignInActivity.M;
                vr6.i$default(vr6.INSTANCE, pCloudSignInActivity.r(), xs1.j("Showing folder creation failed dialog (folder name = ", (String) obj), null, 4, null);
                s35 s35Var2 = new s35(pCloudSignInActivity, R.style.M3AlertDialogTheme, new hv1(pCloudSignInActivity, R.style.M3AlertDialogTheme), null);
                s35Var2.v(R.string.cloud_folder_creation_failed);
                s35Var2.n(R.string.cloud_folder_creation_error_message);
                s35Var2.s(R.string.ok, null);
                s35Var2.m();
                return be8.a;
            case 21:
                PasswordStrategyActivity passwordStrategyActivity = (PasswordStrategyActivity) obj2;
                int i20 = PasswordStrategyActivity.O;
                ((View) obj).getClass();
                passwordStrategyActivity.getClass();
                Intent intentPutExtra4 = new Intent(passwordStrategyActivity, (Class<?>) UserPasswordActivity.class).putExtra("extra_is_restoring", false);
                intentPutExtra4.getClass();
                passwordStrategyActivity.startActivityForResult(intentPutExtra4, 1981811);
                return be8.a;
            case 22:
                TeraBoxSignInActivity teraBoxSignInActivity = (TeraBoxSignInActivity) obj2;
                int i21 = TeraBoxSignInActivity.N;
                vr6.i$default(vr6.INSTANCE, teraBoxSignInActivity.r(), xs1.j("Showing folder creation failed dialog (folder name = ", (String) obj), null, 4, null);
                s35 s35Var3 = new s35(teraBoxSignInActivity, R.style.M3AlertDialogTheme, new hv1(teraBoxSignInActivity, R.style.M3AlertDialogTheme), null);
                s35Var3.v(R.string.cloud_folder_creation_failed);
                s35Var3.n(R.string.cloud_folder_creation_error_message);
                s35Var3.s(R.string.ok, null);
                s35Var3.m();
                return be8.a;
            case 23:
                final WallsDashActivity wallsDashActivity = (WallsDashActivity) obj2;
                final String str5 = (String) obj;
                int i22 = WallsDashActivity.W;
                str5.getClass();
                try {
                    PackageManager packageManager = wallsDashActivity.getPackageManager();
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str5, 0);
                    applicationInfo.getClass();
                    CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                    applicationLabel.getClass();
                    str = (String) applicationLabel;
                    break;
                } catch (PackageManager.NameNotFoundException unused) {
                    str = null;
                }
                String string5 = wallsDashActivity.getString(R.string.incompatible_launcher_msg, str);
                string5.getClass();
                s35 s35Var4 = new s35(wallsDashActivity, R.style.M3AlertDialogTheme, new hv1(wallsDashActivity, R.style.M3AlertDialogTheme), null);
                s35Var4.v(R.string.incompatible_launcher);
                ((ra) s35Var4.b).f = string5;
                s35Var4.s(R.string.i_understand, new DialogInterface.OnClickListener() { // from class: qo8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i23) {
                        int i24 = WallsDashActivity.W;
                        wallsDashActivity.Y();
                        String str6 = str5;
                        str6.getClass();
                        SharedPreferences.Editor editor2 = cz4.k;
                        if (editor2 != null) {
                            editor2.putString("KEY_SAVED_UNSUPPORTED_LAUNCHER", str6).apply();
                        } else {
                            pe4.F("editor");
                            throw null;
                        }
                    }
                });
                wallsDashActivity.U = s35Var4.m();
                return be8.a;
            case 24:
                Integer num = (Integer) obj;
                num.getClass();
                ((to8) obj2).a(num);
                return be8.a;
            default:
                mo8 mo8Var = ((WallsManageActivity) obj2).R;
                if (mo8Var != null) {
                    mo8Var.u(false);
                    return be8.a;
                }
                pe4.F("mAdapter");
                throw null;
        }
    }

    public /* synthetic */ ox(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
