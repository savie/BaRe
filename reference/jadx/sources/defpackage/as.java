package defpackage;

import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class as implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ AppListActivity b;

    public /* synthetic */ as(AppListActivity appListActivity, int i) {
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
                ai8.q(appListActivity, BlacklistActivity.class);
                return be8.a;
            default:
                int i3 = AppListActivity.q0;
                return appListActivity.p0().q;
        }
    }
}
