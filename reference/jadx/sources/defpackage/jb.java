package defpackage;

import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jb {
    public final String a;
    public final String b;
    public final String c;
    public final k76 d;
    public final ArrayList e;

    public jb(String str, String str2, String str3, k76 k76Var, ArrayList arrayList) {
        String str4 = Build.MANUFACTURER;
        str2.getClass();
        str3.getClass();
        str4.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = k76Var;
        this.e = arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jb)) {
            return false;
        }
        jb jbVar = (jb) obj;
        if (!this.a.equals(jbVar.a) || !pe4.d(this.b, jbVar.b) || !pe4.d(this.c, jbVar.c)) {
            return false;
        }
        String str = Build.MANUFACTURER;
        return pe4.d(str, str) && this.d.equals(jbVar.d) && this.e.equals(jbVar.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + fz5.g(fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, Build.MANUFACTURER)) * 31);
    }

    public final String toString() {
        return "AndroidApplicationInfo(packageName=" + this.a + ", versionName=" + this.b + ", appBuildVersion=" + this.c + ", deviceManufacturer=" + Build.MANUFACTURER + ", currentProcessDetails=" + this.d + ", appProcessDetails=" + this.e + ')';
    }
}
