package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.folders.data.FolderItem;
import org.swiftapps.swiftbackup.folders.data.FolderMetadata;
import org.swiftapps.swiftbackup.folders.data.a;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.settings.FolderRestoreStrategy;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rm implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rm(wb6.b bVar, v76 v76Var) {
        this.a = 1;
        wq0 wq0Var = wq0.a;
        this.b = bVar;
        this.c = v76Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        CharSequence charSequenceLoadLabel;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        int i = this.a;
        int i2 = 2;
        CharSequence charSequenceH0 = null;
        ArrayList arrayList8 = null;
        charSequenceH0 = null;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                PackageManager packageManager = (PackageManager) obj;
                ApplicationInfo applicationInfo = ((PackageInfo) obj2).applicationInfo;
                if (applicationInfo != null && (charSequenceLoadLabel = applicationInfo.loadLabel(packageManager)) != null) {
                    charSequenceH0 = nq7.H0(charSequenceLoadLabel);
                }
                return String.valueOf(charSequenceH0);
            case 1:
                wq0 wq0Var = wq0.a;
                v76 v76Var = (v76) obj;
                ix6 ix6Var = wq0.e;
                int i3 = sq0.a[((wb6.b) obj2).ordinal()];
                if (i3 == 1) {
                    wq0.d.k(v76Var);
                } else {
                    if (i3 != 2 && i3 != 3) {
                        q.j();
                        return null;
                    }
                    ix6Var.k(v76Var);
                }
                return be8Var;
            case 2:
                rs0 rs0VarO = ((BlacklistActivity) obj2).U();
                zn4 zn4Var = zn4.a;
                zn4.c(new cv(i2, rs0VarO, (BlacklistApp) obj));
                return be8Var;
            case 3:
                return ((nq5) obj2).o((String) obj);
            case 4:
                il0 il0Var = (il0) obj2;
                String str = (String) obj;
                if (!il0Var.isFinishing()) {
                    il0Var.H();
                }
                Const.E(str);
                return be8Var;
            case 5:
                d23 d23Var = (d23) obj;
                ((o23) obj2).k = true;
                vr6.i$default(vr6.INSTANCE, "FTPService", xs1.j("Capabilities = ", k55.x(d23Var.l(11)) ? d23Var.i() : null), null, 4, null);
                return be8Var;
            case 6:
                in3 in3Var = (in3) obj2;
                q63 q63Var = (q63) obj;
                zn7 zn7VarJ = in3Var.j(q63Var);
                zn7VarJ.getClass();
                return new hn3(zn7VarJ, in3Var.l(), q63Var);
            case 7:
                ln3 ln3Var = (ln3) obj2;
                ln3Var.Y = (FolderRestoreStrategy) obj;
                il0 il0Var2 = ln3Var.Q;
                NestedScrollView nestedScrollView = ((mn3) ln3Var.K).a;
                nestedScrollView.getClass();
                il0Var2.x(nestedScrollView, TextView.class);
                ln3Var.l();
                return be8Var;
            case 8:
                ArrayList arrayList9 = (ArrayList) obj2;
                qo3 qo3Var = (qo3) obj;
                List listE = pz4.g.e();
                ArrayList arrayList10 = new ArrayList(hl1.G0(listE, 10));
                Iterator it = listE.iterator();
                while (it.hasNext()) {
                    arrayList10.add(((FolderMetadata) it.next()).getFolderItem());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it2 = arrayList10.iterator();
                while (it2.hasNext()) {
                    linkedHashSet.add(((FolderItem) it2.next()).getId());
                }
                ArrayList<FolderItem> arrayList11 = new ArrayList();
                for (Object obj3 : arrayList9) {
                    if (!linkedHashSet.contains(((FolderItem) obj3).getId())) {
                        arrayList11.add(obj3);
                    }
                }
                for (FolderItem folderItem : arrayList11) {
                    folderItem.getClass();
                    kj3 kj3VarA = a.a(folderItem, false, true);
                    FolderMetadata folderMetadataH = kj3VarA.h();
                    if (folderMetadataH == null) {
                        f6.g(xs1.i(kj3VarA.d(), "Failed to copy folder setup to "));
                        return null;
                    }
                    pz4.g.l(folderMetadataH);
                }
                qo3Var.j.k(Integer.valueOf(arrayList11.size()));
                return be8Var;
            case XmlPullParser.COMMENT /* 9 */:
                ((ih6) obj2).a = true;
                ((ih6) obj).a = false;
                return be8Var;
            case 10:
                nq5 nq5Var = (nq5) obj2;
                String str2 = ((zx3) obj).a.f;
                String strO = nq5Var.o(str2 != null ? str2 : "");
                if (strO == null || strO.length() == 0) {
                    return null;
                }
                tb1 tb1Var = tb1.a;
                return qb1.k(strO, null).k.a();
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                Map map = HomeActivity.b0;
                sa1.R((HomeActivity) obj2, (dd1) obj, null, 2);
                return be8Var;
            case 12:
                Http2Connection http2Connection = (Http2Connection) obj2;
                http2Connection.a.a(http2Connection, (Settings) ((lh6) obj).a);
                return be8Var;
            case 13:
                ((gp3) obj2).d((ArrayList) obj);
                return be8Var;
            case 14:
                rw6 rw6Var = (rw6) obj;
                qw6 qw6Var = new qw6((pw6) ((bt3) obj2).invoke());
                rw6Var.c = qw6Var;
                rw6Var.b.k(qw6Var);
                return rw6Var.c;
            case 15:
                q47 q47Var = (q47) obj2;
                ScheduleItem scheduleItem = (ScheduleItem) obj;
                ScheduleData scheduleDataC = c47.a.c();
                List<ScheduleItem.AppsQuickActions> appsQuickActionSchedules = scheduleDataC.getAppsQuickActionSchedules();
                if (appsQuickActionSchedules != null) {
                    ArrayList arrayList12 = new ArrayList(hl1.G0(appsQuickActionSchedules, 10));
                    for (ScheduleItem.AppsQuickActions appsQuickActions : appsQuickActionSchedules) {
                        if (pe4.d(appsQuickActions.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.AppsQuickActions)) {
                            appsQuickActions = (ScheduleItem.AppsQuickActions) scheduleItem;
                        }
                        arrayList12.add(appsQuickActions);
                    }
                    arrayList = arrayList12;
                } else {
                    arrayList = null;
                }
                List<ScheduleItem.AppsLabels> appsLabelSchedules = scheduleDataC.getAppsLabelSchedules();
                if (appsLabelSchedules != null) {
                    ArrayList arrayList13 = new ArrayList(hl1.G0(appsLabelSchedules, 10));
                    for (ScheduleItem.AppsLabels appsLabels : appsLabelSchedules) {
                        if (pe4.d(appsLabels.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.AppsLabels)) {
                            appsLabels = (ScheduleItem.AppsLabels) scheduleItem;
                        }
                        arrayList13.add(appsLabels);
                    }
                    arrayList2 = arrayList13;
                } else {
                    arrayList2 = null;
                }
                List<ScheduleItem.AppConfig> appConfigSchedules = scheduleDataC.getAppConfigSchedules();
                if (appConfigSchedules != null) {
                    ArrayList arrayList14 = new ArrayList(hl1.G0(appConfigSchedules, 10));
                    for (ScheduleItem.AppConfig appConfig : appConfigSchedules) {
                        if (pe4.d(appConfig.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.AppConfig)) {
                            appConfig = (ScheduleItem.AppConfig) scheduleItem;
                        }
                        arrayList14.add(appConfig);
                    }
                    arrayList3 = arrayList14;
                } else {
                    arrayList3 = null;
                }
                List<ScheduleItem.Messages> messagesSchedules = scheduleDataC.getMessagesSchedules();
                if (messagesSchedules != null) {
                    ArrayList arrayList15 = new ArrayList(hl1.G0(messagesSchedules, 10));
                    for (ScheduleItem.Messages messages : messagesSchedules) {
                        if (pe4.d(messages.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.Messages)) {
                            messages = (ScheduleItem.Messages) scheduleItem;
                        }
                        arrayList15.add(messages);
                    }
                    arrayList4 = arrayList15;
                } else {
                    arrayList4 = null;
                }
                List<ScheduleItem.CallLogs> callLogsSchedules = scheduleDataC.getCallLogsSchedules();
                if (callLogsSchedules != null) {
                    ArrayList arrayList16 = new ArrayList(hl1.G0(callLogsSchedules, 10));
                    for (ScheduleItem.CallLogs callLogs : callLogsSchedules) {
                        if (pe4.d(callLogs.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.CallLogs)) {
                            callLogs = (ScheduleItem.CallLogs) scheduleItem;
                        }
                        arrayList16.add(callLogs);
                    }
                    arrayList5 = arrayList16;
                } else {
                    arrayList5 = null;
                }
                List<ScheduleItem.Wallpapers> wallsSchedules = scheduleDataC.getWallsSchedules();
                if (wallsSchedules != null) {
                    ArrayList arrayList17 = new ArrayList(hl1.G0(wallsSchedules, 10));
                    for (ScheduleItem.Wallpapers wallpapers : wallsSchedules) {
                        if (pe4.d(wallpapers.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.Wallpapers)) {
                            wallpapers = (ScheduleItem.Wallpapers) scheduleItem;
                        }
                        arrayList17.add(wallpapers);
                    }
                    arrayList6 = arrayList17;
                } else {
                    arrayList6 = null;
                }
                List<ScheduleItem.Wifi> wifiSchedules = scheduleDataC.getWifiSchedules();
                if (wifiSchedules != null) {
                    ArrayList arrayList18 = new ArrayList(hl1.G0(wifiSchedules, 10));
                    for (ScheduleItem.Wifi wifi : wifiSchedules) {
                        if (pe4.d(wifi.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.Wifi)) {
                            wifi = (ScheduleItem.Wifi) scheduleItem;
                        }
                        arrayList18.add(wifi);
                    }
                    arrayList7 = arrayList18;
                } else {
                    arrayList7 = null;
                }
                List<ScheduleItem.Folders> foldersSchedules = scheduleDataC.getFoldersSchedules();
                if (foldersSchedules != null) {
                    arrayList8 = new ArrayList(hl1.G0(foldersSchedules, 10));
                    for (ScheduleItem.Folders folders : foldersSchedules) {
                        if (pe4.d(folders.getItemId(), scheduleItem.getItemId()) && (scheduleItem instanceof ScheduleItem.Folders)) {
                            folders = (ScheduleItem.Folders) scheduleItem;
                        }
                        arrayList8.add(folders);
                    }
                }
                q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, arrayList, arrayList2, arrayList3, arrayList4, arrayList5, arrayList6, arrayList7, arrayList8, null, 4111, null));
                return be8Var;
            default:
                List list = (List) obj2;
                iu8 iu8Var = (iu8) obj;
                if (list == null || list.isEmpty()) {
                    Const.L();
                } else {
                    us8 us8VarJ = iu8Var.j();
                    cz czVar = new cz(iu8Var, 24);
                    us8VarJ.getClass();
                    us8VarJ.b.b(list, czVar);
                    iu8Var.l();
                    if (list.size() > 1) {
                        ArrayList arrayList19 = new ArrayList(hl1.G0(list, 10));
                        Iterator it3 = list.iterator();
                        while (it3.hasNext()) {
                            arrayList19.add(uq7.T(((et8) it3.next()).getSSID(), "\"", ""));
                        }
                        iu8Var.j.k(new vt8(list, arrayList19));
                    }
                }
                return be8Var;
        }
    }

    public /* synthetic */ rm(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
