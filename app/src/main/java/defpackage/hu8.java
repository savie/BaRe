package defpackage;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hu8 extends ws7 implements qt3 {
    public ArrayList a;
    public int b;
    public final /* synthetic */ iu8 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hu8(iu8 iu8Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = iu8Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new hu8(this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((hu8) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b7  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        ArrayList arrayList;
        List<et8> items;
        Object cu8Var;
        iu8 iu8Var = this.c;
        ex6 ex6Var = iu8Var.h;
        int i = this.b;
        ArrayList arrayList2 = null;
        if (i == 0) {
            lg7.H(obj);
            ex6Var.k(du8.a);
            long jCurrentTimeMillis = System.currentTimeMillis();
            iu8Var.j().getClass();
            if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                d6.o();
                return null;
            }
            String str = ry5.u;
            q63 q63Var = new q63(eq3.j(qy5.f(false, null).n, "wifi_networks.wfi"), 2);
            if (q63Var.j()) {
                gv7 gv7Var = w14.a;
                ft8 ft8Var = (ft8) w14.a(q63Var, ft8.class);
                if (ft8Var != null && (items = ft8Var.getItems()) != null) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj2 : items) {
                        if (((et8) obj2).isValid()) {
                            arrayList3.add(obj2);
                        }
                    }
                    arrayList2 = new ArrayList(arrayList3);
                }
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            if (jCurrentTimeMillis2 < 1000) {
                this.a = arrayList2;
                this.b = 1;
                Object objJ = yc9.j(1000 - jCurrentTimeMillis2, this);
                yx1 yx1Var = yx1.a;
                if (objJ == yx1Var) {
                    return yx1Var;
                }
                arrayList = arrayList2;
            }
            if (arrayList2 != null || arrayList2.isEmpty()) {
                cu8Var = new cu8(iu8Var.k().isWifiEnabled());
            } else {
                cu8Var = new fu8(arrayList2);
            }
            ex6Var.k(cu8Var);
            return be8.a;
        }
        if (i != 1) {
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        arrayList = this.a;
        lg7.H(obj);
        arrayList2 = arrayList;
        if (arrayList2 != null) {
            cu8Var = new cu8(iu8Var.k().isWifiEnabled());
        } else {
            cu8Var = new cu8(iu8Var.k().isWifiEnabled());
        }
        ex6Var.k(cu8Var);
        return be8.a;
    }
}
