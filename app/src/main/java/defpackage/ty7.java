package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ty7 extends cz7 {
    public final /* synthetic */ int c;
    public final boolean d;
    public final boolean e;

    /* JADX WARN: Illegal instructions before constructor call */
    public ty7(int i, int i2) {
        this.c = i2;
        switch (i2) {
            case 1:
                boolean z = (i & 1) == 0;
                boolean z2 = (i & 2) == 0;
                super(z, z2);
                this.d = z;
                this.e = z2;
                break;
            default:
                boolean z3 = (i & 1) == 0;
                boolean z4 = (i & 2) == 0;
                super(z3, z4);
                this.d = z3;
                this.e = z4;
                break;
        }
    }

    @Override // defpackage.cz7
    public final boolean b() {
        switch (this.c) {
            case 0:
                break;
        }
        return this.d;
    }

    @Override // defpackage.cz7
    public final boolean c() {
        switch (this.c) {
            case 0:
                break;
        }
        return this.e;
    }
}
