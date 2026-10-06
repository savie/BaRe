package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv2 implements fb4 {
    public final boolean a;

    public iv2(boolean z) {
        this.a = z;
    }

    @Override // defpackage.fb4
    public final wn5 b() {
        return null;
    }

    @Override // defpackage.fb4
    public final boolean isActive() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.a ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
