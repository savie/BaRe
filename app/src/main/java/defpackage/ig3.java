package defpackage;

import android.text.TextUtils;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ig3 {
    public final xj6 a;
    public final uc2 b;
    public wj6 c;

    public ig3(uc2 uc2Var, xj6 xj6Var) {
        this.a = xj6Var;
        this.b = uc2Var;
    }

    public static ig3 b() {
        ig3 ig3VarA;
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        if (firebaseApp == null) {
            throw new xc2("You must call FirebaseApp.initialize() first.");
        }
        String databaseUrl = firebaseApp.getOptions().getDatabaseUrl();
        if (databaseUrl == null) {
            if (firebaseApp.getOptions().getProjectId() == null) {
                throw new xc2("Failed to get FirebaseDatabase instance: Can't determine Firebase Database URL. Be sure to include a Project ID in your configuration.");
            }
            databaseUrl = "https://" + firebaseApp.getOptions().getProjectId() + "-default-rtdb.firebaseio.com";
        }
        synchronized (ig3.class) {
            if (TextUtils.isEmpty(databaseUrl)) {
                throw new xc2("Failed to get FirebaseDatabase instance: Specify DatabaseURL within FirebaseApp or from your getInstance() call.");
            }
            jg3 jg3Var = (jg3) firebaseApp.get(jg3.class);
            ly8.i(jg3Var, "Firebase Database component is not present.");
            ax5 ax5VarX = zm5.x(databaseUrl);
            if (!ax5VarX.b.isEmpty()) {
                throw new xc2("Specified Database URL '" + databaseUrl + "' is invalid. It should point to the root of a Firebase Database but it includes a path: " + ax5VarX.b.toString());
            }
            ig3VarA = jg3Var.a(ax5VarX.a);
        }
        return ig3VarA;
    }

    public final synchronized void a() {
        if (this.c == null) {
            this.a.getClass();
            this.c = yj6.a(this.b, this.a);
        }
    }
}
