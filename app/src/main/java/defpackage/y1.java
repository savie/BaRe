package defpackage;

import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y1 extends z0 implements Iterable {
    public final HashSet b;
    public byte[] c;

    public y1(HashSet hashSet, byte[] bArr) {
        super(m2.l);
        this.b = hashSet;
        this.c = bArr;
    }

    @Override // defpackage.z0
    public final Object getValue() {
        return new HashSet(this.b);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new HashSet(this.b).iterator();
    }
}
