package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xr8 {
    public final int a;

    public xr8(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xr8) && this.a == ((xr8) obj).a;
    }

    public final int hashCode() {
        return (((Integer.hashCode(this.a) * 31) + 109403696) * 31) + 1547057220;
    }

    public final String toString() {
        return xs1.h(this.a, "WifiCallerIdentity(uid=", ", packageName=shell, featureId=com.android.shell)");
    }
}
