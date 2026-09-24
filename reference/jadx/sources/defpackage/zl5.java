package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class zl5 extends s51 {
    public final ArrayList d;
    public byte[] e;

    public zl5() {
        super(0, "NegTokenInit");
        this.d = new ArrayList();
    }

    @Override // defpackage.s51
    public void c(r2 r2Var) throws fk7 {
        z0 z0VarD = r2Var.d();
        m2 m2Var = r2Var.a;
        if (z0VarD.toString().contains("not_defined_in_RFC4178@please_ignore")) {
            return;
        }
        int i = m2Var.b;
        if (i == 0) {
            h(r2Var.d());
            return;
        }
        if (i != 1) {
            if (i == 2) {
                g(r2Var.d());
            } else if (i != 3) {
                throw new fk7(xs1.m(new StringBuilder("Unknown Object Tag "), m2Var.b, " encountered."));
            }
        }
    }

    @Override // defpackage.s51
    public final void e(jw0 jw0Var) throws fk7 {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = this.d;
            int size = arrayList2.size();
            d0 d0Var = d0.CONSTRUCTED;
            n2 n2Var = n2.CONTEXT_SPECIFIC;
            if (size > 0) {
                arrayList.add(new r2(m2.b(n2Var, 0).a(d0Var), (z0) new w1(new ArrayList(arrayList2)), true));
            }
            byte[] bArr = this.e;
            if (bArr != null && bArr.length > 0) {
                arrayList.add(new r2(m2.b(n2Var, 2).a(d0Var), (z0) new k1(this.e), true));
            }
            f(jw0Var, new w1(arrayList));
        } catch (IOException e) {
            throw new fk7("Unable to write NegTokenInit", e);
        }
    }

    public final void g(z0 z0Var) throws fk7 {
        if (!(z0Var instanceof k1)) {
            g84.g(z0Var, "Expected the MechToken (OCTET_STRING) contents, not: ");
        } else {
            byte[] bArr = ((k1) z0Var).b;
            this.e = Arrays.copyOf(bArr, bArr.length);
        }
    }

    public final void h(z0 z0Var) throws fk7 {
        if (!(z0Var instanceof w1)) {
            g84.g(z0Var, "Expected the MechTypeList (SEQUENCE) contents, not: ");
            return;
        }
        for (z0 z0Var2 : (w1) z0Var) {
            if (!(z0Var2 instanceof g1)) {
                g84.g(z0Var2, "Expected a MechType (OBJECT IDENTIFIER) as contents of the MechTypeList, not: ");
                return;
            }
            this.d.add((g1) z0Var2);
        }
    }
}
