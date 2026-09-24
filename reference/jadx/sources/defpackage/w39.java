package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w39 extends jd4 {
    public final /* synthetic */ boolean i;
    public final /* synthetic */ p49 j;
    public final /* synthetic */ au2 k;
    public final /* synthetic */ FirebaseAuth l;

    public w39(FirebaseAuth firebaseAuth, boolean z, p49 p49Var, au2 au2Var) {
        this.i = z;
        this.j = p49Var;
        this.k = au2Var;
        this.l = firebaseAuth;
    }

    @Override // defpackage.jd4
    public final Task P(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Email link login/reauth with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for login/reauth with email link");
        }
        boolean z = this.i;
        au2 au2Var = this.k;
        FirebaseAuth firebaseAuth = this.l;
        if (!z) {
            ix0 ix0Var = firebaseAuth.e;
            FirebaseApp firebaseApp = firebaseAuth.a;
            jf3 jf3Var = new jf3(firebaseAuth);
            ix0Var.getClass();
            e49 e49Var = new e49(au2Var, str);
            e49Var.d(firebaseApp);
            e49Var.e = jf3Var;
            return ix0Var.m(e49Var);
        }
        ix0 ix0Var2 = firebaseAuth.e;
        FirebaseApp firebaseApp2 = firebaseAuth.a;
        p49 p49Var = this.j;
        ly8.h(p49Var);
        if3 if3Var = new if3(firebaseAuth);
        ix0Var2.getClass();
        l49 l49Var = new l49(au2Var, str);
        l49Var.d(firebaseApp2);
        l49Var.d = p49Var;
        l49Var.e = if3Var;
        l49Var.f = if3Var;
        return ix0Var2.m(l49Var);
    }
}
