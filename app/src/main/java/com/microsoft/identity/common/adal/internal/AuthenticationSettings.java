package com.microsoft.identity.common.adal.internal;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthenticationSettings {
    private static final /* synthetic */ AuthenticationSettings[] $VALUES;
    public static final AuthenticationSettings INSTANCE;
    private AtomicReference<byte[]> mSecretKeyData;

    /* JADX INFO: Fake field, exist only in values array */
    AuthenticationSettings EF0;

    static {
        AuthenticationSettings authenticationSettings = new AuthenticationSettings("INSTANCE", 0);
        new HashMap(2);
        authenticationSettings.mSecretKeyData = new AtomicReference<>();
        INSTANCE = authenticationSettings;
        $VALUES = new AuthenticationSettings[]{authenticationSettings};
    }

    public static AuthenticationSettings valueOf(String str) {
        return (AuthenticationSettings) Enum.valueOf(AuthenticationSettings.class, str);
    }

    public static AuthenticationSettings[] values() {
        return (AuthenticationSettings[]) $VALUES.clone();
    }

    public final byte[] getSecretKeyData() {
        return this.mSecretKeyData.get();
    }
}
