package defpackage;

import android.content.SharedPreferences;
import android.util.Log;
import org.swiftapps.swiftbackup.cloud.protocols.CloudCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class mj1 implements jh1 {
    public CloudCredentials a;
    public String b = "";

    @Override // defpackage.jh1
    public final boolean i() {
        a aVar = CloudCredentials.Companion;
        dd1 dd1VarG = g();
        aVar.getClass();
        dd1VarG.getClass();
        String str = "cloud_creds_" + dd1VarG;
        SharedPreferences sharedPreferences = cz4.f;
        if (sharedPreferences != null) {
            return sharedPreferences.contains(str);
        }
        pe4.F("prefs");
        throw null;
    }

    @Override // defpackage.jh1
    public final boolean k() {
        a aVar = CloudCredentials.Companion;
        dd1 dd1VarG = g();
        aVar.getClass();
        CloudCredentials cloudCredentialsB = a.b(dd1VarG);
        if (cloudCredentialsB != null && cloudCredentialsB.getServer().length() > 0) {
            u(cloudCredentialsB);
            return true;
        }
        Log.e(n(), "Invalid creds, not setting credentials");
        return false;
    }

    @Override // defpackage.jh1
    public final boolean m() {
        return this.a != null;
    }

    @Override // defpackage.jh1
    public final String p() {
        return t().emailAddressValue();
    }

    public final CloudCredentials t() {
        CloudCredentials cloudCredentials = this.a;
        if (cloudCredentials != null) {
            return cloudCredentials;
        }
        pe4.F("creds");
        throw null;
    }

    public void u(CloudCredentials cloudCredentials) {
        cloudCredentials.getClass();
        this.a = cloudCredentials;
        String baseUrl$default = CloudCredentials.getBaseUrl$default(cloudCredentials, false, 1, null);
        if (baseUrl$default.length() <= 0 || nq7.j0(baseUrl$default)) {
            g84.f(xs1.j("Base url not valid = ", baseUrl$default));
        } else {
            this.b = nq7.K0(baseUrl$default, '/');
        }
    }
}
