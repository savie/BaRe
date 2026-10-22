package defpackage;

import android.net.Uri;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fi6 {
    public static final /* synthetic */ int j = 0;
    public final ei6 a;
    public final String b;
    public final Long c;
    public final String d;
    public final Long e;
    public final String f;
    public final Uri g;
    public final String h;
    public final LinkedHashMap i;

    static {
        new HashSet(Arrays.asList("client_id", "client_secret", "client_secret_expires_at", "registration_access_token", "registration_client_uri", "client_id_issued_at", "token_endpoint_auth_method"));
    }

    public fi6(ei6 ei6Var, String str, Long l, String str2, Long l2, String str3, Uri uri, String str4, LinkedHashMap linkedHashMap) {
        this.a = ei6Var;
        this.b = str;
        this.c = l;
        this.d = str2;
        this.e = l2;
        this.f = str3;
        this.g = uri;
        this.h = str4;
        this.i = linkedHashMap;
    }
}
