package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o69 {
    protected transient int zza;

    public abstract int a(e89 e89Var);

    public final x69 b() {
        try {
            int iA = ((k79) this).a(null);
            x69 x69Var = t69.b;
            byte[] bArr = new byte[iA];
            boolean z = c79.b;
            b79 b79Var = new b79(bArr, iA);
            ((k79) this).k(b79Var);
            if (b79Var.u() > 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            if (b79Var.u() >= 0) {
                return new x69(bArr);
            }
            throw new IllegalStateException("Wrote more data than expected.");
        } catch (IOException e) {
            e6.i(eq3.k("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
            return null;
        }
    }

    public final byte[] c() {
        try {
            int iA = ((k79) this).a(null);
            byte[] bArr = new byte[iA];
            boolean z = c79.b;
            b79 b79Var = new b79(bArr, iA);
            ((k79) this).k(b79Var);
            if (b79Var.u() > 0) {
                throw new IllegalStateException("Did not write as much data as expected.");
            }
            if (b79Var.u() >= 0) {
                return bArr;
            }
            throw new IllegalStateException("Wrote more data than expected.");
        } catch (IOException e) {
            e6.i(eq3.k("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }
}
