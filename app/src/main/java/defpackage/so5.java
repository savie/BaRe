package defpackage;

import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class so5 {
    public static boolean b;
    public static final so5 a = new so5();
    public static final ro5 c = new ro5();
    public static final ex6 d = new ex6();

    public final synchronized void a() {
        if (b) {
            return;
        }
        b = true;
        Log.d("NoticeRepo", "Initializing");
        zc2 zc2VarD = re3.b().d("notices");
        ro5 ro5Var = c;
        zc2VarD.g(ro5Var);
        re3.b().d("notices").c(ro5Var);
    }
}
