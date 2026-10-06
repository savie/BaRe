package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class us extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ us(Object obj, Object obj2, jv1 jv1Var, int i) {
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
                return new us((ji) obj3, (ws) obj2, jv1Var, 0);
            case 1:
                return new us((List) obj3, (r20) obj2, jv1Var, 1);
            default:
                return new us((b11) obj3, (rz0) obj2, jv1Var, 2);
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
                ((us) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((us) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((us) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        int i = this.a;
        Object obj2 = this.c;
        Object obj3 = this.b;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                lg7.H(obj);
                g00 g00Var = g00.a;
                ji jiVar = (ji) obj3;
                g00.d(jiVar.getPackageName(), jiVar.getName(), jiVar.getEnabled());
                jiVar.setEnabled(!jiVar.getEnabled());
                Const.T();
                zn4 zn4Var = zn4.a;
                zn4.e(new xq(1, (ws) obj2, jiVar));
                break;
            case 1:
                lg7.H(obj);
                List list = (List) obj3;
                ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new pw5((ji) it.next(), null));
                }
                lr4 lr4Var = lr4.a;
                lr4.k(arrayList);
                ((r20) obj2).d();
                break;
            default:
                lg7.H(obj);
                b11 b11Var = (b11) obj3;
                b11Var.h(R.string.downloading_backup_files);
                rz0 rz0Var = (rz0) obj2;
                boolean zD = d01.d(rz0Var);
                b11Var.f();
                if (!zD) {
                    Const.P();
                } else {
                    b11Var.e.k(new y01(rz0Var.getLocalFile()));
                }
                break;
        }
        return be8Var;
    }
}
