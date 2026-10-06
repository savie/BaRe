package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kw0 implements Closeable {
    public nw0 a;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.a != null) {
            this.a = null;
        } else {
            l0.e("not attached to a buffer");
        }
    }
}
