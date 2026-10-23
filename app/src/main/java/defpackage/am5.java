package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class am5 extends s51 {
    public BigInteger d;
    public g1 e;
    public byte[] f;
    public byte[] g;

    public am5() {
        super(1, "NegTokenTarg");
    }

    @Override // defpackage.s51
    public final void c(r2 r2Var) throws fk7 {
        m2 m2Var = r2Var.a;
        int i = m2Var.b;
        if (i == 0) {
            z0 z0VarD = r2Var.d();
            if (z0VarD instanceof h0) {
                this.d = ((h0) z0VarD).c;
                return;
            }
            throw new fk7("Expected the negResult (ENUMERATED) contents, not: " + this.e);
        }
        if (i == 1) {
            z0 z0VarD2 = r2Var.d();
            if (z0VarD2 instanceof g1) {
                this.e = (g1) z0VarD2;
                return;
            } else {
                g84.g(z0VarD2, "Expected the supportedMech (OBJECT IDENTIFIER) contents, not: ");
                return;
            }
        }
        if (i == 2) {
            z0 z0VarD3 = r2Var.d();
            if (!(z0VarD3 instanceof k1)) {
                g84.g(z0VarD3, "Expected the responseToken (OCTET_STRING) contents, not: ");
                return;
            } else {
                byte[] bArr = ((k1) z0VarD3).b;
                this.f = Arrays.copyOf(bArr, bArr.length);
                return;
            }
        }
        if (i != 3) {
            throw new fk7(xs1.m(new StringBuilder("Unknown Object Tag "), m2Var.b, " encountered."));
        }
        z0 z0VarD4 = r2Var.d();
        if (!(z0VarD4 instanceof k1)) {
            g84.g(z0VarD4, "Expected the responseToken (OCTET_STRING) contents, not: ");
        } else {
            byte[] bArr2 = ((k1) z0VarD4).b;
            this.g = Arrays.copyOf(bArr2, bArr2.length);
        }
    }

    @Override // defpackage.s51
    public final void e(jw0 jw0Var) throws fk7 {
        ArrayList arrayList = new ArrayList();
        try {
            BigInteger bigInteger = this.d;
            d0 d0Var = d0.CONSTRUCTED;
            n2 n2Var = n2.CONTEXT_SPECIFIC;
            if (bigInteger != null) {
                arrayList.add(new r2(m2.b(n2Var, 0).a(d0Var), (z0) new h0(this.d), true));
            }
            if (this.e != null) {
                arrayList.add(new r2(m2.b(n2Var, 1).a(d0Var), (z0) this.e, true));
            }
            byte[] bArr = this.f;
            if (bArr != null && bArr.length > 0) {
                arrayList.add(new r2(m2.b(n2Var, 2).a(d0Var), (z0) new k1(this.f), true));
            }
            byte[] bArr2 = this.g;
            if (bArr2 != null && bArr2.length > 0) {
                arrayList.add(new r2(m2.b(n2Var, 3).a(d0Var), (z0) new k1(this.g), true));
            }
            f(jw0Var, new w1(arrayList));
        } catch (IOException e) {
            throw new fk7("Could not write NegTokenTarg to buffer", e);
        }
    }

    @Override // defpackage.s51
    public final void f(jw0 jw0Var, w1 w1Var) throws IOException {
        r2 r2Var = new r2(m2.b(n2.CONTEXT_SPECIFIC, 1).a(d0.CONSTRUCTED), (z0) w1Var, true);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        n1 n1Var = new n1(new nh4(5), byteArrayOutputStream);
        try {
            n1Var.a(r2Var);
            n1Var.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            jw0Var.i(byteArray, byteArray.length);
        } catch (Throwable th) {
            try {
                n1Var.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void g(byte[] bArr) throws fk7 {
        try {
            p0 p0Var = new p0(new g82(4), new hw0(new jw0(bArr, true, vw2.b)));
            try {
                b(p0Var.g());
                p0Var.close();
            } catch (Throwable th) {
                try {
                    p0Var.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            throw new fk7("Could not read NegTokenTarg from buffer", e);
        }
    }
}
