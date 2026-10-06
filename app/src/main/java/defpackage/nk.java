package defpackage;

import android.content.pm.PackageInfo;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.cloud.orphans.b;
import org.swiftapps.swiftbackup.contributor.ContributorRegActivity;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nk implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ nk(a aVar) {
        this.a = 5;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        boolean z;
        boolean z2 = false;
        switch (this.a) {
            case 0:
                AppBackupLimitItem appBackupLimitItem = (AppBackupLimitItem) obj;
                appBackupLimitItem.getClass();
                StringBuilder sb = new StringBuilder();
                sb.append(iu.toDisplayString$default(appBackupLimitItem.getAppPart(), false, 1, null) + ":");
                if (appBackupLimitItem.getLocalLimitMBs() != null && appBackupLimitItem.getLocalLimitMBs().longValue() > 0) {
                    ok.a(appBackupLimitItem.getLocalLimitMBs().longValue(), "📱", sb);
                }
                if (appBackupLimitItem.getCloudLimitMBs() != null && appBackupLimitItem.getCloudLimitMBs().longValue() > 0) {
                    ok.a(appBackupLimitItem.getCloudLimitMBs().longValue(), "☁", sb);
                }
                return sb;
            case 1:
                ji jiVar = (ji) obj;
                jiVar.getClass();
                Long l = (Long) iy.d.get(jiVar.getPackageName());
                boolean z3 = l != null && l.longValue() > 0;
                iy iyVar = iy.a;
                if (!iy.c()) {
                    z2 = z3;
                } else if (!z3) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 2:
                PackageInfo packageInfo = (PackageInfo) obj;
                ji.a aVar = ji.Companion;
                packageInfo.getClass();
                return aVar.fromPackageInfo(packageInfo);
            case 3:
                return String.format("%02x", Arrays.copyOf(new Object[]{Integer.valueOf(((Byte) obj).byteValue() & 255)}, 1));
            case 4:
                ef1 ef1Var = (ef1) obj;
                ef1Var.getClass();
                List<md1> list = ef1Var.g;
                if (list.isEmpty()) {
                    z = false;
                } else {
                    Iterator it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            md1 md1Var = (md1) it.next();
                            if (md1Var.b() && !md1Var.b) {
                                z = true;
                            }
                        } else {
                            z = false;
                        }
                    }
                }
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                for (md1 md1VarA : list) {
                    if (md1VarA.b()) {
                        md1VarA = md1.a(md1VarA, z, rd1.NOT_RUN, null, null, null, 1);
                    }
                    arrayList.add(md1VarA);
                }
                return ef1.a(ef1Var, arrayList, false, false, 959);
            case 5:
                b bVar = (b) obj;
                bVar.getClass();
                a.EnumC0013a enumC0013a = a.EnumC0013a.ERROR;
                SwiftApp.Companion companion = SwiftApp.d;
                return b.a(bVar, enumC0013a, ov2.a, sv2.a, SwiftApp.Companion.c().getString(R.string.cloud_orphan_tasks_running), 0, 0, 6271);
            case 6:
                Locale locale = (Locale) obj;
                int i = ContributorRegActivity.S;
                locale.getClass();
                if (pe4.d(locale.getLanguage(), "zh")) {
                    return pe4.d(locale.getCountry(), "CN") ? "Chinese Simplified" : "Chinese Traditional";
                }
                Locale locale2 = Locale.ENGLISH;
                return eq3.j(locale.getDisplayLanguage(locale2), sz8.Y("pt").contains(locale.getLanguage()) ? eq3.k(" (", locale.getDisplayCountry(locale2), ")") : "");
            case 7:
                jh1 jh1Var = (jh1) obj;
                jh1Var.getClass();
                return uz4.b(jh1Var);
            case 8:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case XmlPullParser.COMMENT /* 9 */:
                Byte b2 = (Byte) obj;
                b2.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b2}, 1));
            case 10:
                hz6 hz6Var = (hz6) obj;
                hz6Var.getClass();
                return dj7.k(hz6Var.a, ":", hz6Var.b.v());
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                FolderItem folderItem = (FolderItem) obj;
                folderItem.getClass();
                return folderItem.getDisplayName();
            default:
                tn2 tn2Var = (tn2) obj;
                tn2Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new bt7(tn2Var, null));
                return be8.a;
        }
    }

    public /* synthetic */ nk(int i) {
        this.a = i;
    }
}
