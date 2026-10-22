package defpackage;

import java.io.InputStream;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y4 extends g67 {
    public final Object k;

    public y4(InputStream inputStream) {
        Objects.requireNonNull(inputStream, "origin");
        this.k = inputStream;
    }

    public final String toString() {
        return getClass().getSimpleName() + "[" + this.k.toString() + "]";
    }
}
