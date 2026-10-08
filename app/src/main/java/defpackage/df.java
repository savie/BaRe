package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class df {
    public final int a;
    public final oe b;
    public final me c;
    public final String d;

    public df(oe oeVar, me meVar, String str) {
        this.b = oeVar;
        this.c = meVar;
        this.d = str;
        this.a = Arrays.hashCode(new Object[]{oeVar, meVar, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof df)) {
            return false;
        }
        df dfVar = (df) obj;
        return x13.m(this.b, dfVar.b) && x13.m(this.c, dfVar.c) && x13.m(this.d, dfVar.d);
    }

    public final int hashCode() {
        return this.a;
    }
}
