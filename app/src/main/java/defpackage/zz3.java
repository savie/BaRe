package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final Map e;

    public /* synthetic */ zz3(String str, String str2, String str3, LinkedHashMap linkedHashMap, int i) {
        this((String) null, str, (i & 4) != 0 ? null : str2, str3, (i & 16) != 0 ? pv2.a : linkedHashMap);
    }

    public static zz3 a(zz3 zz3Var, String str, String str2, int i) {
        if ((i & 1) != 0) {
            str = zz3Var.a;
        }
        String str3 = str;
        String str4 = zz3Var.b;
        if ((i & 4) != 0) {
            str2 = zz3Var.c;
        }
        String str5 = zz3Var.d;
        Map map = zz3Var.e;
        str4.getClass();
        map.getClass();
        return new zz3(str3, str4, str2, str5, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zz3)) {
            return false;
        }
        zz3 zz3Var = (zz3) obj;
        return pe4.d(this.a, zz3Var.a) && pe4.d(this.b, zz3Var.b) && pe4.d(this.c, zz3Var.c) && pe4.d(this.d, zz3Var.d) && pe4.d(this.e, zz3Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iG = fz5.g((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
        String str2 = this.c;
        int iHashCode = (iG + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return this.e.hashCode() + ((iHashCode + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("GoogleDriveFileMetadata(id=", this.a, ", name=", this.b, ", parentId=");
        xs1.t(sbP, this.c, ", mimeType=", this.d, ", properties=");
        sbP.append(this.e);
        sbP.append(")");
        return sbP.toString();
    }

    public zz3(String str, String str2, String str3, String str4, Map map) {
        str2.getClass();
        map.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = map;
    }
}
