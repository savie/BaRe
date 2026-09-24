package defpackage;

import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iu5 {
    public static final ma2 e = new ma2(12);
    public final Object a;
    public final hu5 b;
    public final String c;
    public volatile byte[] d;

    public iu5(String str, Object obj, hu5 hu5Var) {
        if (TextUtils.isEmpty(str)) {
            c6.f("Must not be null or empty");
            throw null;
        }
        this.c = str;
        this.a = obj;
        this.b = hu5Var;
    }

    public static iu5 a(Object obj, String str) {
        return new iu5(str, obj, e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof iu5) {
            return this.c.equals(((iu5) obj).c);
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode();
    }

    public final String toString() {
        return dj7.n(new StringBuilder("Option{key='"), this.c, "'}");
    }
}
