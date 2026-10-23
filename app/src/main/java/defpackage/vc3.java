package defpackage;

import android.view.View;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vc3 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ hg6 c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vc3(hg6 hg6Var, Object obj, int i, int i2) {
        this.a = i2;
        this.c = hg6Var;
        this.d = obj;
        this.b = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = this.b;
        Object obj = this.d;
        hg6 hg6Var = this.c;
        switch (i) {
            case 0:
                ((xc3) hg6Var).n((uc3) obj, i2, true);
                break;
            case 1:
                s54 s54Var = (s54) obj;
                qt3 qt3Var = ((h54) hg6Var).j;
                if (qt3Var != null) {
                    qt3Var.invoke(s54Var, Integer.valueOf(i2));
                }
                break;
            default:
                g05 g05Var = (g05) hg6Var;
                is4 is4Var = (is4) obj;
                g05Var.t(sz8.Y(is4Var.toString()));
                qt3 qt3Var2 = g05Var.j;
                if (qt3Var2 != null) {
                    qt3Var2.invoke(is4Var, Integer.valueOf(i2));
                }
                break;
        }
    }
}
