package okhttp3;

import defpackage.bo4;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Cache$urls$1 implements Iterator<String>, bo4 {
    public boolean a;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        this.a = false;
        throw null;
    }

    @Override // java.util.Iterator
    public final String next() {
        this.a = false;
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.a) {
            throw new IllegalStateException("remove() before next()");
        }
        throw null;
    }
}
