package defpackage;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uj {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final cy0 e;
    public final Map f;
    public final List g;
    public final boolean h;

    public uj(String str, String str2, String str3, String str4, xj xjVar, Map map, List list, int i) {
        cy0 cy0Var = (i & 16) != 0 ? yj.j : xjVar;
        map = (i & 32) != 0 ? pv2.a : map;
        list = (i & 64) != 0 ? ov2.a : list;
        boolean z = (i & 128) != 0;
        str3.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = cy0Var;
        this.f = map;
        this.g = list;
        this.h = z;
    }

    public static Intent b(Context context, e90 e90Var) {
        String strP = zm5.p(context);
        if (strP != null) {
            k90 k90Var = new k90(context, new wj(new rf9(strP, 3)));
            try {
                Intent intentB = k90Var.b(e90Var);
                k90Var.a();
                return intentB;
            } catch (ActivityNotFoundException unused) {
                k90Var.a();
            } catch (Throwable th) {
                k90Var.a();
                throw th;
            }
        }
        k90 k90Var2 = new k90(context);
        try {
            return k90Var2.b(e90Var);
        } finally {
            k90Var2.a();
        }
    }

    public final c90 a() {
        l90 l90Var = new l90(Uri.parse(this.a), Uri.parse(this.b), (Uri) null, (Uri) null);
        Uri uri = Uri.parse(this.d);
        c90 c90Var = new c90();
        c90Var.l = new HashMap();
        c90Var.a = l90Var;
        String str = this.c;
        jb9.i(str, "client ID cannot be null or empty");
        c90Var.b = str;
        jb9.i("code", "expected response type cannot be null or empty");
        c90Var.d = "code";
        jb9.j(uri, "redirect URI cannot be null or empty");
        c90Var.e = uri;
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        String strEncodeToString = Base64.encodeToString(bArr, 11);
        if (strEncodeToString != null) {
            jb9.i(strEncodeToString, "state cannot be empty if defined");
        }
        c90Var.g = strEncodeToString;
        byte[] bArr2 = new byte[16];
        new SecureRandom().nextBytes(bArr2);
        String strEncodeToString2 = Base64.encodeToString(bArr2, 11);
        if (strEncodeToString2 != null) {
            jb9.i(strEncodeToString2, "nonce cannot be empty if defined");
        }
        c90Var.h = strEncodeToString2;
        Pattern pattern = dk1.a;
        byte[] bArr3 = new byte[64];
        new SecureRandom().nextBytes(bArr3);
        c90Var.b(Base64.encodeToString(bArr3, 11));
        List list = this.g;
        if (!list.isEmpty()) {
            c90Var.f = sz8.J(list);
        }
        if (!this.h) {
            c90Var.b(null);
        }
        c90Var.l = ji8.e(this.f, e90.s);
        return c90Var;
    }

    public final vj c(Context context, String str) {
        str.getClass();
        l90 l90Var = new l90(Uri.parse(this.a), Uri.parse(this.b), (Uri) null, (Uri) null);
        String str2 = this.c;
        jb9.i(str2, "clientId cannot be null or empty");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        jb9.i("refresh_token", "grantType cannot be null or empty");
        jb9.i(str, "refresh token cannot be empty if defined");
        return d(context, new l58(l90Var, str2, null, "refresh_token", null, null, null, str, null, Collections.unmodifiableMap(linkedHashMap)));
    }

    public final vj d(Context context, l58 l58Var) throws z80, IOException {
        t91 t91Var;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        lh6 lh6Var = new lh6();
        lh6 lh6Var2 = new lh6();
        k90 k90Var = new k90(context);
        try {
            cy0 cy0Var = this.e;
            if (cy0Var instanceof xj) {
                String str = ((xj) cy0Var).j;
                du9 du9Var = new du9(1);
                du9Var.b = str;
                t91Var = du9Var;
            } else {
                if (!cy0Var.equals(yj.j)) {
                    throw new mn5();
                }
                t91Var = q34.d;
            }
            k90Var.c(l58Var, t91Var, new tj(lh6Var, lh6Var2, countDownLatch));
            if (!countDownLatch.await(30L, TimeUnit.SECONDS)) {
                throw new IOException("OAuth token request timed out");
            }
            k90Var.a();
            z80 z80Var = (z80) lh6Var2.a;
            if (z80Var != null) {
                throw z80Var;
            }
            n58 n58Var = (n58) lh6Var.a;
            if (n58Var == null) {
                y5.m("OAuth token response is missing");
                return null;
            }
            String str2 = n58Var.c;
            if (str2 == null) {
                str2 = "";
            }
            Long l = n58Var.d;
            String str3 = n58Var.f;
            Map map = n58Var.h;
            map.getClass();
            return new vj(str2, l, str3, map);
        } catch (Throwable th) {
            k90Var.a();
            throw th;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uj)) {
            return false;
        }
        uj ujVar = (uj) obj;
        return this.a.equals(ujVar.a) && this.b.equals(ujVar.b) && pe4.d(this.c, ujVar.c) && this.d.equals(ujVar.d) && this.e.equals(ujVar.e) && this.f.equals(ujVar.f) && this.g.equals(ujVar.g) && this.h == ujVar.h;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.h) + fz5.i(this.g, (this.f.hashCode() + ((this.e.hashCode() + fz5.g(fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d)) * 31)) * 31, 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("AppAuthCloudProvider(authorizationEndpoint=", this.a, ", tokenEndpoint=", this.b, ", clientId=");
        xs1.t(sbP, this.c, ", redirectUri=", this.d, ", tokenAuthentication=");
        sbP.append(this.e);
        sbP.append(", authorizationAdditionalParameters=");
        sbP.append(this.f);
        sbP.append(", scopes=");
        sbP.append(this.g);
        sbP.append(", usesPkce=");
        sbP.append(this.h);
        sbP.append(")");
        return sbP.toString();
    }
}
