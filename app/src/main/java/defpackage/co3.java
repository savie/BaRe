package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class co3 extends eo3 {
    public final FolderItem a;
    public final List b;

    public co3(FolderItem folderItem, List list) {
        folderItem.getClass();
        this.a = folderItem;
        this.b = list;
        if (list.isEmpty()) {
            l0.e("Locations empty!");
            throw null;
        }
    }

    @Override // defpackage.eo3
    public final FolderItem a() {
        return this.a;
    }

    @Override // defpackage.eo3
    public final boolean b() {
        return this.b.contains(q05.CLOUD);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof co3)) {
            return false;
        }
        co3 co3Var = (co3) obj;
        return pe4.d(this.a, co3Var.a) && this.b.equals(co3Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Delete(folderItem=" + this.a + ", locations=" + this.b + ")";
    }
}
