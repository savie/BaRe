package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yq0 {
    public int a;
    public int b;
    public String c;

    public static xq0 a() {
        xq0 xq0Var = new xq0();
        xq0Var.b = 0;
        xq0Var.c = "";
        return xq0Var;
    }

    public final String toString() {
        int i = this.a;
        int i2 = ta9.a;
        bc9 bc9Var = k99.c;
        Integer numValueOf = Integer.valueOf(i);
        return dj7.l("Response Code: ", (!bc9Var.containsKey(numValueOf) ? k99.RESPONSE_CODE_UNSPECIFIED : (k99) bc9Var.get(numValueOf)).toString(), ", Debug Message: ", this.c);
    }
}
