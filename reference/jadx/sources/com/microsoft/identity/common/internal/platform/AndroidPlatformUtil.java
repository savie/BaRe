package com.microsoft.identity.common.internal.platform;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.UserManager;
import com.microsoft.identity.common.adal.internal.net.DefaultConnectionService;
import com.microsoft.identity.common.java.commands.BaseCommand;
import com.microsoft.identity.common.java.commands.InteractiveTokenCommand;
import com.microsoft.identity.common.java.commands.parameters.InteractiveTokenCommandParameters;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.java.logging.Logger;
import com.microsoft.identity.common.java.util.IPlatformUtil;
import defpackage.f6;
import defpackage.l0;
import defpackage.q;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidPlatformUtil implements IPlatformUtil {
    private final Activity mActivity;
    private final Context mContext;

    public AndroidPlatformUtil(Context context, Activity activity) {
        if (context == null) {
            f6.n("mContext is marked non-null but is null");
            throw null;
        }
        this.mContext = context;
        this.mActivity = activity;
    }

    public static boolean isInManagedProfile(Context context) {
        if (context == null) {
            f6.n("appContext is marked non-null but is null");
            return false;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            return ((UserManager) context.getSystemService("user")).isManagedProfile();
        }
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        List<ComponentName> activeAdmins = devicePolicyManager.getActiveAdmins();
        if (activeAdmins != null) {
            Iterator<ComponentName> it = activeAdmins.iterator();
            while (it.hasNext()) {
                if (devicePolicyManager.isProfileOwnerApp(it.next().getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String getInstalledCompanyPortalVersion() {
        try {
            return this.mContext.getPackageManager().getPackageInfo("com.microsoft.windowsintune.companyportal", 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final void onReturnCommandResult(BaseCommand baseCommand) {
        if (baseCommand instanceof InteractiveTokenCommand) {
            Activity activity = this.mActivity;
            if (activity == null) {
                l0.e("Activity cannot be null in an interactive session.");
                return;
            }
            if (((InteractiveTokenCommandParameters) ((InteractiveTokenCommand) baseCommand).getParameters()).getHandleNullTaskAffinity()) {
                PackageManager packageManager = activity.getPackageManager();
                try {
                    ComponentName componentName = activity.getComponentName();
                    ActivityInfo activityInfo = componentName != null ? packageManager.getActivityInfo(componentName, 0) : null;
                    if (activityInfo != null && activityInfo.taskAffinity != null) {
                        return;
                    }
                    ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
                    if (activityManager != null) {
                        activityManager.moveTaskToFront(activity.getTaskId(), 0);
                    } else {
                        Logger.warn("AndroidPlatformUtil:optionallyReorderTasks", "ActivityManager was null; Unable to bring task for the foreground.");
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Logger.warn("AndroidPlatformUtil:hasTaskAffinity", "Unable to get ActivityInfo for activity provided to start authorization.");
                }
            }
        }
    }

    public final void throwIfNetworkNotAvailable(boolean z) throws ClientException {
        DefaultConnectionService defaultConnectionService = new DefaultConnectionService(this.mContext);
        if (z && defaultConnectionService.isNetworkDisabledFromOptimizations()) {
            q.i("device_network_not_available_doze_mode", "Connection is not available to refresh token because power optimization is enabled. And the device is in doze mode or the app is standby", null);
        } else {
            if (CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.DISABLE_NETWORK_CONNECTIVITY_CHECK) || defaultConnectionService.isConnectionAvailable()) {
                return;
            }
            q.i("device_network_not_available", "Connection is not available to refresh token", null);
        }
    }
}
