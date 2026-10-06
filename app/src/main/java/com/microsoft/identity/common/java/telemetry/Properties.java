package com.microsoft.identity.common.java.telemetry;

import com.microsoft.identity.common.java.util.StringUtil;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class Properties {
    private ConcurrentHashMap<String, String> mProperties = new ConcurrentHashMap<>(16, 0.75f, 1);

    public final ConcurrentHashMap<String, String> getProperties() {
        return this.mProperties;
    }

    public void put(String str, String str2) {
        if (this.mProperties == null) {
            this.mProperties = new ConcurrentHashMap<>();
        }
        if (StringUtil.isNullOrEmpty(str) || StringUtil.isNullOrEmpty(str2)) {
            return;
        }
        this.mProperties.put(str, str2);
    }
}
