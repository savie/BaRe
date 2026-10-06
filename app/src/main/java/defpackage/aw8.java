package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum aw8 implements sx2 {
    /* JADX INFO: Fake field, exist only in values array */
    WINDOWS_MINOR_VERSION_0(0),
    WINDOWS_MINOR_VERSION_1(1),
    /* JADX INFO: Fake field, exist only in values array */
    WINDOWS_MINOR_VERSION_2(2),
    /* JADX INFO: Fake field, exist only in values array */
    WINDOWS_MINOR_VERSION_3(3);

    public final long a;

    aw8(int i) {
        this.a = i;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
