package defpackage;

import java.io.ByteArrayInputStream;
import java.io.FilterInputStream;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p0 extends FilterInputStream implements Iterable {
    public static final l15 b = o15.b(p0.class);
    public final nh4 a;

    public p0(nh4 nh4Var, byte[] bArr) {
        super(new ByteArrayInputStream(bArr));
        this.a = nh4Var;
    }

    public final z0 g() {
        nh4 nh4Var = this.a;
        try {
            nh4Var.getClass();
            m2 m2VarM = nh4.m(this);
            l15 l15Var = b;
            l15Var.g(m2VarM, "Read ASN.1 tag {}");
            int iL = nh4.l(this);
            l15Var.g(Integer.valueOf(iL), "Read ASN.1 object length: {}");
            z0 z0VarC = m2VarM.c(nh4Var).C(m2VarM, nh4.n(iL, this));
            l15Var.D(z0VarC, "Read ASN.1 object: {}");
            return z0VarC;
        } catch (o1 e) {
            throw e;
        } catch (Exception e2) {
            throw new o1(e2, "Cannot parse ASN.1 object from stream", new Object[0]);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new n0(this, 0);
    }

    public p0(g82 g82Var, hw0 hw0Var) {
        super(hw0Var);
        this.a = g82Var;
    }
}
