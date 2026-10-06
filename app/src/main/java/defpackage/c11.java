package defpackage;

import android.view.View;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.messagescalls.backups.CallsBackupsActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c11 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ CallsDashActivity b;
    public final /* synthetic */ ArrayList c;

    public /* synthetic */ c11(CallsDashActivity callsDashActivity, ArrayList arrayList, int i) {
        this.a = i;
        this.b = callsDashActivity;
        this.c = arrayList;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.a;
        int i2 = 0;
        ArrayList arrayList = this.c;
        CallsDashActivity callsDashActivity = this.b;
        switch (i) {
            case 0:
                int i3 = CallsDashActivity.T;
                int i4 = CallsBackupsActivity.T;
                zm5.D(callsDashActivity, arrayList, false);
                break;
            default:
                int i5 = CallsDashActivity.T;
                if (Const.d(callsDashActivity)) {
                    tb1 tb1Var = tb1.a;
                    if (qb1.m()) {
                        Const.K(callsDashActivity, R.string.delete_all, new d11(i2, callsDashActivity, arrayList), null);
                        break;
                    }
                }
                break;
        }
    }
}
