package org.xmlpull.v1.builder.impl;

import org.xmlpull.v1.builder.XmlBuilderException;
import org.xmlpull.v1.builder.XmlNamespace;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class XmlNamespaceImpl implements XmlNamespace {
    private String namespaceName;
    private String prefix;

    public XmlNamespaceImpl(String str, String str2) {
        this.prefix = str;
        if (str2 == null) {
            throw new XmlBuilderException("namespace name can not be null");
        }
        this.namespaceName = str2;
    }

    @Override // org.xmlpull.v1.builder.XmlNamespace
    public String getNamespaceName() {
        return this.namespaceName;
    }

    @Override // org.xmlpull.v1.builder.XmlNamespace
    public String getPrefix() {
        return this.prefix;
    }
}
