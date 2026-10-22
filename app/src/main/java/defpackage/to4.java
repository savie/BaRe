package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class to4 {
    public final int a;
    public final int b;

    public to4(int i, int i2, int i3) {
        switch (i3) {
            case 1:
                this.a = i;
                this.b = (1 << i2) - 1;
                break;
            default:
                this.a = i;
                this.b = i2;
                break;
        }
    }

    public int a(int i, int i2) {
        int i3 = this.a;
        return (i >> (8 - i3)) + ((this.b & i2) << i3);
    }
}
