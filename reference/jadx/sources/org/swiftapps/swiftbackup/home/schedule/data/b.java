package org.swiftapps.swiftbackup.home.schedule.data;

import defpackage.fz5;
import defpackage.jl0;
import defpackage.pe4;
import defpackage.u48;
import defpackage.z28;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements jl0 {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    public final CharSequence e;
    public final CharSequence f;
    public final boolean k;
    public final List n;
    public final z28 p;
    public final ScheduleItem q;

    public b(String str, String str2, String str3, boolean z, CharSequence charSequence, CharSequence charSequence2, boolean z2, List list, z28 z28Var) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
        this.e = charSequence;
        this.f = charSequence2;
        this.k = z2;
        this.n = list;
        this.p = z28Var;
        this.q = (ScheduleItem) z28Var.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return pe4.d(this.a, bVar.a) && pe4.d(this.b, bVar.b) && pe4.d(this.c, bVar.c) && this.d == bVar.d && pe4.d(this.e, bVar.e) && pe4.d(this.f, bVar.f) && this.k == bVar.k && this.n.equals(bVar.n);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        return new b(str, this.b, this.c, this.d, this.e, this.f, this.k, this.n, this.p);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.q.getItemId();
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iH = fz5.h((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.d);
        CharSequence charSequence = this.e;
        int iHashCode3 = (iH + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        CharSequence charSequence2 = this.f;
        return fz5.i(this.n, fz5.h((iHashCode3 + (charSequence2 != null ? charSequence2.hashCode() : 0)) * 31, 31, this.k), 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("ScheduleCardItem(cardTitle=", this.a, ", cardSubtitle=", this.b, ", toggleButtonTitle=");
        sbP.append(this.c);
        sbP.append(", isEnabled=");
        sbP.append(this.d);
        sbP.append(", nextRunText=");
        sbP.append((Object) this.e);
        sbP.append(", lastRunText=");
        sbP.append((Object) this.f);
        sbP.append(", hasLastRunError=");
        sbP.append(this.k);
        sbP.append(", schedulePropItems=");
        sbP.append(this.n);
        sbP.append(", _s=");
        sbP.append(this.p);
        sbP.append(")");
        return sbP.toString();
    }
}
