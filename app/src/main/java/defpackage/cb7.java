package defpackage;

import java.io.IOException;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cb7 {
    public int a;
    public long b;
    public long c;
    public long d;
    public long e;
    public int f;
    public BitSet g;
    public int h;
    public int i;

    public final void a(int i) throws IOException {
        int i2 = this.i;
        if (i2 > 0 && this.f == 0) {
            y5.m("archive with entries but no folders");
        } else {
            if (i2 > this.e) {
                y5.m("archive doesn't contain enough substreams for entries");
                return;
            }
            long jB = b() / 1024;
            if (i < jB) {
                throw new zb5(i, jB);
            }
        }
    }

    public final long b() {
        int i = this.a;
        int i2 = this.f;
        long j = (this.b * 22) + (((long) i2) * 30) + (((long) i) * 16) + ((long) (i / 8));
        long j2 = this.c;
        long j3 = (j2 * 8) + (((this.d - j2) + ((long) i2)) * 8) + ((j2 - ((long) i2)) * 16) + j;
        int i3 = this.h;
        return ((((long) i3) * 100) + j3 + ((long) ((i3 * 4) + (i * 8) + (i2 * 8)))) * 2;
    }

    public final String toString() {
        return String.format("Archive with %,d entries in %,d folders, estimated size %,d KiB.", Integer.valueOf(this.h), Integer.valueOf(this.f), Long.valueOf(b() / 1024));
    }
}
