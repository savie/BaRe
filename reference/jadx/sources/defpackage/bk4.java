package defpackage;

import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bk4 implements Serializable {
    public static final bk4 n = new bk4();
    public final String a;
    public final ak4 b;
    public final Locale c;
    public final String d;
    public final Boolean e;
    public final zj4 f;
    public transient TimeZone k;

    public bk4(String str, ak4 ak4Var, String str2, String str3, zj4 zj4Var, Boolean bool) {
        this(str, ak4Var, (str2 == null || str2.length() == 0 || "##default".equals(str2)) ? null : new Locale(str2), (str3 == null || str3.length() == 0 || "##default".equals(str3)) ? null : str3, null, zj4Var, bool);
    }

    public final Boolean a(yj4 yj4Var) {
        zj4 zj4Var = this.f;
        zj4Var.getClass();
        int iOrdinal = 1 << yj4Var.ordinal();
        if ((zj4Var.b & iOrdinal) != 0) {
            return Boolean.FALSE;
        }
        if ((zj4Var.a & iOrdinal) != 0) {
            return Boolean.TRUE;
        }
        return null;
    }

    public final boolean b() {
        if (this.k != null) {
            return true;
        }
        String str = this.d;
        return (str == null || str.isEmpty()) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0054 A[PHI: r1
      0x0054: PHI (r1v2 zj4) = (r1v1 zj4), (r1v3 zj4), (r1v1 zj4), (r1v1 zj4) binds: [B:26:0x0037, B:40:0x0056, B:38:0x0052, B:30:0x0040] A[DONT_GENERATE, DONT_INLINE]] */
    public final bk4 c(bk4 bk4Var) {
        bk4 bk4Var2;
        if (bk4Var == null || bk4Var == (bk4Var2 = n) || bk4Var == this) {
            return this;
        }
        if (this == bk4Var2) {
            return bk4Var;
        }
        String str = bk4Var.a;
        if (str == null || str.isEmpty()) {
            str = this.a;
        }
        String str2 = str;
        ak4 ak4Var = bk4Var.b;
        if (ak4Var == ak4.p) {
            ak4Var = this.b;
        }
        ak4 ak4Var2 = ak4Var;
        Locale locale = bk4Var.c;
        if (locale == null) {
            locale = this.c;
        }
        Locale locale2 = locale;
        zj4 zj4Var = bk4Var.f;
        zj4 zj4Var2 = this.f;
        if (zj4Var2 != null) {
            int i = zj4Var2.b;
            if (zj4Var == null) {
                zj4Var = zj4Var2;
            } else {
                int i2 = zj4Var.b;
                int i3 = zj4Var.a;
                if (i2 == 0 && i3 == 0) {
                    zj4Var = zj4Var2;
                } else {
                    int i4 = zj4Var2.a;
                    if (i4 != 0 || i != 0) {
                        int i5 = ((~i2) & i4) | i3;
                        int i6 = i2 | ((~i3) & i);
                        if (i5 != i4 || i6 != i) {
                            zj4Var2 = new zj4(i5, i6);
                        }
                        zj4Var = zj4Var2;
                    }
                }
            }
        }
        zj4 zj4Var3 = zj4Var;
        Boolean bool = bk4Var.e;
        if (bool == null) {
            bool = this.e;
        }
        Boolean bool2 = bool;
        String str3 = bk4Var.d;
        if (str3 == null || str3.isEmpty()) {
            str3 = this.d;
        } else {
            this = bk4Var;
        }
        return new bk4(str2, ak4Var2, locale2, str3, this.k, zj4Var3, bool2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != bk4.class) {
            return false;
        }
        bk4 bk4Var = (bk4) obj;
        return this.b == bk4Var.b && this.f.equals(bk4Var.f) && Objects.equals(this.e, bk4Var.e) && Objects.equals(this.d, bk4Var.d) && Objects.equals(this.a, bk4Var.a) && Objects.equals(this.k, bk4Var.k) && Objects.equals(this.c, bk4Var.c);
    }

    public final int hashCode() {
        String str = this.d;
        int iHashCode = str == null ? 1 : str.hashCode();
        String str2 = this.a;
        if (str2 != null) {
            iHashCode ^= str2.hashCode();
        }
        int iHashCode2 = this.b.hashCode() + iHashCode;
        Boolean bool = this.e;
        if (bool != null) {
            iHashCode2 ^= bool.hashCode();
        }
        Locale locale = this.c;
        if (locale != null) {
            iHashCode2 += locale.hashCode();
        }
        return this.f.hashCode() ^ iHashCode2;
    }

    public final String toString() {
        return "JsonFormat.Value(pattern=" + this.a + ",shape=" + this.b + ",lenient=" + this.e + ",locale=" + this.c + ",timezone=" + this.d + ",features=" + this.f + ")";
    }

    public bk4() {
        this("", ak4.p, "", "", zj4.c, null);
    }

    public bk4(String str, ak4 ak4Var, Locale locale, String str2, TimeZone timeZone, zj4 zj4Var, Boolean bool) {
        this.a = str == null ? "" : str;
        this.b = ak4Var == null ? ak4.p : ak4Var;
        this.c = locale;
        this.k = timeZone;
        this.d = str2;
        this.f = zj4Var == null ? zj4.c : zj4Var;
        this.e = bool;
    }
}
