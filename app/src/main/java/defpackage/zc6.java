package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.Toast;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zc6 implements Parcelable, c8, jl0 {
    public static Toast G;
    public final String a;
    public final int b;
    public final int c;
    public final int d;
    public final boolean e;
    public final boolean f;
    public final boolean k;
    public final boolean n;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean t;
    public final boolean x;
    public static final Parcelable.Creator<zc6> CREATOR = new m10(7);
    public static final gv7 y = new gv7(new q9(13));

    /* JADX WARN: Illegal instructions before constructor call */
    public zc6(String str, int i, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, int i4) {
        int i5 = (i4 & 2) != 0 ? -1 : i;
        boolean zContains = false;
        int i6 = (i4 & 8) != 0 ? 0 : i3;
        boolean z5 = (i4 & 64) != 0 ? false : z3;
        boolean z6 = (i4 & 128) != 0 ? z : z4;
        boolean z7 = (i4 & 1024) == 0;
        if ((i4 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 && str.length() != 0) {
            zContains = yc6.g().contains(Integer.valueOf(i5));
        }
        this(str, i5, i2, i6, z, z2, z5, z6, false, false, z7, zContains);
    }

    public static zc6 q(zc6 zc6Var, boolean z, boolean z2, int i) {
        String str = zc6Var.a;
        int i2 = zc6Var.b;
        int i3 = zc6Var.c;
        int i4 = zc6Var.d;
        boolean z3 = zc6Var.e;
        boolean z4 = zc6Var.f;
        boolean z5 = zc6Var.k;
        boolean z6 = zc6Var.n;
        boolean z7 = zc6Var.p;
        if ((i & 512) != 0) {
            z = zc6Var.q;
        }
        boolean z8 = z;
        boolean z9 = zc6Var.r;
        boolean z10 = (i & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? zc6Var.t : z2;
        zc6Var.getClass();
        str.getClass();
        return new zc6(str, i2, i3, i4, z3, z4, z5, z6, z7, z8, z9, z10);
    }

    @Override // defpackage.c8
    public final boolean c() {
        String str = this.a;
        if (yc6.h(str)) {
            List listA0 = fl1.A0("ID_BACKUP", "ID_RESTORE");
            if (!listA0.isEmpty()) {
                Iterator it = listA0.iterator();
                while (it.hasNext()) {
                    if (uq7.V(str, (String) it.next(), false)) {
                        if (this.q) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // defpackage.c8
    public final int e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zc6)) {
            return false;
        }
        zc6 zc6Var = (zc6) obj;
        return pe4.d(this.a, zc6Var.a) && this.b == zc6Var.b && this.c == zc6Var.c && this.d == zc6Var.d && this.e == zc6Var.e && this.f == zc6Var.f && this.k == zc6Var.k && this.n == zc6Var.n && this.p == zc6Var.p && this.q == zc6Var.q && this.r == zc6Var.r && this.t == zc6Var.t;
    }

    @Override // defpackage.c8
    public final boolean g() {
        String str = this.a;
        return pe4.d(str, "ID_DELETE_BACKUPS_UNINSTALLED_APPS") || pe4.d(str, "ID_ENABLE_DISABLE_APPS_APPS");
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        return q(this, false, false, 4095);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.t) + fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(fz5.h(eq3.d(this.d, eq3.d(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31), 31), 31, this.e), 31, this.f), 31, this.k), 31, this.n), 31, this.p), 31, this.q), 31, this.r);
    }

    @Override // defpackage.c8
    public final boolean l() {
        return this.q;
    }

    @Override // defpackage.c8
    public final int m() {
        String str = this.a;
        if (pe4.d(str, "ID_DELETE_BACKUPS_UNINSTALLED_APPS")) {
            return R.drawable.ic_delete_sweep;
        }
        pe4.d(str, "ID_ENABLE_DISABLE_APPS_APPS");
        return R.drawable.ic_edit_pencil;
    }

    @Override // defpackage.c8
    public final int n() {
        String str = this.a;
        int iHashCode = str.hashCode();
        if (iHashCode != -2008873042) {
            if (iHashCode != -116623792) {
                if (iHashCode == 1126219261 && str.equals("ID_BACKUP_SYNC_APPS")) {
                    return R.string.sync_options;
                }
            } else if (str.equals("ID_ENABLE_DISABLE_APPS_APPS")) {
                return R.string.enable_disable_apps;
            }
        } else if (str.equals("ID_DELETE_BACKUPS_UNINSTALLED_APPS")) {
            return R.string.delete_backups;
        }
        return this.x ? R.string.backup_options : R.string.restore_options;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("QuickActionItem(id='");
        sb.append(this.a);
        sb.append("', sync=");
        sb.append(this.p);
        sb.append(", isCloudAction=");
        return dj7.p(sb, this.q, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e ? 1 : 0);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeInt(this.n ? 1 : 0);
        parcel.writeInt(this.p ? 1 : 0);
        parcel.writeInt(this.q ? 1 : 0);
        parcel.writeInt(this.r ? 1 : 0);
        parcel.writeInt(this.t ? 1 : 0);
    }

    public zc6(String str, int i, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        str.getClass();
        this.a = str;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = z;
        this.f = z2;
        this.k = z3;
        this.n = z4;
        this.p = z5;
        this.q = z6;
        this.r = z7;
        this.t = z8;
        this.x = !z;
    }
}
