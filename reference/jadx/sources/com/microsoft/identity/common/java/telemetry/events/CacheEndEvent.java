package com.microsoft.identity.common.java.telemetry.events;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class CacheEndEvent extends BaseEvent {
    public CacheEndEvent() {
        names("cache_end_event");
        put("Microsoft.MSAL.event_type", "Microsoft.MSAL.cache_event");
    }
}
