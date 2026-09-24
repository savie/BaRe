package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v0 extends ol1 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v0(nh4 nh4Var, int i) {
        super(nh4Var, 1);
        this.e = i;
    }

    @Override // defpackage.ol1
    public final z0 C(m2 m2Var, byte[] bArr) {
        boolean z;
        switch (this.e) {
            case 0:
                if (bArr.length == 0) {
                    return new x0(m2.i, x0.c);
                }
                l0.e("ASN.1 NULL can not have a value");
                return null;
            default:
                ArrayList arrayList = new ArrayList();
                try {
                    p0 p0Var = new p0((nh4) this.b, bArr);
                    while (true) {
                        try {
                            try {
                                z = p0Var.available() > 0;
                            } catch (IOException unused) {
                            }
                            if (!z) {
                                p0Var.close();
                                return new w1(arrayList, bArr);
                            }
                            try {
                                arrayList.add(p0Var.g());
                            } catch (Exception e) {
                                throw new NoSuchElementException(e.getMessage());
                            }
                        } catch (Throwable th) {
                            try {
                                p0Var.close();
                                break;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                        throw new o1(e, "Unable to parse the ASN.1 SEQUENCE contents.", new Object[0]);
                    }
                } catch (IOException e2) {
                    throw new o1(e2, "Unable to parse the ASN.1 SEQUENCE contents.", new Object[0]);
                }
        }
    }
}
