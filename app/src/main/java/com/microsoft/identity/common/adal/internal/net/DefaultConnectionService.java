package com.microsoft.identity.common.adal.internal.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.PowerManager;
import com.microsoft.identity.common.PropertyBagUtil;
import com.microsoft.identity.common.adal.internal.PowerManagerWrapper;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.BaseEvent;
import defpackage.ge;
import defpackage.zh8;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class DefaultConnectionService {
    private static final ge sNetworkCheckFailureCount;
    private static final ge sNetworkCheckSuccessCount;
    private final Context mConnectionContext;

    static {
        PropertyBagUtil.createLongCounter("network_check_failure_count", "Number of times network was not available");
        ge geVar = zh8.d;
        sNetworkCheckFailureCount = geVar;
        PropertyBagUtil.createLongCounter("network_check_success_count", "Number of times network was available");
        sNetworkCheckSuccessCount = geVar;
    }

    public DefaultConnectionService(Context context) {
        this.mConnectionContext = context;
    }

    public final boolean isConnectionAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mConnectionContext.getSystemService("connectivity");
        boolean z = false;
        if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.USE_NETWORK_CAPABILITY_FOR_NETWORK_CHECK)) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasCapability(12) && networkCapabilities.hasCapability(16)) {
                z = true;
            }
            if (z) {
                sNetworkCheckSuccessCount.getClass();
            } else {
                sNetworkCheckFailureCount.getClass();
            }
        } else {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
                z = true;
            }
        }
        BaseEvent baseEvent = new BaseEvent();
        baseEvent.put("Microsoft.MSAL.network_connection", String.valueOf(z));
        Telemetry.emit(baseEvent);
        return z;
    }

    public final boolean isNetworkDisabledFromOptimizations() {
        PowerManagerWrapper.getInstance().getClass();
        Context context = this.mConnectionContext;
        if (!((PowerManager) context.getSystemService("power")).isDeviceIdleMode() || ((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(context.getPackageName())) {
            BaseEvent baseEvent = new BaseEvent();
            baseEvent.put("Microsoft.MSAL.power_optimization", String.valueOf(false));
            Telemetry.emit(baseEvent);
            return false;
        }
        BaseEvent baseEvent2 = new BaseEvent();
        baseEvent2.put("Microsoft.MSAL.power_optimization", String.valueOf(true));
        Telemetry.emit(baseEvent2);
        return true;
    }
}
