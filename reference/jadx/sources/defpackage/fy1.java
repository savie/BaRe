package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fy1 {
    public long a;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fy1) && this.a == ((fy1) obj).a;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.a));
    }

    public final String toString() {
        return Long.toString(this.a);
    }
}
