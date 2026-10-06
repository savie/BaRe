package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.cloud.connect.CsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e52 implements t45 {
    public final /* synthetic */ bt3 a;
    public final /* synthetic */ CsActivity b;
    public final /* synthetic */ String c;

    public /* synthetic */ e52(bt3 bt3Var, CsActivity csActivity, String str) {
        this.a = bt3Var;
        this.b = csActivity;
        this.c = str;
    }

    @Override // defpackage.t45
    public final void b(boolean z, boolean z2) {
        int i = CsActivity.P0;
        if (z) {
            this.a.invoke();
            return;
        }
        CsActivity csActivity = this.b;
        if (z2) {
            dz5 dz5Var = dz5.a;
            dz5.o(csActivity, sz8.Y("android.permission.ACCESS_LOCAL_NETWORK"), false);
        } else {
            Context applicationContext = csActivity.getApplicationContext();
            applicationContext.getClass();
            zn4 zn4Var = zn4.a;
            dj7.y(applicationContext, this.c);
        }
    }
}
