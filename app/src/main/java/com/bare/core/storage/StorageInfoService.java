package com.bare.core.storage;

import android.content.Context;
import android.os.StatFs;

import com.bare.core.model.StorageInfoLocal;
import com.bare.core.state.LocalState;

import org.json.JSONObject;

import java.io.File;

public final class StorageInfoService {
    private final LocalState localState;

    public StorageInfoService(Context context) {
        localState = new LocalState(context);
    }

    public StorageInfoLocal readCached() {
        String serialized = localState.getString(
                StorageInfoLocal.Success.SAVED_STORAGE_INFO_KEY,
                null);
        if (serialized == null || serialized.isEmpty()) {
            return null;
        }

        try {
            JSONObject value = new JSONObject(serialized);
            return new StorageInfoLocal.Success(
                    value.getLong("totalMemory"),
                    value.getLong("usedMemory"),
                    value.getInt("usedPercent"),
                    value.getLong("appUsage"),
                    (float) value.getDouble("appUsagePercent"));
        } catch (Exception ignored) {
            return null;
        }
    }

    /**
     * Computes the Reference-shaped storage snapshot for one volume.
     * Filesystem statistics are intentionally not executed by P5.5 verification.
     */
    public StorageInfoLocal read(File volumeRoot, long appUsage) {
        if (volumeRoot == null || !volumeRoot.exists()) {
            return StorageInfoLocal.Error.INSTANCE;
        }

        try {
            StatFs statFs = new StatFs(volumeRoot.getAbsolutePath());
            long total = statFs.getTotalBytes();
            long available = statFs.getAvailableBytes();
            long used = Math.max(0L, total - available);
            int usedPercent = total <= 0L
                    ? 0
                    : (int) Math.round((used * 100.0d) / total);
            float appUsagePercent = total <= 0L
                    ? 0.0f
                    : (float) ((appUsage * 100.0d) / total);

            StorageInfoLocal.Success result = new StorageInfoLocal.Success(
                    total, used, usedPercent, appUsage, appUsagePercent);
            persist(result);
            return result;
        } catch (RuntimeException ignored) {
            return StorageInfoLocal.Error.INSTANCE;
        }
    }

    public void persist(StorageInfoLocal.Success value) {
        if (value == null) {
            localState.remove(StorageInfoLocal.Success.SAVED_STORAGE_INFO_KEY);
            return;
        }

        JSONObject object = new JSONObject();
        try {
            object.put("totalMemory", value.getTotalMemory());
            object.put("usedMemory", value.getUsedMemory());
            object.put("usedPercent", value.getUsedPercent());
            object.put("appUsage", value.getAppUsage());
            object.put("appUsagePercent", value.getAppUsagePercent());
            localState.putString(
                    StorageInfoLocal.Success.SAVED_STORAGE_INFO_KEY,
                    object.toString());
        } catch (Exception ignored) {
            // Keep storage state bounded to the canonical local snapshot boundary.
        }
    }
}
