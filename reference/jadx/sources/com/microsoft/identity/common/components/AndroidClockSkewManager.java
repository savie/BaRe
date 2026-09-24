package com.microsoft.identity.common.components;

import android.content.Context;
import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.internal.util.SharedPreferenceLongStorage;
import com.microsoft.identity.common.java.net.StatusCodeAndExceptionRetry;
import com.microsoft.identity.common.java.net.UrlConnectionHttpClient;
import com.microsoft.identity.common.java.util.IClockSkewManager;
import defpackage.f6;
import java.util.Calendar;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidClockSkewManager implements IClockSkewManager {
    public final /* synthetic */ int a = 1;
    private Object mClockSkewStorage;

    public AndroidClockSkewManager(Context context) {
        SharedPreferencesFileManager sharedPreferences = SharedPreferencesFileManager.getSharedPreferences(context, "com.microsoft.identity.client.clock_correction", null);
        SharedPreferenceLongStorage sharedPreferenceLongStorage = new SharedPreferenceLongStorage(sharedPreferences);
        if (sharedPreferences != null) {
            this.mClockSkewStorage = sharedPreferenceLongStorage;
        } else {
            f6.n("mManager is marked non-null but is null");
            throw null;
        }
    }

    public UrlConnectionHttpClient build() {
        return new UrlConnectionHttpClient((StatusCodeAndExceptionRetry) this.mClockSkewStorage);
    }

    public Date getAdjustedReferenceTime() {
        return new Date(Calendar.getInstance().getTime().getTime() - ((Long) ((SharedPreferenceLongStorage) this.mClockSkewStorage).get("skew")).longValue());
    }

    public void onTimestampReceived(long j) {
        ((SharedPreferenceLongStorage) this.mClockSkewStorage).put(Long.valueOf(Calendar.getInstance().getTime().getTime() - j), "skew");
    }

    public void retryPolicy(StatusCodeAndExceptionRetry statusCodeAndExceptionRetry) {
        this.mClockSkewStorage = statusCodeAndExceptionRetry;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "UrlConnectionHttpClient.UrlConnectionHttpClientBuilder(retryPolicy=" + ((StatusCodeAndExceptionRetry) this.mClockSkewStorage) + ", streamBufferSize=null, connectTimeoutMs=null, readTimeoutMs=null, connectTimeoutMsSupplier=null, readTimeoutMsSupplier=null, supportedSslProtocols=null, sslContext=null)";
            default:
                return super.toString();
        }
    }

    public /* synthetic */ AndroidClockSkewManager() {
    }
}
