package defpackage;

import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class cv3 extends fk4 {
    public static final int k = (ek4.WRITE_NUMBERS_AS_STRINGS.b | ek4.ESCAPE_NON_ASCII.b) | ek4.STRICT_DUPLICATE_DETECTION.b;
    public int b;
    public final c84 c;
    public boolean d;
    public v08 e;
    public boolean f;

    public cv3(int i, c84 c84Var) {
        this.b = i;
        this.c = c84Var;
        this.e = new v08(0, null, ek4.STRICT_DUPLICATE_DETECTION.a(i) ? new f41(this) : null);
        this.d = ek4.WRITE_NUMBERS_AS_STRINGS.a(i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f) {
            return;
        }
        this.c.close();
        this.f = true;
    }

    @Override // defpackage.fk4
    public final void g(Object obj) {
        v08 v08Var = this.e;
        if (v08Var != null) {
            v08Var.j = obj;
        }
    }

    @Override // defpackage.fk4
    public final boolean h(ek4 ek4Var) {
        return (this.b & ek4Var.b) != 0;
    }

    public final String k0(BigDecimal bigDecimal) {
        if (!ek4.WRITE_BIGDECIMAL_AS_PLAIN.a(this.b)) {
            return bigDecimal.toString();
        }
        int iScale = bigDecimal.scale();
        if (iScale >= -9999 && iScale <= 9999) {
            return bigDecimal.toPlainString();
        }
        a(String.format("Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]", Integer.valueOf(iScale), 9999, 9999));
        throw null;
    }

    public abstract void l0(String str);
}
