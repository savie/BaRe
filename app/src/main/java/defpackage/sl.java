package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sl implements mt3 {
    public final /* synthetic */ int a;

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        String str;
        switch (this.a) {
            case 0:
                pw5 pw5Var = (pw5) obj;
                pw5Var.getClass();
                return dj7.k((String) pw5Var.a, "=", ((q63) pw5Var.b).p());
            case 1:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                return Long.valueOf(io4.h((Long) iy.c.get(jiVar.getPackageName())));
            case 2:
                oy oyVar = (oy) obj;
                oyVar.getClass();
                return oyVar.getId();
            case 3:
                he1 he1Var = (he1) obj;
                he1Var.getClass();
                ai6 ai6Var = je1.a;
                boolean z = he1Var.f;
                String str2 = he1Var.a;
                return z ? str2 : str2.concat(" (not available)");
            case 4:
                FolderMetadata folderMetadata = (FolderMetadata) obj;
                folderMetadata.getClass();
                return folderMetadata.getFolderItem().getDisplayName();
            case 5:
                b bVar = (b) obj;
                bVar.getClass();
                a.EnumC0013a enumC0013a = a.EnumC0013a.DELETING;
                SwiftApp.Companion companion = SwiftApp.d;
                return b.a(bVar, enumC0013a, null, null, SwiftApp.Companion.c().getString(R.string.cloud_orphan_revalidating), 0, 0, 7039);
            case 6:
                return ConfigSettings.toDisplayString$lambda$0$1((q05) obj);
            case 7:
                FolderMetadata folderMetadata2 = (FolderMetadata) obj;
                folderMetadata2.getClass();
                return folderMetadata2.getFolderItem().getDisplayName();
            case 8:
                String str3 = (String) obj;
                str3.getClass();
                ly lyVar = new ly();
                lyVar.a = null;
                lyVar.b = null;
                lyVar.c = null;
                lyVar.d = null;
                lyVar.e = null;
                lyVar.f = null;
                lyVar.g = null;
                List listX0 = nq7.x0(str3, new String[]{TokenAuthenticationScheme.SCHEME_DELIMITER}, 6);
                ArrayList<String> arrayList = new ArrayList();
                for (Object obj2 : listX0) {
                    if (nq7.Z((String) obj2, "=", false)) {
                        arrayList.add(obj2);
                    }
                }
                for (String str4 : arrayList) {
                    if (!nq7.Z(str4, "null", false)) {
                        if (uq7.V(str4, "id=", false)) {
                            lyVar.a = zm5.l(str4);
                        }
                        if (uq7.V(str4, "name=", false)) {
                            lyVar.b = zm5.l(str4);
                        }
                        if (uq7.V(str4, "value=", false)) {
                            lyVar.c = zm5.l(str4);
                        }
                        if (uq7.V(str4, "package=", false)) {
                            lyVar.d = zm5.l(str4);
                        }
                        if (uq7.V(str4, "defaultValue=", false)) {
                            lyVar.e = zm5.l(str4);
                        }
                        if (uq7.V(str4, "defaultSysSet=", false)) {
                            lyVar.f = zm5.l(str4);
                        }
                        if (uq7.V(str4, "tag=", false)) {
                            lyVar.g = zm5.l(str4);
                        }
                    }
                }
                String str5 = lyVar.d;
                if (str5 == null || str5.length() == 0 || (str = lyVar.c) == null || str.length() == 0) {
                    lyVar = null;
                }
                if (lyVar != null) {
                    return new kk7(lyVar.a, lyVar.d, lyVar.c);
                }
                return null;
            case XmlPullParser.COMMENT /* 9 */:
                ContributorRegistration contributorRegistration = (ContributorRegistration) obj;
                contributorRegistration.getClass();
                String str6 = contributorRegistration.get_name();
                return str6 == null ? "" : str6;
            default:
                nw6 nw6Var = (nw6) obj;
                nw6Var.getClass();
                w97 w97Var = new w97();
                while (nw6Var.i0()) {
                    w97Var.add(Integer.valueOf((int) nw6Var.getLong(0)));
                }
                return sz8.e(w97Var);
        }
    }

    public /* synthetic */ sl(int i) {
        this.a = i;
    }
}
