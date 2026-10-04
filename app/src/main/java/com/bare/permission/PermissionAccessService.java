package com.bare.permission;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;

import androidx.core.content.ContextCompat;

import java.util.EnumMap;
import java.util.List;
import java.util.Map;

/**
 * Reference-shaped access-state reader for the Intro permission boundary.
 *
 * This service reads current Android capability state. Root/Shizuku grant
 * execution remains a separate downstream coordinator.
 */
public final class PermissionAccessService {
    private static final String GET_INSTALLED_APPS =
            "com.android.permission.GET_INSTALLED_APPS";

    private final Context context;

    public PermissionAccessService(Context context) {
        this.context = context.getApplicationContext();
    }

    public Map<PermissionCapability, PermissionState> read() {
        EnumMap<PermissionCapability, PermissionState> states =
                new EnumMap<>(PermissionCapability.class);

        states.put(PermissionCapability.STORAGE, storageState());
        states.put(PermissionCapability.NOTIFICATIONS, notificationState());
        states.put(PermissionCapability.INSTALLED_APPS, installedAppsState());
        states.put(PermissionCapability.ROOT_SHIZUKU, rootState());

        return states;
    }

    /**
     * Reference Intro readiness is based on storage + notification +
     * installed-app visibility. Root/Shizuku has its own coordinator/state
     * machine and is intentionally not folded into this boolean.
     */
    public boolean isReady() {
        return read().get(PermissionCapability.STORAGE).isReady()
                && read().get(PermissionCapability.NOTIFICATIONS).isReady()
                && read().get(PermissionCapability.INSTALLED_APPS).isReady();
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
        try {
            PackageManager pm = context.getPackageManager();
            pm.getPermissionInfo(GET_INSTALLED_APPS, 0);

            boolean granted = ContextCompat.checkSelfPermission(
                    context, GET_INSTALLED_APPS) == PackageManager.PERMISSION_GRANTED;

            /*
             * Reference dz5.k() also checks package visibility. A granted
             * custom permission is sufficient for the P4 state boundary;
             * OEM-specific inventory behavior stays downstream.
             */
            return new PermissionState(
                    PermissionCapability.INSTALLED_APPS,
                    granted
                            ? PermissionCurrentState.GRANTED
                            : PermissionCurrentState.DENIED,
                    granted ? PermissionResult.GRANTED : PermissionResult.NOT_REQUESTED,
                    !granted);
        } catch (PackageManager.NameNotFoundException e) {
            // Reference dz5.l() treats a missing custom permission as not applicable.
            return new PermissionState(
                    PermissionCapability.INSTALLED_APPS,
                    PermissionCurrentState.UNAVAILABLE,
                    PermissionResult.GRANTED,
                    false);
        } catch (Exception e) {
            return new PermissionState(
                    PermissionCapability.INSTALLED_APPS,
                    PermissionCurrentState.UNKNOWN,
                    PermissionResult.FAILED,
                    true);
        }
    }

    private PermissionState rootState() {
        /*
         * Reference intro.d uses an explicit root/Shizuku coordinator with
         * CHECKING_ROOT/AWAITING_SHIZUKU/GRANTING_PERMISSIONS states.
         * Detection/grant callbacks stay outside this P4 contract adapter.
         */
        boolean ready = context.getSharedPreferences(context.getPackageName() + "_preferences", Context.MODE_PRIVATE).getBoolean(RootPermissionCoordinator.PREF_ROOT_READY, false);
        return new PermissionState(PermissionCapability.ROOT_SHIZUKU,
                ready ? PermissionCurrentState.GRANTED : PermissionCurrentState.UNKNOWN,
                ready ? PermissionResult.GRANTED : PermissionResult.NOT_REQUESTED,
                !ready);
    }
}
