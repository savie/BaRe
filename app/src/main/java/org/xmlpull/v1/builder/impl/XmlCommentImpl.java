package org.xmlpull.v1.builder.impl;

import defpackage.c6;
import org.xmlpull.v1.builder.XmlComment;
import org.xmlpull.v1.builder.XmlContainer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class XmlCommentImpl implements XmlComment {
    private String content_;
    private XmlContainer owner_;

    public XmlCommentImpl(XmlContainer xmlContainer, String str) {
        this.owner_ = xmlContainer;
        this.content_ = str;
        if (str != null) {
            return;
        }
        c6.f("comment content can not be null");
        throw null;
    }

    @Override // org.xmlpull.v1.builder.XmlComment
    public String getContent() {
        return this.content_;
    }

    @Override // org.xmlpull.v1.builder.XmlComment
    public XmlContainer getParent() {
        return this.owner_;
    }
}
