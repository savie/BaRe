package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tg9 extends se9 {
    public final int a;
    public final sg9 b;

    public tg9(int i, sg9 sg9Var) {
        this.a = i;
        this.b = sg9Var;
    }

    public static cd b() {
        cd cdVar = new cd(15, false);
        cdVar.b = null;
        cdVar.c = sg9.e;
        return cdVar;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.b != sg9.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof tg9)) {
            return false;
        }
        tg9 tg9Var = (tg9) obj;
        return tg9Var.a == this.a && tg9Var.b == this.b;
    }

    public final int hashCode() {
        return Objects.hash(tg9.class, Integer.valueOf(this.a), this.b);
    }

    public final String toString() {
        return u48.m("AesGcmSiv Parameters (variant: ", String.valueOf(this.b), ", ", this.a, "-byte key)");
    }
}
