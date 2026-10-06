package defpackage;

import android.view.View;
import org.swiftapps.swiftbackup.home.schedule.data.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class de1 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ jl0 d;

    public /* synthetic */ de1(boolean z, Object obj, jl0 jl0Var, int i) {
        this.a = i;
        this.b = z;
        this.c = obj;
        this.d = jl0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zs zsVar;
        int i = this.a;
        jl0 jl0Var = this.d;
        Object obj = this.c;
        boolean z = this.b;
        switch (i) {
            case 0:
                jf jfVar = (jf) obj;
                md1 md1Var = (md1) jl0Var;
                if (z) {
                    jfVar.invoke(md1Var);
                }
                break;
            default:
                j57 j57Var = (j57) obj;
                b bVar = (b) jl0Var;
                if (z && (zsVar = j57Var.r) != null) {
                    zsVar.invoke(bVar.q.getItemId());
                    break;
                }
                break;
        }
    }
}
