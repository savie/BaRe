package defpackage;

import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b20 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ AppsBatchActivity b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b20(AppsBatchActivity appsBatchActivity, boolean z, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = appsBatchActivity;
        this.c = z;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new b20(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((b20) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        boolean z;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            AppsBatchActivity appsBatchActivity = this.b;
            l20 l20Var = appsBatchActivity.m0;
            if (l20Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            List listL = l20Var.l();
            if (!listL.isEmpty()) {
                Iterator it = listL.iterator();
                loop0: while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    List<gm> localBackups = ((ji) it.next()).getLocalBackups();
                    if (localBackups != null && !localBackups.isEmpty()) {
                        Iterator<T> it2 = localBackups.iterator();
                        while (it2.hasNext()) {
                            if (((gm) it2.next()).b.isProtectedBackup()) {
                                z = true;
                                break loop0;
                            }
                        }
                    }
                }
            } else {
                z = false;
                break;
            }
            zn4 zn4Var = zn4.a;
            z10 z10Var = new z10(appsBatchActivity, z, this.c, 0);
            this.a = 1;
            Object objG = zn4.g(z10Var, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
