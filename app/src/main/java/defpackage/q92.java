package defpackage;

import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q92 implements Closeable {
    public ea6 a;
    public rb b;
    public ea6 c;
    public tr9 d;
    public ea6 e;
    public ea6 f;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((mw6) this.e.get()).close();
    }
}
