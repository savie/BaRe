package defpackage;

import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ga3 {
    public final long a;

    public ga3(long j) {
        this.a = j;
    }

    public final long a() {
        return ((this.a - 116444736000000000L) * 100) / 1000000;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ga3.class == obj.getClass() && this.a == ((ga3) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return new Date(a()).toString();
    }
}
