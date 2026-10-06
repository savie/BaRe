package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vq4 implements jl0 {
    public final LabelParams a;
    public final List b;

    public vq4(LabelParams labelParams, List list) {
        labelParams.getClass();
        this.a = labelParams;
        this.b = list;
    }

    public final String a() {
        LabelParams labelParams = this.a;
        String name = labelParams.getName();
        if (name != null) {
            return name;
        }
        String id = labelParams.getId();
        id.getClass();
        return id;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vq4)) {
            return false;
        }
        vq4 vq4Var = (vq4) obj;
        return pe4.d(this.a, vq4Var.a) && pe4.d(this.b, vq4Var.b);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        LabelParams labelParams = this.a;
        labelParams.getClass();
        return new vq4(labelParams, this.b);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.getItemId();
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        List list = this.b;
        return iHashCode + (list == null ? 0 : list.hashCode());
    }

    public final String toString() {
        return "LabelAdapterItem(labelParams=" + this.a + ", labelledApps=" + this.b + ")";
    }
}
