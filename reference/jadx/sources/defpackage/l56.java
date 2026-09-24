package defpackage;

import android.view.View;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class l56 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ fh6 d;

    public /* synthetic */ l56(Object obj, Object obj2, fh6 fh6Var, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = fh6Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        qt3 qt3Var;
        int i = this.a;
        fh6 fh6Var = this.d;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                n56 n56Var = (n56) obj2;
                String str = (String) obj;
                m56 m56Var = (m56) fh6Var;
                LinkedHashSet linkedHashSet = n56Var.l;
                if (linkedHashSet.contains(str)) {
                    linkedHashSet.remove(str);
                } else {
                    linkedHashSet.add(str);
                }
                int iB = m56Var.b();
                Integer numValueOf = Integer.valueOf(iB);
                if (iB == -1) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    n56Var.f(numValueOf.intValue());
                }
                break;
            default:
                so7 so7Var = (so7) obj2;
                qo7 qo7Var = (qo7) obj;
                po7 po7Var = (po7) fh6Var;
                if (so7Var.b != null) {
                    if ((so7Var.c ? mp6.g : true) && (qt3Var = qo7Var.j) != null) {
                        qt3Var.invoke(so7Var, Integer.valueOf(po7Var.b()));
                        break;
                    }
                }
                break;
        }
    }
}
