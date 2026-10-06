package defpackage;

import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.fragment.app.h;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w7 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public w7(km0 km0Var, jl8 jl8Var) {
        this.a = 4;
        this.b = jl8Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.h();
                actionBarOverlayLayout.O = actionBarOverlayLayout.d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.P);
                return;
            case 1:
                h hVar = (h) obj;
                hVar.d.onDismiss(hVar.t);
                return;
            case 2:
                kp3 kp3Var = (kp3) obj;
                if (kp3Var.getView() != null) {
                    kp3Var.l().setRefreshing(false);
                    return;
                }
                return;
            case 3:
                ((f46) obj).o();
                return;
            case 4:
                ((jl8) obj).invoke();
                return;
            case 5:
                c00 c00Var = (c00) obj;
                nr8 nr8Var = (nr8) c00Var.c;
                nr8 nr8Var2 = (nr8) c00Var.c;
                if (nr8Var.j.e()) {
                    nr8Var2.j.c("closed", null, new Object[0]);
                }
                nr8.a(nr8Var2);
                return;
            case 6:
                ((g19) obj).h();
                return;
            default:
                Iterator it = ((FirebaseAuth) obj).c.iterator();
                if (it.hasNext()) {
                    throw eq3.h(it);
                }
                return;
        }
    }

    public /* synthetic */ w7(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
