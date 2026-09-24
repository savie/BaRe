package defpackage;

import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a2 extends z0 implements Iterable {
    public final byte[] b;

    public a2(m2 m2Var, byte[] bArr) {
        super(m2Var);
        this.b = bArr;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        if (this.a.d != d0.CONSTRUCTED) {
            return Collections.singletonList(this).iterator();
        }
        l2 l2Var = m2.m;
        nh4 nh4Var = new nh4(4);
        l2Var.getClass();
        return ((w1) new v0(nh4Var, 1).C(l2Var, this.b)).iterator();
    }
}
