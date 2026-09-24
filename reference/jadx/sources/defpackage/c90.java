package defpackage;

import android.net.Uri;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c90 {
    public l90 a;
    public String b;
    public String c;
    public String d;
    public Uri e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public Map l;

    public final e90 a() {
        return new e90(this.a, this.b, this.d, this.e, null, this.c, null, null, this.f, this.g, this.h, this.i, this.j, this.k, null, null, null, Collections.unmodifiableMap(new HashMap(this.l)));
    }

    public final void b(String str) {
        String str2;
        if (str == null) {
            this.i = null;
            this.j = null;
            this.k = null;
            return;
        }
        dk1.a(str);
        this.i = str;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes("ISO_8859_1"));
            str = Base64.encodeToString(messageDigest.digest(), 11);
        } catch (UnsupportedEncodingException e) {
            j15.e().f(6, null, "ISO-8859-1 encoding not supported on this device!", e);
            e6.j("ISO-8859-1 encoding not supported", e);
            return;
        } catch (NoSuchAlgorithmException e2) {
            j15.e().f(5, null, "SHA-256 is not supported on this device! Using plain challenge", e2);
        }
        this.j = str;
        try {
            MessageDigest.getInstance("SHA-256");
            str2 = "S256";
        } catch (NoSuchAlgorithmException unused) {
            str2 = "plain";
        }
        this.k = str2;
    }
}
