package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uq3 implements Comparable {
    public final int a;
    public final int b;
    public final String c;
    public final String d;

    public uq3(String str, int i, int i2, String str2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = i2;
        this.c = str;
        this.d = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        uq3 uq3Var = (uq3) obj;
        uq3Var.getClass();
        int i = this.a - uq3Var.a;
        return i == 0 ? this.b - uq3Var.b : i;
    }
}
