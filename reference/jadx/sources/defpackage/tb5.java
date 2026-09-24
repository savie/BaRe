package defpackage;

import android.util.Log;
import android.util.Patterns;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tb5 extends qo0 {
    public MegaClient$Credentials g;
    public final gv7 e = new gv7(new jx(13));
    public final gv7 f = new gv7(new zj(10));
    public final ex6 h = new ex6();
    public final ex6 i = new ex6();
    public final ix6 j = new ix6();
    public final ix6 k = new ix6();
    public final ex6 l = new ex6();
    public final ix6 m = new ix6();

    public final void j(String str) {
        MegaClient$Credentials megaClient$Credentials = this.g;
        if (megaClient$Credentials == null) {
            f6.g(eq3.j(this.b, ".testConnection: Null credentials"));
        } else {
            zn4 zn4Var = zn4.a;
            zn4.b(null, new sb5(this, megaClient$Credentials, str, null));
        }
    }

    public final void k(MegaClient$Credentials megaClient$Credentials) {
        String string;
        megaClient$Credentials.getClass();
        this.g = megaClient$Credentials;
        boolean zIsValid = megaClient$Credentials.isValid();
        String email = megaClient$Credentials.getEmail();
        int length = email.length();
        String string2 = null;
        ex6 ex6Var = this.h;
        if (length == 0) {
            SwiftApp.Companion companion = SwiftApp.d;
            ex6Var.k(SwiftApp.Companion.c().getString(R.string.required_field));
            zIsValid = false;
        } else {
            boolean zMatches = Patterns.EMAIL_ADDRESS.matcher(email).matches();
            if (!zMatches) {
                Log.e(this.b, "Invalid email: ".concat(email));
                zIsValid = false;
            }
            if (zMatches) {
                string = null;
            } else {
                SwiftApp.Companion companion2 = SwiftApp.d;
                string = SwiftApp.Companion.c().getString(R.string.invalid_email_address);
            }
            ex6Var.k(string);
        }
        boolean z = megaClient$Credentials.getPassword().length() > 0;
        boolean z2 = z ? zIsValid : false;
        if (!z) {
            SwiftApp.Companion companion3 = SwiftApp.d;
            string2 = SwiftApp.Companion.c().getString(R.string.required_field);
        }
        this.i.k(string2);
        this.l.k(Boolean.valueOf(z2));
    }
}
