package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class et7 {
    public final int a;
    public final boolean b;

    public et7(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof et7)) {
            return false;
        }
        et7 et7Var = (et7) obj;
        return this.a == et7Var.a && this.b == et7Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "SwiftLoggerShareOption(titleResId=" + this.a + ", withDeviceLogcat=" + this.b + ")";
    }
}
