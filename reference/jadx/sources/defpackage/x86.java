package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x86 implements Serializable {
    public static final x86 n = new x86(Boolean.TRUE, null, null, null, null, null, null);
    public static final x86 p = new x86(Boolean.FALSE, null, null, null, null, null, null);
    public static final x86 q = new x86(null, null, null, null, null, null, null);
    public final Boolean a;
    public final String b;
    public final Integer c;
    public final String d;
    public final transient us2 e;
    public final sp5 f;
    public final sp5 k;

    public x86(Boolean bool, String str, Integer num, String str2, us2 us2Var, sp5 sp5Var, sp5 sp5Var2) {
        this.a = bool;
        this.b = str;
        this.c = num;
        this.d = (str2 == null || str2.isEmpty()) ? null : str2;
        this.e = us2Var;
        this.f = sp5Var;
        this.k = sp5Var2;
    }
}
