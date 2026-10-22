package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class me4 {
    public final String a;

    public me4(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof me4) {
            return x13.m(this.a, ((me4) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        ib ibVar = new ib(this);
        ibVar.b(this.a, "token");
        return ibVar.toString();
    }
}
