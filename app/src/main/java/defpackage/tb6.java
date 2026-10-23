package defpackage;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tb6 extends iy2 {
    public final XmlPullParser a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public tb6(XmlPullParser xmlPullParser, int i) {
        this.b = xmlPullParser.getAttributeNamespace(i);
        this.c = xmlPullParser.getAttributePrefix(i);
        this.e = xmlPullParser.getAttributeValue(i);
        this.d = xmlPullParser.getAttributeName(i);
        this.a = xmlPullParser;
    }

    @Override // defpackage.iy2
    public final String a() {
        return this.d;
    }

    @Override // defpackage.iy2
    public final String b() {
        return this.c;
    }

    @Override // defpackage.iy2
    public final String c() {
        return this.b;
    }

    @Override // defpackage.iy2
    public final Object d() {
        return this.a;
    }

    @Override // defpackage.iy2
    public final String e() {
        return this.e;
    }

    @Override // defpackage.iy2
    public final boolean f() {
        return false;
    }
}
