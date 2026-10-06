package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Uri;
import com.pcloud.sdk.AuthorizationActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r80 extends BroadcastReceiver {
    public final /* synthetic */ int a = 0;
    public final Object b;

    public r80(rx rxVar) {
        this.b = rxVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                AuthorizationActivity authorizationActivity = (AuthorizationActivity) obj;
                Intent intent2 = new Intent(authorizationActivity, (Class<?>) AuthorizationActivity.class);
                intent2.setAction("AuthorizationActivity.REFRESH_ACTION");
                intent2.putExtra("AuthorizationActivity.EXTRA_URL", (Uri) intent.getParcelableExtra("AuthorizationActivity.EXTRA_URL"));
                intent2.putExtra("com.pcloud.authentication.AuthorizationActivity.ARGUMENT_AUTH_REQUEST", authorizationActivity.b);
                intent2.addFlags(603979776);
                authorizationActivity.startActivity(intent2);
                break;
            default:
                context.getClass();
                intent.getClass();
                if (pe4.d(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
                    ((rx) obj).invoke(((ConnectivityManager) context.getSystemService(ConnectivityManager.class)).getActiveNetworkInfo());
                }
                break;
        }
    }

    public r80(AuthorizationActivity authorizationActivity) {
        this.b = authorizationActivity;
    }
}
