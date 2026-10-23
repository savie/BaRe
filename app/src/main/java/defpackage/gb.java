package defpackage;

import android.view.MenuItem;
import com.google.android.gms.tasks.OnSuccessListener;
import com.nimbusds.jose.shaded.gson.internal.ConstructorConstructor;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import com.pcloud.sdk.internal.a;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Response;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gb implements ig2, g36, ObjectConstructor, OnSuccessListener, hm6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ gb(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.hm6
    public Object a(Response response) {
        return ((hw3) ((a) this.b).f(response, hw3.class)).d();
    }

    @Override // defpackage.ig2
    public void c(ga6 ga6Var) {
        AtomicReference atomicReference = (AtomicReference) ((ib) this.b).c;
        if (ga6Var.get() == null) {
            atomicReference.set(null);
        } else {
            e6.d();
        }
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ConstructorConstructor.lambda$newUnsafeAllocator$18((Class) this.b);
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        int i = this.a;
        Object obj = this.b;
        int i2 = 1;
        switch (i) {
            case 1:
                AppListActivity appListActivity = (AppListActivity) obj;
                int i3 = AppListActivity.q0;
                int itemId = menuItem.getItemId();
                if (itemId != R.id.action_local_apps) {
                    if (itemId == R.id.action_cloud_synced_apps && appListActivity.Y().isLocalSection()) {
                        appListActivity.f0(q05.CLOUD);
                        y13.E(bt.CLOUD);
                    }
                } else if (appListActivity.b0()) {
                    appListActivity.f0(q05.DEVICE);
                    y13.E(bt.LOCAL);
                }
                break;
            case 5:
                CsActivity csActivity = (CsActivity) obj;
                int i4 = CsActivity.P0;
                int itemId2 = menuItem.getItemId();
                if (itemId2 == R.id.action_swiftlogger) {
                    ai8.q(csActivity, SLogActivity.class);
                } else if (itemId2 == R.id.action_save_settings) {
                    try {
                        csActivity.V("text/plain", csActivity.d0().getConstant() + "_settings.txt", new u10(csActivity, 5));
                    } catch (Exception e) {
                        vr6.e$default(vr6.INSTANCE, csActivity.r(), "exportSettings", e, null, 8, null);
                    }
                } else if (itemId2 == R.id.action_load_settings) {
                    try {
                        csActivity.W("text/plain", new u42(csActivity, i2));
                    } catch (Exception e2) {
                        vr6.e$default(vr6.INSTANCE, csActivity.r(), "importSettings", e2, null, 8, null);
                    }
                }
                break;
            default:
                m37 m37Var = (m37) obj;
                int itemId3 = menuItem.getItemId();
                if (itemId3 == R.id.action_by_quick_actions) {
                    m37Var.p().j(ScheduleItem.Type.AppsQuickActions);
                } else if (itemId3 == R.id.action_by_labels) {
                    m37Var.p().j(ScheduleItem.Type.AppsLabels);
                } else if (itemId3 == R.id.action_by_config) {
                    m37Var.p().j(ScheduleItem.Type.AppConfig);
                } else if (itemId3 == R.id.action_messages) {
                    m37Var.p().j(ScheduleItem.Type.Messages);
                } else if (itemId3 == R.id.action_call_logs) {
                    m37Var.p().j(ScheduleItem.Type.CallLogs);
                } else if (itemId3 == R.id.action_folders) {
                    m37Var.p().j(ScheduleItem.Type.Folders);
                } else if (itemId3 == R.id.action_walls) {
                    m37Var.p().j(ScheduleItem.Type.Wallpapers);
                } else if (itemId3 == R.id.action_wifi) {
                    m37Var.p().j(ScheduleItem.Type.Wifi);
                }
                break;
        }
        return true;
        return true;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 3:
                ((u32) obj2).invoke(obj);
                break;
            default:
                ((t32) obj2).invoke(obj);
                break;
        }
    }
}
