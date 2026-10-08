package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public class ua7 {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public boolean g;
    public boolean h;
    public final /* synthetic */ va7 i;

    public ua7(va7 va7Var, String str, String str2, String str3, String str4, String str5, boolean z, String str6, boolean z2) {
        this.i = va7Var;
        va7Var.k = Math.max(va7Var.k, Long.parseLong(str6) + 1);
        str2 = "null".equals(str2) ? null : str2;
        this.a = str;
        this.b = str2;
        this.f = str5;
        this.c = str3;
        this.d = str4;
        this.e = str6;
        this.g = z;
        this.h = z2;
    }

    public final boolean a(String str, String str2, boolean z, boolean z2) {
        String strValueOf;
        if ("null".equals(str)) {
            str = null;
        }
        if (!(this instanceof ta7)) {
            int i = va7.l;
            z2 = true;
        }
        String str3 = this.c;
        boolean z3 = this.g;
        if (z2 && !Objects.equals(str, str3)) {
            str3 = str;
        }
        boolean z4 = this.h;
        if (Objects.equals(str, this.b) && Objects.equals(str3, this.c) && Objects.equals(str2, this.d) && this.f == null && z3 == this.g && z4 == this.h) {
            return false;
        }
        if (z) {
            va7 va7Var = this.i;
            long j = va7Var.k;
            va7Var.k = 1 + j;
            strValueOf = String.valueOf(j);
        } else {
            strValueOf = this.e;
        }
        this.a = this.a;
        this.b = str;
        this.f = null;
        this.c = str3;
        this.d = str2;
        this.e = strValueOf;
        this.g = z3;
        this.h = z4;
        return true;
    }

    public final String toString() {
        return "Setting{id='" + this.e + "', name='" + this.a + "', value='" + this.b + "', defaultValue='" + this.c + "', packageName='" + this.d + "', tag='" + this.f + "', defaultFromSystem=" + this.g + ", isValuePreservedInRestore=" + this.h + '}';
    }

    public ua7(va7 va7Var, String str, String str2, boolean z, String str3) {
        this.i = va7Var;
        this.a = str;
        a(str2, str3, true, z);
    }
}
