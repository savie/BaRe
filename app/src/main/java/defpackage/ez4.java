package defpackage;

import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ez4 implements es5 {
    public final rb a;
    public boolean b = false;

    public ez4(y29 y29Var, rb rbVar) {
        this.a = rbVar;
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        this.b = true;
        SignInHubActivity signInHubActivity = (SignInHubActivity) this.a.b;
        signInHubActivity.setResult(signInHubActivity.d, signInHubActivity.e);
        signInHubActivity.finish();
    }

    public final String toString() {
        return this.a.toString();
    }
}
