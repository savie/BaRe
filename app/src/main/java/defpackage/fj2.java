package defpackage;

import android.app.AppOpsManager;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import android.view.View;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.MessagesDashActivity;
import org.swiftapps.swiftbackup.settings.LicensesActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fj2 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fj2(ml3 ml3Var, lj3 lj3Var, ul3 ul3Var) {
        this.a = 1;
        this.b = ml3Var;
        this.c = ul3Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                DetailActivity detailActivity = ((gj2) obj2).a;
                String packageName = ((ji) obj).getPackageName();
                packageName.getClass();
                Intent intent = new Intent("android.intent.action.DELETE");
                intent.setData(Uri.parse("package:".concat(packageName)));
                io4.j("Util", null, true, new d11(14, detailActivity, intent), 10);
                break;
            case 1:
                ((ml3) obj2).a.getString(R.string.base_backup).getClass();
                ((ul3) obj).a.c().getBackupFile().getClass();
                break;
            case 2:
                nt4 nt4Var = (nt4) obj;
                b05.l((LicensesActivity) obj2, nt4Var.a, nq7.H0(nt4Var.b).toString(), 8);
                break;
            case 3:
                int i2 = MessagesDashActivity.T;
                int i3 = MessagesBackupsActivity.T;
                pe4.D((MessagesDashActivity) obj2, (ArrayList) obj, false);
                break;
            default:
                hj7 hj7Var = (hj7) obj2;
                fj7 fj7Var = (fj7) obj;
                sx sxVar = fj7Var.a;
                mp6 mp6Var = mp6.a;
                if (!mp6.f() && sxVar == sx.DateUsed) {
                    SwiftApp.Companion companion = SwiftApp.d;
                    if (((AppOpsManager) SwiftApp.Companion.c().getSystemService("appops")).noteOpNoThrow("android:get_usage_stats", Process.myUid(), SwiftApp.Companion.c().getPackageName()) != 0) {
                        il0 il0Var = hj7Var.l;
                        il0Var.getClass();
                        try {
                            il0Var.startActivity(new Intent("android.settings.USAGE_ACCESS_SETTINGS"));
                        } catch (ActivityNotFoundException e) {
                            vr6.e$default(vr6.INSTANCE, "UsageStatsUtil", xs1.j("No activity found for android.settings.USAGE_ACCESS_SETTINGS. Error=", e.getMessage()), null, 4, null);
                            return;
                        }
                    }
                }
                if (fj7Var.d) {
                    fj7Var.e = !fj7Var.e;
                } else {
                    for (fj7 fj7Var2 : hj7Var.e.a) {
                        sx sxVar2 = fj7Var2.a;
                        fj7Var2.d = sxVar2 == sxVar;
                        fj7Var2.e = sxVar2 == sx.Name;
                    }
                }
                hj7Var.e();
                break;
        }
    }

    public /* synthetic */ fj2(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }
}
