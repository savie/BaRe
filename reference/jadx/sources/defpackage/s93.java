package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class s93 {
    public final r93 a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final Locale f;

    public s93() {
        r93 r93Var = r93.NAME;
        Locale locale = Locale.getDefault();
        locale.getClass();
        r93Var.getClass();
        this.a = r93Var;
        this.b = true;
        this.c = true;
        this.d = true;
        this.e = true;
        this.f = locale;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s93)) {
            return false;
        }
        s93 s93Var = (s93) obj;
        return this.a == s93Var.a && this.b == s93Var.b && this.c == s93Var.c && this.d == s93Var.d && this.e == s93Var.e && pe4.d(this.f, s93Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + fz5.h(fz5.h(fz5.h(fz5.h(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        return "SortOptions(sortBy=" + this.a + ", ascending=" + this.b + ", directoriesFirst=" + this.c + ", hiddenLast=" + this.d + ", showHidden=" + this.e + ", locale=" + this.f + ")";
    }
}
