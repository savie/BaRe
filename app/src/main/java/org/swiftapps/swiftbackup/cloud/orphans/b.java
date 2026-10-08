package org.swiftapps.swiftbackup.cloud.orphans;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.dd1;
import defpackage.eq3;
import defpackage.fz5;
import defpackage.pe4;
import defpackage.wa1;
import defpackage.xs1;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public final dd1 a;
    public final String b;
    public final int c;
    public final boolean d;
    public final String e;
    public final boolean f;
    public final String g;
    public final a.EnumC0013a h;
    public final List i;
    public final Set j;
    public final String k;
    public final int l;
    public final int m;

    public b(dd1 dd1Var, String str, int i, boolean z, String str2, boolean z2, String str3, a.EnumC0013a enumC0013a, List list, Set set, String str4, int i2, int i3) {
        dd1Var.getClass();
        str.getClass();
        enumC0013a.getClass();
        list.getClass();
        set.getClass();
        this.a = dd1Var;
        this.b = str;
        this.c = i;
        this.d = z;
        this.e = str2;
        this.f = z2;
        this.g = str3;
        this.h = enumC0013a;
        this.i = list;
        this.j = set;
        this.k = str4;
        this.l = i2;
        this.m = i3;
    }

    public static b a(b bVar, a.EnumC0013a enumC0013a, List list, Set set, String str, int i, int i2, int i3) {
        dd1 dd1Var = bVar.a;
        String str2 = bVar.b;
        int i4 = bVar.c;
        boolean z = bVar.d;
        String str3 = bVar.e;
        boolean z2 = bVar.f;
        String str4 = bVar.g;
        a.EnumC0013a enumC0013a2 = (i3 & 128) != 0 ? bVar.h : enumC0013a;
        List list2 = (i3 & 256) != 0 ? bVar.i : list;
        Set set2 = (i3 & 512) != 0 ? bVar.j : set;
        String str5 = (i3 & 1024) != 0 ? bVar.k : str;
        int i5 = (i3 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? bVar.l : i;
        int i6 = (i3 & 4096) != 0 ? bVar.m : i2;
        bVar.getClass();
        dd1Var.getClass();
        str2.getClass();
        enumC0013a2.getClass();
        list2.getClass();
        set2.getClass();
        return new b(dd1Var, str2, i4, z, str3, z2, str4, enumC0013a2, list2, set2, str5, i5, i6);
    }

    public final boolean b() {
        return this.f && this.h == a.EnumC0013a.RESULTS && !c().isEmpty();
    }

    public final ArrayList c() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.i) {
            wa1 wa1Var = (wa1) obj;
            wa1Var.getClass();
            if (this.j.contains(wa1Var.d.name() + WebViewProviderFactoryBoundaryInterface.MULTI_COOKIE_VALUE_SEPARATOR + wa1Var.b)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final boolean d() {
        a.EnumC0013a enumC0013a = a.EnumC0013a.SCANNING;
        a.EnumC0013a enumC0013a2 = this.h;
        return enumC0013a2 == enumC0013a || enumC0013a2 == a.EnumC0013a.DELETING;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.a == bVar.a && pe4.d(this.b, bVar.b) && this.c == bVar.c && this.d == bVar.d && this.e.equals(bVar.e) && this.f == bVar.f && this.g.equals(bVar.g) && this.h == bVar.h && pe4.d(this.i, bVar.i) && pe4.d(this.j, bVar.j) && pe4.d(this.k, bVar.k) && this.l == bVar.l && this.m == bVar.m;
    }

    public final int hashCode() {
        int iHashCode = (this.j.hashCode() + fz5.i(this.i, (this.h.hashCode() + fz5.g(fz5.h(fz5.g(fz5.h(eq3.d(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d), 31, this.e), 31, this.f), 31, this.g)) * 31, 31)) * 31;
        String str = this.k;
        return Integer.hashCode(this.m) + eq3.d(this.l, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
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
        sb.append(this.e);
        sb.append(", isCloudConnected=");
        sb.append(this.f);
        sb.append(", providerIdentityKey=");
        sb.append(this.g);
        sb.append(", phase=");
        sb.append(this.h);
        sb.append(", files=");
        sb.append(this.i);
        sb.append(", selectedIds=");
        sb.append(this.j);
        sb.append(", statusMessage=");
        sb.append(this.k);
        sb.append(", scannedFileCount=");
        sb.append(this.l);
        sb.append(", firebaseReferenceCount=");
        return xs1.m(sb, this.m, ")");
    }
}
