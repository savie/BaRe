package com.microsoft.identity.client.configuration;

import com.microsoft.identity.client.Logger;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class LoggerConfiguration {

    @y77("log_level")
    private Logger.LogLevel mLogLevel;

    @y77("logcat_enabled")
    private boolean mLogcatEnabled;

    @y77("pii_enabled")
    private boolean mPiiEnabled;

    public final Logger.LogLevel getLogLevel() {
        return this.mLogLevel;
    }

    public final boolean isLogcatEnabled() {
        return this.mLogcatEnabled;
    }

    public final boolean isPiiEnabled() {
        return this.mPiiEnabled;
    }
}
