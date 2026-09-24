package defpackage;

import android.content.Context;
import android.os.UserManager;
import com.google.android.gms.tasks.Tasks;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ne2 implements r34, s34 {
    public final ps4 a;
    public final Context b;
    public final ga6 c;
    public final Set d;
    public final Executor e;

    public ne2(final Context context, final String str, Set set, ga6 ga6Var, Executor executor) {
        this.a = new ps4(new ga6() { // from class: ke2
            @Override // defpackage.ga6
            public final Object get() {
                return new u34(context, str);
            }
        });
        this.d = set;
        this.e = executor;
        this.c = ga6Var;
        this.b = context;
    }

    public final void a() {
        if (this.d.size() <= 0) {
            Tasks.forResult(null);
        } else if (!((UserManager) this.b.getSystemService(UserManager.class)).isUserUnlocked()) {
            Tasks.forResult(null);
        } else {
            Tasks.call(this.e, new me2(this, 0));
        }
    }
}
