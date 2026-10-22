package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class st6 extends ev6 {
    public st6(byte[] bArr) {
        super(new ut6(), bArr);
    }

    public st6 d() {
        if (((ut6) this.a).l != 0) {
            return new st6(this.b);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        dv6 dv6Var = this.a;
        sb.append(((ut6) dv6Var).e);
        sb.append(" with message id << ");
        return dj7.h(((ut6) dv6Var).f, " >>", sb);
    }

    public st6(zu6 zu6Var) {
        super(new ut6(), zu6Var);
    }
}
