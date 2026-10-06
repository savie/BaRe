package com.microsoft.identity.common.internal.numberMatch;

import defpackage.ai6;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class NumberMatchHelper {
    public static final /* synthetic */ int a = 0;
    private static final ConcurrentHashMap<String, String> numberMatchMap = new ConcurrentHashMap<>();
    private static final ai6 guidRegex = new ai6("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$");
    private static final ai6 alphaNum8Regex = new ai6("^[A-Za-z0-9]{8}$");
    private static final ai6 twoDigitRegex = new ai6("^\\d{2}$");
}
