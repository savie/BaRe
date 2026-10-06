package defpackage;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseAuth;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a49 extends jd4 {
    public final /* synthetic */ String i;
    public final /* synthetic */ boolean j;
    public final /* synthetic */ p49 k;
    public final /* synthetic */ String l;
    public final /* synthetic */ String m;
    public final /* synthetic */ FirebaseAuth n;

    public a49(FirebaseAuth firebaseAuth, String str, boolean z, p49 p49Var, String str2, String str3) {
        this.i = str;
        this.j = z;
        this.k = p49Var;
        this.l = str2;
        this.m = str3;
        this.n = firebaseAuth;
    }

    @Override // defpackage.jd4
    public final Task P(String str) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        String str2 = this.i;
        if (zIsEmpty) {
            Log.i("FirebaseAuth", "Logging in as " + str2 + " with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for login with email " + str2);
        }
        boolean z = this.j;
        String str3 = this.m;
        String str4 = this.l;
        FirebaseAuth firebaseAuth = this.n;
        if (!z) {
            ix0 ix0Var = firebaseAuth.e;
            FirebaseApp firebaseApp = firebaseAuth.a;
            jf3 jf3Var = new jf3(firebaseAuth);
            ix0Var.getClass();
            s49 s49Var = new s49(str2, str4, str3, str);
            s49Var.d(firebaseApp);
            s49Var.e = jf3Var;
            return ix0Var.m(s49Var);
        }
        ix0 ix0Var2 = firebaseAuth.e;
        FirebaseApp firebaseApp2 = firebaseAuth.a;
        p49 p49Var = this.k;
        ly8.h(p49Var);
        if3 if3Var = new if3(firebaseAuth);
        ix0Var2.getClass();
        m49 m49Var = new m49(str2, str4, str3, str);
        m49Var.d(firebaseApp2);
        m49Var.d = p49Var;
        m49Var.e = if3Var;
        m49Var.f = if3Var;
        return ix0Var2.m(m49Var);
    }
}
