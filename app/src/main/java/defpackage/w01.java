package defpackage;

import android.os.Parcelable;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import okhttp3.Request;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.connect.DropboxSignInActivity;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.folders.ui.FolderDetailActivity;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFabMenuView;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;
import org.swiftapps.swiftbackup.settings.FolderBackupStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class w01 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w01(DetailActivity detailActivity, Parcelable parcelable, iz4 iz4Var) {
        this.a = 6;
        this.b = detailActivity;
        this.c = parcelable;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x016e  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() {
        Object bn6Var;
        int i = this.a;
        boolean z = false;
        z = false;
        String string = null;
        Object[] objArr = 0;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                rz0 rz0Var = (rz0) obj;
                b11 b11VarU = ((x01) obj2).U();
                b11VarU.getClass();
                rz0Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new a11(b11VarU, rz0Var, objArr == true ? 1 : 0, z ? 1 : 0));
                return be8Var;
            case 1:
                a.j((pe4) obj, (a) obj2);
                return be8Var;
            case 2:
                return CredentialProviderBeginSignInController.handleResponse$lambda$3((CredentialProviderBeginSignInController) obj2, (lh6) obj);
            case 3:
                return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$4$0((CredentialProviderCreatePublicKeyCredentialController) obj2, (c12) obj);
            case 4:
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$2((CredentialProviderGetSignInIntentController) obj2, (bw3) obj);
            case 5:
                ((z92) obj2).invoke((View) obj);
                return be8Var;
            case 6:
                DetailActivity detailActivity = (DetailActivity) obj2;
                Parcelable parcelable = (Parcelable) obj;
                int i2 = DetailActivity.b0;
                gv7 gv7Var = w14.a;
                parcelable.getClass();
                try {
                    string = w14.d().i(parcelable);
                    break;
                } catch (Exception unused) {
                }
                if (string == null) {
                    string = parcelable.toString();
                }
                String strY0 = el1.Y0(fl1.C0(string), "\n\n", null, null, null, 62);
                zn4 zn4Var2 = zn4.a;
                zn4.e(new y2(10, detailActivity, strY0));
                return be8Var;
            case 7:
                ((qj2) obj2).a((ak2) obj, null);
                return be8Var;
            case 8:
                DropboxSignInActivity dropboxSignInActivity = (DropboxSignInActivity) obj2;
                dropboxSignInActivity.H();
                zn4 zn4Var3 = zn4.a;
                zn4.e(new cv(14, dropboxSignInActivity, (String) obj));
                dropboxSignInActivity.setResult(0);
                dropboxSignInActivity.finish();
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                int i3 = FolderDetailActivity.Z;
                b05.l((FolderDetailActivity) obj2, "Metadata", (String) obj, 8);
                return be8Var;
            case 10:
                dm3 dm3Var = (dm3) obj2;
                List listI = nc8.I(q05.CLOUD);
                FolderBackupStrategy.Companion.getClass();
                FolderBackupStrategy folderBackupStrategy = FolderBackupStrategy.Single;
                zn4.c(new oj(4, new bo3(dm3Var.k(), listI, (kj3) obj, folderBackupStrategy), new uy7(listI, folderBackupStrategy, true), dm3Var));
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                in3 in3Var = (in3) obj;
                ix6 ix6Var = in3Var.j;
                String string2 = nq7.H0((String) obj2).toString();
                string2.getClass();
                String string3 = nq7.H0(string2).toString();
                if (string3.length() > 0 && !string3.equals(".") && !string3.equals("..")) {
                    Charset charset = StandardCharsets.UTF_8;
                    charset.getClass();
                    byte[] bytes = string3.getBytes(charset);
                    bytes.getClass();
                    if (bytes.length <= 255) {
                        for (int i4 = 0; i4 < string3.length(); i4++) {
                            char cCharAt = string3.charAt(i4);
                            if (cCharAt == '/' || cCharAt == '\\' || cCharAt <= 31 || cCharAt == 127) {
                                ix6Var.k(Integer.valueOf(R.string.invalid_folder_name));
                            }
                        }
                        hn3 hn3VarK = in3Var.k();
                        LinkedHashMap linkedHashMap = in3Var.g;
                        zn7 zn7Var = hn3VarK.a;
                        q63 q63Var = in3Var.k().c;
                        q63 q63VarJ = q63Var.J(string2);
                        if (q63VarJ.j()) {
                            ix6Var.k(Integer.valueOf(R.string.folder_already_exists));
                        } else {
                            try {
                                if (q63.E(q63VarJ) && q63VarJ.x()) {
                                    z = true;
                                }
                                bn6Var = Boolean.valueOf(z);
                            } catch (Throwable th) {
                                bn6Var = new bn6(th);
                            }
                            Throwable thA = en6.a(bn6Var);
                            if (thA != null) {
                                vr6.e$default(vr6.INSTANCE, in3Var.b, xs1.i(q63VarJ, "Failed to create folder: "), thA, null, 8, null);
                            }
                            Boolean bool = Boolean.FALSE;
                            if (bn6Var instanceof bn6) {
                                bn6Var = bool;
                            }
                            if (((Boolean) bn6Var).booleanValue()) {
                                linkedHashMap.remove(q63Var.v());
                                linkedHashMap.remove(q63VarJ.v());
                                in3Var.m.clear();
                                in3Var.m(q63VarJ, new yi0(2, in3Var, q63VarJ, zn7Var));
                            } else {
                                ix6Var.k(Integer.valueOf(R.string.folder_creation_failed));
                            }
                        }
                    } else {
                        ix6Var.k(Integer.valueOf(R.string.invalid_folder_name));
                    }
                    break;
                } else {
                    ix6Var.k(Integer.valueOf(R.string.invalid_folder_name));
                }
                return be8Var;
            case 12:
                PathInterpolator pathInterpolator = HomeSearchActivity.X;
                zn4 zn4Var4 = zn4.a;
                return zn4.b(null, new y44((zc6) obj2, (HomeSearchActivity) obj, null));
            case 13:
                ov5 ov5Var = (ov5) obj2;
                pe peVarU = ov5Var.u();
                String strB = ov5Var.B((String) obj);
                com.pcloud.sdk.internal.a aVar = (com.pcloud.sdk.internal.a) peVarU;
                com.pcloud.sdk.internal.a.j(strB, null);
                HttpUrl.Builder builderG = aVar.c.g();
                builderG.c("getfilelink");
                builderG.b("path", strB);
                Request.Builder builder = new Request.Builder();
                builder.a = builderG.e();
                builder.b();
                return (uf6) aVar.h(new Request(builder), new fs(aVar, 9)).a();
            case 14:
                ScheduleFabMenuView scheduleFabMenuView = (ScheduleFabMenuView) obj2;
                Map map = ScheduleFabMenuView.K;
                scheduleFabMenuView.d((ScheduleFabMenuView.a) obj);
                ScheduleFabMenuView.c(scheduleFabMenuView, true, true, null, 12);
                return be8Var;
            default:
                return ah8.updateFields$lambda$1((ah8) obj2, (MFirebaseUser) obj);
        }
    }

    public /* synthetic */ w01(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
