package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum pe0 implements sx2 {
    MsvAvEOL(0),
    MsvAvNbComputerName(1),
    /* JADX INFO: Fake field, exist only in values array */
    MsvAvNbDomainName(2),
    MsvAvDnsComputerName(3),
    /* JADX INFO: Fake field, exist only in values array */
    MsvAvDnsDomainName(4),
    /* JADX INFO: Fake field, exist only in values array */
    MsvAvDnsTreeName(5),
    MsvAvFlags(6),
    MsvAvTimestamp(7),
    MsvAvSingleHost(8),
    MsvAvTargetName(9),
    MsvAvChannelBindings(10);

    public final long a;

    pe0(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
