package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f91 {
    public final String a = "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE";
    public final Bundle b;

    public f91() {
        Bundle bundle = new Bundle();
        this.b = bundle;
        if (!"androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE".equals("androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE") && !"androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE".equals("androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            c6.f(eq3.k("The request type ", "androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE", " is not supported."));
            throw null;
        }
        if ("androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE".equals("androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            bundle.putBoolean("androidx.credentials.BUNDLE_KEY_CLEAR_RESTORE_CREDENTIAL_REQUEST", true);
        }
    }
}
