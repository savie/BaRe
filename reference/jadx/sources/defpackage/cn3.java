package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.views.MCheckBox;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cn3 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ cn3(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        Object obj = this.d;
        Object obj2 = this.c;
        Object obj3 = this.b;
        switch (i) {
            case 0:
                fn3 fn3Var = (fn3) obj2;
                dn3 dn3Var = (dn3) obj;
                qt3 qt3Var = ((en3) obj3).j;
                if (qt3Var != null) {
                    qt3Var.invoke(fn3Var, Integer.valueOf(dn3Var.b()));
                }
                break;
            default:
                bp3 bp3Var = (bp3) obj3;
                zk3 zk3Var = (zk3) obj;
                MCheckBox mCheckBox = bp3Var.B;
                mCheckBox.toggle();
                ((cp3) obj2).v(zk3Var, mCheckBox.isChecked(), false);
                bp3Var.s(zk3Var);
                break;
        }
    }
}
