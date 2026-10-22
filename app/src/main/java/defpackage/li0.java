package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class li0 implements jl0 {
    public final String a;
    public final CharSequence b;
    public final CharSequence c;
    public final Integer d;
    public final Integer e;
    public boolean f;
    public final ao k;
    public final List n;

    public li0(String str, CharSequence charSequence, CharSequence charSequence2, Integer num, Integer num2, boolean z, ao aoVar, List list) {
        str.getClass();
        charSequence.getClass();
        aoVar.getClass();
        list.getClass();
        this.a = str;
        this.b = charSequence;
        this.c = charSequence2;
        this.d = num;
        this.e = num2;
        this.f = z;
        this.k = aoVar;
        this.n = list;
    }

    public final boolean a() {
        ki0 ki0Var = ki0.c;
        ao aoVar = this.k;
        if (pe4.d(aoVar, ki0Var)) {
            return this.f;
        }
        if (aoVar instanceof ji0) {
            return true;
        }
        if (aoVar instanceof ii0) {
            return false;
        }
        q.j();
        return false;
    }

    public final boolean b() {
        return !pe4.d(this.k, ki0.c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof li0)) {
            return false;
        }
        li0 li0Var = (li0) obj;
        return pe4.d(this.a, li0Var.a) && pe4.d(this.b, li0Var.b) && pe4.d(this.c, li0Var.c) && pe4.d(this.d, li0Var.d) && pe4.d(this.e, li0Var.e) && this.f == li0Var.f && pe4.d(this.k, li0Var.k) && pe4.d(this.n, li0Var.n);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        boolean z = this.f;
        String str = this.a;
        str.getClass();
        CharSequence charSequence = this.b;
        charSequence.getClass();
        ao aoVar = this.k;
        aoVar.getClass();
        List list = this.n;
        list.getClass();
        return new li0(str, charSequence, this.c, this.d, this.e, z, aoVar, list);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        CharSequence charSequence = this.c;
        int iHashCode2 = (iHashCode + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.e;
        return this.n.hashCode() + ((this.k.hashCode() + fz5.h((iHashCode3 + (num2 != null ? num2.hashCode() : 0)) * 31, 31, this.f)) * 31);
    }

    public final String toString() {
        return "BREChipItem(id=" + this.a + ", title=" + ((Object) this.b) + ", subtitle=" + ((Object) this.c) + ", iconRes=" + this.d + ", forcedTintColorRes=" + this.e + ", checked=" + this.f + ", forcedState=" + this.k + ", optionItems=" + this.n + ")";
    }

    public /* synthetic */ li0(String str, String str2, String str3, Integer num, Integer num2, boolean z, ao aoVar, int i) {
        this(str, str2, (i & 4) != 0 ? null : str3, num, (i & 16) != 0 ? null : num2, z, (i & 64) != 0 ? ki0.c : aoVar, new ArrayList());
    }
}
