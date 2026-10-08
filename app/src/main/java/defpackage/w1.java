package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w1 extends z0 implements Iterable {
    public final ArrayList b;
    public byte[] c;

    public w1(ArrayList arrayList, byte[] bArr) {
        super(m2.m);
        this.b = arrayList;
        this.c = bArr;
    }

    @Override // defpackage.z0
    public final Object getValue() {
        return new ArrayList(this.b);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ArrayList(this.b).iterator();
    }

    public w1(ArrayList arrayList) {
        super(m2.m);
        this.b = arrayList;
    }
}
