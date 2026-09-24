package defpackage;

import android.content.Intent;
import android.view.View;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.yubico.yubikit.android.ui.YubiKeyPromptActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleLabelsSelectActivity;
import org.swiftapps.swiftbackup.intro.IntroActivity;
import org.swiftapps.swiftbackup.tasks.TaskService;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class of implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ of(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        Intent launchIntentForPackage;
        Boolean boolValueOf;
        int i = this.a;
        int i2 = 2;
        boolean z = true;
        Object obj = this.b;
        switch (i) {
            case 0:
                ApkImportActivity apkImportActivity = (ApkImportActivity) obj;
                ag agVar = apkImportActivity.N;
                if (agVar != null && (str = agVar.a) != null && (launchIntentForPackage = apkImportActivity.getPackageManager().getLaunchIntentForPackage(str)) != null) {
                    apkImportActivity.startActivity(launchIntentForPackage);
                    apkImportActivity.finish();
                }
                break;
            case 1:
                ((uy) obj).m(xy.Left, uy.a.Secondary);
                break;
            case 2:
                ((tk0) obj).j(false);
                break;
            case 3:
                tb1 tb1Var = tb1.a;
                qb1.a();
                sa1.R(((gg1) obj).i(), null, null, 3);
                break;
            case 4:
                FolderDetailActivity folderDetailActivity = (FolderDetailActivity) obj;
                int i3 = FolderDetailActivity.Z;
                s35 s35Var = new s35(folderDetailActivity, R.style.M3AlertDialogTheme, new hv1(folderDetailActivity, R.style.M3AlertDialogTheme), null);
                s35Var.v(R.string.delete_folder);
                s35Var.n(R.string.sure_to_proceed);
                s35Var.s(R.string.yes, new wi2(folderDetailActivity, i2));
                s35Var.q(R.string.no, null);
                s35Var.m();
                break;
            case 5:
                kl3 kl3Var = (kl3) obj;
                sa1.R(kl3Var.a, null, new bh(kl3Var, 24), 1);
                break;
            case 6:
                IntroActivity introActivity = (IntroActivity) obj;
                int i4 = IntroActivity.V;
                d45.b.getClass();
                if (d45.a() != null) {
                    try {
                        MFirebaseUser mFirebaseUserA = d45.a();
                        boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
                        break;
                    } catch (Exception unused) {
                    }
                    if (!pe4.d(boolValueOf, Boolean.TRUE)) {
                    }
                }
                new a14(introActivity, true, false, new g11(2, introActivity, IntroActivity.class, "onSignInButtonClick", "onSignInButtonClick(ZZ)V", 0, 1)).G(introActivity, null);
                break;
            case 7:
                LabelsActivity labelsActivity = (LabelsActivity) obj;
                int i5 = LabelsActivity.Z;
                ArrayList arrayListJ = labelsActivity.V().j();
                if (labelsActivity.O() == 1) {
                    labelsActivity.finish();
                    lr4 lr4Var = lr4.a;
                    ji jiVar = (ji) labelsActivity.N.getValue();
                    jiVar.getClass();
                    zn4.c(new ir4(jiVar, el1.z1(arrayListJ), z));
                }
                if (labelsActivity.O() == 2) {
                    Collection collection = (Set) labelsActivity.O.getValue();
                    if (collection == null) {
                        collection = sv2.a;
                    }
                    ArrayList arrayList = new ArrayList();
                    Iterator it = arrayListJ.iterator();
                    while (it.hasNext()) {
                        String id = ((LabelParams) it.next()).getId();
                        if (id != null) {
                            arrayList.add(id);
                        }
                    }
                    Set setZ1 = el1.z1(arrayList);
                    if (!collection.equals(setZ1)) {
                        Intent intentPutExtra = new Intent().putExtra("labels_extra_filtered_ids", (String[]) setZ1.toArray(new String[0])).putExtra("select_mode_replace_existing_labels", labelsActivity.getIntent().getBooleanExtra("select_mode_replace_existing_labels", true));
                        intentPutExtra.getClass();
                        labelsActivity.setResult(-1, intentPutExtra);
                    }
                    labelsActivity.finish();
                }
                break;
            case 8:
                ((mt3) obj).invoke(view);
                break;
            case XmlPullParser.COMMENT /* 9 */:
                ScheduleLabelsSelectActivity scheduleLabelsSelectActivity = (ScheduleLabelsSelectActivity) obj;
                int i6 = ScheduleLabelsSelectActivity.X;
                if (!scheduleLabelsSelectActivity.V().g.isEmpty()) {
                    Const.K(scheduleLabelsSelectActivity, R.string.clear_all, new kn3(scheduleLabelsSelectActivity, 15), null);
                }
                break;
            case 10:
                TaskActivity taskActivity = (TaskActivity) obj;
                int i7 = TaskActivity.c0;
                hy7 hy7Var = hy7.a;
                gz7 gz7Var = TaskService.b;
                if (TaskService.b.isRunning() && !taskActivity.L) {
                    wa waVarC = taskActivity.X;
                    if (waVarC == null) {
                        s35 s35Var2 = new s35(taskActivity, R.style.M3AlertDialogTheme, new hv1(taskActivity, R.style.M3AlertDialogTheme), null);
                        s35Var2.v(R.string.cancel);
                        s35Var2.n(R.string.sure_to_cancel_task);
                        s35Var2.s(R.string.yes, new yx7());
                        s35Var2.q(R.string.no, null);
                        waVarC = s35Var2.c();
                        taskActivity.X = waVarC;
                    }
                    if (!waVarC.isShowing()) {
                        waVarC.show();
                    }
                } else {
                    taskActivity.P(false);
                    taskActivity.z();
                }
                break;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i8 = WallsManageActivity.S;
                k55.E(((to8) obj).a, true);
                break;
            default:
                l15 l15Var = YubiKeyPromptActivity.q;
                ((YubiKeyPromptActivity) obj).startActivity(new Intent("android.settings.NFC_SETTINGS"));
                break;
        }
    }
}
