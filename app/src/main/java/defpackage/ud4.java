package defpackage;

import android.content.Context;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ud4 {
    public final Context a;
    public final List b;
    public final mt3 c;

    public ud4(Context context, List list) {
        zi1 zi1Var = new zi1(6);
        this.a = context;
        this.b = list;
        this.c = zi1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ud4)) {
            return false;
        }
        ud4 ud4Var = (ud4) obj;
        return this.a.equals(ud4Var.a) && this.b.equals(ud4Var.b) && this.c.equals(ud4Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.i(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return "Request(context=" + this.a + ", apkFiles=" + this.b + ", progressListener=" + this.c + ")";
    }
}
