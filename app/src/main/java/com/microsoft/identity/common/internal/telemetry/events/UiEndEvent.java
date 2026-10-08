package com.microsoft.identity.common.internal.telemetry.events;

import com.microsoft.identity.common.java.telemetry.events.BaseEvent;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class UiEndEvent extends BaseEvent {
    public UiEndEvent() {
        names("ui_end_event");
        put("Microsoft.MSAL.event_type", "Microsoft.MSAL.ui_event");
    }

    public final void isUserCancelled() {
        put("Microsoft.MSAL.user_cancel", Boolean.TRUE.toString());
    }
}
