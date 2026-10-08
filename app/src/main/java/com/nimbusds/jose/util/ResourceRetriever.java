package com.nimbusds.jose.util;

import java.io.IOException;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface ResourceRetriever {
    Resource retrieveResource(URL url) throws IOException;
}
