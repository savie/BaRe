package defpackage;

import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vd1 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ CloudDiagnosticsActivity b;

    public /* synthetic */ vd1(CloudDiagnosticsActivity cloudDiagnosticsActivity, int i) {
        this.a = i;
        this.b = cloudDiagnosticsActivity;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        CloudDiagnosticsActivity cloudDiagnosticsActivity = this.b;
        switch (i) {
            case 0:
                int i2 = CloudDiagnosticsActivity.Z;
                return Boolean.valueOf(cloudDiagnosticsActivity.getIntent().getBooleanExtra("org.swiftapps.swiftbackup.cloud.diagnostics.extra.FINISH_AFTER_AUTO_RUN", ((Boolean) cloudDiagnosticsActivity.T.getValue()).booleanValue()));
            default:
                int i3 = CloudDiagnosticsActivity.Z;
                cloudDiagnosticsActivity.W();
                return be8.a;
        }
    }
}
