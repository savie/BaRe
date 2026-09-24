package com.nimbusds.jose.util;

import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface RestrictedResourceRetriever extends ResourceRetriever {
    int getConnectTimeout();

    Map<String, List<String>> getHeaders();

    int getReadTimeout();

    int getSizeLimit();

    void setConnectTimeout(int i);

    void setHeaders(Map<String, List<String>> map);

    void setReadTimeout(int i);

    void setSizeLimit(int i);
}
