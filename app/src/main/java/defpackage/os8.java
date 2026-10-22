package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class os8 {
    public final boolean a;
    public final int b;

    public os8(int i, boolean z) {
        this.a = z;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof os8)) {
            return false;
        }
        os8 os8Var = (os8) obj;
        return this.a == os8Var.a && this.b == os8Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Boolean.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "FileBackupResult(isSuccess=" + this.a + ", wifiNetworksCount=" + this.b + ")";
    }
}
