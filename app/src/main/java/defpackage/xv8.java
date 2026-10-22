package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xv8 extends wv8 {
    @Override // defpackage.vv8, defpackage.y13
    public final void B(boolean z) {
        this.h.setSystemBarsAppearance(z ? 16 : 0, 16);
    }

    @Override // defpackage.vv8, defpackage.y13
    public final void C(boolean z) {
        this.h.setSystemBarsAppearance(z ? 8 : 0, 8);
    }

    @Override // defpackage.vv8, defpackage.y13
    public final boolean q() {
        return (this.h.getSystemBarsAppearance() & 8) != 0;
    }
}
