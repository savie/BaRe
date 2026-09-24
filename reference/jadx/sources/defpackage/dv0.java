package defpackage;

import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class dv0 {
    public static String a(Exception exc) {
        String str;
        hv0 hv0Var = exc instanceof hv0 ? (hv0) exc : null;
        if (hv0Var != null) {
            try {
                str = hv0Var.b;
            } catch (Exception e) {
                vr6.e$default(vr6.INSTANCE, "BoxHelper", "Error while getting Box error json", e, null, 8, null);
            }
        } else {
            str = null;
        }
        String string = (str == null || nq7.j0(str)) ? null : new JSONObject(str).toString(4);
        if (string == null || string.length() == 0) {
            string = null;
        }
        if (string != null) {
            return string;
        }
        String message = hv0Var != null ? hv0Var.getMessage() : null;
        return message == null ? io4.b(exc) : message;
    }
}
