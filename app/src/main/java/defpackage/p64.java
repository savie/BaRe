package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p64 extends q64 {
    @Override // defpackage.q64
    public final o64 b() {
        throw new ClassCastException("Cannot cast Inline instance to Block");
    }

    @Override // defpackage.q64
    public final boolean c() {
        return false;
    }

    public final String toString() {
        return "InlineImpl{name='" + this.a + "', start=" + this.b + ", end=" + this.d + ", attributes=" + this.c + '}';
    }
}
