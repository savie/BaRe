package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class s54 implements jl0 {
    public final String a;
    public final u54 b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;
    public final boolean k;
    public final ji n;
    public final FolderItem p;
    public final Integer q;
    public final zc6 r;
    public final List t;
    public final int x;

    public s54(String str, u54 u54Var, String str2, String str3, int i, int i2, ji jiVar, FolderItem folderItem, Integer num, zc6 zc6Var, List list, int i3, int i4) {
        this(str, u54Var, str2, str3, i, (i4 & 32) != 0 ? 0 : i2, (i4 & 64) != 0, (i4 & 128) != 0 ? null : jiVar, (i4 & 256) != 0 ? null : folderItem, (i4 & 512) != 0 ? null : num, (i4 & 1024) != 0 ? null : zc6Var, list, i3);
    }

    public static s54 a(s54 s54Var, zc6 zc6Var, int i) {
        String str = s54Var.a;
        u54 u54Var = s54Var.b;
        String str2 = s54Var.c;
        String str3 = s54Var.d;
        int i2 = s54Var.e;
        int i3 = s54Var.f;
        boolean z = s54Var.k;
        ji jiVar = s54Var.n;
        FolderItem folderItem = s54Var.p;
        Integer num = s54Var.q;
        if ((i & 1024) != 0) {
            zc6Var = s54Var.r;
        }
        List list = s54Var.t;
        int i4 = s54Var.x;
        s54Var.getClass();
        str.getClass();
        u54Var.getClass();
        str2.getClass();
        list.getClass();
        return new s54(str, u54Var, str2, str3, i2, i3, z, jiVar, folderItem, num, zc6Var, list, i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s54)) {
            return false;
        }
        s54 s54Var = (s54) obj;
        return pe4.d(this.a, s54Var.a) && this.b == s54Var.b && pe4.d(this.c, s54Var.c) && pe4.d(this.d, s54Var.d) && this.e == s54Var.e && this.f == s54Var.f && this.k == s54Var.k && pe4.d(this.n, s54Var.n) && pe4.d(this.p, s54Var.p) && pe4.d(this.q, s54Var.q) && pe4.d(this.r, s54Var.r) && pe4.d(this.t, s54Var.t) && this.x == s54Var.x;
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return a(this, null, 8191);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        int iG = fz5.g((this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31, this.c);
        String str = this.d;
        int iH = fz5.h(eq3.d(this.f, eq3.d(this.e, (iG + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31, this.k);
        ji jiVar = this.n;
        int iHashCode = (iH + (jiVar == null ? 0 : jiVar.hashCode())) * 31;
        FolderItem folderItem = this.p;
        int iHashCode2 = (iHashCode + (folderItem == null ? 0 : folderItem.hashCode())) * 31;
        Integer num = this.q;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        zc6 zc6Var = this.r;
        return Integer.hashCode(this.x) + fz5.i(this.t, (iHashCode3 + (zc6Var != null ? zc6Var.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HomeSearchResult(id=");
        sb.append(this.a);
        sb.append(", section=");
        sb.append(this.b);
        sb.append(", title=");
        xs1.t(sb, this.c, ", subtitle=", this.d, ", iconRes=");
        xs1.s(sb, this.e, ", iconColorRes=", this.f, ", iconTinted=");
        sb.append(this.k);
        sb.append(", app=");
        sb.append(this.n);
        sb.append(", folderItem=");
        sb.append(this.p);
        sb.append(", shortcutId=");
        sb.append(this.q);
        sb.append(", quickActionItem=");
        sb.append(this.r);
        sb.append(", searchableText=");
        sb.append(this.t);
        sb.append(", displayOrder=");
        return xs1.m(sb, this.x, ")");
    }

    public s54(String str, u54 u54Var, String str2, String str3, int i, int i2, boolean z, ji jiVar, FolderItem folderItem, Integer num, zc6 zc6Var, List list, int i3) {
        u54Var.getClass();
        str2.getClass();
        this.a = str;
        this.b = u54Var;
        this.c = str2;
        this.d = str3;
        this.e = i;
        this.f = i2;
        this.k = z;
        this.n = jiVar;
        this.p = folderItem;
        this.q = num;
        this.r = zc6Var;
        this.t = list;
        this.x = i3;
    }
}
