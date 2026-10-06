package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xn4 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ int d;
    public final /* synthetic */ ArrayList e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xn4(boolean z, int i, ArrayList arrayList, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = z;
        this.d = i;
        this.e = arrayList;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        xn4 xn4Var = new xn4(this.c, this.d, this.e, jv1Var);
        xn4Var.b = obj;
        return xn4Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((xn4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        xx1 xx1Var = (xx1) this.b;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            boolean z = this.c;
            ArrayList arrayList = this.e;
            if (!z) {
                ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((vn4) it.next()).a.invoke());
                }
                return arrayList2;
            }
            int i2 = this.d;
            if (i2 < 1) {
                i2 = 1;
            }
            int i3 = a77.a;
            z67 z67Var = new z67(i2);
            ArrayList arrayList3 = new ArrayList(hl1.G0(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList3.add(l73.e(xx1Var, null, new wn4(z67Var, (vn4) it2.next(), null), 3));
            }
            this.b = null;
            this.a = 1;
            obj = arrayList3.isEmpty() ? ov2.a : new ze0((jg2[]) arrayList3.toArray(new jg2[0])).a(this);
            yx1 yx1Var = yx1.a;
            if (obj == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return (List) obj;
    }
}
