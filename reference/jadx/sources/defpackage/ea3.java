package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ea3 {
    public final boolean a;
    public final Comparable b;

    public ea3(Uri uri, boolean z, boolean z2) {
        this.b = uri;
        this.a = z;
    }

    public void a(long j, String str) {
        new qd9(this, str, Long.valueOf(j));
    }

    public rd9 b(String str, boolean z) {
        return new rd9(this, str, Boolean.valueOf(z));
    }

    public ea3(String str, boolean z) {
        this.a = z;
        this.b = str;
    }
}
