package defpackage;

import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uk6 {
    public final hi8 a;
    public long b;
    public int c;

    public uk6() {
        if (ge.k == null) {
            Pattern pattern = hi8.b;
            ge.k = new ge();
        }
        ge geVar = ge.k;
        if (hi8.c == null) {
            hi8.c = new hi8(geVar);
        }
        this.a = hi8.c;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    public final synchronized boolean a() {
        boolean z;
        if (this.c != 0) {
            this.a.a.getClass();
            if (System.currentTimeMillis() > this.b) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        return z;
    }

    public final synchronized void b(int i) {
        long jMin;
        if ((i >= 200 && i < 300) || i == 401 || i == 404) {
            synchronized (this) {
                this.c = 0;
            }
            return;
        }
        this.c++;
        synchronized (this) {
            if (i == 429 || (i >= 500 && i < 600)) {
                double dPow = Math.pow(2.0d, this.c);
                this.a.getClass();
                jMin = (long) Math.min(dPow + ((long) (Math.random() * 1000.0d)), 1800000.0d);
            } else {
                jMin = 86400000;
            }
            this.a.a.getClass();
            this.b = System.currentTimeMillis() + jMin;
        }
        return;
        throw th;
    }
}
