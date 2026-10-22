package defpackage;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ah3 {
    public final CountDownLatch a;
    public oy1 b = null;

    public ah3(CountDownLatch countDownLatch) {
        this.a = countDownLatch;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ah3)) {
            return false;
        }
        ah3 ah3Var = (ah3) obj;
        return this.a.equals(ah3Var.a) && pe4.d(this.b, ah3Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        oy1 oy1Var = this.b;
        return iHashCode + (oy1Var == null ? 0 : oy1Var.hashCode());
    }

    public final String toString() {
        return "Dependency(latch=" + this.a + ", subscriber=" + this.b + ')';
    }
}
