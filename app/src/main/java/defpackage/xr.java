package defpackage;

import android.view.MenuItem;
import android.view.View;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xr implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ AppListActivity b;

    public /* synthetic */ xr(AppListActivity appListActivity, int i) {
        this.a = i;
        this.b = appListActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        AppListActivity appListActivity = this.b;
        switch (i) {
            case 0:
                int i2 = AppListActivity.q0;
                qt qtVar = (qt) appListActivity.U().h.d();
                if (qtVar != null && !qtVar.equals(nt.a)) {
                    u45 u45Var = new u45(appListActivity, view, 8);
                    u45Var.f(R.menu.menu_apps_switch);
                    fc5 fc5Var = (fc5) u45Var.c;
                    fc5Var.getClass();
                    int i3 = 0;
                    while (i3 < fc5Var.f.size()) {
                        int i4 = i3 + 1;
                        MenuItem item = fc5Var.getItem(i3);
                        if (item == null) {
                            l0.a();
                        } else {
                            int itemId = item.getItemId();
                            if (itemId == R.id.action_local_apps) {
                                if (appListActivity.Y().isLocalSection()) {
                                    item.setIcon(R.drawable.ic_check);
                                } else {
                                    item.setIcon(R.drawable.ic_transparent);
                                }
                            } else if (itemId == R.id.action_cloud_synced_apps) {
                                if (appListActivity.b0()) {
                                    item.setIcon(R.drawable.ic_check);
                                } else {
                                    item.setIcon(R.drawable.ic_transparent);
                                }
                            }
                            i3 = i4;
                        }
                        break;
                    }
                    u45Var.e = new gb(appListActivity, 1);
                    u45Var.j();
                    break;
                }
                break;
            default:
                int i5 = AppListActivity.q0;
                appListActivity.U().k(true, true);
                break;
        }
    }
}
