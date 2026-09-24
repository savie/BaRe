package org.xmlpull.v1.wrapper;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;
import org.xmlpull.v1.wrapper.classic.StaticXmlPullParserWrapper;
import org.xmlpull.v1.wrapper.classic.StaticXmlSerializerWrapper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class XmlPullWrapperFactory {
    private static final boolean DEBUG = false;
    protected XmlPullParserFactory f;

    public XmlPullWrapperFactory(XmlPullParserFactory xmlPullParserFactory) throws XmlPullParserException {
        if (xmlPullParserFactory != null) {
            this.f = xmlPullParserFactory;
        } else {
            this.f = XmlPullParserFactory.newInstance();
        }
    }

    public static XmlPullWrapperFactory newInstance(String str, Class cls) throws XmlPullParserException {
        return new XmlPullWrapperFactory(XmlPullParserFactory.newInstance(str, cls));
    }

    public XmlPullParserFactory getFactory() throws XmlPullParserException {
        return this.f;
    }

    public boolean getFeature(String str) {
        return this.f.getFeature(str);
    }

    public boolean isNamespaceAware() {
        return this.f.isNamespaceAware();
    }

    public boolean isValidating() {
        return this.f.isValidating();
    }

    public XmlPullParserWrapper newPullParserWrapper() throws XmlPullParserException {
        return new StaticXmlPullParserWrapper(this.f.newPullParser());
    }

    public XmlSerializerWrapper newSerializerWrapper() throws XmlPullParserException {
        return new StaticXmlSerializerWrapper(this.f.newSerializer(), this);
    }

    public void setFeature(String str, boolean z) throws XmlPullParserException {
        this.f.setFeature(str, z);
    }

    public void setNamespaceAware(boolean z) {
        this.f.setNamespaceAware(z);
    }

    public void setValidating(boolean z) {
        this.f.setValidating(z);
    }

    public static XmlPullWrapperFactory newInstance(XmlPullParserFactory xmlPullParserFactory) throws XmlPullParserException {
        return new XmlPullWrapperFactory(xmlPullParserFactory);
    }

    public static XmlPullWrapperFactory newInstance() throws XmlPullParserException {
        return new XmlPullWrapperFactory(null);
    }

    public XmlPullParserWrapper newPullParserWrapper(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return new StaticXmlPullParserWrapper(xmlPullParser);
    }

    public XmlSerializerWrapper newSerializerWrapper(XmlSerializer xmlSerializer) throws XmlPullParserException {
        return new StaticXmlSerializerWrapper(xmlSerializer, this);
    }
}
