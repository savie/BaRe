package defpackage;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bo extends ao {
    public final bp0 c;
    public final /* synthetic */ fo d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bo(fo foVar, bp0 bp0Var) {
        super(foVar);
        this.d = foVar;
        this.c = bp0Var;
    }

    @Override // defpackage.ao
    public final IntentFilter f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        return intentFilter;
    }

    @Override // defpackage.ao
    public final int g() {
        Location location;
        boolean z;
        long j;
        Location lastKnownLocation;
        bp0 bp0Var = this.c;
        rb8 rb8Var = (rb8) bp0Var.c;
        LocationManager locationManager = (LocationManager) bp0Var.b;
        if (rb8Var.b > System.currentTimeMillis()) {
            z = rb8Var.a;
        } else {
            Context context = (Context) bp0Var.a;
            Location lastKnownLocation2 = null;
            if (lg7.d(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                try {
                    lastKnownLocation = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                } catch (Exception e) {
                    Log.d("TwilightManager", "Failed to get last known location", e);
                }
                location = lastKnownLocation;
            } else {
                location = null;
            }
            if (lg7.d(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                try {
                    if (locationManager.isProviderEnabled("gps")) {
                        lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                    }
                } catch (Exception e2) {
                    Log.d("TwilightManager", "Failed to get last known location", e2);
                }
            }
            if (lastKnownLocation2 == null || location == null ? lastKnownLocation2 != null : lastKnownLocation2.getTime() > location.getTime()) {
                location = lastKnownLocation2;
            }
            z = false;
            if (location != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (qb8.d == null) {
                    qb8.d = new qb8();
                }
                qb8 qb8Var = qb8.d;
                qb8Var.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis - 86400000);
                qb8Var.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis);
                z = qb8Var.c == 1;
                long j2 = qb8Var.b;
                long j3 = qb8Var.a;
                qb8Var.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis + 86400000);
                long j4 = qb8Var.b;
                if (j2 == -1 || j3 == -1) {
                    j = jCurrentTimeMillis + 43200000;
                } else {
                    if (jCurrentTimeMillis > j3) {
                        j2 = j4;
                    } else if (jCurrentTimeMillis > j2) {
                        j2 = j3;
                    }
                    j = j2 + 60000;
                }
                rb8Var.a = z;
                rb8Var.b = j;
            } else {
                Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                int i = Calendar.getInstance().get(11);
                if (i < 6 || i >= 22) {
                    z = true;
                }
            }
        }
        return z ? 2 : 1;
    }

    @Override // defpackage.ao
    public final void k() {
        this.d.n(true, true);
    }
}
