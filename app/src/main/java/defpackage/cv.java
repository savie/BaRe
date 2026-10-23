package defpackage;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import androidx.credentials.playservices.controllers.identitycredentials.createpasswordcredential.CreatePasswordCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cv implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ cv(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0128  */
    @Override // defpackage.bt3
    public final Object invoke() {
        long jY;
        boolean z;
        int i = this.a;
        jv1 jv1Var = null;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ji jiVar = (ji) obj2;
                dv dvVar = (dv) obj;
                if (g00.A(g00.a, jiVar.getPackageName())) {
                    dvVar.l(jiVar);
                }
                return be8Var;
            case 1:
                il0 il0Var = (il0) obj2;
                Class[] clsArr = (Class[]) obj;
                il0Var.x(io4.a(il0Var), (Class[]) Arrays.copyOf(clsArr, clsArr.length));
                return be8Var;
            case 2:
                rs0 rs0Var = (rs0) obj2;
                BlacklistApp blacklistApp = (BlacklistApp) obj;
                long jCurrentTimeMillis = System.currentTimeMillis();
                SwiftApp.Companion companion = SwiftApp.d;
                String string = SwiftApp.Companion.c().getString(R.string.deleting_backup);
                string.getClass();
                rs0Var.i(string);
                try {
                    ik.a(blacklistApp.getPackageName(), new oy7(iu.getEntries(), q05.getEntries(), new ly7(false, false)));
                    break;
                } catch (Exception e) {
                    vr6.e$default(vr6.INSTANCE, rs0Var.b, "deleteBackups", e, null, 8, null);
                }
                ai8.o(Const.m(jCurrentTimeMillis, 500L));
                rs0Var.f();
                g00 g00Var = g00.a;
                g00.F(blacklistApp.getPackageName());
                return be8Var;
            case 3:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj2;
                df1 df1Var = (df1) obj;
                int i2 = CloudDiagnosticsActivity.Z;
                if (!cloudDiagnosticsActivity.isDestroyed() && !cloudDiagnosticsActivity.isFinishing()) {
                    cloudDiagnosticsActivity.U().o(((ze1) df1Var).a);
                }
                return be8Var;
            case 4:
                ng1 ng1Var = ((uj1) obj2).c;
                ng1Var.getClass();
                Log.d(ng1Var.b, "deleteBackupTag");
                zn4 zn4Var = zn4.a;
                zn4.b(null, new lg1(ng1Var, (String) obj, null));
                return be8Var;
            case 5:
                int i3 = ConfigEditActivity.V;
                ((ConfigEditActivity) obj2).V().l((Config) obj, false);
                return be8Var;
            case 6:
                return CreatePasswordCredentialController.handleResponse$lambda$3((CreatePasswordCredentialController) obj2, (k12) obj);
            case 7:
                int i4 = DetailActivity.b0;
                ((DetailActivity) obj2).a0().j((h80) obj);
                return be8Var;
            case 8:
                o23 o23Var = (o23) obj2;
                String str = (String) obj;
                long j = 0;
                for (g23 g23Var : xh8.G(o23Var.B(o23Var.z(false), str))) {
                    if (g23Var.a == 1) {
                        int length = str.length();
                        String strK = g23Var.d;
                        if (length == 0) {
                            strK.getClass();
                        } else {
                            strK = dj7.k(str, "/", strK);
                        }
                        jY = o23Var.y(strK);
                    } else {
                        jY = g23Var.b;
                    }
                    j += jY;
                }
                return Long.valueOf(j);
            case XmlPullParser.COMMENT /* 9 */:
                q63 q63Var = (q63) obj2;
                zn7 zn7Var = (zn7) obj;
                if (q63Var.j() && q63Var.x()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(zn7Var.n());
                    arrayList.add(zn7Var.n().J("Android"));
                    arrayList.add(zn7Var.n().J("SwiftBackup"));
                    z = (arrayList.contains(q63Var) || !q63Var.n().getFile().canRead() || q63Var.b()) ? false : true;
                }
                return Boolean.valueOf(z);
            case 10:
                zo3 zo3Var = (zo3) obj2;
                FolderItem folderItem = (FolderItem) obj;
                vr6.i$default(vr6.INSTANCE, zo3Var.b, "addNewItem: " + folderItem, null, 4, null);
                if (!folderItem.isValid()) {
                    folderItem = null;
                }
                if (folderItem != null) {
                    kj3 kj3VarA = a.a(folderItem, false, true);
                    FolderMetadata folderMetadataH = kj3VarA.h();
                    if (folderMetadataH == null) {
                        f6.g(xs1.i(kj3VarA.d(), "Failed to save new metadata at "));
                        return null;
                    }
                    pz4.g.l(folderMetadataH);
                    zo3Var.e.k(to3.LOCAL);
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                return GetCredentialController.invokePlayServices$lambda$0$0((Executor) obj2, (t22) obj);
            case 12:
                vd5 vd5Var = (vd5) obj;
                me5 me5VarU = ((je5) obj2).V();
                me5VarU.getClass();
                vd5Var.getClass();
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new t72(me5VarU, vd5Var, jv1Var, 2));
                return be8Var;
            case 13:
                dv dvVar2 = (dv) obj2;
                ik6 ik6Var = (ik6) obj;
                Log.d(dvVar2.a, "notifyResult: " + ((hk6) ik6Var.d));
                Iterator it = dvVar2.d.iterator();
                while (it.hasNext()) {
                    ((gk6) it.next()).a(ik6Var);
                }
                return be8Var;
            case 14:
                Toast.makeText(((Context) obj2).getApplicationContext(), (String) obj, 0).show();
                return be8Var;
            default:
                int i5 = WallsManageActivity.S;
                tp8 tp8VarX = ((WallsManageActivity) obj2).a0();
                zn4 zn4Var3 = zn4.a;
                zn4.b(null, new t72(tp8VarX, (List) obj, jv1Var, 3));
                return be8Var;
        }
    }
}
