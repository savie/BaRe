package defpackage;

import android.content.Intent;
import android.text.SpannableStringBuilder;
import android.util.Log;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import javax.security.auth.x500.X500Principal;
import org.json.JSONException;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.walls.WallApplyActivity;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.swiftapps.swiftbackup.walls.WallsManageActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o20 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ o20(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return new c40((ArrayList) obj2, (ty7) obj, new b40());
            case 1:
                X500Principal issuerX500Principal = ((X509Certificate) obj).getIssuerX500Principal();
                issuerX500Principal.getClass();
                return ((SpannableStringBuilder) obj2).append((CharSequence) mq8.a(issuerX500Principal));
            case 2:
                return CredentialProviderBeginSignInController.handleResponse$lambda$5((CredentialProviderBeginSignInController) obj2, (cw3) obj);
            case 3:
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$5((CredentialProviderCreatePublicKeyCredentialController) obj2, (JSONException) obj);
            case 4:
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$4((CredentialProviderGetSignInIntentController) obj2, (wv3) obj);
            case 5:
                return CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$0$0((Executor) obj2, (t22) obj);
            case 6:
                List list = (List) obj2;
                m62 m62Var = (m62) obj;
                if (!list.isEmpty()) {
                    m62Var.t.k(list);
                }
                m62Var.u.k(Boolean.FALSE);
                return be8Var;
            case 7:
                cd cdVar = (cd) obj;
                int i2 = DetailActivity.b0;
                ((DetailActivity) obj2).a0().m(nc8.I((iu) cdVar.b), (hk) cdVar.c);
                return be8Var;
            case 8:
                dm3 dm3Var = (dm3) obj2;
                FolderItem folderItem = (FolderItem) obj;
                String str = dm3Var.b;
                ex6 ex6Var = dm3Var.i;
                Log.d(str, "start(): " + folderItem);
                boolean z = dm3Var.e != null;
                folderItem.getClass();
                dm3Var.e = folderItem;
                dm3Var.f.k(folderItem);
                ql3 ql3Var = ql3.a;
                if (!z) {
                    dm3Var.h.k(vl3.a);
                    dm3Var.g.k(zl3.a);
                    ex6Var.k(ql3Var);
                }
                zn4.c(new ek(dm3Var, 27));
                int i3 = 21;
                zn4.c(new ej(dm3Var, i3));
                if (!z) {
                    ex6Var.k(ql3Var);
                }
                zn4.c(new ej(dm3Var, i3));
                zn4.c(new fj(dm3Var, 25));
                hx0.b.i(dm3Var);
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                in3 in3Var = (in3) obj2;
                q63 q63Var = (q63) obj;
                if (!in3Var.e) {
                    in3Var.e = true;
                    in3Var.m(null, new xq(7, q63Var, in3Var));
                }
                return be8Var;
            case 10:
                in3 in3Var2 = (in3) obj2;
                q63 q63Var2 = in3Var2.k().c;
                q63 q63Var3 = ((fn3) obj).a;
                if (!pe4.d(q63Var3, q63Var2)) {
                    in3Var2.m(q63Var3, new yq(5, in3Var2, q63Var3));
                }
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                np3 np3Var = (np3) obj2;
                ik6 ik6Var = (ik6) obj;
                Log.d(np3Var.b, "onRepoResult: " + ik6Var);
                ex6 ex6Var2 = np3Var.g;
                hk6 hk6Var = (hk6) ik6Var.d;
                ex6Var2.k(hk6Var);
                int i4 = 14;
                if (hk6Var == hk6.Success) {
                    List<FolderMetadata> list2 = (List) ik6Var.c;
                    ArrayList arrayList = new ArrayList(hl1.G0(list2, 10));
                    for (FolderMetadata folderMetadata : list2) {
                        folderMetadata.getClass();
                        arrayList.add(new zk3(folderMetadata.getFolderItem(), folderMetadata.getLatestBackupDate(), null));
                    }
                    zn4.e(new y2(i4, np3Var, arrayList));
                } else {
                    zn4.e(new y2(i4, np3Var, ov2.a));
                }
                return be8Var;
            case 12:
                ao8 ao8Var = WallApplyActivity.O;
                ((WallApplyActivity) obj2).getApplicationContext().startActivity((Intent) obj);
                return be8Var;
            case 13:
                pp8 pp8VarY = ((WallsDashActivity) obj2).a0();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new z72((az7) obj, pp8VarY, null));
                return be8Var;
            default:
                int i5 = WallsManageActivity.S;
                tp8 tp8VarA0 = ((WallsManageActivity) obj2).a0();
                zn4 zn4Var2 = zn4.a;
                zn4.b(null, new gh4(tp8VarA0, (List) obj, null));
                return be8Var;
        }
    }
}
