package defpackage;

import com.google.firebase.auth.FirebaseAuth;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jf3 implements lo9 {
    public final /* synthetic */ FirebaseAuth a;

    public jf3(FirebaseAuth firebaseAuth) {
        Objects.requireNonNull(firebaseAuth);
        this.a = firebaseAuth;
    }

    @Override // defpackage.lo9
    public final void b(b69 b69Var, p49 p49Var) {
        ly8.h(b69Var);
        ly8.h(p49Var);
        p49Var.a = b69Var;
        FirebaseAuth firebaseAuth = this.a;
        firebaseAuth.getClass();
        FirebaseAuth.g(firebaseAuth, p49Var, b69Var, true, false);
    }
}
