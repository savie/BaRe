package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ni5 {
    public final int a;
    public final long b;
    public final long c;
    public final AtomicLong d = new AtomicLong(0);
    public final long e;

    public ni5(int i, long j, long j2) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.e = (j2 - j) + 1;
    }

    public final boolean a() {
        return this.d.get() == this.e;
    }
}
