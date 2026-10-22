package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mh9 extends se9 {
    public final String a;
    public final lh9 b;

    public mh9(String str, lh9 lh9Var) {
        this.a = str;
        this.b = lh9Var;
    }

    @Override // defpackage.bd9
    public final boolean a() {
        return this.b != lh9.d;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof mh9) {
            mh9 mh9Var = (mh9) obj;
            return mh9Var.a.equals(this.a) && mh9Var.b == this.b;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(mh9.class, this.a, this.b);
    }

    public final String toString() {
        return eq3.l("LegacyKmsAead Parameters (keyUri: ", this.a, ", variant: ", String.valueOf(this.b), ")");
    }
}
