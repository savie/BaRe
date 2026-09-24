package defpackage;

import android.content.Intent;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.ui.FolderEditActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.settings.a;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gj implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ gj(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        qx sizeInfo;
        ArrayList arrayListB;
        ArrayList arrayListB2;
        ArrayList arrayListB3;
        int i = this.a;
        boolean z = false;
        ArrayList arrayList = null;
        be8 be8Var = be8.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                rj rjVar = (rj) obj;
                ho hoVar = (ho) rjVar.b;
                if (hoVar != null && hoVar.isShowing()) {
                    rjVar.K(true);
                }
                return be8Var;
            case 1:
                hk hkVar = (hk) obj;
                Parcelable.Creator<hk> creator = hk.CREATOR;
                return fk.c(hkVar.b, hkVar.c).J(hkVar.a);
            case 2:
                jl jlVar = (jl) obj;
                return new il(jlVar.a, jlVar.b);
            case 3:
                Boolean bool = (Boolean) ((gl) obj).k.getValue();
                bool.getClass();
                return bool;
            case 4:
                em emVar = (em) obj;
                return Long.valueOf(emVar.b() * ((long) emVar.a().size()));
            case 5:
                List list = ((dm) obj).b;
                if (list != null) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        q63 q63Var = new q63((String) it.next(), 1);
                        if (!q63Var.j()) {
                            q63Var = null;
                        }
                        if (q63Var != null) {
                            arrayList2.add(q63Var);
                        }
                    }
                    arrayList = arrayList2;
                }
                return arrayList == null ? ov2.a : arrayList;
            case 6:
                AppListActivity appListActivity = (AppListActivity) obj;
                int i2 = AppListActivity.q0;
                appListActivity.startActivity(new Intent(appListActivity, (Class<?>) AppsQuickActionsActivity.class));
                return be8Var;
            case 7:
                Preference preferenceJ = ((a) obj).j("compression_level_app_data");
                preferenceJ.getClass();
                return preferenceJ;
            case 8:
                ((AppsBatchActivity) obj).r0.a(sy7.f);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                q63 q63Var2 = (q63) obj;
                if (!q63Var2.h()) {
                    boolean z2 = q63.d;
                    cy0.b.a("AtomicFileDelete", "Unable to fully delete trash entry at ".concat(q63Var2.v()), null);
                }
                return be8Var;
            case 10:
                ((pi0) obj).invoke();
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                ji jiVar = ((qk0) obj).h;
                if (jiVar.hasMedia() && (sizeInfo = jiVar.getSizeInfo()) != null && sizeInfo.getHasMedia()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 12:
                int i3 = CallsBackupRestoreActivity.c0;
                return li7.a(((CallsBackupRestoreActivity) obj).getLayoutInflater());
            case 13:
                int i4 = CloudConnectActivity.Q;
                View viewInflate = ((CloudConnectActivity) obj).getLayoutInflater().inflate(R.layout.cloud_connect_activity, (ViewGroup) null, false);
                int i5 = R.id.appbar_layout;
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate, R.id.rv_cloud_connect);
                    if (recyclerView != null) {
                        return new xb1((CoordinatorLayout) viewInflate, w00VarB, recyclerView);
                    }
                    i5 = R.id.rv_cloud_connect;
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
                return null;
            case 14:
                sf1 sf1Var = sf1.g;
                sf1Var.getClass();
                FolderMetadata folderMetadata = (FolderMetadata) ((eb2) obj).c(FolderMetadata.class);
                if (folderMetadata != null) {
                    Log.d(sf1Var.a, "onChildRemoved = " + folderMetadata.toDisplayString());
                    sf1Var.n(folderMetadata);
                }
                return be8Var;
            case 15:
                return CreatePublicKeyCredentialController.handleResponse$lambda$2((CreatePublicKeyCredentialController) obj);
            case Argon2.V10 /* 16 */:
                mk2 mk2Var = (mk2) obj;
                g00 g00Var = g00.a;
                ji jiVar2 = mk2Var.e;
                if (jiVar2 == null) {
                    pe4.F("app");
                    throw null;
                }
                String packageName = jiVar2.getPackageName();
                ji jiVar3 = mk2Var.e;
                if (jiVar3 == null) {
                    pe4.F("app");
                    throw null;
                }
                String name = jiVar3.getName();
                ji jiVar4 = mk2Var.e;
                if (jiVar4 != null) {
                    g00.d(packageName, name, jiVar4.getEnabled());
                    return be8Var;
                }
                pe4.F("app");
                throw null;
            case 17:
                File file = (File) obj;
                file.getClass();
                File parentFile = file.getParentFile();
                while (parentFile != null && !parentFile.exists()) {
                    parentFile = parentFile.getParentFile();
                }
                return parentFile;
            case 18:
                int i6 = FolderEditActivity.h0;
                return ((FolderEditActivity) obj).Z().k;
            case Argon2.V13 /* 19 */:
                ((kp3) obj).m().j(true, true);
                return be8Var;
            case 20:
                ((ih6) obj).a = true;
                return be8Var;
            case 21:
                ji jiVar5 = (ji) obj;
                ArrayList arrayList3 = new ArrayList();
                q63 q63Var3 = new q63(jiVar5.getDataDir(), "databases", 4);
                if (!q63Var3.j()) {
                    q63Var3 = null;
                }
                if (q63Var3 != null && (arrayListB3 = q63Var3.B()) != null) {
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj2 : arrayListB3) {
                        if (uq7.V(((q63) obj2).p(), "com.google.android.datatransport", false)) {
                            arrayList4.add(obj2);
                        }
                    }
                    arrayList3.addAll(arrayList4);
                }
                q63 q63Var4 = new q63(jiVar5.getDataDir(), "shared_prefs", 4);
                if (!q63Var4.j()) {
                    q63Var4 = null;
                }
                if (q63Var4 != null && (arrayListB2 = q63Var4.B()) != null) {
                    ArrayList arrayList5 = new ArrayList();
                    for (Object obj3 : arrayListB2) {
                        q63 q63Var5 = (q63) obj3;
                        if (uq7.V(q63Var5.p(), "com.google.android.gms", false) || q63Var5.p().equals("FirebaseAppHeartBeat.xml")) {
                            arrayList5.add(obj3);
                        }
                    }
                    arrayList3.addAll(arrayList5);
                }
                q63 q63Var6 = new q63(jiVar5.getDataDir(), "no_backup", 4);
                q63 q63Var7 = q63Var6.j() ? q63Var6 : null;
                if (q63Var7 != null && (arrayListB = q63Var7.B()) != null) {
                    ArrayList arrayList6 = new ArrayList();
                    for (Object obj4 : arrayListB) {
                        if (uq7.V(((q63) obj4).p(), "com.google.android.gms", false)) {
                            arrayList6.add(obj4);
                        }
                    }
                    arrayList3.addAll(arrayList6);
                }
                return arrayList3;
            case 22:
                Map map = HomeActivity.b0;
                return AnimationUtils.loadAnimation((HomeActivity) obj, R.anim.fragment_enter);
            case 23:
                ((wq4) obj).a.invoke();
                return be8Var;
            case 24:
                LabelEditActivity labelEditActivity = (LabelEditActivity) obj;
                int i7 = LabelEditActivity.U;
                return new wq4(labelEditActivity.v(), labelEditActivity.N().k, new u14(labelEditActivity, 2));
            case 25:
                return Boolean.valueOf(LabelParams.isBuiltInLabel_delegate$lambda$0((LabelParams) obj));
            case 26:
                int i8 = LabelsActivity.Z;
                return ((LabelsActivity) obj).Q().y;
            case 27:
                int i9 = LocaleActivity.P;
                return ((e05) ((LocaleActivity) obj).L.getValue()).c;
            case 28:
                return new om((MDatabase_Impl) obj);
            default:
                int i10 = MessagesBackupsActivity.T;
                return ni7.a(((MessagesBackupsActivity) obj).getLayoutInflater());
        }
    }
}
