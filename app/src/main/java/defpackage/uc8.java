package defpackage;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public interface uc8 extends XmlPullParser {
    default int a(String str, String str2) {
        int attributeCount = getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if (str2.equals(getAttributeName(i))) {
                return i;
            }
        }
        return -1;
    }

    int b(int i);

    boolean c(int i);
}
