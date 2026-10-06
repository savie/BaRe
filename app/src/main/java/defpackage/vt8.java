package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vt8 {
    public final List a;
    public final ArrayList b;

    public vt8(List list, ArrayList arrayList) {
        list.getClass();
        this.a = list;
        this.b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vt8)) {
            return false;
        }
        vt8 vt8Var = (vt8) obj;
        return pe4.d(this.a, vt8Var.a) && this.b.equals(vt8Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ActivateWifiDialog(configs=" + this.a + ", wifiNamesList=" + this.b + ")";
    }
}
