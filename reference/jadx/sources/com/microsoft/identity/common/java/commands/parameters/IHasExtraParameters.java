package com.microsoft.identity.common.java.commands.parameters;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface IHasExtraParameters {
    Iterable<Map.Entry<String, String>> getExtraParameters();

    void setExtraParameters(Iterable<Map.Entry<String, String>> iterable);
}
