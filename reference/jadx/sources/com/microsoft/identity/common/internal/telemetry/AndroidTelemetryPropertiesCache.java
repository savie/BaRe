package com.microsoft.identity.common.internal.telemetry;

import android.content.Context;
import com.microsoft.identity.common.SharedPreferenceStringStorage;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.java.util.StringUtil;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class AndroidTelemetryPropertiesCache {
    private final SharedPreferenceStringStorage mStorage;

    public AndroidTelemetryPropertiesCache(Context context) {
        this.mStorage = new SharedPreferenceStringStorage(SharedPreferencesFileManager.getSharedPreferences(context, "com.microsoft.common.telemetry-properties", null));
    }

    public final synchronized String getOrCreateRandomStableDeviceId() {
        String string;
        string = (String) this.mStorage.get("device_id_guid");
        if (StringUtil.isNullOrEmpty(string)) {
            string = UUID.randomUUID().toString();
            this.mStorage.put(string, "device_id_guid");
        }
        return string;
    }
}
