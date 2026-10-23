package defpackage;

import android.view.View;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ti implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ti(Object obj, int i, int i2, Object obj2) {
        this.a = i2;
        this.c = obj;
        this.d = obj2;
        this.b = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                pi piVar = (pi) obj;
                qt3 qt3Var = ((wi) obj2).e;
                if (qt3Var != null) {
                    qt3Var.invoke(piVar, Integer.valueOf(i2));
                }
                break;
            case 1:
                jj0 jj0Var = (jj0) obj2;
                ij0 ij0Var = (ij0) obj;
                boolean zB = jj0Var.b();
                List list = jj0Var.c;
                ArrayList arrayList = new ArrayList();
                for (Object obj3 : list) {
                    if (!((li0) obj3).b()) {
                        arrayList.add(obj3);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((li0) it.next()).f = zB;
                }
                ij0Var.f(i2);
                kj0 kj0Var = ij0Var.f;
                if (kj0Var != null) {
                    lj0 lj0Var = (lj0) kj0Var.a;
                    pj0 pj0Var = (pj0) kj0Var.b;
                    boolean z = pj0Var.d || pj0Var.b();
                    MaterialButton materialButton = lj0Var.S;
                    materialButton.setEnabled(z);
                    materialButton.setAlpha(z ? 1.0f : 0.5f);
                }
                break;
            case 2:
                bn3 bn3Var = (bn3) obj;
                qt3 qt3Var2 = ((an3) obj2).j;
                if (qt3Var2 != null) {
                    qt3Var2.invoke(bn3Var, Integer.valueOf(i2));
                }
                break;
            default:
                u55 u55Var = (u55) obj;
                qt3 qt3Var3 = ((t55) obj2).j;
                if (qt3Var3 != null) {
                    qt3Var3.invoke(u55Var, Integer.valueOf(i2));
                }
                break;
        }
    }
}
