package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wa2 extends ws7 implements mt3 {
    public int a;
    public final /* synthetic */ cd7 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wa2(cd7 cd7Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.b = cd7Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new wa2(this.b, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((wa2) create((jv1) obj)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws IOException {
        Context context;
        int i = this.a;
        be8 be8Var = be8.a;
        if (i != 0) {
            if (i == 1) {
                lg7.H(obj);
                return be8Var;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        this.a = 1;
        cd7 cd7Var = this.b;
        SharedPreferences.Editor editorEdit = ((SharedPreferences) cd7Var.e.getValue()).edit();
        Set set = cd7Var.f;
        if (set == null) {
            editorEdit.clear();
        } else {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                editorEdit.remove((String) it.next());
            }
        }
        if (!editorEdit.commit()) {
            y5.m("Unable to delete migrated keys from SharedPreferences.");
            return null;
        }
        if (((SharedPreferences) cd7Var.e.getValue()).getAll().isEmpty() && (context = cd7Var.c) != null) {
            ad7.a(context, cd7Var.d);
        }
        if (set != null) {
            set.clear();
        }
        yx1 yx1Var = yx1.a;
        return be8Var == yx1Var ? yx1Var : be8Var;
    }
}
