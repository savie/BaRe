package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ic implements oc {
    public final bc a;
    public final bc b;

    public ic(bc bcVar, bc bcVar2) {
        this.a = bcVar;
        this.b = bcVar2;
    }

    @Override // defpackage.oc
    public final yl0 n() {
        return new ck7((xh3) this.a.n(), (xh3) this.b.n());
    }

    @Override // defpackage.oc
    public final List p() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // defpackage.oc
    public final boolean q() {
        return this.a.q() && this.b.q();
    }
}
