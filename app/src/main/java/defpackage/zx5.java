package defpackage;

import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zx5 {
    public final ux5 a;
    public final String b;

    public zx5() {
        ux5 ux5Var;
        String str = null;
        try {
            ux5Var = (ux5) ((kx2) ux5.getEntries()).get(V.INSTANCE.getZ().getInt("saved_password_mode", ux5.STANDARD_PASSWORD.ordinal()));
        } catch (Exception unused) {
            ux5Var = null;
        }
        ux5Var = ux5Var == null ? ux5.STANDARD_PASSWORD : ux5Var;
        String string = V.INSTANCE.getZ().getString("saved_user_password", null);
        if (string != null && string.length() > 0 && !nq7.j0(string)) {
            str = string;
        }
        ux5Var.getClass();
        this.a = ux5Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zx5)) {
            return false;
        }
        zx5 zx5Var = (zx5) obj;
        return this.a == zx5Var.a && pe4.d(this.b, zx5Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "State(selectedMode=" + this.a + ", userPassword=" + this.b + ")";
    }
}
