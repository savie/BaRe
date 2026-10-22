package defpackage;

import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class wd1 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ CloudDiagnosticsActivity b;

    public /* synthetic */ wd1(CloudDiagnosticsActivity cloudDiagnosticsActivity, int i) {
        this.a = i;
        this.b = cloudDiagnosticsActivity;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        CloudDiagnosticsActivity cloudDiagnosticsActivity = this.b;
        switch (i) {
            case 0:
                md1 md1Var = (md1) obj;
                int i2 = CloudDiagnosticsActivity.Z;
                md1Var.getClass();
                String string = cloudDiagnosticsActivity.getString(md1Var.a.b);
                String str = md1Var.d;
                if (str == null) {
                    str = "";
                }
                return dj7.k(string, ": ", str);
            default:
                int i3 = CloudDiagnosticsActivity.Z;
                cloudDiagnosticsActivity.V().n();
                return be8.a;
        }
    }
}
