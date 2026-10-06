package defpackage;

import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ml2 extends ao {
    public ml2(Bundle bundle, String str) {
        super(bundle, "androidx.credentials.TYPE_DIGITAL_CREDENTIAL");
        if (str.length() != 0) {
            try {
                new JSONObject(str);
                return;
            } catch (Exception unused) {
            }
        }
        c6.f("credentialJson must not be empty, and must be a valid JSON");
        throw null;
    }
}
