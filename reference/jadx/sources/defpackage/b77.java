package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b77 extends n67 {
    public final /* synthetic */ AtomicReferenceArray g;

    public b77(long j, b77 b77Var, int i) {
        super(j, b77Var, i);
        this.g = new AtomicReferenceArray(a77.f);
    }

    @Override // defpackage.n67
    public final int l() {
        return a77.f;
    }

    @Override // defpackage.n67
    public final void m(int i, ox1 ox1Var) {
        this.g.set(i, a77.e);
        n();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.e + ", hashCode=" + hashCode() + ']';
    }
}
