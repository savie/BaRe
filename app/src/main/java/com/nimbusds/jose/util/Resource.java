package com.nimbusds.jose.util;

import com.nimbusds.jose.shaded.jcip.Immutable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class Resource {
    private final String content;
    private final String contentType;

    public Resource(String str, String str2) {
        Objects.requireNonNull(str);
        this.content = str;
        this.contentType = str2;
    }

    public String getContent() {
        return this.content;
    }

    public String getContentType() {
        return this.contentType;
    }
}
