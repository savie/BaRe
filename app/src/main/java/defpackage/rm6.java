package defpackage;

import java.time.Duration;
import org.swiftapps.swiftbackup.folders.data.RestoreResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rm6 extends RestoreResult {
    public final int a;
    public final long b;
    public final Duration c;

    public rm6(int i, long j, Duration duration) {
        super(null);
        this.a = i;
        this.b = j;
        this.c = duration;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rm6)) {
            return false;
        }
        rm6 rm6Var = (rm6) obj;
        return this.a == rm6Var.a && this.b == rm6Var.b && pe4.d(this.c, rm6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + xs1.f(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return "Success(filesRestored=" + this.a + ", totalBytes=" + this.b + ", duration=" + this.c + ")";
    }
}
