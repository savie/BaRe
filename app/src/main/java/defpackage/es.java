package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderPickerActivity;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.settings.appvisibility.AppVisibilityDiagnosticsActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class es implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ es(nt8 nt8Var, pt8 pt8Var) {
        this.a = 17;
        this.b = pt8Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context;
        String sourceFolder;
        int i = this.a;
        int i2 = 11;
        int i3 = 10;
        int i4 = 16;
        boolean z = false;
        InputMethodManager inputMethodManager = null;
        to3 to3Var = null;
        inputMethodManager = null;
        Object obj = this.b;
        switch (i) {
            case 0:
                int i5 = AppListActivity.q0;
                ((AppListActivity) obj).m0().i0(0);
                return;
            case 1:
                AppVisibilityDiagnosticsActivity appVisibilityDiagnosticsActivity = (AppVisibilityDiagnosticsActivity) obj;
                int i6 = AppVisibilityDiagnosticsActivity.O;
                v00 v00Var = appVisibilityDiagnosticsActivity.V().f.a;
                if (v00Var == null) {
                    return;
                }
                String strB = lg7.b(v00Var);
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.SUBJECT", "Swift Backup app visibility diagnostics");
                intent.putExtra("android.intent.extra.TEXT", strB);
                List<ResolveInfo> listQueryIntentActivities = appVisibilityDiagnosticsActivity.getPackageManager().queryIntentActivities(intent, 65536);
                listQueryIntentActivities.getClass();
                if (!listQueryIntentActivities.isEmpty()) {
                    appVisibilityDiagnosticsActivity.startActivity(Intent.createChooser(intent, appVisibilityDiagnosticsActivity.getString(R.string.app_visibility_share_chooser)));
                    return;
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, appVisibilityDiagnosticsActivity, "No app found to handle this action"));
                    return;
                }
            case 2:
                int i7 = CallsBackupRestoreActivity.c0;
                ((CallsBackupRestoreActivity) obj).finish();
                return;
            case 3:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj;
                int i8 = CloudDiagnosticsActivity.Z;
                sa1.R(cloudDiagnosticsActivity, null, new ak(cloudDiagnosticsActivity, 8), 1);
                return;
            case 4:
                int i9 = CloudOrphanCleanerActivity.S;
                a aVarV = ((CloudOrphanCleanerActivity) obj).U();
                ix6 ix6Var = aVarV.f;
                b bVar = aVarV.g;
                if (bVar == null || bVar.d()) {
                    return;
                }
                if (!bVar.f) {
                    ix6Var.k(new vh1(R.string.no_cloud_connected));
                    return;
                }
                String str = bVar.g;
                if (!str.equals(a.o())) {
                    aVarV.m++;
                    aVarV.r(a.o());
                    ix6Var.k(new vh1(R.string.cloud_orphan_scan_again));
                    return;
                }
                try {
                    tb1 tb1Var = tb1.a;
                    tb1 tb1VarC = qb1.c();
                    kc kcVar = new kc(new kf(re3.f(), i4), new ji1(0, tb1VarC, tb1.class, "listAppFolderBackupFiles", "listAppFolderBackupFiles()Lorg/swiftapps/swiftbackup/cloud/orphans/CloudBackupFileListResult;", 0, 0), new c7(tb1VarC, i2), (vg1) vg1.d.getValue());
                    aVarV.h = kcVar;
                    aVarV.i = str;
                    long j = aVarV.m;
                    pw5 pw5VarM = aVarV.m();
                    long jLongValue = ((Number) pw5VarM.a).longValue();
                    qh4 qh4Var = (qh4) pw5VarM.b;
                    aVarV.s(new ou(aVarV));
                    zn4 zn4Var2 = zn4.a;
                    zn4.b(qh4Var, new zh1(kcVar, aVarV, j, str, jLongValue, qh4Var, null));
                    return;
                } catch (Exception e) {
                    aVarV.s(new w20(aVarV, e));
                    return;
                }
            case 5:
                CsActivity csActivity = (CsActivity) obj;
                int i10 = CsActivity.P0;
                MaterialButton materialButton = (MaterialButton) csActivity.G0.getValue();
                if (materialButton != null && (context = materialButton.getContext()) != null) {
                    inputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class);
                }
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(materialButton.getWindowToken(), 0);
                }
                csActivity.t0(true, false);
                return;
            case 6:
                x92 x92Var = (x92) obj;
                gg3 gg3Var = gg3.a;
                gg3.h(x92Var.l(), Integer.valueOf(R.string.restart_app), null, new ej(x92Var, i4), 12);
                return;
            case 7:
                mk2 mk2Var = ((gj2) obj).b;
                mk2Var.getClass();
                zn4 zn4Var3 = zn4.a;
                zn4.c(new gj(mk2Var, i4));
                return;
            case 8:
                rj2 rj2Var = (rj2) obj;
                xi0 xi0Var = (xi0) rj2Var.a.S.getValue();
                DetailActivity detailActivity = rj2Var.a;
                ji jiVarK = rj2Var.c.k();
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z = sharedPreferences.getBoolean("KEY_BACKUP_APP_CACHE", false);
                    try {
                        SharedPreferences sharedPreferences2 = cz4.f;
                        if (sharedPreferences2 == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z = sharedPreferences2.getBoolean("backup_app_cache", z);
                        boolean z2 = z;
                        fu fuVar = detailActivity.a0;
                        xi0Var.getClass();
                        fuVar.getClass();
                        zn4 zn4Var4 = zn4.a;
                        zn4.b(null, new si0(jiVarK, xi0Var, detailActivity, z2, fuVar, null));
                        return;
                    } catch (ClassCastException unused) {
                    }
                } catch (ClassCastException unused2) {
                }
                break;
            case XmlPullParser.COMMENT /* 9 */:
                FolderEditActivity folderEditActivity = (FolderEditActivity) obj;
                int i11 = FolderEditActivity.h0;
                FolderItem folderItem = folderEditActivity.V().g;
                if (folderItem == null || (sourceFolder = folderItem.getSourceFolder()) == null || sourceFolder.length() <= 0) {
                    sourceFolder = null;
                }
                Intent intentPutExtra = new Intent(folderEditActivity, (Class<?>) FolderPickerActivity.class).putExtra("extra_initial_folder", sourceFolder != null ? new q63(sourceFolder, 1) : null);
                intentPutExtra.getClass();
                folderEditActivity.startActivityForResult(intentPutExtra, 789435);
                return;
            case 10:
                j95 j95Var = (j95) obj;
                Iterator it = j95Var.J.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                j95Var.i(false, false);
                return;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                MegaSignInActivity megaSignInActivity = (MegaSignInActivity) obj;
                int i12 = MegaSignInActivity.S;
                view.getClass();
                u45 u45Var = new u45(megaSignInActivity, view, 12);
                u45Var.f(R.menu.menu_cloud_service);
                u45Var.e = new rn1(megaSignInActivity, 5);
                u45Var.j();
                return;
            case 12:
                ((ae5) obj).B.toggle();
                return;
            case 13:
                id6 id6Var = (id6) obj;
                eh2 eh2Var = id6Var.f;
                List listL = id6Var.p.l();
                ArrayList arrayList = new ArrayList(hl1.G0(listL, 10));
                Iterator it2 = listL.iterator();
                while (it2.hasNext()) {
                    arrayList.add(Integer.valueOf(((hd6) it2.next()).a.b));
                }
                eh2Var.invoke(el1.z1(arrayList));
                id6Var.j(false);
                return;
            case 14:
                ScheduleFolderSelectActivity scheduleFolderSelectActivity = (ScheduleFolderSelectActivity) obj;
                int i13 = ScheduleFolderSelectActivity.R;
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
                Intent intent2 = new Intent(scheduleFolderSelectActivity, (Class<?>) FoldersDashActivity.class);
                intent2.putExtra("KEY_SECTION", to3Var);
                scheduleFolderSelectActivity.startActivity(intent2);
                scheduleFolderSelectActivity.finish();
                return;
            case 15:
                UserPasswordActivity userPasswordActivity = (UserPasswordActivity) obj;
                int i14 = UserPasswordActivity.O;
                rh3 rh3Var = new rh3(userPasswordActivity);
                us5 us5Var = new us5(userPasswordActivity, i3);
                TextInputLayout textInputLayout = (TextInputLayout) rh3Var.b;
                textInputLayout.setHint(userPasswordActivity.getString(R.string.old_password));
                textInputLayout.setEndIconMode(1);
                TextInputEditText textInputEditText = (TextInputEditText) rh3Var.c;
                textInputEditText.setInputType(129);
                sz8.V(textInputEditText);
                textInputEditText.addTextChangedListener(new p52(rh3Var, 2));
                s35 s35Var = new s35(userPasswordActivity, R.style.M3AlertDialogTheme, new hv1(userPasswordActivity, R.style.M3AlertDialogTheme), null);
                ((ra) s35Var.b).s = ((jd6) rh3Var.a).b;
                wa waVarM = s35Var.m();
                ((MaterialButton) rh3Var.d).setOnClickListener(new nq1(3, rh3Var, us5Var, waVarM));
                ((MaterialButton) rh3Var.e).setOnClickListener(new xd1(waVarM, i2));
                rh3Var.y();
                return;
            case Argon2.V10 /* 16 */:
                as8 as8Var = (as8) obj;
                sa1.R(as8Var.a, null, new as4(as8Var, 20), 1);
                return;
            default:
                pt8 pt8Var = (pt8) obj;
                Const.f(pt8Var.b, pt8Var.a, new hc1(7));
                return;
        }
    }

    public /* synthetic */ es(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
