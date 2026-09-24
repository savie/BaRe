package defpackage;

import java.io.IOException;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.apkshare.ApkImportActivity;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sf extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ sf(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                return new sf((ApkImportActivity) obj3, (zf) obj2, jv1Var, 0);
            case 1:
                return new sf((me5) obj3, (vd5) obj2, jv1Var, 1);
            default:
                return new sf((po8) obj3, (ao8) obj2, jv1Var, 2);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                ((sf) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((sf) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((sf) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                mp6.d(mp6.a, true, false, 2);
                zn4 zn4Var = zn4.a;
                zn4.e(new qf(0, (ApkImportActivity) obj3, (zf) obj2));
                break;
            case 1:
                lg7.H(obj);
                me5 me5Var = (me5) obj3;
                me5Var.h(R.string.downloading_backup_files);
                gv7 gv7Var = ud5.a;
                vd5 vd5Var = (vd5) obj2;
                boolean zD = ud5.d(vd5Var);
                me5Var.f();
                if (!zD) {
                    Const.P();
                } else {
                    me5Var.e.k(new ke5(vd5Var.getLocalFile()));
                }
                break;
            default:
                lg7.H(obj);
                po8 po8Var = (po8) obj3;
                ao8 ao8Var = (ao8) obj2;
                if (po8Var.j(nc8.I(ao8Var.a))) {
                    po8Var.e.k(ao8Var);
                }
                break;
        }
        return be8Var;
    }
}
