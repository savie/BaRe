package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m05 extends xh8 {
    public final /* synthetic */ n05 q;

    public m05(n05 n05Var) {
        this.q = n05Var;
    }

    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) throws InterruptedException {
        super.onDataChange(eb2Var);
        if (eb2Var.a.a.z() > 0) {
            db2 db2VarB = eb2Var.b();
            Iterator it = (Iterator) db2VarB.b;
            l05 l05Var = l05.a;
            dq dqVar = new dq(9);
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                hk5 hk5Var = (hk5) it.next();
                eb2 eb2Var2 = new eb2(((eb2) db2VarB.c).b.d(hk5Var.a.a), sb4.d(hk5Var.b));
                ContributorRegistration contributorRegistration = null;
                try {
                    if (l05Var.invoke(eb2Var2) instanceof Map) {
                        try {
                            ContributorRegistration contributorRegistration2 = (ContributorRegistration) eb2Var2.c(ContributorRegistration.class);
                            if (contributorRegistration2 == null) {
                                dqVar.invoke(null);
                            }
                            contributorRegistration = contributorRegistration2;
                        } catch (Exception e) {
                            dqVar.invoke(e);
                        }
                    } else {
                        dqVar.invoke(null);
                    }
                } catch (Exception e2) {
                    dqVar.invoke(e2);
                }
                if (contributorRegistration != null) {
                    arrayList.add(contributorRegistration);
                }
            }
            this.q.g = arrayList;
        }
    }
}
