package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.io.IOException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ou implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ ou(a aVar) {
        this.a = 4;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) throws InterruptedException, IOException {
        int i = this.a;
        boolean z = false;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                su suVar = (su) obj;
                suVar.getClass();
                return suVar.a;
            case 1:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                boolean zIsInstalled = jiVar.isInstalled();
                iy iyVar = iy.a;
                if (!iy.c()) {
                    z = zIsInstalled;
                } else if (!zIsInstalled) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 2:
                String str = (String) obj;
                str.getClass();
                return Boolean.valueOf(uq7.V(str, "lib", false));
            case 3:
                Throwable th = (Throwable) obj;
                th.getClass();
                return th.getCause();
            case 4:
                b bVar = (b) obj;
                bVar.getClass();
                a.EnumC0013a enumC0013a = a.EnumC0013a.SCANNING;
                SwiftApp.Companion companion = SwiftApp.d;
                return b.a(bVar, enumC0013a, ov2.a, sv2.a, SwiftApp.Companion.c().getString(R.string.cloud_orphan_scanning), 0, 0, 127);
            case 5:
                return ConfigSettings.toDisplayString$lambda$0$0((iu) obj);
            case 6:
                Throwable th2 = (Throwable) obj;
                th2.getClass();
                return th2.getCause();
            case 7:
                FolderMetadata folderMetadata = (FolderMetadata) obj;
                folderMetadata.getClass();
                return folderMetadata.getFolderItem().getDisplayName();
            case 8:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                FolderMetadata folderMetadata2 = (FolderMetadata) obj;
                folderMetadata2.getClass();
                return folderMetadata2.getFolderItem().getDisplayName();
            case 10:
                zn7 zn7Var = (zn7) obj;
                zn7Var.getClass();
                String str2 = ry5.u;
                qy5.b(zn7Var);
                Const.D(zn7Var);
                return be8Var;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Thread.sleep(((Long) obj).longValue());
                return be8Var;
            case 12:
                String str3 = (String) obj;
                str3.getClass();
                return Boolean.valueOf(nq7.Z(str3, "package=", false));
            case 13:
                ((TeraBoxTokenCredentials) obj).getClass();
                return be8Var;
            default:
                int iByteValue = ((Byte) obj).byteValue() & 255;
                ly8.j(16);
                String string = Integer.toString(iByteValue, 16);
                string.getClass();
                return nq7.o0(2, string);
        }
    }

    public /* synthetic */ ou(int i) {
        this.a = i;
    }
}
