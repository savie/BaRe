package defpackage;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class l58 {
    public static final Set k = Collections.unmodifiableSet(new HashSet(Arrays.asList("client_id", "code", "code_verifier", "grant_type", "redirect_uri", "refresh_token", "scope")));
    public final l90 a;
    public final String b;
    public final String c;
    public final String d;
    public final Uri e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final Map j;

    public l58(l90 l90Var, String str, String str2, String str3, Uri uri, String str4, String str5, String str6, String str7, Map map) {
        this.a = l90Var;
        this.c = str;
        this.b = str2;
        this.d = str3;
        this.e = uri;
        this.g = str4;
        this.f = str5;
        this.h = str6;
        this.i = str7;
        this.j = map;
    }

    public final HashMap a() {
        HashMap map = new HashMap();
        map.put("grant_type", this.d);
        Uri uri = this.e;
        if (uri != null) {
            map.put("redirect_uri", uri.toString());
        }
        String str = this.f;
        if (str != null) {
            map.put("code", str.toString());
        }
        String str2 = this.h;
        if (str2 != null) {
            map.put("refresh_token", str2.toString());
        }
        String str3 = this.i;
        if (str3 != null) {
            map.put("code_verifier", str3.toString());
        }
        String str4 = this.g;
        if (str4 != null) {
            map.put("scope", str4.toString());
        }
        for (Map.Entry entry : this.j.entrySet()) {
            map.put((String) entry.getKey(), (String) entry.getValue());
        }
        return map;
    }
}
