package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s51 {
    public final /* synthetic */ int a = 0;
    public int b;
    public String c;

    public s51(String str, int i) {
        this.c = str;
        this.b = i;
    }

    public abstract byte[] a();

    public void b(z0 z0Var) throws fk7 {
        int i = this.b;
        String str = this.c;
        if (z0Var instanceof r2) {
            r2 r2Var = (r2) z0Var;
            if (r2Var.a.b == i) {
                z0 z0VarD = r2Var.d();
                if (!(z0VarD instanceof w1)) {
                    throw new fk7("Expected a " + str + " (SEQUENCE), not: " + z0VarD);
                }
                for (z0 z0Var2 : (w1) z0VarD) {
                    if (!(z0Var2 instanceof r2)) {
                        throw new fk7("Expected an ASN.1 TaggedObject as " + str + " contents, not: " + z0Var2);
                    }
                    c((r2) z0Var2);
                }
                return;
            }
        }
        StringBuilder sbV = dj7.v("Expected to find the ", str, " (CHOICE [", i, "]) header, not: ");
        sbV.append(z0Var);
        throw new fk7(sbV.toString());
    }

    public abstract void c(r2 r2Var);

    public abstract void d(byte[] bArr, int i, int i2);

    public abstract void e(jw0 jw0Var);

    public void f(jw0 jw0Var, w1 w1Var) throws IOException {
        r2 r2Var = new r2(m2.b(n2.CONTEXT_SPECIFIC, this.b).a(d0.CONSTRUCTED), (z0) w1Var, true);
        ArrayList arrayList = new ArrayList();
        arrayList.add(mr5.a);
        arrayList.add(r2Var);
        r2 r2Var2 = new r2(m2.b(n2.APPLICATION, 0), (z0) new w1(arrayList), false);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        n1 n1Var = new n1(new nh4(5), byteArrayOutputStream);
        try {
            n1Var.a(r2Var2);
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

    public String toString() {
        switch (this.a) {
            case 2:
                return String.format("%s(0x%04x)", this.c, Integer.valueOf(this.b));
            default:
                return super.toString();
        }
    }

    public /* synthetic */ s51() {
    }

    public s51(int i, String str) {
        this.b = i;
        this.c = str;
    }
}
