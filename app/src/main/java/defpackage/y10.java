package defpackage;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y10 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ y10(ScheduleService scheduleService, ScheduleItem.CallLogs callLogs, ArrayList arrayList) {
        this.a = 3;
        this.b = scheduleService;
        this.d = callLogs;
        this.c = arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ce  */
    @Override // defpackage.bt3
    public final Object invoke() {
        Uri uriA;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj = this.c;
        Object obj2 = this.d;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                ((AppsBatchActivity) obj3).a0().k((ArrayList) obj, (ky7) obj2);
                return be8Var;
            case 1:
                CloudDiagnosticsActivity cloudDiagnosticsActivity = (CloudDiagnosticsActivity) obj3;
                q63 q63Var = (q63) obj;
                String str = (String) obj2;
                if (!cloudDiagnosticsActivity.isFinishing()) {
                    cloudDiagnosticsActivity.H();
                    if (q63Var == null) {
                        uriA = null;
                    } else {
                        q63 q63Var2 = q63Var.j() ? q63Var : null;
                        if (q63Var2 != null) {
                            uriA = f93.a(q63Var2);
                        } else {
                            uriA = null;
                        }
                    }
                    ContentResolver contentResolver = cloudDiagnosticsActivity.getContentResolver();
                    contentResolver.getClass();
                    String string = cloudDiagnosticsActivity.getString(R.string.cloud_diagnostics_report_failure_subject);
                    string.getClass();
                    Intent intentG = ho6.g(contentResolver, string, str, uriA, q63Var != null ? q63Var.p() : null);
                    List<ResolveInfo> listQueryIntentActivities = cloudDiagnosticsActivity.getPackageManager().queryIntentActivities(intentG, 65536);
                    listQueryIntentActivities.getClass();
                    if (listQueryIntentActivities.isEmpty()) {
                        ContentResolver contentResolver2 = cloudDiagnosticsActivity.getContentResolver();
                        contentResolver2.getClass();
                        String string2 = cloudDiagnosticsActivity.getString(R.string.cloud_diagnostics_report_failure_subject);
                        string2.getClass();
                        Intent intentG2 = ho6.g(contentResolver2, string2, str, null, null);
                        if (uriA != null) {
                            List<ResolveInfo> listQueryIntentActivities2 = cloudDiagnosticsActivity.getPackageManager().queryIntentActivities(intentG2, 65536);
                            listQueryIntentActivities2.getClass();
                            if (listQueryIntentActivities2.isEmpty()) {
                                zn4 zn4Var = zn4.a;
                                zn4.e(new cv(14, cloudDiagnosticsActivity, "No app found to handle this action"));
                            } else {
                                cloudDiagnosticsActivity.startActivity(Intent.createChooser(intentG2, cloudDiagnosticsActivity.getString(R.string.cloud_diagnostics_report_share_title)));
                            }
                        } else {
                            zn4 zn4Var2 = zn4.a;
                            zn4.e(new cv(14, cloudDiagnosticsActivity, "No app found to handle this action"));
                        }
                    } else {
                        cloudDiagnosticsActivity.startActivity(Intent.createChooser(intentG, cloudDiagnosticsActivity.getString(R.string.cloud_diagnostics_report_share_title)));
                    }
                }
                return be8Var;
            case 2:
                return CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$2$0$0((Exception) obj3, (Executor) obj, (t22) obj2);
            default:
                ScheduleItem.CallLogs callLogs = (ScheduleItem.CallLogs) obj2;
                ArrayList arrayList = (ArrayList) obj;
                String str2 = ScheduleService.p;
                xy7 xy7VarC = ((ScheduleService) obj3).c(callLogs.getItemId(), callLogs.getLocations(), callLogs.getSyncOption());
                if (xy7VarC == null) {
                    return null;
                }
                return new z11(arrayList, xy7VarC);
        }
    }

    public /* synthetic */ y10(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }
}
