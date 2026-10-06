package defpackage;

import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xw7 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ zw7 c;
    public final /* synthetic */ ax7 d;

    public xw7(ax7 ax7Var, int i, int i2, zw7 zw7Var) {
        this.d = ax7Var;
        this.a = i;
        this.b = i2;
        this.c = zw7Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ax7 ax7Var = this.d;
        ib ibVar = ax7Var.r;
        if (ibVar != null) {
            ArrayList arrayList = ax7Var.c;
            int i = this.a;
            arrayList.remove(i);
            ax7Var.a(i, this.b, this.c);
            TextView textView = (TextView) ibVar.c;
            ib0 ib0Var = (ib0) ibVar.b;
            textView.removeCallbacks(ib0Var);
            textView.post(ib0Var);
        }
    }
}
