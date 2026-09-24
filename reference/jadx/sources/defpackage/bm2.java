package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bm2 extends mm2 implements Iterable {
    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new am2(this);
    }

    public final String toString() {
        return "Directory{fileId=" + this.c + ", fileName='" + this.d.b() + "'}";
    }
}
