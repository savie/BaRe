package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.MenuItem;
import com.nimbusds.jose.shaded.gson.InstanceCreator;
import com.nimbusds.jose.shaded.gson.internal.ObjectConstructor;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.appsquickactions.AppsQuickActionsActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.a;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.wifi.WifiActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jq0 implements w76, ObjectConstructor, g36 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jq0(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.w76
    public void a(yq0 yq0Var, ib ibVar) {
        ArrayList arrayList = (ArrayList) this.b;
        CountDownLatch countDownLatch = (CountDownLatch) this.c;
        yq0Var.getClass();
        List list = (List) ibVar.b;
        list.getClass();
        vr6.d$default(vr6.INSTANCE, "BillingManager", xs1.h(list.size(), "Fetched in-app SKU details: Total: (", ")"), null, 4, null);
        if (yq0Var.a != 0 || list.isEmpty()) {
            wq0 wq0Var = wq0.a;
            wq0.d("_queryProductDetailsFromGooglePlay", "Error when querying in-app skus: " + yq0Var);
        } else {
            arrayList.addAll(list);
        }
        countDownLatch.countDown();
    }

    @Override // com.nimbusds.jose.shaded.gson.internal.ObjectConstructor
    public Object construct() {
        return ((InstanceCreator) this.b).createInstance((Type) this.c);
    }

    @Override // defpackage.g36
    public boolean onMenuItemClick(MenuItem menuItem) {
        int i = this.a;
        boolean z = true;
        String string = null;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 2:
                j57 j57Var = (j57) obj2;
                HomeActivity homeActivity = j57Var.l;
                ScheduleItem scheduleItem = (ScheduleItem) obj;
                int itemId = menuItem.getItemId();
                if (itemId == R.id.action_run_schedule) {
                    String str = ScheduleService.p;
                    ScheduleService.RunMode.SingleSchedule singleSchedule = new ScheduleService.RunMode.SingleSchedule(scheduleItem);
                    homeActivity.getClass();
                    homeActivity.M(R.string.preparing);
                    a.b(true, singleSchedule, new cz(homeActivity, 17));
                } else if (itemId == R.id.action_goto_activity) {
                    int i2 = i57.a[scheduleItem.getItemType().ordinal()];
                    if (i2 == 1) {
                        int i3 = ConfigListActivity.R;
                        jb9.f0(homeActivity);
                    } else if (i2 == 2) {
                        int i4 = LabelsActivity.Z;
                        us2.D(homeActivity);
                    } else if (i2 == 3) {
                        int i5 = AppsQuickActionsActivity.S;
                        homeActivity.getClass();
                        homeActivity.startActivity(new Intent(homeActivity, (Class<?>) AppsQuickActionsActivity.class));
                    }
                } else if (itemId == R.id.action_copy_schedule_id) {
                    String itemId2 = scheduleItem.getItemId();
                    try {
                        SharedPreferences sharedPreferences = cz4.f;
                        if (sharedPreferences == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        string = sharedPreferences.getString("app_locale", null);
                        String lowerCase = itemId2.toLowerCase((string == null || string.length() == 0) ? xx3.h().a() : xx3.g(string).a());
                        lowerCase.getClass();
                        Const.f(lowerCase, "schedule_id", new jj2(7, j57Var, lowerCase));
                    } catch (ClassCastException unused) {
                    }
                } else if (itemId == R.id.action_delete) {
                    Const.J(homeActivity, R.string.delete, new xq(9, j57Var, scheduleItem));
                }
                return true;
            default:
                cs8 cs8Var = (cs8) obj2;
                WifiActivity wifiActivity = cs8Var.a;
                et8 et8Var = (et8) obj;
                int itemId3 = menuItem.getItemId();
                if (itemId3 == R.id.action_manage) {
                    Intent intentAddFlags = new Intent("android.settings.WIFI_SETTINGS").addFlags(268435456);
                    intentAddFlags.getClass();
                    try {
                        wifiActivity.startActivity(intentAddFlags);
                    } catch (ActivityNotFoundException e) {
                        Context applicationContext = wifiActivity.getApplicationContext();
                        applicationContext.getClass();
                        String strValueOf = String.valueOf(e.getMessage());
                        zn4 zn4Var = zn4.a;
                        dj7.y(applicationContext, strValueOf);
                    }
                    break;
                } else if (itemId3 == R.id.action_backup_local) {
                    iu8 iu8Var = cs8Var.b;
                    bz7 bz7Var = new bz7(nc8.I(et8Var), nc8.I(q05.DEVICE), false);
                    iu8Var.getClass();
                    zn4.c(new ut8(bz7Var, R.string.backing_up, iu8Var, z));
                } else if (itemId3 == R.id.action_backup_cloud) {
                    sa1.R(wifiActivity, null, new d11(15, cs8Var, et8Var), 1);
                }
                return true;
        }
    }
}
