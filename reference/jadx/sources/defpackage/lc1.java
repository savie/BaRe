package defpackage;

import android.content.SharedPreferences;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lc1 extends qo0 {
    public boolean e;
    public final ex6 f = new ex6();
    public final ix6 g = new ix6();
    public final ix6 h = new ix6();
    public dd1 i;
    public boolean j;
    public boolean k;

    public final void j() {
        if (this.k) {
            tb1 tb1Var = tb1.a;
            Log.i("CloudRuntimeSmoke", "CONNECT_RESULT status=PASS cloud=" + qb1.f().getConstant());
        }
        tb1 tb1Var2 = tb1.a;
        SharedPreferences.Editor editor = cz4.k;
        if (editor == null) {
            pe4.F("editor");
            throw null;
        }
        editor.putBoolean("cloud_manual_delete_warning_shown", false).apply();
        tb1.e.k(Boolean.TRUE);
        d();
    }
}
