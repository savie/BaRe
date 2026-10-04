package com.bare.wifi;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.text.TextUtils;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;

public final class WifiSystemNetworkRepository {
    private final WifiManager wifiManager;

    public WifiSystemNetworkRepository(WifiManager wifiManager) {
        if (wifiManager == null) throw new IllegalArgumentException("wifiManager");
        this.wifiManager = wifiManager;
    }

    public Result read() {
        try {
            List<WifiConfiguration> configured = wifiManager.getConfiguredNetworks();
            if (configured == null) return Result.failure(WifiAccessContract.Failure.LEGACY_READ_FAILED);

            List<WifiCredentialState> result = new ArrayList<>(configured.size());
            for (WifiConfiguration config : configured) {
                if (config == null) continue;
                String ssid = !TextUtils.isEmpty(config.SSID) ? config.SSID : null;
                if (ssid == null) continue;
                String psk = config.preSharedKey == null ? "" : config.preSharedKey;
                result.add(new WifiCredentialState(
                        ssid, psk, true, config.hiddenSSID,
                        copy(config.allowedKeyManagement),
                        copy(config.allowedProtocols),
                        copy(config.allowedPairwiseCiphers),
                        copy(config.allowedGroupCiphers)));
            }
            return Result.success(result);
        } catch (SecurityException e) {
            return Result.failure(WifiAccessContract.Failure.ACCESS_UNAVAILABLE);
        } catch (RuntimeException e) {
            return Result.failure(WifiAccessContract.Failure.LEGACY_READ_FAILED);
        }
    }

    private static BitSet copy(BitSet value) {
        return value == null ? null : (BitSet) value.clone();
    }

    public static final class Result {
        private final List<WifiCredentialState> items;
        private final WifiAccessContract.Failure failure;

        private Result(List<WifiCredentialState> items, WifiAccessContract.Failure failure) {
            this.items = items;
            this.failure = failure;
        }

        public static Result success(List<WifiCredentialState> items) {
            return new Result(Collections.unmodifiableList(new ArrayList<>(items)), WifiAccessContract.Failure.NONE);
        }

        public static Result failure(WifiAccessContract.Failure failure) {
            return new Result(Collections.emptyList(), failure);
        }

        public List<WifiCredentialState> getItems() { return items; }
        public WifiAccessContract.Failure getFailure() { return failure; }
        public boolean isSuccess() { return failure == WifiAccessContract.Failure.NONE; }
    }
}