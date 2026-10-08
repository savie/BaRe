package defpackage;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dr4 {
    public final Class a;
    public final Class b;
    public final Class c;
    public final String d;

    public dr4(au1 au1Var, Annotation annotation) {
        this.b = au1Var.getDeclaringClass();
        this.a = annotation.annotationType();
        this.d = au1Var.getName();
        this.c = au1Var.getType();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof dr4)) {
            return false;
        }
        dr4 dr4Var = (dr4) obj;
        if (dr4Var == this) {
            return true;
        }
        if (dr4Var.a == this.a && dr4Var.b == this.b && dr4Var.c == this.c) {
            return dr4Var.d.equals(this.d);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() ^ this.d.hashCode();
    }

    public final String toString() {
        return "key '" + this.d + "' for " + this.b;
    }
}
