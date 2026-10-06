package defpackage;

import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f10 {
    public final String a;
    public final jb b;

    public f10(String str, jb jbVar) {
        String str2 = Build.MODEL;
        String str3 = Build.VERSION.RELEASE;
        str2.getClass();
        str3.getClass();
        this.a = str;
        this.b = jbVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f10)) {
            return false;
        }
        f10 f10Var = (f10) obj;
        if (!this.a.equals(f10Var.a)) {
            return false;
        }
        String str = Build.MODEL;
        if (!pe4.d(str, str)) {
            return false;
        }
        String str2 = Build.VERSION.RELEASE;
        return pe4.d(str2, str2) && this.b.equals(f10Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + ((a15.LOG_ENVIRONMENT_PROD.hashCode() + fz5.g((((Build.MODEL.hashCode() + (this.a.hashCode() * 31)) * 31) + 48517565) * 31, 31, Build.VERSION.RELEASE)) * 31);
    }

    public final String toString() {
        return "ApplicationInfo(appId=" + this.a + ", deviceModel=" + Build.MODEL + ", sessionSdkVersion=3.0.6, osVersion=" + Build.VERSION.RELEASE + ", logEnvironment=" + a15.LOG_ENVIRONMENT_PROD + ", androidAppInfo=" + this.b + ')';
    }
}
