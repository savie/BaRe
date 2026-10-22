package defpackage;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ub6 extends ry2 {
    public final XmlPullParser a;
    public final String b;
    public final int c;

    public ub6(XmlPullParser xmlPullParser) {
        xmlPullParser.getNamespace();
        this.c = xmlPullParser.getLineNumber();
        xmlPullParser.getPrefix();
        this.b = xmlPullParser.getName();
        this.a = xmlPullParser;
    }

    @Override // defpackage.ry2, defpackage.bz2
    public final int G() {
        return this.c;
    }

    @Override // defpackage.bz2
    public final String getName() {
        return this.b;
    }
}
