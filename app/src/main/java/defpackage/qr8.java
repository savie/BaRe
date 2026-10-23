package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qr8 {
    public final int a;
    public final boolean b;
    public final boolean c;
    public final boolean d;

    public qr8(int i, boolean z, boolean z2, boolean z3) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qr8)) {
            return false;
        }
        qr8 qr8Var = (qr8) obj;
        return this.a == qr8Var.a && this.b == qr8Var.b && this.c == qr8Var.c && this.d == qr8Var.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + fz5.h(fz5.h(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        return "WifiAccessSnapshot(sdkInt=" + this.a + ", isRooted=" + this.b + ", isShizukuRunning=" + this.c + ", isShizukuPermissionGranted=" + this.d + ")";
    }
}
