package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.Status;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface a59 {
    public static final u50 E = new u50("FirebaseAuth", "GetAuthDomainTaskResponseHandler");

    void a(Status status);

    Uri.Builder b(Intent intent, String str, String str2);

    void c(Uri uri, String str, ga6 ga6Var);

    HttpURLConnection d(URL url);

    Context zza();

    String zza(String str);
}
