package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lg {
    public final Uri a;
    public final boolean b;

    public lg(Uri uri, boolean z) {
        this.a = uri;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lg)) {
            return false;
        }
        lg lgVar = (lg) obj;
        return this.a.equals(lgVar.a) && this.b == lgVar.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ImportKey(uri=" + this.a + ", singleApk=" + this.b + ")";
    }
}
