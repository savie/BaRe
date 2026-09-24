package com.microsoft.identity.common.internal.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.f6;
import defpackage.iw8;
import defpackage.w64;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class WorkProfileUtil {
    public static boolean checkIfIsInPersonalProfileButClouddpcWorkProfileAvailable(Context context) {
        if (context == null) {
            f6.n("context is marked non-null but is null");
            return false;
        }
        if (!CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_AM_API_WORKPROFILE_EXTRA_QUERY_PARAMETERS)) {
            return false;
        }
        try {
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("com.google.android.apps.work.clouddpc.ACTION_DETECT_WORK_PROFILE"), 0);
            return Build.VERSION.SDK_INT >= 30 ? listQueryIntentActivities.stream().anyMatch(new w64(1)) : listQueryIntentActivities.stream().anyMatch(new iw8());
        } catch (Exception e) {
            String str = "Received an exception while trying to check if clouddpc work profile is available: " + e.getMessage();
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.warn("WorkProfileUtil", str);
            return false;
        }
    }
}
