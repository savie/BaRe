package defpackage;

import java.io.File;
import java.io.Serializable;
import java.net.URI;
import java.net.URL;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vu1 implements Serializable {
    public final transient Object a;

    static {
        new vu1();
        new vu1();
    }

    public vu1(q67 q67Var, ay2 ay2Var) {
        this.a = q67Var;
        ay2Var.getClass();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof vu1)) {
            return false;
        }
        Object obj2 = ((vu1) obj).a;
        Object obj3 = this.a;
        if (obj3 == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        if ((obj3 instanceof File) || (obj3 instanceof URL) || (obj3 instanceof URI)) {
            return obj3.equals(obj2);
        }
        return obj3 == obj2;
    }

    public final int hashCode() {
        return Objects.hashCode(this.a);
    }

    public vu1() {
        this(null, ay2.a);
    }
}
