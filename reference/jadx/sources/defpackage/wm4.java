package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wm4 implements Serializable {
    public final um4 a;
    public final tm4 b;
    public final String c;
    public final Class d;
    public final boolean e;
    public final Boolean f;

    public wm4(um4 um4Var, tm4 tm4Var, String str, Class cls, boolean z, Boolean bool) {
        this.d = cls;
        this.a = um4Var;
        this.b = tm4Var;
        this.c = str;
        this.e = z;
        this.f = bool;
    }

    public static wm4 a(um4 um4Var, tm4 tm4Var, String str, Class cls, boolean z, Boolean bool) {
        if (str == null || str.isEmpty()) {
            str = um4Var != null ? um4Var.a : "";
        }
        String str2 = str;
        if (cls == null || cls.isAnnotation()) {
            cls = null;
        }
        return new wm4(um4Var, tm4Var, str2, cls, z, bool);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == wm4.class) {
            wm4 wm4Var = (wm4) obj;
            if (this.a == wm4Var.a && this.b == wm4Var.b && this.d == wm4Var.d && this.e == wm4Var.e && Objects.equals(this.c, wm4Var.c) && Objects.equals(this.f, wm4Var.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        um4 um4Var = this.a;
        int iHashCode = ((um4Var != null ? um4Var.hashCode() : 0) + 31) * 31;
        tm4 tm4Var = this.b;
        int iHashCode2 = (iHashCode + (tm4Var != null ? tm4Var.hashCode() : 0)) * 31;
        String str = this.c;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        Class cls = this.d;
        return ((((iHashCode3 + (cls != null ? cls.hashCode() : 0)) * 31) + (this.f.booleanValue() ? 11 : -17)) * 31) + (this.e ? 11 : -17);
    }

    public final String toString() {
        Class cls = this.d;
        String name = cls == null ? "NULL" : cls.getName();
        StringBuilder sb = new StringBuilder("JsonTypeInfo.Value(idType=");
        sb.append(this.a);
        sb.append(",includeAs=");
        sb.append(this.b);
        sb.append(",propertyName=");
        xs1.t(sb, this.c, ",defaultImpl=", name, ",idVisible=");
        sb.append(this.e);
        sb.append(",requireTypeIdForSubtypes=");
        sb.append(this.f);
        sb.append(")");
        return sb.toString();
    }
}
