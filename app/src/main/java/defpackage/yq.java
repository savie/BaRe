package defpackage;

import android.content.pm.PackageInfo;
import android.os.Parcelable;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import org.json.JSONException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleData;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yq implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ yq(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        hk hkVar;
        switch (this.a) {
            case 0:
                il0 il0Var = (il0) this.b;
                Exception exc = (Exception) this.c;
                if (cr.c) {
                    il0Var.H();
                }
                String string = il0Var.getString(R.string.error);
                string.getClass();
                String strB = io4.b(exc);
                cw5 cw5Var = new cw5(string, strB);
                ar arVar = ar.STATUS_FAILURE;
                mt3 mt3Var = cr.e;
                mt3 mt3Var2 = cr.f;
                cr.a = null;
                cr.b = false;
                cr.c = true;
                cr.d = true;
                cr.e = null;
                cr.f = null;
                if (mt3Var != null) {
                    mt3Var.invoke(cw5Var);
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(14, il0Var, strB));
                    if (mt3Var2 != null) {
                        mt3Var2.invoke(arVar);
                    }
                }
                return be8.a;
            case 1:
                List list = (List) this.b;
                String str = (String) this.c;
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Character chC0 = nq7.c0(nq7.H0((String) it.next()).toString());
                    if (chC0 != null) {
                        arrayList.add(chC0);
                    }
                }
                return Boolean.valueOf(uq7.V(el1.Y0(arrayList, "", null, null, null, 62), str, true));
            case 2:
                return CredentialProviderController.Companion.maybeReportErrorResultCodeGet$lambda$0((mt3) this.b, (lh6) this.c);
            case 3:
                return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$0((CredentialProviderCreatePublicKeyCredentialController) this.b, (JSONException) this.c);
            case 4:
                mk2 mk2Var = (mk2) this.b;
                String str2 = (String) this.c;
                be8 be8Var = be8.a;
                mk2Var.k.k(new ak2(2, null));
                mk2Var.j.k(bk2.a);
                mk2Var.l.k(new yj2(xj2.Loading));
                mp6.d(mp6.a, false, false, 3);
                g00 g00Var = g00.a;
                ai8.b();
                PackageInfo packageInfoQ = g00.q(0, str2);
                ji jiVarFromPackageInfo = packageInfoQ != null ? ji.Companion.fromPackageInfo(packageInfoQ) : null;
                if (jiVarFromPackageInfo == null) {
                    Parcelable.Creator<hk> creator = hk.CREATOR;
                    List listB = fk.b(str2);
                    if (listB != null && (hkVar = (hk) el1.U0(listB)) != null) {
                        jiVarFromPackageInfo = ji.Companion.fromMetadataFile(hkVar.v());
                    }
                }
                if (jiVarFromPackageInfo == null) {
                    if (ai8.h()) {
                        AppCloudBackups.a.C0014a c0014aFetchForPackage = AppCloudBackups.Companion.fetchForPackage(str2);
                        if (c0014aFetchForPackage.getDatabaseError() != null) {
                            vr6.e$default(vr6.INSTANCE, "AppUtil", io4.b(c0014aFetchForPackage.getDatabaseError().c()), null, 4, null);
                        }
                        if (c0014aFetchForPackage.getAppCloudBackups() != null) {
                            jiVarFromPackageInfo = ji.Companion.fromCloudBackups(c0014aFetchForPackage.getAppCloudBackups());
                        }
                    } else {
                        vr6.e$default(vr6.INSTANCE, "AppUtil", "createAppFromPackage: Internet not working or unavailable", null, 4, null);
                    }
                }
                if (jiVarFromPackageInfo == null) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    ai8.m(SwiftApp.Companion.c(), R.string.not_available);
                    mk2Var.d();
                } else {
                    zn4.c(new lx(mk2Var, jiVarFromPackageInfo));
                }
                return be8Var;
            case 5:
                in3 in3Var = (in3) this.b;
                q63 q63Var = (q63) this.c;
                zn7 zn7VarJ = in3Var.j(q63Var);
                zn7VarJ.getClass();
                return new hn3(zn7VarJ, in3Var.l(), q63Var);
            case 6:
                Http2Connection http2Connection = (Http2Connection) this.b;
                Http2Stream http2Stream = (Http2Stream) this.c;
                try {
                    http2Connection.a.c(http2Stream);
                    break;
                } catch (IOException e) {
                    Platform platform = Platform.a;
                    Platform.a.j(4, "Http2Connection.Listener failure for " + http2Connection.c, e);
                    try {
                        http2Stream.d(ErrorCode.PROTOCOL_ERROR, e);
                        break;
                    } catch (IOException unused) {
                    }
                }
                return be8.a;
            case 7:
                ((mt3) this.b).invoke((ry5) this.c);
                return be8.a;
            default:
                ScheduleItem.Type type = (ScheduleItem.Type) this.b;
                q47 q47Var = (q47) this.c;
                List<ScheduleItem.Folders> list2 = ov2.a;
                ScheduleData scheduleDataC = c47.a.c();
                switch (o47.a[type.ordinal()]) {
                    case 1:
                        ScheduleItem.AppsQuickActions appsQuickActions = new ScheduleItem.AppsQuickActions(null, null, null, null, null, null, null, null, false, 511, null);
                        List<ScheduleItem.AppsQuickActions> appsQuickActionSchedules = scheduleDataC.getAppsQuickActionSchedules();
                        if (appsQuickActionSchedules != null) {
                            list2 = appsQuickActionSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, el1.f1(appsQuickActions, list2), null, null, null, null, null, null, null, null, 8175, null).withScheduleAppended(appsQuickActions.getItemId()));
                        break;
                    case 2:
                        ScheduleItem.AppsLabels appsLabels = new ScheduleItem.AppsLabels(null, null, null, null, null, null, null, false, 255, null);
                        List<ScheduleItem.AppsLabels> appsLabelSchedules = scheduleDataC.getAppsLabelSchedules();
                        if (appsLabelSchedules != null) {
                            list2 = appsLabelSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, el1.f1(appsLabels, list2), null, null, null, null, null, null, null, 8159, null).withScheduleAppended(appsLabels.getItemId()));
                        break;
                    case 3:
                        ScheduleItem.AppConfig appConfig = new ScheduleItem.AppConfig(null, null, null, null, false, 31, null);
                        List<ScheduleItem.AppConfig> appConfigSchedules = scheduleDataC.getAppConfigSchedules();
                        if (appConfigSchedules != null) {
                            list2 = appConfigSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, el1.f1(appConfig, list2), null, null, null, null, null, null, 8127, null).withScheduleAppended(appConfig.getItemId()));
                        break;
                    case 4:
                        ScheduleItem.Messages messages = new ScheduleItem.Messages(null, null, null, null, null, false, 63, null);
                        List<ScheduleItem.Messages> messagesSchedules = scheduleDataC.getMessagesSchedules();
                        if (messagesSchedules != null) {
                            list2 = messagesSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, el1.f1(messages, list2), null, null, null, null, null, 8063, null).withScheduleAppended(messages.getItemId()));
                        break;
                    case 5:
                        ScheduleItem.CallLogs callLogs = new ScheduleItem.CallLogs(null, null, null, null, null, false, 63, null);
                        List<ScheduleItem.CallLogs> callLogsSchedules = scheduleDataC.getCallLogsSchedules();
                        if (callLogsSchedules != null) {
                            list2 = callLogsSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, el1.f1(callLogs, list2), null, null, null, null, 7935, null).withScheduleAppended(callLogs.getItemId()));
                        break;
                    case 6:
                        ScheduleItem.Wallpapers wallpapers = new ScheduleItem.Wallpapers(null, null, null, null, null, false, 63, null);
                        List<ScheduleItem.Wallpapers> wallsSchedules = scheduleDataC.getWallsSchedules();
                        if (wallsSchedules != null) {
                            list2 = wallsSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, null, el1.f1(wallpapers, list2), null, null, null, 7679, null).withScheduleAppended(wallpapers.getItemId()));
                        break;
                    case 7:
                        ScheduleItem.Wifi wifi = new ScheduleItem.Wifi(null, null, null, null, null, false, 63, null);
                        List<ScheduleItem.Wifi> wifiSchedules = scheduleDataC.getWifiSchedules();
                        if (wifiSchedules != null) {
                            list2 = wifiSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, null, null, el1.f1(wifi, list2), null, null, 7167, null).withScheduleAppended(wifi.getItemId()));
                        break;
                    case 8:
                        ScheduleItem.Folders folders = new ScheduleItem.Folders(null, null, false, null, null, null, null, null, false, 511, null);
                        List<ScheduleItem.Folders> foldersSchedules = scheduleDataC.getFoldersSchedules();
                        if (foldersSchedules != null) {
                            list2 = foldersSchedules;
                        }
                        q47.k(q47Var, ScheduleData.copy$default(scheduleDataC, 0, 0, 0, null, null, null, null, null, null, null, null, el1.f1(folders, list2), null, 6143, null).withScheduleAppended(folders.getItemId()));
                        break;
                    default:
                        q.j();
                        return null;
                }
                return be8.a;
        }
    }
}
