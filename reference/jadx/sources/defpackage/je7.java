package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class je7 {
    public final Object a;

    public je7(Object obj) {
        this.a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && je7.class == obj.getClass() && Objects.equals(this.a, ((je7) obj).a);
    }

    public final int hashCode() {
        return Objects.hash(this.a, null);
    }
}
