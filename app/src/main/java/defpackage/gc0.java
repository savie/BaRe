package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gc0 extends b02 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final Long e;
    public final boolean f;
    public final jz1 g;
    public final a02 h;
    public final zz1 i;
    public final kz1 j;
    public final List k;
    public final int l;

    public gc0(String str, String str2, String str3, long j, Long l, boolean z, jz1 jz1Var, a02 a02Var, zz1 zz1Var, kz1 kz1Var, List list, int i) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = l;
        this.f = z;
        this.g = jz1Var;
        this.h = a02Var;
        this.i = zz1Var;
        this.j = kz1Var;
        this.k = list;
        this.l = i;
    }

    @Override // defpackage.b02
    public final fc0 a() {
        fc0 fc0Var = new fc0();
        fc0Var.a = this.a;
        fc0Var.b = this.b;
        fc0Var.c = this.c;
        fc0Var.d = this.d;
        fc0Var.e = this.e;
        fc0Var.f = this.f;
        fc0Var.g = this.g;
        fc0Var.h = this.h;
        fc0Var.i = this.i;
        fc0Var.j = this.j;
        fc0Var.k = this.k;
        fc0Var.l = this.l;
        fc0Var.m = (byte) 7;
        return fc0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b02) {
            gc0 gc0Var = (gc0) ((b02) obj);
            if (this.a.equals(gc0Var.a) && this.b.equals(gc0Var.b)) {
                String str = gc0Var.c;
                String str2 = this.c;
                if (str2 != null ? str2.equals(str) : str == null) {
                    if (this.d == gc0Var.d) {
                        Long l = gc0Var.e;
                        Long l2 = this.e;
                        if (l2 != null ? l2.equals(l) : l == null) {
                            if (this.f == gc0Var.f && this.g.equals(gc0Var.g)) {
                                a02 a02Var = gc0Var.h;
                                a02 a02Var2 = this.h;
                                if (a02Var2 != null ? a02Var2.equals(a02Var) : a02Var == null) {
                                    zz1 zz1Var = gc0Var.i;
                                    zz1 zz1Var2 = this.i;
                                    if (zz1Var2 != null ? zz1Var2.equals(zz1Var) : zz1Var == null) {
                                        kz1 kz1Var = gc0Var.j;
                                        kz1 kz1Var2 = this.j;
                                        if (kz1Var2 != null ? kz1Var2.equals(kz1Var) : kz1Var == null) {
                                            List list = gc0Var.k;
                                            List list2 = this.k;
                                            if (list2 != null ? list2.equals(list) : list == null) {
                                                if (this.l == gc0Var.l) {
                                                    return true;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003;
        String str = this.c;
        int iHashCode2 = str == null ? 0 : str.hashCode();
        long j = this.d;
        int i = (((iHashCode ^ iHashCode2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003;
        Long l = this.e;
        int iHashCode3 = (((((i ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.f ? 1231 : 1237)) * 1000003) ^ this.g.hashCode()) * 1000003;
        a02 a02Var = this.h;
        int iHashCode4 = (iHashCode3 ^ (a02Var == null ? 0 : a02Var.hashCode())) * 1000003;
        zz1 zz1Var = this.i;
        int iHashCode5 = (iHashCode4 ^ (zz1Var == null ? 0 : zz1Var.hashCode())) * 1000003;
        kz1 kz1Var = this.j;
        int iHashCode6 = (iHashCode5 ^ (kz1Var == null ? 0 : kz1Var.hashCode())) * 1000003;
        List list = this.k;
        return this.l ^ ((iHashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Session{generator=");
        sb.append(this.a);
        sb.append(", identifier=");
        sb.append(this.b);
        sb.append(", appQualitySessionId=");
        sb.append(this.c);
        sb.append(", startedAt=");
        sb.append(this.d);
        sb.append(", endedAt=");
        sb.append(this.e);
        sb.append(", crashed=");
        sb.append(this.f);
        sb.append(", app=");
        sb.append(this.g);
        sb.append(", user=");
        sb.append(this.h);
        sb.append(", os=");
        sb.append(this.i);
        sb.append(", device=");
        sb.append(this.j);
        sb.append(", events=");
        sb.append(this.k);
        sb.append(", generatorType=");
        return xs1.m(sb, this.l, "}");
    }
}
