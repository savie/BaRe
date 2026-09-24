package defpackage;

import android.util.Log;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.home.schedule.ScheduleService;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleLastRunDetails;
import org.swiftapps.swiftbackup.home.schedule.data.o;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tt8 extends pw6 {
    public final us8 m;
    public final px n;
    public final String o;
    public final List p;

    public tt8(bz7 bz7Var, us8 us8Var, px pxVar) {
        super(bz7Var, new st8());
        this.m = us8Var;
        this.n = pxVar;
        this.o = "WifiTask";
        this.p = bz7Var.c;
    }

    @Override // defpackage.pw6
    public final void b() {
        qt8 qt8Var;
        vr8 vr8Var;
        px pxVar;
        bz7 bz7Var = (bz7) this.a;
        SwiftApp.Companion companion = SwiftApp.d;
        this.i.i(SwiftApp.Companion.c().getString(R.string.backing_up));
        int i = 1;
        od2 od2VarA = this.m.a(bz7Var, true);
        st8 st8Var = (st8) this.b;
        ss8 ss8Var = ss8.i;
        DefaultConstructorMarker defaultConstructorMarker = null;
        if (od2VarA.equals(ss8Var)) {
            qt8Var = null;
        } else if (od2VarA instanceof ps8) {
            qt8Var = ((ps8) od2VarA).i.a == ds8.ACCESS_UNAVAILABLE ? qt8.ACCESS_UNAVAILABLE : qt8.DEVICE_READ_FAILED;
        } else if (od2VarA.equals(qs8.i)) {
            qt8Var = qt8.SELECTION_FAILED;
        } else {
            if (!od2VarA.equals(rs8.i)) {
                q.j();
                return;
            }
            qt8Var = qt8.STORAGE_FAILED;
        }
        st8Var.a = qt8Var;
        if ((od2VarA instanceof ps8) && (pxVar = this.n) != null) {
            gs8 gs8Var = ((ps8) od2VarA).i;
            ds8 ds8Var = gs8Var.a;
            ks8 ks8Var = gs8Var.b;
            ds8Var.getClass();
            ks8Var.getClass();
            ScheduleItem.Wifi wifi = (ScheduleItem.Wifi) pxVar.b;
            String str = ScheduleService.p;
            o oVar = ScheduleLastRunDetails.Companion;
            String itemId = wifi.getItemId();
            oVar.getClass();
            long j = 0;
            o.d(itemId, ds8Var == ds8.ACCESS_UNAVAILABLE ? new ScheduleLastRunDetails.BlockedWifiPrivilegedAccess(j, i, defaultConstructorMarker) : new ScheduleLastRunDetails.FailedWifiDeviceRead(j, i, defaultConstructorMarker));
        }
        if (od2VarA.equals(ss8Var)) {
            if (bz7Var.e) {
                vr8Var = vr8.CLOUD;
            } else {
                vr8Var = bz7Var.d.contains(q05.CLOUD) ? vr8.ALL : vr8.LOCAL;
            }
            vr8Var.getClass();
            wr8 wr8Var = new wr8();
            wr8Var.a = vr8Var;
            ny2.b().e(wr8Var);
            Log.i(this.o, "Cleaning cloud cache on device");
            boolean z = q63.d;
            String str2 = ry5.u;
            cy0.g(qy5.f(false, null).o);
        }
    }

    @Override // defpackage.pw6
    public final String c() {
        return this.o;
    }

    @Override // defpackage.pw6
    public final int d() {
        return this.p.size();
    }

    @Override // defpackage.pw6
    public final int f() {
        return this.p.size();
    }

    @Override // defpackage.pw6
    public final String h() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.wifi);
    }

    @Override // defpackage.pw6
    public final String j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.x_wifi_networks, String.valueOf(this.p.size()));
        string.getClass();
        return string;
    }

    @Override // defpackage.pw6
    public final void a() {
    }
}
