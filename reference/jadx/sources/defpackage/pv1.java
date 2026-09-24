package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.contributor.ContributorRegistration;
import org.swiftapps.swiftbackup.contributor.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pv1 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ a b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pv1(a aVar, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = aVar;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new pv1(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((pv1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        ContributorRegistration contributorRegistration = null;
        a aVar = this.b;
        if (i == 0) {
            lg7.H(obj);
            aVar.h(R.string.processing);
            long jCurrentTimeMillis = System.currentTimeMillis();
            l73 l73VarA = cf3.a(aVar.e, true);
            if (l73VarA instanceof xe3) {
                contributorRegistration = (ContributorRegistration) ((xe3) l73VarA).n.c(ContributorRegistration.class);
            } else {
                if (!(l73VarA instanceof we3)) {
                    q.j();
                    return null;
                }
                String strJ = xs1.j("Error while fetching remote details: ", ((we3) l73VarA).n.b);
                vr6.e$default(vr6.INSTANCE, aVar.b, strJ, null, 4, null);
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                zn4 zn4Var = zn4.a;
                dj7.y(contextC, strJ);
            }
            if (contributorRegistration == null) {
                aVar.d();
                return be8Var;
            }
            aVar.f.k(contributorRegistration);
            aVar.g = contributorRegistration;
            long jM = Const.m(jCurrentTimeMillis, 500L);
            this.a = 1;
            Object objJ = yc9.j(jM, this);
            yx1 yx1Var = yx1.a;
            if (objJ == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        aVar.f();
        return be8Var;
    }
}
