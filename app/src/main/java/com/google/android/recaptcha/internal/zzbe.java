package com.google.android.recaptcha.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import defpackage.pw5;
import defpackage.sv2;
import defpackage.x65;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbe {
    public zzbe() {
        new ConcurrentHashMap();
        zzb();
    }

    public static final Set zza(Context context) {
        try {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Object systemService = context.getSystemService("connectivity");
            systemService.getClass();
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                linkedHashSet.add(zzqi.TRANSPORT_WIFI);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(0)) {
                linkedHashSet.add(zzqi.TRANSPORT_CELLULAR);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                linkedHashSet.add(zzqi.TRANSPORT_VPN);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                linkedHashSet.add(zzqi.TRANSPORT_ETHERNET);
            }
            if (networkCapabilities != null && networkCapabilities.hasCapability(16)) {
                linkedHashSet.add(zzqi.NET_CAPABILITY_VALIDATED);
            }
            return linkedHashSet;
        } catch (Exception unused) {
            return sv2.a;
        }
    }

    private static final Map zzb() {
        pw5[] pw5VarArr = {new pw5(0, zzqi.NET_CAPABILITY_MMS), new pw5(1, zzqi.NET_CAPABILITY_SUPL), new pw5(2, zzqi.NET_CAPABILITY_DUN), new pw5(3, zzqi.NET_CAPABILITY_FOTA), new pw5(4, zzqi.NET_CAPABILITY_IMS), new pw5(5, zzqi.NET_CAPABILITY_CBS), new pw5(6, zzqi.NET_CAPABILITY_WIFI_P2P), new pw5(7, zzqi.NET_CAPABILITY_IA), new pw5(8, zzqi.NET_CAPABILITY_RCS), new pw5(9, zzqi.NET_CAPABILITY_XCAP), new pw5(10, zzqi.NET_CAPABILITY_EIMS), new pw5(11, zzqi.NET_CAPABILITY_NOT_METERED), new pw5(12, zzqi.NET_CAPABILITY_INTERNET), new pw5(13, zzqi.NET_CAPABILITY_NOT_RESTRICTED), new pw5(14, zzqi.NET_CAPABILITY_TRUSTED), new pw5(15, zzqi.NET_CAPABILITY_NOT_VPN)};
        LinkedHashMap linkedHashMap = new LinkedHashMap(x65.q0(16));
        x65.s0(linkedHashMap, pw5VarArr);
        linkedHashMap.put(17, zzqi.NET_CAPABILITY_CAPTIVE_PORTAL);
        linkedHashMap.put(16, zzqi.NET_CAPABILITY_VALIDATED);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            linkedHashMap.put(18, zzqi.NET_CAPABILITY_NOT_ROAMING);
            linkedHashMap.put(19, zzqi.NET_CAPABILITY_FOREGROUND);
            linkedHashMap.put(20, zzqi.NET_CAPABILITY_NOT_CONGESTED);
            linkedHashMap.put(21, zzqi.NET_CAPABILITY_NOT_SUSPENDED);
        }
        if (i >= 29) {
            linkedHashMap.put(23, zzqi.NET_CAPABILITY_MCX);
        }
        if (i >= 30) {
            linkedHashMap.put(25, zzqi.NET_CAPABILITY_TEMPORARILY_NOT_METERED);
        }
        if (i >= 31) {
            linkedHashMap.put(32, zzqi.NET_CAPABILITY_HEAD_UNIT);
            linkedHashMap.put(29, zzqi.NET_CAPABILITY_ENTERPRISE);
        }
        if (i >= 33) {
            linkedHashMap.put(35, zzqi.NET_CAPABILITY_PRIORITIZE_BANDWIDTH);
            linkedHashMap.put(34, zzqi.NET_CAPABILITY_PRIORITIZE_LATENCY);
            linkedHashMap.put(33, zzqi.NET_CAPABILITY_MMTEL);
        }
        return linkedHashMap;
    }
}
