package defpackage;

import java.security.interfaces.ECKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.concurrent.ArrayBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h16 extends j16 implements ECKey {
    public final ECParameterSpec e;

    public h16(vh7 vh7Var, vo4 vo4Var, ECParameterSpec eCParameterSpec, char[] cArr) {
        super(vh7Var, vo4Var, cArr);
        this.e = eCParameterSpec;
    }

    public final byte[] c(vz0 vz0Var, ECPoint eCPoint) {
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        vz0Var.invoke(new u06(this, arrayBlockingQueue, eCPoint));
        return (byte[]) ((cn6) arrayBlockingQueue.take()).b();
    }

    @Override // java.security.interfaces.ECKey
    public final ECParameterSpec getParams() {
        return this.e;
    }
}
