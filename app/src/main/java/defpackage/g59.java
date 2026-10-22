package defpackage;

import android.text.TextUtils;
import com.google.firebase.FirebaseApp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g59 {
    public final d59 a;
    public final c59 b;
    public final c59 c;
    public final j15 d;
    public final FirebaseApp e;
    public final String f;
    public xt1 g;

    public g59(FirebaseApp firebaseApp, j15 j15Var) {
        this.e = firebaseApp;
        String apiKey = firebaseApp.getOptions().getApiKey();
        this.f = apiKey;
        firebaseApp.getOptions().getProjectId();
        this.d = j15Var;
        this.c = null;
        this.a = null;
        this.b = null;
        String strM0 = sz8.m0("firebear.secureToken");
        if (TextUtils.isEmpty(strM0)) {
            k50 k50Var = q59.a;
            synchronized (k50Var) {
                if (k50Var.get(apiKey) != null) {
                    throw new ClassCastException();
                }
            }
            strM0 = "https://".concat("securetoken.googleapis.com/v1");
        } else {
            u48.s("Found hermetic configuration for secureToken URL: ", strM0, "LocalClient");
        }
        if (this.c == null) {
            this.c = new c59(strM0, a());
        }
        String strM1 = sz8.m0("firebear.identityToolkit");
        if (TextUtils.isEmpty(strM1)) {
            strM1 = q59.b(apiKey);
        } else {
            u48.s("Found hermetic configuration for identityToolkit URL: ", strM1, "LocalClient");
        }
        if (this.a == null) {
            this.a = new d59(strM1, a());
        }
        String strM2 = sz8.m0("firebear.identityToolkitV2");
        if (TextUtils.isEmpty(strM2)) {
            k50 k50Var2 = q59.a;
            synchronized (k50Var2) {
                if (k50Var2.get(apiKey) != null) {
                    throw new ClassCastException();
                }
            }
            strM2 = "https://".concat("identitytoolkit.googleapis.com/v2");
        } else {
            u48.s("Found hermetic configuration for identityToolkitV2 URL: ", strM2, "LocalClient");
        }
        if (this.b == null) {
            this.b = new c59(strM2, a());
        }
        ((o49) firebaseApp.get(o49.class)).getClass();
        k50 k50Var3 = q59.b;
        synchronized (k50Var3) {
            try {
                if (k50Var3.containsKey(apiKey)) {
                    ((List) k50Var3.get(apiKey)).add(new WeakReference(this));
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new WeakReference(this));
                    k50Var3.put(apiKey, arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final xt1 a() {
        if (this.g == null) {
            String strJ = xs1.j("X", Integer.toString(this.d.a));
            FirebaseApp firebaseApp = this.e;
            this.g = new xt1(firebaseApp.getApplicationContext(), firebaseApp, strJ);
        }
        return this.g;
    }
}
