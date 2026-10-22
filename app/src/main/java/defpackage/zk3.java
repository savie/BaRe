package defpackage;

import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zk3 implements jl0 {
    public final FolderItem a;
    public final long b;
    public final String c;

    public zk3(FolderItem folderItem, long j, String str) {
        folderItem.getClass();
        this.a = folderItem;
        this.b = j;
        this.c = str;
    }

    public static zk3 a(zk3 zk3Var, String str, int i) {
        FolderItem folderItem = zk3Var.a;
        long j = zk3Var.b;
        if ((i & 4) != 0) {
            str = zk3Var.c;
        }
        zk3Var.getClass();
        folderItem.getClass();
        return new zk3(folderItem, j, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zk3)) {
            return false;
        }
        zk3 zk3Var = (zk3) obj;
        return pe4.d(this.a, zk3Var.a) && this.b == zk3Var.b && pe4.d(this.c, zk3Var.c);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return a(this, null, 7);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a.getId();
    }

    public final int hashCode() {
        int iF = xs1.f(this.b, this.a.hashCode() * 31, 31);
        String str = this.c;
        return iF + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FolderDashItem(folderItem=");
        sb.append(this.a);
        sb.append(", latestBackupDate=");
        sb.append(this.b);
        return eq3.n(sb, ", randomIdToForceNotifyChange=", this.c, ")");
    }
}
