package defpackage;

import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xn2 extends ry2 {
    public final Element a;

    public xn2(Node node) {
        this.a = (Element) node;
    }

    @Override // defpackage.bz2
    public final String getName() {
        return this.a.getLocalName();
    }
}
