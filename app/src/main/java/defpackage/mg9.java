package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mg9 {
    protected transient int zza;

    public abstract void a(nh9 nh9Var);

    public final byte[] b() {
        try {
            int iD = d();
            byte[] bArr = new byte[iD];
            nh9 nh9Var = new nh9(bArr, iD);
            a(nh9Var);
            if (iD - nh9Var.d == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            e6.i(eq3.k("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
            return null;
        }
    }

    public abstract int c(jm9 jm9Var);

    public abstract int d();
}
