package defpackage;

import android.os.Bundle;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rx5 extends ao {
    public rx5(Bundle bundle, String str) {
        super(bundle, "android.credentials.TYPE_PASSWORD_CREDENTIAL");
        if (str.length() > 0) {
            return;
        }
        c6.f("password should not be empty");
        throw null;
    }
}
