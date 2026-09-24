package defpackage;

import androidx.drawerlayout.widget.DrawerLayout;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zr implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ AppListActivity b;

    public /* synthetic */ zr(AppListActivity appListActivity, int i) {
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
                mp6 mp6Var = mp6.a;
                if (!mp6.f()) {
                    Const.N(appListActivity);
                } else if (V.INSTANCE.getA()) {
                    ai8.q(appListActivity, ConfigListActivity.class);
                } else {
                    zn4 zn4Var = zn4.a;
                    zn4.e(new b56(appListActivity, 0));
                }
                return be8.a;
            default:
                int i3 = AppListActivity.q0;
                DrawerLayout drawerLayout = appListActivity.p0().a;
                drawerLayout.getClass();
                return drawerLayout;
        }
    }
}
