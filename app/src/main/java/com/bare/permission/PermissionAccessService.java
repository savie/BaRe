package com.bare.permission;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;

import androidx.core.content.ContextCompat;

import java.util.EnumMap;
import java.util.Map;

/**
 * Reference-shaped access-state reader for the Intro permission boundary.
 *
 * This service only reads current Android capability state. Root/Shizuku grant
 * execution and OEM installed-app visibility engines remain downstream.
 */
public final class PermissionAccessService {
    private final Context context;

    public PermissionAccessService(Context context) {
        this.context = context.getApplicationContext();
    }

    public Map<PermissionCapability, PermissionState> read() {
        EnumMap<PermissionCapability, PermissionState> states =
                new EnumMap<>(PermissionCapability.class);

        states.put(
                PermissionCapability.STORAGE,
                storageState());
        states.put(
                PermissionCapability.NOTIFICATIONS,
                notificationState());
        states.put(
                PermissionCapability.INSTALLED_APPS,
                installedAppsState());
        states.put(
                PermissionCapability.ROOT_SHIZUKU,
                rootState());

        return states;
    }

    public boolean isReady() {
        for (PermissionState state : read().values()) {
            if (!state.isReady()) return false;
        }
        return true;
    }

    private PermissionState storageState() {
        boolean granted;
        if (Build.VERSION.SDK_INT >= 30) {
            granted = Environment.isExternalStorageManager();
        } else {
            granted = ContextCompat.checkSelfPermission(
                    context,
                    Manifest.permission.READ_EXTERNAL_STORAGE)
                    == PackageManager.PERMISSION_GRANTED;
        }
        return new PermissionState(
                PermissionCapability.STORAGE,
                granted
                        ? PermissionCurrentState.GRANTED
                        : PermissionCurrentState.DENIED,
                granted ? PermissionResult.GRANTED : PermissionResult.NOT_REQUESTED,
                !granted);
    }

    private PermissionState notificationState() {
        if (Build.VERSION.SDK_INT < 33) {
            return new PermissionState(
                    PermissionCapability.NOTIFICATIONS,
                    PermissionCurrentState.UNAVAILABLE,
                    PermissionResult.GRANTED,
                    false);
        }

        boolean granted = ContextCompat.checkSelfPermission(
                context,
                Manifest.permission.POST_NOTIFICATIONS)
                == PackageManager.PERMISSION_GRANTED;
        return new PermissionState(
                PermissionCapability.NOTIFICATIONS,
                granted
                        ? PermissionCurrentState.GRANTED
                        : PermissionCurrentState.DENIED,
                granted ? PermissionResult.GRANTED : PermissionResult.NOT_REQUESTED,
                !granted);
    }

    private PermissionState installedAppsState() {
        /*
         * Reference dz5.k() delegates to OEM/package-visibility capability
         * detection. That engine is intentionally not fabricated in P4.2.
         */
        return new PermissionState(
                PermissionCapability.INSTALLED_APPS,
                PermissionCurrentState.UNKNOWN,
                PermissionResult.NOT_REQUESTED,
                false);
    }

    private PermissionState rootState() {
        /*
         * Reference intro.d uses an explicit root/Shizuku coordinator with
         * CHECKING_ROOT/AWAITING_SHIZUKU/GRANTING_PERMISSIONS states.
         * Detection/grant callbacks stay outside this P4 contract adapter.
         */
        return new PermissionState(
                PermissionCapability.ROOT_SHIZUKU,
                PermissionCurrentState.UNKNOWN,
                PermissionResult.NOT_REQUESTED,
                false);
    }
}
