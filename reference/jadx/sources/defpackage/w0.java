package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w0 extends ol1 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ w0(nh4 nh4Var, int i) {
        super(nh4Var, 2);
        this.e = i;
    }

    @Override // defpackage.ol1
    public final void D(z0 z0Var, n1 n1Var) throws IOException {
        switch (this.e) {
            case 0:
                break;
            default:
                w1 w1Var = (w1) z0Var;
                byte[] bArr = w1Var.c;
                if (bArr == null) {
                    Iterator it = w1Var.iterator();
                    while (it.hasNext()) {
                        n1Var.a((z0) it.next());
                    }
                } else {
                    n1Var.write(bArr);
                }
                break;
        }
    }

    @Override // defpackage.ol1
    public final int E(z0 z0Var) throws IOException {
        switch (this.e) {
            case 0:
                return 0;
            default:
                w1 w1Var = (w1) z0Var;
                if (w1Var.c == null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    n1 n1Var = new n1((nh4) this.b, byteArrayOutputStream);
                    Iterator it = w1Var.iterator();
                    while (it.hasNext()) {
                        n1Var.a((z0) it.next());
                    }
                    w1Var.c = byteArrayOutputStream.toByteArray();
                }
                return w1Var.c.length;
        }
    }
}
