package org.xmlpull.v1;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.PrintStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class XmlPullParserException extends Exception {
    protected int column;
    protected Throwable detail;
    protected int row;

    public XmlPullParserException(String str, XmlPullParser xmlPullParser, Throwable th) {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        String string2 = "";
        stringBuffer.append(str == null ? "" : str.concat(TokenAuthenticationScheme.SCHEME_DELIMITER));
        if (xmlPullParser == null) {
            string = "";
        } else {
            StringBuffer stringBuffer2 = new StringBuffer("(position:");
            stringBuffer2.append(xmlPullParser.getPositionDescription());
            stringBuffer2.append(") ");
            string = stringBuffer2.toString();
        }
        stringBuffer.append(string);
        if (th != null) {
            StringBuffer stringBuffer3 = new StringBuffer("caused by: ");
            stringBuffer3.append(th);
            string2 = stringBuffer3.toString();
        }
        stringBuffer.append(string2);
        super(stringBuffer.toString());
        this.row = -1;
        this.column = -1;
        if (xmlPullParser != null) {
            this.row = xmlPullParser.getLineNumber();
            this.column = xmlPullParser.getColumnNumber();
        }
        this.detail = th;
    }

    public int getColumnNumber() {
        return this.column;
    }

    public Throwable getDetail() {
        return this.detail;
    }

    public int getLineNumber() {
        return this.row;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        if (this.detail == null) {
            super.printStackTrace();
            return;
        }
        synchronized (System.err) {
            PrintStream printStream = System.err;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(super.getMessage());
            stringBuffer.append("; nested exception is:");
            printStream.println(stringBuffer.toString());
            this.detail.printStackTrace();
        }
    }

    public XmlPullParserException(String str) {
        super(str);
        this.row = -1;
        this.column = -1;
    }
}
