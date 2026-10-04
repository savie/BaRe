package com.bare.wifi;

import android.net.wifi.WifiManager;
import android.os.Build;

import java.util.List;

/** App-side Wi-Fi backup owner; provider/cloud transfer stays behind the cloud boundary. */
public final class WifiBackupCoordinator {
    private final WifiManager wifiManager;
    private final WifiLocalEncryptedRepository localRepository;

    public WifiBackupCoordinator(WifiManager wifiManager, WifiLocalEncryptedRepository localRepository) {
        if (wifiManager == null) throw new IllegalArgumentException("wifiManager");
        if (localRepository == null) throw new IllegalArgumentException("localRepository");
        this.wifiManager = wifiManager;
        this.localRepository = localRepository;
    }

    public Result backupToLocal() {
        List<WifiCredentialState> items = null;
        if (Build.VERSION.SDK_INT >= 30) {
            WifiRootXmlRepository.Result root = new WifiRootXmlRepository().read();
            if (root.isSuccess() && !root.getItems().isEmpty()) {
                items = root.getItems();
            } else {
                ShizukuWifiNetworkRepository.Result shizuku = new ShizukuWifiNetworkRepository().read();
                if (shizuku.isSuccess() && !shizuku.getItems().isEmpty()) items = shizuku.getItems();
            }
        }
        if (items == null || items.isEmpty()) {
            WifiSystemNetworkRepository.Result legacy = new WifiSystemNetworkRepository(wifiManager).read();
            if (legacy.isSuccess()) items = legacy.getItems();
        }
        if (items == null) return Result.failure(WifiAccessContract.Failure.ACCESS_UNAVAILABLE);
        WifiLocalEncryptedRepository.Result saved = localRepository.write(items);
        return saved.isSuccess()
                ? Result.success(saved.getItems().size())
                : Result.failure(saved.getFailure());
    }

    public boolean deleteLocalBackup() {
        return localRepository.delete();
    }

    public static final class Result {
        private final int networkCount;
        private final WifiAccessContract.Failure failure;
        private Result(int networkCount, WifiAccessContract.Failure failure) {
            this.networkCount = networkCount;
            this.failure = failure;
        }
        static Result success(int count) { return new Result(count, WifiAccessContract.Failure.NONE); }
        static Result failure(WifiAccessContract.Failure failure) { return new Result(0, failure); }
        public int getNetworkCount() { return networkCount; }
        public WifiAccessContract.Failure getFailure() { return failure; }
        public boolean isSuccess() { return failure == WifiAccessContract.Failure.NONE; }
    }
}
