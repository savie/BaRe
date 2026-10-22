package defpackage;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hp2 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ jl0 b;
    public final /* synthetic */ fh6 c;
    public final /* synthetic */ Object d;

    public /* synthetic */ hp2(jl0 jl0Var, fh6 fh6Var, Object obj, int i) {
        this.a = i;
        this.b = jl0Var;
        this.c = fh6Var;
        this.d = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.d;
        fh6 fh6Var = this.c;
        jl0 jl0Var = this.b;
        switch (i) {
            case 0:
                ((jp2) jl0Var).k.invoke();
                View view2 = ((ip2) fh6Var).a;
                view2.getClass();
                view2.postDelayed(new x7((id2) obj, 1), 500L);
                break;
            default:
                zc6 zc6Var = (zc6) jl0Var;
                q54 q54Var = (q54) fh6Var;
                s54 s54Var = (s54) obj;
                if (!zc6Var.k) {
                    q54Var.r(zc6Var);
                    break;
                } else {
                    p54 p54Var = q54Var.u;
                    r54 r54Var = q54Var.v;
                    String str = r54Var.m;
                    String str2 = s54Var.a;
                    boolean zD = pe4.d(str, str2);
                    boolean z = !zD;
                    r54Var.m = !zD ? str2 : null;
                    pb0 pb0Var = new pb0();
                    pb0Var.G(160L);
                    pb0Var.I(r54.n);
                    da8.a(p54Var.e, pb0Var);
                    sz8.d0(p54Var.d, z);
                    if (str != null && !str.equals(str2)) {
                        Iterator it = r54Var.e.a.iterator();
                        int i2 = 0;
                        while (true) {
                            if (!it.hasNext()) {
                                i2 = -1;
                            } else if (!pe4.d(((s54) it.next()).a, str)) {
                                i2++;
                            }
                        }
                        if (i2 != -1) {
                            r54Var.f(i2);
                        }
                        break;
                    }
                }
                break;
        }
    }
}
