package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dy8 implements uc8, XmlPullParser {
    public final XmlPullParser a;

    public dy8(XmlPullParser xmlPullParser) {
        Objects.requireNonNull(xmlPullParser);
        this.a = xmlPullParser;
    }

    @Override // defpackage.uc8
    public final int b(int i) throws XmlPullParserException {
        XmlPullParser xmlPullParser = this.a;
        try {
            return Integer.parseInt(xmlPullParser.getAttributeValue(i));
        } catch (Exception e) {
            throw new XmlPullParserException("Invalid attribute " + xmlPullParser.getAttributeName(i) + ": " + e);
        }
    }

    @Override // defpackage.uc8
    public final boolean c(int i) throws XmlPullParserException {
        XmlPullParser xmlPullParser = this.a;
        String attributeValue = xmlPullParser.getAttributeValue(i);
        if ("true".equalsIgnoreCase(attributeValue)) {
            return true;
        }
        if ("false".equalsIgnoreCase(attributeValue)) {
            return false;
        }
        throw new XmlPullParserException("Invalid attribute " + xmlPullParser.getAttributeName(i) + ": " + attributeValue);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void defineEntityReplacementText(String str, String str2) throws XmlPullParserException {
        this.a.defineEntityReplacementText(str, str2);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getAttributeCount() {
        return this.a.getAttributeCount();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeName(int i) {
        return this.a.getAttributeName(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeNamespace(int i) {
        return this.a.getAttributeNamespace(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributePrefix(int i) {
        return this.a.getAttributePrefix(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeType(int i) {
        return this.a.getAttributeType(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeValue(int i) {
        return this.a.getAttributeValue(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getColumnNumber() {
        return this.a.getColumnNumber();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getDepth() {
        return this.a.getDepth();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getEventType() {
        return this.a.getEventType();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean getFeature(String str) {
        return this.a.getFeature(str);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getInputEncoding() {
        return this.a.getInputEncoding();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getLineNumber() {
        return this.a.getLineNumber();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getName() {
        return this.a.getName();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespace(String str) {
        return this.a.getNamespace(str);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int getNamespaceCount(int i) {
        return this.a.getNamespaceCount(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespacePrefix(int i) {
        return this.a.getNamespacePrefix(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespaceUri(int i) {
        return this.a.getNamespaceUri(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getPositionDescription() {
        return this.a.getPositionDescription();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getPrefix() {
        return this.a.getPrefix();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final Object getProperty(String str) {
        return this.a.getProperty(str);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getText() {
        return this.a.getText();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final char[] getTextCharacters(int[] iArr) {
        return this.a.getTextCharacters(iArr);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean isAttributeDefault(int i) {
        return this.a.isAttributeDefault(i);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean isEmptyElementTag() {
        return this.a.isEmptyElementTag();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final boolean isWhitespace() {
        return this.a.isWhitespace();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int next() {
        return this.a.next();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int nextTag() {
        return this.a.nextTag();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String nextText() {
        return this.a.nextText();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final int nextToken() {
        return this.a.nextToken();
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void require(int i, String str, String str2) throws XmlPullParserException, IOException {
        this.a.require(i, str, str2);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setFeature(String str, boolean z) throws XmlPullParserException {
        this.a.setFeature(str, z);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setInput(Reader reader) throws XmlPullParserException {
        this.a.setInput(reader);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setProperty(String str, Object obj) throws XmlPullParserException {
        this.a.setProperty(str, obj);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final void setInput(InputStream inputStream, String str) throws XmlPullParserException {
        this.a.setInput(inputStream, str);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getAttributeValue(String str, String str2) {
        return this.a.getAttributeValue(str, str2);
    }

    @Override // org.xmlpull.v1.XmlPullParser
    public final String getNamespace() {
        return this.a.getNamespace();
    }
}
