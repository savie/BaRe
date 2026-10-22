package defpackage;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails;
import org.swiftapps.swiftbackup.home.schedule.data.o;
import org.swiftapps.swiftbackup.tasks.model.SyncOption;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mh implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ mh(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:35:0x0112  */
    /* JADX WARN: Code duplicated, block: B:68:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.bt3
    public final Object invoke() {
        ScheduleLastRunDetails started;
        az7 az7Var;
        int i = this.a;
        be8 be8Var = be8.a;
        boolean z = true;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                zm zmVar = (zm) ((nh) obj).b;
                sz8.m((w45) obj3);
                if (!(obj2 instanceof bn6)) {
                    rh rhVar = (rh) obj2;
                    q63 q63Var = rhVar.a;
                    Uri uriA = f93.a(q63Var);
                    Intent intentPutExtra = new Intent("android.intent.action.SEND").putExtra("android.intent.extra.STREAM", uriA);
                    String str = rhVar.b;
                    Intent intentAddFlags = intentPutExtra.setType(str).addFlags(1);
                    intentAddFlags.setClipData(ClipData.newUri(zmVar.getContentResolver(), q63Var.p(), uriA));
                    String string = zmVar.getString(str.equals("application/octet-stream") ? R.string.share_apks : R.string.share_apk);
                    string.getClass();
                    Intent intentCreateChooser = Intent.createChooser(intentAddFlags, string);
                    intentCreateChooser.getClass();
                    try {
                        zmVar.startActivity(intentCreateChooser);
                    } catch (ActivityNotFoundException e) {
                        Context applicationContext = zmVar.getApplicationContext();
                        applicationContext.getClass();
                        String strValueOf = String.valueOf(e.getMessage());
                        zn4 zn4Var = zn4.a;
                        dj7.y(applicationContext, strValueOf);
                    }
                    break;
                }
                Throwable thA = en6.a(obj2);
                if (thA != null) {
                    String string2 = zmVar.getString(R.string.error);
                    String strB = io4.b(thA);
                    String string3 = zmVar.getString(R.string.ok);
                    s35 s35Var = new s35(zmVar, R.style.M3AlertDialogTheme, new hv1(zmVar, R.style.M3AlertDialogTheme), null);
                    ra raVar = (ra) s35Var.b;
                    if (string2 != null && string2.length() != 0) {
                        raVar.d = string2;
                    }
                    raVar.f = strB;
                    if (string3 == null || string3.length() == 0) {
                        string3 = zmVar.getString(R.string.ok);
                        string3.getClass();
                    }
                    s35Var.t(string3, null);
                    s35Var.m();
                }
                return be8Var;
            case 1:
                ((AppsBatchActivity) obj3).a0().k((ArrayList) obj2, (ty7) obj);
                return be8Var;
            case 2:
                String str2 = (String) obj3;
                iu iuVar = (iu) obj2;
                String str3 = (String) obj;
                if (str2 == null) {
                    z = false;
                } else {
                    iuVar.getClass();
                    if (pe4.d(str2, str3)) {
                        z = false;
                    } else {
                        String strL = dj7.l("Password hash changed, Backup: ", str3, ", Current: ", str2);
                        vr6.i$default(vr6.INSTANCE, "AppDataChangeChecker", iuVar + ": " + strL, null, 4, null);
                    }
                }
                return Boolean.valueOf(z);
            case 3:
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0$1((Executor) obj3, (t22) obj2, (Exception) obj);
            default:
                ScheduleService scheduleService = (ScheduleService) obj3;
                ScheduleItem.Wallpapers wallpapers = (ScheduleItem.Wallpapers) obj2;
                List list = (List) obj;
                String str4 = ScheduleService.p;
                String itemId = wallpapers.getItemId();
                List<q05> locations = wallpapers.getLocations();
                SyncOption syncOption = wallpapers.getSyncOption();
                ArrayList arrayListX1 = el1.x1(locations);
                vr6 vr6Var = vr6.INSTANCE;
                vr6.i$default(vr6Var, ScheduleService.p, "getWallsTaskParams: Backup locations: ".concat(el1.Y0(arrayListX1, ", ", null, null, null, 62)), null, 4, null);
                q05 q05Var = q05.CLOUD;
                if (arrayListX1.contains(q05Var)) {
                    started = scheduleService.g("getWallsTaskParams: ", arrayListX1);
                    if (started == null && !scheduleService.f(itemId, syncOption)) {
                        vr6.i$default(vr6Var, ScheduleService.p, "getWallsTaskParams: Sync option not met: " + syncOption, null, 4, null);
                        ScheduleLastRunDetails.SkippedUploadSyncOptionsError skippedUploadSyncOptionsError = new ScheduleLastRunDetails.SkippedUploadSyncOptionsError(0L, 1, null);
                        if (ji8.t(arrayListX1)) {
                            vr6.e$default(vr6Var, ScheduleService.p, "getWallsTaskParams: Can't proceed as syncing isn't possible and destination is only cloud", null, 4, null);
                            ScheduleLastRunDetails.Companion.getClass();
                            o.d(itemId, skippedUploadSyncOptionsError);
                        } else {
                            arrayListX1.remove(q05Var);
                            vr6.e$default(vr6Var, ScheduleService.p, "getWallsTaskParams: Removed cloud location", null, 4, null);
                            started = skippedUploadSyncOptionsError;
                        }
                        az7Var = null;
                    }
                    if (az7Var == null) {
                        return null;
                    }
                    return new wp8(az7Var);
                }
                started = null;
                if (arrayListX1.isEmpty()) {
                    if (started != null) {
                        ScheduleLastRunDetails.Companion.getClass();
                        o.d(itemId, started);
                    }
                    az7Var = null;
                } else {
                    if (started == null) {
                        started = new ScheduleLastRunDetails.Started(0L, 1, null);
                    }
                    ScheduleLastRunDetails.Companion.getClass();
                    o.d(itemId, started);
                    az7Var = new az7(list, arrayListX1);
                }
                if (az7Var == null) {
                    return null;
                }
                return new wp8(az7Var);
        }
    }
}
