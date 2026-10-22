package defpackage;

import org.w3c.dom.Node;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wn2 extends iy2 {
    public final Node a;

    public wn2(Node node) {
        this.a = node;
    }

    @Override // defpackage.iy2
    public final String a() {
        return this.a.getLocalName();
    }

    @Override // defpackage.iy2
    public final String b() {
        return this.a.getPrefix();
    }

    @Override // defpackage.iy2
    public final String c() {
        return this.a.getNamespaceURI();
    }

    @Override // defpackage.iy2
    public final Object d() {
        return this.a;
    }

    @Override // defpackage.iy2
    public final String e() {
        return this.a.getNodeValue();
    }

    @Override // defpackage.iy2
    public final boolean f() {
        Node node = this.a;
        String prefix = node.getPrefix();
        return prefix != null ? prefix.startsWith("xml") : node.getLocalName().startsWith("xml");
    }
}
