package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bg9 {
    public static final bg9 b;
    public static final bg9 c;
    public final Throwable a;

    static {
        if (ks9.d) {
            c = null;
            b = null;
        } else {
            c = new bg9(null);
            b = new bg9(null);
        }
    }

    public bg9(CancellationException cancellationException) {
        this.a = cancellationException;
    }
}
