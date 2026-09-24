package defpackage;

import android.content.DialogInterface;
import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.cloud.connect.common.CloudConnectActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ub1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ub1(CloudConnectActivity cloudConnectActivity, y2 y2Var) {
        this.a = 0;
        this.b = y2Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws Throwable {
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                y2 y2Var = (y2) obj;
                int i3 = CloudConnectActivity.Q;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putBoolean("cloud_connect_edit_warning_shown", true).apply();
                y2Var.invoke();
                return;
            case 1:
                ConfigEditActivity configEditActivity = (ConfigEditActivity) obj;
                int i4 = ConfigEditActivity.V;
                configEditActivity.A(false);
                configEditActivity.z();
                return;
            default:
                ((ln3) obj).k();
                return;
        }
    }

    public /* synthetic */ ub1(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }
}
