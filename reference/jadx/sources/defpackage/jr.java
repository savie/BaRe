package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.appslist.ui.AppListItemLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jr implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ jl0 d;

    public /* synthetic */ jr(Object obj, Object obj2, jl0 jl0Var, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = jl0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        jl0 jl0Var = this.d;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                tr trVar = (tr) obj2;
                oy oyVar = (oy) obj;
                ji jiVar = (ji) jl0Var;
                try {
                    ((AppListItemLayout) trVar.J.c).h(trVar.W, true);
                    break;
                } catch (IllegalArgumentException unused) {
                }
                qt3 qt3Var = trVar.G;
                if (qt3Var != null) {
                    qt3Var.invoke(oyVar, jiVar);
                }
                break;
            default:
                ((qt3) obj2).invoke(((bp3) obj).C, (zk3) jl0Var);
                break;
        }
    }
}
