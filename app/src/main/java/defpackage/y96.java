package defpackage;

import java.util.EventObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y96 extends EventObject {
    public final int a;
    public final String b;
    public final String c;

    public y96(d23 d23Var, int i, String str) {
        super(d23Var);
        this.a = i;
        this.b = str;
        this.c = null;
    }

    public y96(d23 d23Var, String str, String str2) {
        super(d23Var);
        this.a = 0;
        this.b = str2;
        this.c = str;
    }
}
