package okhttp3.internal.http2;

import defpackage.ge;
import defpackage.hy0;
import defpackage.pe4;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Header {
    public static final hy0 d;
    public static final hy0 e;
    public static final hy0 f;
    public static final hy0 g;
    public static final hy0 h;
    public static final hy0 i;
    public final hy0 a;
    public final hy0 b;
    public final int c;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    static {
        hy0 hy0Var = hy0.d;
        d = ge.v(":");
        e = ge.v(":status");
        f = ge.v(":method");
        g = ge.v(":path");
        h = ge.v(":scheme");
        i = ge.v(":authority");
    }

    public Header(hy0 hy0Var, hy0 hy0Var2) {
        hy0Var.getClass();
        hy0Var2.getClass();
        this.a = hy0Var;
        this.b = hy0Var2;
        this.c = hy0Var2.d() + hy0Var.d() + 32;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return pe4.d(this.a, header.a) && pe4.d(this.b, header.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return this.a.w() + ": " + this.b.w();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(String str, String str2) {
        this(ge.v(str), ge.v(str2));
        hy0 hy0Var = hy0.d;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(hy0 hy0Var, String str) {
        this(hy0Var, ge.v(str));
        hy0Var.getClass();
        str.getClass();
        hy0 hy0Var2 = hy0.d;
    }
}
