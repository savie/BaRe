package defpackage;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qn implements Runnable {
    public final /* synthetic */ int a;
    public final Object b;

    public /* synthetic */ qn(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                fo foVar = (fo) obj;
                int i2 = 0;
                foVar.N.showAtLocation(foVar.M, 55, 0, 0);
                lm8 lm8Var = foVar.P;
                if (lm8Var != null) {
                    lm8Var.b();
                }
                if (foVar.Q && (viewGroup = foVar.R) != null && viewGroup.isLaidOut()) {
                    foVar.M.setAlpha(0.0f);
                    lm8 lm8VarA = dl8.a(foVar.M);
                    lm8VarA.a(1.0f);
                    foVar.P = lm8VarA;
                    lm8VarA.d(new pn(this, i2));
                } else {
                    foVar.M.setAlpha(1.0f);
                    foVar.M.setVisibility(0);
                }
                break;
            default:
                try {
                    ((Runnable) obj).run();
                } catch (Exception e) {
                    ly8.p(e, "Executor", "Background execution failure.");
                    return;
                }
                break;
        }
    }
}
