package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.ui.ScheduleFolderSelectActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;
import org.swiftapps.swiftbackup.notice.NoticeItem;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nu implements mt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ nu(int i) {
        this.a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        AppCloudBackup latestBackup;
        int i = this.a;
        int i2 = 2;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                su suVar = (su) obj;
                suVar.getClass();
                Integer num = (Integer) ((Map) av.a.getValue()).get(suVar.a);
                if (num != null) {
                    return num;
                }
                return Integer.MAX_VALUE;
            case 1:
                mx mxVar = (mx) obj;
                mxVar.getClass();
                ji jiVar = mxVar.a;
                if (((Number) mxVar.h.getValue()).intValue() > 0) {
                    return jiVar;
                }
                return null;
            case 2:
                ji jiVar2 = (ji) obj;
                jiVar2.getClass();
                if (!jiVar2.isCloudApp()) {
                    return jiVar2.getDateBackedUpOrUpdated();
                }
                AppCloudBackups cloudBackups = jiVar2.getCloudBackups();
                if (cloudBackups == null || (latestBackup = cloudBackups.getLatestBackup()) == null) {
                    return null;
                }
                return Long.valueOf(latestBackup.getDateBackedUpOrUpdated());
            case 3:
                return Integer.valueOf(d01.a(((Integer) obj).intValue()));
            case 4:
                NoticeItem noticeItem = (NoticeItem) obj;
                noticeItem.getClass();
                so5 so5Var = so5.a;
                String id = noticeItem.getId();
                id.getClass();
                NoticeItem.Companion.getClass();
                String strConcat = "notice_seen_id_".concat(id);
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean(strConcat, true).apply();
                ex6 ex6Var = so5.d;
                Object obj2 = (List) ex6Var.d();
                if (obj2 == null) {
                    obj2 = ov2.a;
                }
                ex6Var.l(obj2);
                return be8Var;
            case 5:
                wz3 wz3Var = (wz3) obj;
                wz3Var.getClass();
                Integer num2 = wz3Var.b;
                String strJ = num2 != null ? fz5.j(num2.intValue(), "HTTP ") : "missing response";
                String str = wz3Var.c;
                if (nq7.j0(str)) {
                    str = null;
                }
                String strConcat2 = str != null ? ": ".concat(str) : null;
                if (strConcat2 == null) {
                    strConcat2 = "";
                }
                return u48.n(wz3Var.a, ": ", strJ, strConcat2);
            case 6:
                bt3 bt3Var = (bt3) obj;
                bt3Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new tm(bt3Var, null == true ? 1 : 0, i2));
                return be8Var;
            case 7:
                gb7 gb7Var = (gb7) obj;
                gb7Var.getClass();
                return gb7Var.a.name();
            case 8:
                String str2 = (String) obj;
                str2.getClass();
                int iK0 = nq7.k0('/', 0, 6, str2);
                if (iK0 < 0) {
                    return str2;
                }
                String strSubstring = str2.substring(iK0 + 1);
                return uq7.O(strSubstring, ".so", false) ? strSubstring : "/../".concat(strSubstring);
            case XmlPullParser.COMMENT /* 9 */:
                Byte b = (Byte) obj;
                b.byteValue();
                return String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
            case 10:
                ScheduleItem scheduleItem = (ScheduleItem) obj;
                scheduleItem.getClass();
                return scheduleItem.getItemId();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                zk3 zk3Var = (zk3) obj;
                int i3 = ScheduleFolderSelectActivity.R;
                zk3Var.getClass();
                return zk3Var.a.getDisplayName();
            case 12:
                return ScheduleItem.Folders.getFolderItems$lambda$1((FolderItem) obj);
            default:
                ah8 ah8Var = (ah8) obj;
                SwiftApp.Companion companion = SwiftApp.d;
                ah8Var.getClass();
                ah8.a.updateInDatabase$default(ah8.Companion, ah8Var, null, 2, null);
                return be8Var;
        }
    }
}
