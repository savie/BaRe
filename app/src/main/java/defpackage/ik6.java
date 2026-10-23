package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ik6 implements q36 {
    public final /* synthetic */ int a;
    public boolean b;
    public final Object c;
    public final Object d;

    public ik6(hk6 hk6Var, List list, boolean z, int i) {
        this.a = 0;
        list = (i & 2) != 0 ? ov2.a : list;
        z = (i & 8) != 0 ? true : z;
        hk6Var.getClass();
        list.getClass();
        this.d = hk6Var;
        this.c = list;
        this.b = z;
    }

    @Override // defpackage.q36
    public boolean a(Object obj) {
        kh8 kh8Var = (kh8) obj;
        gy5 gy5Var = (gy5) this.d;
        boolean z = kh8Var.e;
        gy5 gy5Var2 = kh8Var.b;
        if ((z || this.b) && !((List) this.c).contains(Long.valueOf(kh8Var.a))) {
            return gy5Var2.g(gy5Var) || gy5Var.g(gy5Var2);
        }
        return false;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                hk6 hk6Var = (hk6) this.d;
                int size = ((List) this.c).size();
                boolean z = this.b;
                StringBuilder sb = new StringBuilder("RepositoryResult(status=");
                sb.append(hk6Var);
                sb.append(", message=null, data size=");
                sb.append(size);
                sb.append(", scrollListToTop=");
                return dj7.p(sb, z, ")");
            default:
                return super.toString();
        }
    }

    public ik6() {
        this.a = 2;
        this.d = new ArrayList();
        this.c = new HashMap();
        this.b = false;
    }

    public ik6(boolean z, List list, gy5 gy5Var) {
        this.a = 1;
        this.b = z;
        this.c = list;
        this.d = gy5Var;
    }
}
