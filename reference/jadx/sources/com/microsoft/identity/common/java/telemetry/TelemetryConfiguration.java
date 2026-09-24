package com.microsoft.identity.common.java.telemetry;

import defpackage.y77;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class TelemetryConfiguration implements Serializable {

    @y77("pii_enabled")
    private boolean mPiiEnabled = false;

    @y77("notify_on_failure_only")
    private boolean mNotifyOnFailureOnly = true;

    @y77("debug_enabled")
    private boolean mDebugEnabled = false;

    public final boolean isDebugEnabled() {
        return this.mDebugEnabled;
    }

    public final boolean isPiiEnabled() {
        return this.mPiiEnabled;
    }
}
