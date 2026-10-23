package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hp7 extends ip7 {
    @Override // java.util.concurrent.Callable
    public final Object call() throws IOException {
        int i;
        String strA = a(true);
        if (strA == null) {
            i = 1;
        } else {
            try {
                i = Integer.parseInt(strA);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }
        return Integer.valueOf(i);
    }
}
