package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ie6 implements Iterable {
    public final long a;
    public final int b;

    public ie6(int i) {
        int i2 = i + 1;
        int iFloor = (int) Math.floor(Math.log(i2) / Math.log(2.0d));
        this.b = iFloor;
        this.a = (((long) Math.pow(2.0d, iFloor)) - 1) & ((long) i2);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new he6(this);
    }
}
