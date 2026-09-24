package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oi extends pi {
    public final int a;
    public final String b;
    public final Integer c;
    public final int d;
    public final boolean e;

    public oi(int i, String str, Integer num, int i2, boolean z, int i3) {
        num = (i3 & 4) != 0 ? null : num;
        z = (i3 & 16) != 0 ? true : z;
        this.a = i;
        this.b = str;
        this.c = num;
        this.d = i2;
        this.e = z;
    }

    @Override // defpackage.pi
    public final int a() {
        return this.a;
    }
}
