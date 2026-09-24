package org.xmlpull.v1.builder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public interface XmlProcessingInstruction extends XmlContainer {
    String getBaseUri();

    String getContent();

    XmlNotation getNotation();

    XmlContainer getParent();

    String getTarget();
}
