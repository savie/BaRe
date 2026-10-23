package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ef1 {
    public final dd1 a;
    public final String b;
    public final int c;
    public final boolean d;
    public final String e;
    public final String f;
    public final List g;
    public final boolean h;
    public final boolean i;
    public final boolean j;

    public ef1(dd1 dd1Var, String str, int i, boolean z, String str2, String str3, List list, boolean z2, boolean z3, boolean z4) {
        dd1Var.getClass();
        str.getClass();
        this.a = dd1Var;
        this.b = str;
        this.c = i;
        this.d = z;
        this.e = str2;
        this.f = str3;
        this.g = list;
        this.h = z2;
        this.i = z3;
        this.j = z4;
    }

    public static ef1 a(ef1 ef1Var, ArrayList arrayList, boolean z, boolean z2, int i) {
        dd1 dd1Var = ef1Var.a;
        String str = ef1Var.b;
        int i2 = ef1Var.c;
        boolean z3 = ef1Var.d;
        String str2 = ef1Var.e;
        String str3 = ef1Var.f;
        List list = arrayList;
        if ((i & 64) != 0) {
            list = ef1Var.g;
        }
        List list2 = list;
        boolean z4 = ef1Var.h;
        if ((i & 256) != 0) {
            z = ef1Var.i;
        }
        boolean z5 = z;
        if ((i & 512) != 0) {
            z2 = ef1Var.j;
        }
        ef1Var.getClass();
        dd1Var.getClass();
        str.getClass();
        return new ef1(dd1Var, str, i2, z3, str2, str3, list2, z4, z5, z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ef1)) {
            return false;
        }
        ef1 ef1Var = (ef1) obj;
        return this.a == ef1Var.a && pe4.d(this.b, ef1Var.b) && this.c == ef1Var.c && this.d == ef1Var.d && this.e.equals(ef1Var.e) && this.f.equals(ef1Var.f) && this.g.equals(ef1Var.g) && this.h == ef1Var.h && this.i == ef1Var.i && this.j == ef1Var.j;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.j) + fz5.h(fz5.h(fz5.i(this.g, fz5.g(fz5.g(fz5.h(eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d), 31, this.e), 31, this.f), 31), 31, this.h), 31, this.i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("State(cloudType=");
        sb.append(this.a);
        sb.append(", providerTitle=");
        sb.append(this.b);
        sb.append(", providerIconRes=");
        sb.append(this.c);
        sb.append(", isProviderPresetIcon=");
        sb.append(this.d);
        sb.append(", providerSubtitle=");
        xs1.t(sb, this.e, ", backupTag=", this.f, ", items=");
        sb.append(this.g);
        sb.append(", isCloudConnected=");
        sb.append(this.h);
        sb.append(", isRunning=");
        sb.append(this.i);
        sb.append(", isCancelling=");
        sb.append(this.j);
        sb.append(")");
        return sb.toString();
    }
}
