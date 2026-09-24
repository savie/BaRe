package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mv7 {
    public final int a;
    public final int b;
    public final int c;
    public final mt3 d;

    public mv7(int i, int i2, int i3, mt3 mt3Var) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = mt3Var;
    }

    public final int a(boolean z) {
        if (this.c == 0) {
            return 0;
        }
        return z ? this.b : this.a;
    }
}
