package defpackage;

import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f22 extends k12 {
    public final String a;

    public f22(Bundle bundle, String str) {
        bundle.getClass();
        this.a = str;
        if (str.length() != 0) {
            try {
                new JSONObject(str);
                return;
            } catch (Exception unused) {
            }
        }
        c6.f("registrationResponseJson must not be empty, and must be a valid JSON");
        throw null;
    }
}
