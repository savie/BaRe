package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz3 {
    public final /* synthetic */ int a;
    public String b;
    public String c;

    public dz3(String str) {
        this.a = 0;
        this.b = "LibraryVersion";
        this.c = (str == null || str.length() <= 0) ? null : str;
    }

    public boolean equals(Object obj) {
        switch (this.a) {
            case 1:
                return false;
            default:
                return super.equals(obj);
        }
    }

    public int hashCode() {
        switch (this.a) {
            case 1:
                String str = this.b;
                int iHashCode = str == null ? 0 : str.hashCode();
                String str2 = this.c;
                return iHashCode ^ (str2 != null ? str2.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return "Pair{" + ((Object) this.b) + TokenAuthenticationScheme.SCHEME_DELIMITER + ((Object) this.c) + "}";
            default:
                return super.toString();
        }
    }
}
