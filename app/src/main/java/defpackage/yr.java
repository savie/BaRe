package defpackage;

import android.content.Intent;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yr implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ AppListActivity b;

    public /* synthetic */ yr(AppListActivity appListActivity, int i) {
        this.a = i;
        this.b = appListActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        AppListActivity appListActivity = this.b;
        switch (i) {
            case 0:
                int i2 = AppListActivity.q0;
                int i3 = 0;
                if (V.INSTANCE.getA()) {
                    Intent intentPutExtra = new Intent(appListActivity, (Class<?>) LabelsActivity.class).putExtra("labels_activity_mode", 0);
                    intentPutExtra.getClass();
                    appListActivity.startActivity(intentPutExtra);
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new b56(appListActivity, i3));
                }
                return be8.a;
            default:
                int i4 = AppListActivity.q0;
                sc3 sc3Var = new sc3(appListActivity);
                appListActivity.Z = sc3Var;
                return sc3Var;
        }
    }
}
