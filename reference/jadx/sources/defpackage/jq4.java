package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jq4 extends to4 {
    public final iq4[] c;
    public final /* synthetic */ kq4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jq4(kq4 kq4Var, int i, int i2) {
        super(i, i2, 1);
        this.d = kq4Var;
        this.c = new iq4[1 << (i + i2)];
        int i3 = 0;
        while (true) {
            iq4[] iq4VarArr = this.c;
            if (i3 >= iq4VarArr.length) {
                return;
            }
            iq4VarArr[i3] = new iq4(this);
            i3++;
        }
    }
}
