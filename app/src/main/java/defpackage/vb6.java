package defpackage;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vb6 extends fz2 {
    public final XmlPullParser a;
    public final String b;

    public vb6(XmlPullParser xmlPullParser) {
        this.b = xmlPullParser.getText();
        this.a = xmlPullParser;
    }

    @Override // defpackage.fz2, defpackage.bz2
    public final String getValue() {
        return this.b;
    }

    @Override // defpackage.fz2, defpackage.bz2
    public final boolean j() {
        return true;
    }
}
