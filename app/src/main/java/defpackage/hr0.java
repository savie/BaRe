package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hr0 extends gr0 {
    public final long g(int i) throws IOException {
        if (i >= 0 && i <= 8) {
            return a(i);
        }
        y5.m(xs1.h(i, "Trying to read ", " bits, at most 8 are allowed"));
        return 0L;
    }
}
