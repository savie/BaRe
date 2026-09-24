package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nc6 {
    public final Class a;
    public final Class b;

    public nc6(Class cls, Class cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public static nc6 a(Class cls) {
        return new nc6(mc6.class, cls);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || nc6.class != obj.getClass()) {
            return false;
        }
        nc6 nc6Var = (nc6) obj;
        if (this.b.equals(nc6Var.b)) {
            return this.a.equals(nc6Var.a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        Class cls = this.b;
        Class cls2 = this.a;
        if (cls2 == mc6.class) {
            return cls.getName();
        }
        return "@" + cls2.getName() + TokenAuthenticationScheme.SCHEME_DELIMITER + cls.getName();
    }
}
