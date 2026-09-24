package defpackage;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vz5 {
    public final ArrayList a;
    public final HashMap b;

    public vz5(ArrayList arrayList, HashMap map) {
        this.a = arrayList;
        this.b = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vz5)) {
            return false;
        }
        vz5 vz5Var = (vz5) obj;
        if (this.a.equals(vz5Var.a)) {
            return this.b.equals(vz5Var.b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return yc9.M(this.a) + " (params: " + this.b + ")";
    }
}
