package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zy7 extends cz7 {
    public final boolean c;
    public final boolean d;

    /* JADX WARN: Illegal instructions before constructor call */
    public zy7(int i) {
        boolean z = (i & 1) == 0;
        boolean z2 = (i & 2) == 0;
        super(z, z2);
        this.c = z;
        this.d = z2;
    }

    @Override // defpackage.cz7
    public final boolean b() {
        return this.c;
    }

    @Override // defpackage.cz7
    public final boolean c() {
        return this.d;
    }
}
