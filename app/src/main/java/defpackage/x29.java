package defpackage;

import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x29 implements Runnable {
    public static final u50 c = new u50("RevokeAccessOperation", new String[0]);
    public final String a;
    public final an7 b;

    public x29(String str) {
        ly8.e(str);
        this.a = str;
        this.b = new an7(null);
    }

    @Override // java.lang.Runnable
    public final void run() {
        u50 u50Var = c;
        Status status = Status.k;
        try {
            String str = this.a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 50);
            sb.append("https://accounts.google.com/o/oauth2/revoke?token=");
            sb.append(str);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(sb.toString()).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.e;
            } else {
                u50Var.d("Unable to revoke access!", new Object[0]);
            }
            StringBuilder sb2 = new StringBuilder(String.valueOf(responseCode).length() + 15);
            sb2.append("Response Code: ");
            sb2.append(responseCode);
            u50Var.a(sb2.toString(), new Object[0]);
        } catch (IOException e) {
            u50Var.d("IOException when revoking access: ".concat(String.valueOf(e.toString())), new Object[0]);
        } catch (Exception e2) {
            u50Var.d("Exception when revoking access: ".concat(String.valueOf(e2.toString())), new Object[0]);
        }
        this.b.e(status);
    }
}
