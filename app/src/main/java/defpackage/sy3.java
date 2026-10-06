package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sy3 implements jo4 {
    public final j34 b;
    public final URL c;
    public final String d;
    public String e;
    public URL f;
    public volatile byte[] g;
    public int h;

    public sy3(String str) {
        vs4 vs4Var = j34.a;
        this.c = null;
        if (TextUtils.isEmpty(str)) {
            c6.f("Must not be null or empty");
            throw null;
        }
        this.d = str;
        ms8.j(vs4Var, "Argument must not be null");
        this.b = vs4Var;
    }

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        if (this.g == null) {
            this.g = c().getBytes(jo4.a);
        }
        messageDigest.update(this.g);
    }

    public final String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.c;
        ms8.j(url, "Argument must not be null");
        return url.toString();
    }

    public final URL d() {
        if (this.f == null) {
            if (TextUtils.isEmpty(this.e)) {
                String string = this.d;
                if (TextUtils.isEmpty(string)) {
                    URL url = this.c;
                    ms8.j(url, "Argument must not be null");
                    string = url.toString();
                }
                this.e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f = new URL(this.e);
        }
        return this.f;
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof sy3) {
            sy3 sy3Var = (sy3) obj;
            if (c().equals(sy3Var.c()) && this.b.equals(sy3Var.b)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        if (this.h == 0) {
            int iHashCode = c().hashCode();
            this.h = iHashCode;
            this.h = this.b.hashCode() + (iHashCode * 31);
        }
        return this.h;
    }

    public final String toString() {
        return c();
    }

    public sy3(URL url) {
        vs4 vs4Var = j34.a;
        ms8.j(url, "Argument must not be null");
        this.c = url;
        this.d = null;
        ms8.j(vs4Var, "Argument must not be null");
        this.b = vs4Var;
    }
}
