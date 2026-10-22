package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.model.firebase.WallsCloudDetails;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lp8 implements gk6 {
    public final /* synthetic */ pp8 a;

    public lp8(pp8 pp8Var) {
        this.a = pp8Var;
    }

    @Override // defpackage.gk6
    public final void a(ik6 ik6Var) {
        Object ep8Var;
        ex6 ex6Var = this.a.t;
        switch (kp8.a[((hk6) ik6Var.d).ordinal()]) {
            case 1:
                ep8Var = cp8.a;
                break;
            case 2:
                ArrayList arrayList = new ArrayList(el1.n1((List) ik6Var.c, new lw1(4)));
                re3.g().d("walls").i(new WallsCloudDetails(Integer.valueOf(arrayList.size())));
                ep8Var = new ep8(arrayList);
                break;
            case 3:
                ep8Var = bp8.a;
                break;
            case 4:
                ep8Var = ap8.a;
                break;
            case 5:
                ep8Var = zo8.a;
                break;
            case 6:
                ep8Var = dp8.a;
                break;
            default:
                q.j();
                return;
        }
        ex6Var.k(ep8Var);
    }
}
