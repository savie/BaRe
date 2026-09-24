package defpackage;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ap6 {
    public final long a;
    public final AtomicReference b;
    public final AtomicLong c;
    public final AtomicReference d;

    public ap6(AtomicReference atomicReference) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        AtomicReference atomicReference2 = new AtomicReference(Boolean.FALSE);
        AtomicLong atomicLong = new AtomicLong(0L);
        this.a = jElapsedRealtime;
        this.b = atomicReference2;
        this.c = atomicLong;
        this.d = atomicReference;
    }

    public final long a() {
        return SystemClock.elapsedRealtime() - this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ap6)) {
            return false;
        }
        ap6 ap6Var = (ap6) obj;
        return this.a == ap6Var.a && pe4.d(this.b, ap6Var.b) && pe4.d(this.c, ap6Var.c) && pe4.d(this.d, ap6Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RootSbaOperation(queuedElapsedRealtime=" + this.a + ", cancelled=" + this.b + ", completedElapsedRealtime=" + this.c + ", result=" + this.d + ")";
    }
}
