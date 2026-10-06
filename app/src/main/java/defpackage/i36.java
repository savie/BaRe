package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class i36 extends xh8 {
    @Override // defpackage.xh8, defpackage.aj8
    public final void onDataChange(eb2 eb2Var) {
        boolean z = j36.a;
        j36.c = eb2Var.a("main");
        j36.d = eb2Var.a("test");
        eb2 eb2Var2 = j36.c;
        if (eb2Var2 != null) {
            Log.i("PostDataRestoreActions", "Init complete with actions for " + eb2Var2.a.a.z() + " apps");
        }
    }
}
