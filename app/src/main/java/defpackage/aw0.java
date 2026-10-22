package defpackage;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aw0 {
    public final String a;
    public final HashSet b;
    public final String c;
    public final Boolean d;

    public aw0(PackageInfo packageInfo, boolean z) {
        String str = packageInfo.packageName;
        Signature[] signatureArr = packageInfo.signatures;
        HashSet hashSet = new HashSet();
        for (Signature signature : signatureArr) {
            try {
                hashSet.add(Base64.encodeToString(MessageDigest.getInstance("SHA-512").digest(signature.toByteArray()), 10));
            } catch (NoSuchAlgorithmException unused) {
                l0.e("Platform does not supportSHA-512 hashing");
                throw null;
            }
        }
        String str2 = packageInfo.versionName;
        this.a = str;
        this.b = hashSet;
        this.c = str2;
        this.d = Boolean.valueOf(z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof aw0)) {
            return false;
        }
        aw0 aw0Var = (aw0) obj;
        return this.a.equals(aw0Var.a) && this.c.equals(aw0Var.c) && this.d == aw0Var.d && this.b.equals(aw0Var.b);
    }

    public final int hashCode() {
        int iG = (this.d.booleanValue() ? 1 : 0) + fz5.g(this.a.hashCode() * 92821, 92821, this.c);
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            iG = (iG * 92821) + ((String) it.next()).hashCode();
        }
        return iG;
    }
}
