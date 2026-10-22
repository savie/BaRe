package defpackage;

import android.content.SharedPreferences;
import android.widget.TextView;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.jcraft.jsch.Argon2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.cloud.CloudBackupTag;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qf implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qf(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        String[] strArrNames;
        int i = this.a;
        String string = null;
        boolean z = true;
        int i2 = 0;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ApkImportActivity apkImportActivity = (ApkImportActivity) obj2;
                zf zfVar = (zf) obj;
                mp6 mp6Var = mp6.a;
                if (mp6.f()) {
                    apkImportActivity.U().m(zfVar);
                } else {
                    gv7 gv7Var = qe7.a;
                    if (le7.f()) {
                        apkImportActivity.J(new rf(i2, apkImportActivity, zfVar));
                    } else {
                        int i3 = ApkImportActivity.Q;
                        apkImportActivity.R(zfVar);
                    }
                }
                return be8Var;
            case 1:
                c40 c40Var = (c40) obj2;
                c40Var.o.k((ji) obj);
                c40Var.l();
                return be8Var;
            case 2:
                ((CallsBackupRestoreActivity) obj2).V().c(z11.class, (z11) obj);
                return be8Var;
            case 3:
                int i4 = CallsDashActivity.T;
                ((CallsDashActivity) obj2).V().j((ArrayList) obj, false);
                return be8Var;
            case 4:
                return ((jy8) obj2).w((String) obj);
            case 5:
                uj1 uj1Var = (uj1) obj2;
                List list = (List) obj;
                HomeActivity homeActivity = uj1Var.a;
                if (!homeActivity.isFinishing()) {
                    homeActivity.H();
                    ob1 ob1Var = CloudBackupTag.Companion;
                    ai aiVar = new ai(2);
                    ae1 ae1Var = new ae1(1, uj1Var.c, ng1.class, "createCloudBackupTag", "createCloudBackupTag(Ljava/lang/String;)V", 0, 1);
                    ob1Var.getClass();
                    ob1.b(homeActivity, list, aiVar, ae1Var);
                }
                return be8Var;
            case 6:
                return ((cd) obj2).open((String) obj);
            case 7:
                return CreateDigitalCredentialController.handleResponse$lambda$4((CreateDigitalCredentialController) obj2, (k12) obj);
            case 8:
                return CredentialProviderBeginSignInController.handleResponse$lambda$2((CredentialProviderBeginSignInController) obj2, (bw3) obj);
            case XmlPullParser.COMMENT /* 9 */:
                return CredentialProviderCreatePasswordController.invokePlayServices$lambda$2$0((CredentialProviderCreatePasswordController) obj2, (c12) obj);
            case 10:
                return CredentialProviderPlayServicesImpl.onClearCredential$lambda$0((Executor) obj2, (t22) obj);
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                DropboxSignInActivity dropboxSignInActivity = (DropboxSignInActivity) obj2;
                gv7 gv7Var2 = dropboxSignInActivity.L;
                nq2 nq2Var = (nq2) obj;
                dropboxSignInActivity.H();
                Object obj3 = b82.i;
                try {
                    SharedPreferences sharedPreferences = cz4.f;
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    string = sharedPreferences.getString("dropbox_user_id", null);
                    if (nq2Var.a.length() == 0 || string == null || string.length() == 0) {
                        ((TextView) gv7Var2.getValue()).setText(R.string.not_connected);
                        dropboxSignInActivity.setResult(0);
                        dropboxSignInActivity.finish();
                    } else {
                        ((TextView) gv7Var2.getValue()).setText(R.string.connect_cloud_account);
                        dropboxSignInActivity.setResult(-1);
                        dropboxSignInActivity.finish();
                    }
                    return be8Var;
                } catch (ClassCastException unused) {
                }
                break;
            case 12:
                o23 o23Var = (o23) obj2;
                d23 d23VarZ = o23Var.z(false);
                String strG = o23Var.G((String) obj);
                g23[] g23VarArrB = o23Var.B(d23VarZ, strG);
                if (!k55.x(d23VarZ.k)) {
                    g84.f(dj7.l("LIST failed for metadata path=", strG, ". Reply=", d23VarZ.i()));
                    return null;
                }
                ArrayList arrayListG = xh8.G(g23VarArrB);
                ArrayList arrayList = new ArrayList();
                Iterator it = arrayListG.iterator();
                while (it.hasNext()) {
                    arrayList.add(og1.a((g23) it.next(), strG));
                }
                return new gh1(arrayList);
            case 13:
                kj3 kj3Var = (kj3) obj;
                int i5 = FolderDetailActivity.Z;
                dm3 dm3VarX = ((FolderDetailActivity) obj2).U();
                if (kj3Var == null) {
                    c6.f("Required value was null.");
                    return null;
                }
                zn4 zn4Var = zn4.a;
                zn4.c(new w01(10, dm3VarX, kj3Var));
                return be8Var;
            case 14:
                np3 np3Var = (np3) obj2;
                to3 to3Var = (to3) obj;
                if (!np3Var.e) {
                    np3Var.e = true;
                    np3Var.b = "FoldersDashFragmentVM." + to3Var;
                    np3Var.i = to3Var.isLocalSection() ? pz4.g : sf1.g;
                    np3Var.j(false, false);
                }
                return be8Var;
            case 15:
                p77 p77Var = (p77) obj2;
                ni4 ni4Var = (ni4) obj;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                ni4Var.a.getClass();
                vm4.y(ni4Var, p77Var);
                int iF = p77Var.f();
                for (int i6 = 0; i6 < iF; i6++) {
                    List listH = p77Var.h(i6);
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj4 : listH) {
                        if (obj4 instanceof al4) {
                            arrayList2.add(obj4);
                        }
                    }
                    al4 al4Var = (al4) el1.l1(arrayList2);
                    if (al4Var != null && (strArrNames = al4Var.names()) != null) {
                        for (String str : strArrNames) {
                            String str2 = pe4.d(p77Var.e(), t77.g) ? "enum value" : "property";
                            if (linkedHashMap.containsKey(str)) {
                                throw new vj4("The suggested name '" + str + "' for " + str2 + ' ' + p77Var.g(i6) + " is already one of the names for " + str2 + ' ' + p77Var.g(((Number) x65.p0(linkedHashMap, str)).intValue()) + " in " + p77Var);
                            }
                            linkedHashMap.put(str, Integer.valueOf(i6));
                        }
                    }
                }
                return linkedHashMap.isEmpty() ? pv2.a : linkedHashMap;
            case Argon2.V10 /* 16 */:
                return ah8.updateFields$lambda$1$0((ah8) obj2, (MFirebaseUser) obj);
            case 17:
                ((oo8) obj2).U().f.k((ao8) obj);
                return be8Var;
            default:
                iu8 iu8Var = ((cs8) obj2).b;
                iu8Var.getClass();
                zn4.c(new ut8((bz7) obj, R.string.backing_up_and_syncing, iu8Var, z));
                return be8Var;
        }
    }
}
