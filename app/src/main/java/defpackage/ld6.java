package defpackage;

import android.content.ClipData;
import android.content.ComponentCallbacks;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.folders.ui.FoldersDashActivity;
import org.swiftapps.swiftbackup.folders.ui.batch.FoldersBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails;
import org.swiftapps.swiftbackup.home.schedule.data.o;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.slog.SLogActivity;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ld6 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ ComponentCallbacks b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ ld6(ComponentCallbacks componentCallbacks, Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = componentCallbacks;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:46:0x0184  */
    /* JADX WARN: Code duplicated, block: B:82:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.bt3
    public final Object invoke() {
        int i;
        ScheduleItem.Wifi wifi;
        long j;
        ScheduleLastRunDetails started;
        bz7 bz7Var;
        int i2 = this.a;
        be8 be8Var = be8.a;
        Intent intent = null;
        Object obj = this.e;
        Object obj2 = this.d;
        Object obj3 = this.c;
        ComponentCallbacks componentCallbacks = this.b;
        switch (i2) {
            case 0:
                nd6 nd6Var = (nd6) componentCallbacks;
                ArrayList arrayList = (ArrayList) obj3;
                zc6 zc6Var = (zc6) obj2;
                lk3 lk3Var = (lk3) obj;
                sa1 sa1Var = (sa1) nd6Var.getActivity();
                if (sa1Var != null && nd6Var.isAdded() && !sa1Var.isFinishing() && !sa1Var.isDestroyed()) {
                    if (arrayList.isEmpty()) {
                        boolean z = zc6Var.e;
                        if (z) {
                            if (z && z && zc6Var.q) {
                                i = R.string.no_backup_in_cloud;
                            } else {
                                i = z ? R.string.no_backup_on_device : R.string.folder_items_empty_list_error;
                            }
                            String string = sa1Var.getString(i);
                            string.getClass();
                            zn4 zn4Var = zn4.a;
                            zn4.e(new cv(14, sa1Var, string));
                        } else {
                            int i3 = FoldersDashActivity.U;
                            nc8.k0(sa1Var, to3.LOCAL);
                        }
                    } else if (!lk3Var.c() || V.INSTANCE.getA()) {
                        int i4 = FoldersBatchActivity.Y;
                        lg7.G(sa1Var, lk3Var, arrayList);
                    } else {
                        int i5 = PremiumActivity.V;
                        rs9.u(sa1Var);
                    }
                }
                return be8Var;
            case 1:
                SLogActivity sLogActivity = (SLogActivity) componentCallbacks;
                q63 q63Var = (q63) obj3;
                String str = (String) obj2;
                String str2 = (String) obj;
                if (!sLogActivity.isFinishing()) {
                    sLogActivity.H();
                    if (q63Var == null || !q63Var.j()) {
                        vr6.e$default(vr6.INSTANCE, sLogActivity.r(), "SwiftLogger archive unavailable, falling back to text-only report", null, 4, null);
                        sLogActivity.P(str);
                    } else {
                        try {
                            ContentResolver contentResolver = sLogActivity.getContentResolver();
                            contentResolver.getClass();
                            Uri uriA = f93.a(q63Var);
                            String strP = q63Var.p();
                            Intent intent2 = new Intent("android.intent.action.SEND");
                            intent2.putExtra("android.intent.extra.EMAIL", new String[]{"support@swiftapps.org"});
                            intent2.putExtra("android.intent.extra.SUBJECT", "SwiftLogger Logs");
                            intent2.putExtra("android.intent.extra.TEXT", str2);
                            intent2.putExtra("android.intent.extra.STREAM", uriA);
                            intent2.setClipData(ClipData.newUri(contentResolver, strP, uriA));
                            intent2.addFlags(1);
                            intent2.setType("application/x-7z-compressed");
                            intent = intent2;
                        } catch (Exception e) {
                            vr6.e$default(vr6.INSTANCE, sLogActivity.r(), "Failed to create SwiftLogger archive share intent", e, null, 8, null);
                        }
                        if (intent != null) {
                            List<ResolveInfo> listQueryIntentActivities = sLogActivity.getPackageManager().queryIntentActivities(intent, 65536);
                            listQueryIntentActivities.getClass();
                            if (listQueryIntentActivities.isEmpty()) {
                                vr6.e$default(vr6.INSTANCE, sLogActivity.r(), "No app found for SwiftLogger archive, falling back to text-only report", null, 4, null);
                                sLogActivity.P(str);
                            } else {
                                sLogActivity.startActivity(Intent.createChooser(intent, sLogActivity.getString(R.string.share_logs)));
                            }
                        } else {
                            vr6.e$default(vr6.INSTANCE, sLogActivity.r(), "No app found for SwiftLogger archive, falling back to text-only report", null, 4, null);
                            sLogActivity.P(str);
                        }
                    }
                }
                return be8Var;
            default:
                ScheduleService scheduleService = (ScheduleService) componentCallbacks;
                ScheduleItem.Wifi wifi2 = (ScheduleItem.Wifi) obj3;
                List list = (List) obj2;
                us8 us8Var = (us8) obj;
                String str3 = ScheduleService.p;
                String itemId = wifi2.getItemId();
                List<q05> locations = wifi2.getLocations();
                SyncOption syncOption = wifi2.getSyncOption();
                ArrayList arrayListX1 = el1.x1(locations);
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, ScheduleService.p, "getWifiTaskParams: Backup locations: ".concat(el1.Y0(arrayListX1, ", ", null, null, null, 62)), null, 4, null);
                q05 q05Var = q05.CLOUD;
                if (arrayListX1.contains(q05Var)) {
                    started = scheduleService.g("getWifiTaskParams: ", arrayListX1);
                    if (started == null && !scheduleService.f(itemId, syncOption)) {
                        wifi = wifi2;
                        j = 0;
                        vr6.i$default(vr6Var, ScheduleService.p, "getWifiTaskParams: Sync option not met: " + syncOption, null, 4, null);
                        ScheduleLastRunDetails.SkippedUploadSyncOptionsError skippedUploadSyncOptionsError = new ScheduleLastRunDetails.SkippedUploadSyncOptionsError(0L, 1, null);
                        if (ji8.t(arrayListX1)) {
                            vr6.e$default(vr6Var, ScheduleService.p, "getWifiTaskParams: Can't proceed as syncing isn't possible and destination is only cloud", null, 4, null);
                            ScheduleLastRunDetails.Companion.getClass();
                            o.d(itemId, skippedUploadSyncOptionsError);
                        } else {
                            arrayListX1.remove(q05Var);
                            vr6.e$default(vr6Var, ScheduleService.p, "getWifiTaskParams: Removed cloud location", null, 4, null);
                            started = skippedUploadSyncOptionsError;
                        }
                        bz7Var = null;
                        if (bz7Var == null) {
                            return null;
                        }
                        return new tt8(bz7Var, us8Var, new px(wifi, 15));
                    }
                    wifi = wifi2;
                    j = 0;
                } else {
                    wifi = wifi2;
                    j = 0;
                    started = null;
                }
                if (arrayListX1.isEmpty()) {
                    if (started != null) {
                        ScheduleLastRunDetails.Companion.getClass();
                        o.d(itemId, started);
                    }
                    bz7Var = null;
                } else {
                    if (started == null) {
                        started = new ScheduleLastRunDetails.Started(j, 1, null);
                    }
                    ScheduleLastRunDetails.Companion.getClass();
                    o.d(itemId, started);
                    bz7Var = new bz7(list, arrayListX1, false);
                }
                if (bz7Var == null) {
                    return null;
                }
                return new tt8(bz7Var, us8Var, new px(wifi, 15));
        }
    }
}
