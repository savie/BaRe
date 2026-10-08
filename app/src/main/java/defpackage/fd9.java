package defpackage;

import android.net.Uri;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class fd9 {
    public static final k50 a = new k50(0);

    public static synchronized Uri a() {
        k50 k50Var = a;
        Uri uri = (Uri) k50Var.get("com.google.android.gms.auth_account");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.auth_account"))));
        k50Var.put("com.google.android.gms.auth_account", uri2);
        return uri2;
    }
}
