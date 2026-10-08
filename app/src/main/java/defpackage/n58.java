package defpackage;

import com.microsoft.identity.client.claims.ClaimsRequest;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n58 {
    public static final HashSet i = new HashSet(Arrays.asList("token_type", ClaimsRequest.ACCESS_TOKEN, "expires_in", "refresh_token", ClaimsRequest.ID_TOKEN, "scope"));
    public final l58 a;
    public final String b;
    public final String c;
    public final Long d;
    public final String e;
    public final String f;
    public final String g;
    public final Map h;

    public n58(l58 l58Var, String str, String str2, Long l, String str3, String str4, String str5, Map map) {
        this.a = l58Var;
        this.b = str;
        this.c = str2;
        this.d = l;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = map;
    }
}
