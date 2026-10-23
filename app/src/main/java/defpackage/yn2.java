package defpackage;

import org.w3c.dom.Node;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yn2 extends fz2 {
    public final Node a;

    public yn2(Node node) {
        this.a = node;
    }

    @Override // defpackage.fz2, defpackage.bz2
    public final String getValue() {
        return this.a.getNodeValue();
    }
}
