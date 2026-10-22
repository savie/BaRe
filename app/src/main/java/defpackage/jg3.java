package defpackage;

import com.google.firebase.FirebaseApp;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jg3 {
    public final HashMap a = new HashMap();
    public final FirebaseApp b;
    public final wc9 c;
    public final ib d;

    public jg3(FirebaseApp firebaseApp, lu5 lu5Var, lu5 lu5Var2) {
        this.b = firebaseApp;
        this.c = new wc9(lu5Var);
        this.d = new ib(lu5Var2);
    }

    public final synchronized ig3 a(xj6 xj6Var) {
        ig3 ig3Var;
        try {
            ig3Var = (ig3) this.a.get(xj6Var);
            if (ig3Var == null) {
                uc2 uc2Var = new uc2();
                uc2Var.h = 2;
                uc2Var.j = false;
                if (!this.b.isDefaultApp()) {
                    uc2Var.d(this.b.getName());
                }
                FirebaseApp firebaseApp = this.b;
                synchronized (uc2Var) {
                    uc2Var.i = firebaseApp;
                }
                uc2Var.c = this.c;
                uc2Var.d = this.d;
                ig3 ig3Var2 = new ig3(uc2Var, xj6Var);
                this.a.put(xj6Var, ig3Var2);
                ig3Var = ig3Var2;
            }
        } catch (Throwable th) {
            throw th;
        }
        return ig3Var;
    }
}
