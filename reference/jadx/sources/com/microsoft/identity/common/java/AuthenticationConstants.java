package com.microsoft.identity.common.java;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AuthenticationConstants {
    public static final Set<String> DEFAULT_SCOPES;
    public static final Charset ENCODING_UTF8 = Charset.forName("UTF-8");
    public static final Charset CHARSET_UTF8 = Charset.forName("UTF-8");

    static {
        Charset.forName("ASCII");
        DEFAULT_SCOPES = Collections.unmodifiableSet(new HashSet(Arrays.asList("openid", "offline_access", "profile")));
    }
}
