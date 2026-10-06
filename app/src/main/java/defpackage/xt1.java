package defpackage;

import android.content.Context;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import java.net.HttpURLConnection;
import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xt1 implements w23 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;

    public xt1(Context context, FirebaseApp firebaseApp, String str) {
        ly8.h(context);
        this.a = context;
        ly8.h(firebaseApp);
        this.d = firebaseApp;
        this.c = "Android/Fallback/".concat(str);
    }

    public void a(HttpURLConnection httpURLConnection) {
        r34 r34Var;
        String str;
        FirebaseApp firebaseApp = (FirebaseApp) this.d;
        String strJ = eq3.j((String) this.c, "/FirebaseCore-Android");
        if (((l39) this.b) == null) {
            this.b = new l39((Context) this.a, 10);
        }
        httpURLConnection.setRequestProperty("X-Android-Package", (String) ((l39) this.b).b);
        httpURLConnection.setRequestProperty("X-Android-Cert", (String) ((l39) this.b).c);
        httpURLConnection.setRequestProperty("Accept-Language", ji8.Q());
        httpURLConnection.setRequestProperty("X-Client-Version", strJ);
        httpURLConnection.setRequestProperty("X-Firebase-Locale", null);
        httpURLConnection.setRequestProperty("X-Firebase-GMPID", firebaseApp.getOptions().getApplicationId());
        o49 o49Var = (o49) firebaseApp.get(o49.class);
        if (o49Var == null || (r34Var = (r34) o49Var.c.get()) == null) {
            str = null;
        } else {
            try {
                ne2 ne2Var = (ne2) r34Var;
                str = (String) Tasks.await(!((UserManager) ne2Var.b.getSystemService(UserManager.class)).isUserUnlocked() ? Tasks.forResult("") : Tasks.call(ne2Var.e, new le2(ne2Var)));
            } catch (InterruptedException | ExecutionException e) {
                Log.w("LocalRequestInterceptor", "Unable to get heartbeats: " + e.getMessage());
                str = null;
            }
        }
        httpURLConnection.setRequestProperty("X-Firebase-Client", str);
        o49 o49Var2 = (o49) firebaseApp.get(o49.class);
        if (o49Var2 != null && o49Var2.b.get() != null) {
            e6.d();
        } else {
            if (TextUtils.isEmpty(null)) {
                return;
            }
            httpURLConnection.setRequestProperty("X-Firebase-AppCheck", null);
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        return new yg3((FirebaseApp) ((id4) this.a).a, (l97) ((ca6) this.b).get(), (ox1) ((ca6) this.c).get(), (j97) ((ca6) this.d).get());
    }

    public xt1(rx8 rx8Var) {
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = rx8Var;
    }
}
