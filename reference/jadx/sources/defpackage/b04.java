package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b04 {
    public final Integer a;
    public final String b;

    public b04(Integer num, String str) {
        this.a = num;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b04)) {
            return false;
        }
        b04 b04Var = (b04) obj;
        return pe4.d(this.a, b04Var.a) && this.b.equals(b04Var.b);
    }

    public final int hashCode() {
        Integer num = this.a;
        return this.b.hashCode() + ((num == null ? 0 : num.hashCode()) * 31);
    }

    public final String toString() {
        return "GoogleDriveBatchResponsePart(statusCode=" + this.a + ", bodyPreview=" + this.b + ")";
    }
}
