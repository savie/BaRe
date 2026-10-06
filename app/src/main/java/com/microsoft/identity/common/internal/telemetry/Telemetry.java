package com.microsoft.identity.common.internal.telemetry;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.microsoft.identity.common.logging.Logger;
import defpackage.c6;
import defpackage.jd4;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class Telemetry extends com.microsoft.identity.common.java.telemetry.Telemetry {
    public static final /* synthetic */ int a = 0;
    private static final Telemetry instance = new Telemetry();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class Builder {
        private Boolean mIsDebugging;
        private AndroidTelemetryContext mTelemetryContext;

        public final void build() throws IllegalArgumentException {
            com.microsoft.identity.common.java.telemetry.Telemetry.Builder builder = new com.microsoft.identity.common.java.telemetry.Telemetry.Builder();
            this.mIsDebugging.booleanValue();
            com.microsoft.identity.common.java.telemetry.Telemetry.access$300(builder);
            Telemetry unused = Telemetry.instance;
        }

        /* JADX WARN: Code duplicated, block: B:25:0x00bb  */
        public final void withContext(Context context) {
            String str;
            String string;
            int i = Telemetry.a;
            if (context == null) {
                c6.f("Context must not be null.");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                c6.f("Application context must not be null.");
                return;
            }
            AndroidTelemetryPropertiesCache androidTelemetryPropertiesCache = new AndroidTelemetryPropertiesCache(applicationContext);
            AndroidTelemetryContext androidTelemetryContext = new AndroidTelemetryContext();
            androidTelemetryContext.put("Microsoft.MSAL.device_guid", androidTelemetryPropertiesCache.getOrCreateRandomStableDeviceId());
            androidTelemetryContext.put("Microsoft.MSAL.time_zone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
                long jR = jd4.r(packageInfo);
                ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
                try {
                    if (applicationInfo != null) {
                        str = applicationInfo.packageName;
                        int i2 = applicationInfo.labelRes;
                        if (i2 == 0) {
                            CharSequence charSequence = applicationInfo.nonLocalizedLabel;
                            if (charSequence != null) {
                                string = charSequence.toString();
                            }
                        } else {
                            string = applicationContext.getString(i2);
                        }
                        String str2 = packageInfo.versionName;
                        String strValueOf = String.valueOf(jR);
                        androidTelemetryContext.put("Microsoft.MSAL.application_name", string);
                        androidTelemetryContext.put("Microsoft.MSAL.application_package", str);
                        androidTelemetryContext.put("Microsoft.MSAL.application_version", str2);
                        androidTelemetryContext.put("Microsoft.MSAL.application_build", strValueOf);
                        String str3 = Build.MANUFACTURER;
                        String str4 = Build.MODEL;
                        String str5 = Build.DEVICE;
                        androidTelemetryContext.put("Microsoft.MSAL.device_manufacturer", str3);
                        androidTelemetryContext.put("Microsoft.MSAL.device_model", str4);
                        androidTelemetryContext.put("Microsoft.MSAL.device_name", str5);
                        String str6 = Build.VERSION.RELEASE;
                        androidTelemetryContext.put("Microsoft.MSAL.os_name", "android");
                        androidTelemetryContext.put("Microsoft.MSAL.os_version", str6);
                        androidTelemetryContext.put("Microsoft.MSAL.security_patch", Build.VERSION.SECURITY_PATCH);
                        this.mTelemetryContext = androidTelemetryContext;
                        this.mIsDebugging = Boolean.valueOf((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 2) != 0);
                        return;
                    }
                    str = "";
                    this.mIsDebugging = Boolean.valueOf((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 2) != 0);
                    return;
                } catch (PackageManager.NameNotFoundException unused) {
                    int i3 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.warn("Telemetry:withContext", "The application is not found from PackageManager.");
                    this.mIsDebugging = Boolean.FALSE;
                    return;
                }
                string = str;
                String str7 = packageInfo.versionName;
                String strValueOf2 = String.valueOf(jR);
                androidTelemetryContext.put("Microsoft.MSAL.application_name", string);
                androidTelemetryContext.put("Microsoft.MSAL.application_package", str);
                androidTelemetryContext.put("Microsoft.MSAL.application_version", str7);
                androidTelemetryContext.put("Microsoft.MSAL.application_build", strValueOf2);
            } catch (PackageManager.NameNotFoundException unused2) {
                int i4 = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("AndroidTelemetryContext:addApplicationInfo", "Unable to find the app's package name from PackageManager.");
            }
            String str8 = Build.MANUFACTURER;
            String str9 = Build.MODEL;
            String str10 = Build.DEVICE;
            androidTelemetryContext.put("Microsoft.MSAL.device_manufacturer", str8);
            androidTelemetryContext.put("Microsoft.MSAL.device_model", str9);
            androidTelemetryContext.put("Microsoft.MSAL.device_name", str10);
            String str11 = Build.VERSION.RELEASE;
            androidTelemetryContext.put("Microsoft.MSAL.os_name", "android");
            androidTelemetryContext.put("Microsoft.MSAL.os_version", str11);
            androidTelemetryContext.put("Microsoft.MSAL.security_patch", Build.VERSION.SECURITY_PATCH);
            this.mTelemetryContext = androidTelemetryContext;
        }
    }

    static {
        com.microsoft.identity.common.java.telemetry.Telemetry.getInstance();
    }

    @Override // com.microsoft.identity.common.java.telemetry.Telemetry
    public final void flush(String str) {
        throw null;
    }
}
