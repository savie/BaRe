package com.bare.wifi;

import android.content.AttributionSource;
import android.content.pm.PackageManager;
import android.net.wifi.WifiConfiguration;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;

import rikka.shizuku.Shizuku;
import rikka.shizuku.ShizukuBinderWrapper;
import rikka.shizuku.SystemServiceHelper;

/** Reference we7/li/d76/c76-compatible privileged Wi-Fi source. */
public final class ShizukuWifiNetworkRepository {
    private static final String WIFI_SERVICE = "wifi";
    private static final String WIFI_INTERFACE = "android.net.wifi.IWifiManager";
    private static final String WIFI_STUB = "android.net.wifi.IWifiManager$Stub";
    private static final String SHELL_PACKAGE = "com.android.shell";

    public Result read() {
        if (Build.VERSION.SDK_INT < 30) return Result.failure(WifiAccessContract.Failure.ACCESS_UNAVAILABLE);
        try {
            if (!Shizuku.pingBinder()) return Result.failure(WifiAccessContract.Failure.SHIZUKU_STOPPED);
            if (Shizuku.checkSelfPermission() != PackageManager.PERMISSION_GRANTED) {
                return Result.failure(WifiAccessContract.Failure.PERMISSION_DENIED);
            }
            HiddenApiAccess.exemptWifiApis();
            IBinder wifiBinder = SystemServiceHelper.getSystemService(WIFI_SERVICE);
            if (wifiBinder == null) return Result.failure(WifiAccessContract.Failure.ACCESS_UNAVAILABLE);

            Class<?> stub = Class.forName(WIFI_STUB);
            Class<?> iface = Class.forName(WIFI_INTERFACE);
            Method asInterface = stub.getMethod("asInterface", IBinder.class);
            Object wifiService = asInterface.invoke(null, new ShizukuBinderWrapper(wifiBinder));
            if (wifiService == null) return Result.failure(WifiAccessContract.Failure.ACCESS_UNAVAILABLE);

            Object slice;
            if (Build.VERSION.SDK_INT >= 33) {
                Method method = iface.getMethod("getPrivilegedConfiguredNetworks", String.class, String.class, Bundle.class);
                Bundle attribution = new Bundle();
                AttributionSource source = new AttributionSource.Builder(Shizuku.getUid())
                        .setPackageName(SHELL_PACKAGE).setAttributionTag(SHELL_PACKAGE).build();
                attribution.putParcelable("EXTRA_PARAM_KEY_ATTRIBUTION_SOURCE", source);
                slice = method.invoke(wifiService, "shell", SHELL_PACKAGE, attribution);
            } else {
                Method method = iface.getMethod("getPrivilegedConfiguredNetworks", String.class, String.class);
                slice = method.invoke(wifiService, "shell", SHELL_PACKAGE);
            }

            if (slice == null) return Result.success(Collections.emptyList());
            Method getList = slice.getClass().getMethod("getList");
            Object value = getList.invoke(slice);
            if (!(value instanceof List)) return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);

            List<?> raw = (List<?>) value;
            List<WifiCredentialState> result = new ArrayList<>(raw.size());
            for (Object item : raw) {
                if (!(item instanceof WifiConfiguration)) return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
                WifiConfiguration config = (WifiConfiguration) item;
                if (config.SSID == null || config.SSID.isEmpty()) continue;
                result.add(new WifiCredentialState(
                        config.SSID,
                        config.preSharedKey == null ? "" : config.preSharedKey,
                        true,
                        config.hiddenSSID,
                        copy(config.allowedKeyManagement), copy(config.allowedProtocols),
                        copy(config.allowedPairwiseCiphers), copy(config.allowedGroupCiphers)));
            }
            return Result.success(result);
        } catch (SecurityException e) {
            return Result.failure(WifiAccessContract.Failure.PERMISSION_DENIED);
        } catch (Throwable e) {
            return Result.failure(WifiAccessContract.Failure.MAPPING_FAILED);
        }
    }

    private static BitSet copy(BitSet value) { return value == null ? null : (BitSet) value.clone(); }

    public static final class Result {
        private final List<WifiCredentialState> items;
        private final WifiAccessContract.Failure failure;
        private Result(List<WifiCredentialState> items, WifiAccessContract.Failure failure) { this.items = items; this.failure = failure; }
        public static Result success(List<WifiCredentialState> items) { return new Result(Collections.unmodifiableList(new ArrayList<>(items)), WifiAccessContract.Failure.NONE); }
        public static Result failure(WifiAccessContract.Failure failure) { return new Result(Collections.emptyList(), failure); }
        public List<WifiCredentialState> getItems() { return items; }
        public WifiAccessContract.Failure getFailure() { return failure; }
        public boolean isSuccess() { return failure == WifiAccessContract.Failure.NONE; }
    }

    private static final class HiddenApiAccess {
        private static boolean attempted;
        private static synchronized void exemptWifiApis() throws Exception {
            if (attempted) return;
            attempted = true;
            Class<?> vmRuntime = Class.forName("dalvik.system.VMRuntime");
            Method getRuntime = vmRuntime.getDeclaredMethod("getRuntime");
            getRuntime.setAccessible(true);
            Object runtime = getRuntime.invoke(null);
            Method exemptions = vmRuntime.getDeclaredMethod("setHiddenApiExemptions", String[].class);
            exemptions.setAccessible(true);
            exemptions.invoke(runtime, (Object) new String[]{
                    "Landroid/net/wifi/IWifiManager;",
                    "Landroid/content/pm/ParceledListSlice;",
                    "Lcom/android/wifi/x/com/android/modules/utils/"
            });
        }
    }
}
