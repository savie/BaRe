package org.xmlpull.v1.builder;

import java.io.IOException;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public interface XmlPullElement extends XmlElement {
    @Override // org.xmlpull.v1.builder.XmlElement
    Iterator children();

    boolean fullyConstructed();

    XmlPullParser nextChildAsPullParser() throws XmlPullParserException, IOException;

    XmlPullElement readNextChild() throws XmlPullParserException, IOException;

    boolean skipNextChild() throws XmlPullParserException, IOException;
}
