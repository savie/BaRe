package com.microsoft.identity.common.java.dto;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CredentialType {
    private static final /* synthetic */ CredentialType[] $VALUES;
    public static final CredentialType AccessToken;
    public static final CredentialType AccessToken_With_AuthScheme;
    public static final List ID_TOKEN_TYPES;
    public static final CredentialType IdToken;
    public static final CredentialType PrimaryRefreshToken;
    public static final CredentialType RefreshToken;
    public static final CredentialType V1IdToken;

    static {
        CredentialType credentialType = new CredentialType("RefreshToken", 0);
        RefreshToken = credentialType;
        CredentialType credentialType2 = new CredentialType("AccessToken", 1);
        AccessToken = credentialType2;
        CredentialType credentialType3 = new CredentialType("IdToken", 2);
        IdToken = credentialType3;
        CredentialType credentialType4 = new CredentialType("V1IdToken", 3);
        V1IdToken = credentialType4;
        CredentialType credentialType5 = new CredentialType("Password", 4);
        CredentialType credentialType6 = new CredentialType("Cookie", 5);
        CredentialType credentialType7 = new CredentialType("Certificate", 6);
        CredentialType credentialType8 = new CredentialType("AccessToken_With_AuthScheme", 7);
        AccessToken_With_AuthScheme = credentialType8;
        CredentialType credentialType9 = new CredentialType("PrimaryRefreshToken", 8);
        PrimaryRefreshToken = credentialType9;
        $VALUES = new CredentialType[]{credentialType, credentialType2, credentialType3, credentialType4, credentialType5, credentialType6, credentialType7, credentialType8, credentialType9};
        ID_TOKEN_TYPES = Collections.unmodifiableList(Arrays.asList(credentialType3, credentialType4));
    }

    public static CredentialType valueOf(String str) {
        return (CredentialType) Enum.valueOf(CredentialType.class, str);
    }

    public static Set<String> valueSet() {
        HashSet hashSet = new HashSet();
        for (CredentialType credentialType : values()) {
            hashSet.add(credentialType.name());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    public static CredentialType[] values() {
        return (CredentialType[]) $VALUES.clone();
    }
}
