package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Parcelable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.cloud.orphans.CloudOrphanCleanerActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xd1 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ xd1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ArrayList arrayList;
        Context context;
        int i = this.a;
        char c = 1;
        char c2 = 1;
        int i2 = 0;
        Object obj = this.b;
        switch (i) {
            case 0:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj;
                int i3 = CloudDiagnosticsActivity.Z;
                Const.K(cloudDiagnosticsActivity, R.string.disconnect_cloud, new dk(cloudDiagnosticsActivity, 14), null);
                break;
            case 1:
                int i4 = CloudOrphanCleanerActivity.S;
                a aVarV = ((CloudOrphanCleanerActivity) obj).U();
                ix6 ix6Var = aVarV.f;
                b bVar = aVarV.g;
                if (bVar != null && bVar.b()) {
                    if (!aVarV.p(bVar)) {
                        aVarV.m++;
                        aVarV.r(a.o());
                        ix6Var.k(new vh1(R.string.cloud_orphan_scan_again));
                    } else {
                        String str = bVar.b;
                        int size = bVar.c().size();
                        Iterator it = bVar.c().iterator();
                        long j = 0;
                        while (it.hasNext()) {
                            long j2 = ((wa1) it.next()).e;
                            if (j2 < 0) {
                                j2 = 0;
                            }
                            j += j2;
                        }
                        ix6Var.k(new sh1(str, j, size));
                    }
                }
                break;
            case 2:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj;
                int i5 = ConfigEditActivity.V;
                List<ConfigSettings> validSettings = configEditActivity.V().j().getValidSettings();
                if (validSettings != null) {
                    arrayList = new ArrayList();
                    Iterator<T> it2 = validSettings.iterator();
                    while (it2.hasNext()) {
                        ConfigSettings.ApplyData applyData = ((ConfigSettings) it2.next()).getApplyData();
                        if (applyData != null) {
                            arrayList.add(applyData);
                        }
                    }
                } else {
                    arrayList = null;
                }
                mp6 mp6Var = mp6.a;
                if (!mp6.f()) {
                    Const.N(configEditActivity);
                } else if (!V.INSTANCE.getA()) {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new b56(configEditActivity, i2));
                } else {
                    Intent intentPutParcelableArrayListExtra = new Intent(configEditActivity, (Class<?>) ConfigSettingsActivity.class).putExtra("extra_config_settings", (Parcelable) null).putParcelableArrayListExtra("extra_other_apply_data", arrayList != null ? new ArrayList<>(arrayList) : null);
                    intentPutParcelableArrayListExtra.getClass();
                    configEditActivity.startActivityForResult(intentPutParcelableArrayListExtra, 24);
                }
                break;
            case 3:
                zn4.c(new da2(c2 == true ? 1 : 0, ((x92) obj).m(), c == true ? 1 : 0));
                break;
            case 4:
                pj2 pj2Var = (pj2) obj;
                sa1.R(pj2Var.a, null, new dk(pj2Var, 21), 1);
                break;
            case 5:
                rj3 rj3Var = (rj3) obj;
                Iterator it3 = ((z3) q05.getEntries()).iterator();
                while (true) {
                    w3 w3Var = (w3) it3;
                    if (!w3Var.hasNext()) {
                        Iterator it4 = ((z3) FolderBackupStrategy.getEntries()).iterator();
                        while (true) {
                            w3 w3Var2 = (w3) it4;
                            if (!w3Var2.hasNext()) {
                                qt3 qt3Var = rj3Var.b0;
                                if (qt3Var != null) {
                                    qt3Var.invoke(rj3Var.a0, rj3Var.Z);
                                }
                                rj3Var.dismiss();
                            } else {
                                FolderBackupStrategy folderBackupStrategy = (FolderBackupStrategy) w3Var2.next();
                                folderBackupStrategy.setCheckedInExpansion(folderBackupStrategy == rj3Var.Z);
                            }
                        }
                    } else {
                        q05 q05Var = (q05) w3Var.next();
                        q05Var.setCheckedInExpansion(6, rj3Var.a0.contains(q05Var));
                    }
                    break;
                }
                break;
            case 6:
                ((bt3) obj).invoke();
                break;
            case 7:
                int i6 = IntroActivity.V;
                ((IntroActivity) obj).P().a(3);
                break;
            case 8:
                j95 j95Var = (j95) obj;
                j95Var.c0 = j95Var.c0 != 0 ? 0 : 1;
                j95Var.l(j95Var.Z);
                break;
            case XmlPullParser.COMMENT /* 9 */:
                MegaSignInActivity megaSignInActivity = (MegaSignInActivity) obj;
                int i7 = MegaSignInActivity.S;
                MaterialButton materialButton = (MaterialButton) megaSignInActivity.R.getValue();
                InputMethodManager inputMethodManager = (materialButton == null || (context = materialButton.getContext()) == null) ? null : (InputMethodManager) context.getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(materialButton.getWindowToken(), 0);
                }
                megaSignInActivity.a0().j(null);
                break;
            case 10:
                ScheduleFolderSelectActivity scheduleFolderSelectActivity = (ScheduleFolderSelectActivity) obj;
                List listL = scheduleFolderSelectActivity.O.l();
                ArrayList arrayList2 = new ArrayList(hl1.G0(listL, 10));
                Iterator it5 = listL.iterator();
                while (it5.hasNext()) {
                    arrayList2.add(((zk3) it5.next()).a);
                }
                h37 h37Var = new h37(arrayList2, false);
                Intent intent = new Intent();
                intent.putExtra("EXTRA_RESULT", h37Var);
                scheduleFolderSelectActivity.setResult(-1, intent);
                scheduleFolderSelectActivity.finish();
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ((wa) obj).dismiss();
                break;
            default:
                int i8 = UserPasswordActivity.O;
                SharedPreferences.Editor editorEdit = V.INSTANCE.getZ().edit();
                editorEdit.remove("saved_old_user_passwords").apply();
                editorEdit.remove("saved_old_user_passwords_set").apply();
                ((UserPasswordActivity) obj).O();
                break;
        }
    }
}
