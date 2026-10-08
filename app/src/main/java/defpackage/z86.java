package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z86 implements Serializable {
    public static final z86 d = new z86("", null);
    public static final z86 e = new z86(new String(""), null);
    public final String a;
    public final String b;
    public z77 c;

    public z86(String str, String str2) {
        Annotation[] annotationArr = u81.a;
        this.a = str == null ? "" : str;
        this.b = str2;
    }

    public static z86 a(String str) {
        return (str == null || str.isEmpty()) ? d : new z86(wd4.b.a(str), null);
    }

    public static z86 b(String str, String str2) {
        if (str == null) {
            str = "";
        }
        return (str2 == null && str.isEmpty()) ? d : new z86(wd4.b.a(str), str2);
    }

    public final boolean c() {
        return this.b == null && this.a.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != z86.class) {
            return false;
        }
        z86 z86Var = (z86) obj;
        String str = z86Var.a;
        String str2 = this.a;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        String str3 = z86Var.b;
        String str4 = this.b;
        if (str4 == null) {
            return str3 == null;
        }
        return str4.equals(str3);
    }

    public final int hashCode() {
        return Objects.hashCode(this.b) + (Objects.hashCode(this.a) * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        if (str2 == null) {
            return str;
        }
        return "{" + str2 + "}" + str;
    }
}
