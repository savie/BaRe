package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eu5 {
    public static final eu5 d = new eu5(1, null, false);
    public static final eu5 e = new eu5(2, null, false);
    public final int a;
    public final oc6 b;
    public final boolean c;

    public eu5(int i, oc6 oc6Var, boolean z) {
        this.a = i;
        this.b = oc6Var;
        this.c = z;
        zm5.s(!z || i == 2);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("OperationSource{source=");
        int i = this.a;
        if (i != 1) {
            str = i != 2 ? "null" : "Server";
        } else {
            str = "User";
        }
        sb.append(str);
        sb.append(", queryParams=");
        sb.append(this.b);
        sb.append(", tagged=");
        sb.append(this.c);
        sb.append('}');
        return sb.toString();
    }
}
