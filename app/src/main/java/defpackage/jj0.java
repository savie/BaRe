package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jj0 implements jl0 {
    public final String a;
    public final String b;
    public final List c;
    public final boolean d;
    public final bt3 e;

    public jj0(String str, String str2, List list, boolean z, bt3 bt3Var) {
        str.getClass();
        str2.getClass();
        list.getClass();
        this.a = str;
        this.b = str2;
        this.c = list;
        this.d = z;
        this.e = bt3Var;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.c) {
            if (((li0) obj).a()) {
                arrayList.add(obj);
            }
        }
        return new ArrayList(arrayList);
    }

    public final boolean b() {
        List<li0> list = this.c;
        if (list != null && list.isEmpty()) {
            return false;
        }
        for (li0 li0Var : list) {
            if (!li0Var.b() && !li0Var.a()) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jj0)) {
            return false;
        }
        jj0 jj0Var = (jj0) obj;
        return pe4.d(this.a, jj0Var.a) && pe4.d(this.b, jj0Var.b) && pe4.d(this.c, jj0Var.c) && this.d == jj0Var.d && pe4.d(this.e, jj0Var.e);
    }

    @Override // defpackage.jl0
    public final jl0 getCopy() {
        String str = this.a;
        str.getClass();
        String str2 = this.b;
        str2.getClass();
        List list = this.c;
        list.getClass();
        return new jj0(str, str2, list, this.d, this.e);
    }

    @Override // defpackage.jl0
    public final String getItemId() {
        return this.a;
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.i(this.c, fz5.g(this.a.hashCode() * 31, 31, this.b), 31), 31, this.d);
        bt3 bt3Var = this.e;
        return iH + (bt3Var == null ? 0 : bt3Var.hashCode());
    }

    public final String toString() {
        StringBuilder sbP = u48.p("BRESectionItem(id=", this.a, ", title=", this.b, ", btns=");
        sbP.append(this.c);
        sbP.append(", shouldHaveOneChipChecked=");
        sbP.append(this.d);
        sbP.append(", onHelpClick=");
        sbP.append(this.e);
        sbP.append(")");
        return sbP.toString();
    }

    public /* synthetic */ jj0(String str, String str2, boolean z, bt3 bt3Var, int i) {
        this(str, str2, new ArrayList(), (i & 8) != 0 ? true : z, (i & 16) != 0 ? null : bt3Var);
    }
}
