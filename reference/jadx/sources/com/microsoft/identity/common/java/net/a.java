package com.microsoft.identity.common.java.net;

import com.microsoft.identity.common.java.telemetry.Telemetry;
import com.microsoft.identity.common.java.telemetry.events.HttpEndEvent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void accept(HttpResponse httpResponse) {
        HttpEndEvent httpEndEvent = new HttpEndEvent();
        httpEndEvent.names("http_end_event");
        httpEndEvent.put("Microsoft.MSAL.event_type", "Microsoft.MSAL.http_event");
        if (httpResponse != null) {
            httpEndEvent.put("Microsoft.MSAL.response_code", String.valueOf(httpResponse.getStatusCode()));
        }
        Telemetry.emit(httpEndEvent);
    }
}
