package defpackage;

import android.net.Uri;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ei6 {
    public static final /* synthetic */ int j = 0;
    public final l90 a;
    public final ArrayList b;
    public final List c;
    public final List d;
    public final String e;
    public final Uri f;
    public final JSONObject g;
    public final String h;
    public final LinkedHashMap i;

    static {
        ji8.b("redirect_uris", "response_types", "grant_types", "application_type", "subject_type", "jwks_uri", "jwks", "token_endpoint_auth_method");
    }

    public ei6(l90 l90Var, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str, Uri uri, JSONObject jSONObject, String str2, LinkedHashMap linkedHashMap) {
        this.a = l90Var;
        this.b = arrayList;
        this.c = arrayList2;
        this.d = arrayList3;
        this.e = str;
        this.f = uri;
        this.g = jSONObject;
        this.h = str2;
        this.i = linkedHashMap;
    }
}
