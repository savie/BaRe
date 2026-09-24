package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hd0 extends k22 {
    public final Context a;
    public final ba1 b;
    public final ba1 c;
    public final String d;

    public hd0(Context context, ba1 ba1Var, ba1 ba1Var2, String str) {
        if (context == null) {
            f6.n("Null applicationContext");
            throw null;
        }
        this.a = context;
        if (ba1Var == null) {
            f6.n("Null wallClock");
            throw null;
        }
        this.b = ba1Var;
        if (ba1Var2 == null) {
            f6.n("Null monotonicClock");
            throw null;
        }
        this.c = ba1Var2;
        if (str != null) {
            this.d = str;
        } else {
            f6.n("Null backendName");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof k22) {
            hd0 hd0Var = (hd0) ((k22) obj);
            if (this.a.equals(hd0Var.a) && this.b.equals(hd0Var.b) && this.c.equals(hd0Var.c) && this.d.equals(hd0Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.a);
        sb.append(", wallClock=");
        sb.append(this.b);
        sb.append(", monotonicClock=");
        sb.append(this.c);
        sb.append(", backendName=");
        return dj7.n(sb, this.d, "}");
    }
}
