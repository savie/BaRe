package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class is4 implements jl0 {
    public final String a;
    public final String b;
    public final boolean c;
    public final double d;
    public final xi6 e;
    public final gv7 f;
    public final gv7 k;
    public final gv7 n;
    public final gv7 p;
    public final gv7 q;

    public is4(String str, String str2, boolean z, double d, xi6 xi6Var) {
        str.getClass();
        str2.getClass();
        xi6Var.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = d;
        this.e = xi6Var;
        this.f = new gv7(new as4(this, 1));
        this.k = new gv7(new pr4(this, 2));
        int i = 27;
        this.n = new gv7(new lf(this, i));
        this.p = new gv7(new ej(this, i));
        this.q = new gv7(new hs4(this, 0));
    }

    public final Locale a() {
        Object value = this.f.getValue();
        value.getClass();
        return (Locale) value;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof is4) && ((is4) obj).toString().equals(toString());
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        String str2 = this.b;
        str2.getClass();
        xi6 xi6Var = this.e;
        xi6Var.getClass();
        return new is4(str, str2, this.c, this.d, xi6Var);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return toString();
    }

    public final String toString() {
        return dj7.k(this.a, "_", this.b);
    }

    public /* synthetic */ is4(String str, String str2, int i) {
        this(str, str2, (i & 4) == 0, 100.0d, xi6.Production);
    }
}
