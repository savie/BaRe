package defpackage;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sl8 extends an6 implements qt3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ View d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sl8(View view, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = view;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        sl8 sl8Var = new sl8(this.d, jv1Var);
        sl8Var.c = obj;
        return sl8Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((sl8) create((g77) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        int i = this.b;
        View view = this.d;
        yx1 yx1Var = yx1.a;
        if (i == 0) {
            lg7.H(obj);
            g77 g77Var = (g77) this.c;
            this.c = g77Var;
            this.b = 1;
            g77Var.d(view, this);
            return yx1Var;
        }
        be8 be8Var = be8.a;
        if (i != 1) {
            if (i == 2) {
                lg7.H(obj);
                return be8Var;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        g77 g77Var2 = (g77) this.c;
        lg7.H(obj);
        if (view instanceof ViewGroup) {
            this.c = null;
            this.b = 2;
            g77Var2.getClass();
            p98 p98Var = new p98(new ol8((ViewGroup) view));
            if (p98Var.b.hasNext()) {
                g77Var2.c = p98Var;
                g77Var2.a = 2;
                g77Var2.d = this;
                obj2 = yx1Var;
            } else {
                obj2 = be8Var;
            }
            if (obj2 != yx1Var) {
                obj2 = be8Var;
            }
            if (obj2 == yx1Var) {
                return yx1Var;
            }
        }
        return be8Var;
    }
}
