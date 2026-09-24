package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d90 {
    public int a;
    public String b;
    public final ArrayList d = new ArrayList(f90.f);
    public final HashSet c = new HashSet();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d90.class != obj.getClass()) {
            return false;
        }
        d90 d90Var = (d90) obj;
        if (this.a == d90Var.a && Objects.equals(this.b, d90Var.b)) {
            return this.c.equals(d90Var.c);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.a;
        int iA = (i != 0 ? dj7.A(i) : 0) * 31;
        String str = this.b;
        return (this.c.hashCode() + ((iA + (str != null ? str.hashCode() : 0)) * 31)) * 31;
    }

    public final String toString() {
        return "Builder{type=" + dj7.B(this.a) + ", clientId='" + this.b + "', permissions=" + this.c + ", customTabsPackages=" + this.d + ", forceAccessApproval=false}";
    }
}
