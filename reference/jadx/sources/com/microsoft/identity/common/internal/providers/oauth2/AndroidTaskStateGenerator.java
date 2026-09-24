package com.microsoft.identity.common.internal.providers.oauth2;

import java.util.Locale;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidTaskStateGenerator {
    private final int taskId;

    public AndroidTaskStateGenerator(int i) {
        this.taskId = i;
    }

    public final String generate() {
        String str = UUID.randomUUID().toString() + "-" + UUID.randomUUID().toString();
        Locale locale = Locale.US;
        return this.taskId + ":" + str;
    }
}
