package defpackage;

import java.io.ByteArrayInputStream;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitsActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uk extends cu3 implements bt3 {
    public final /* synthetic */ int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ uk(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(i, obj, cls, str, str2, i2);
        this.a = i3;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        switch (this.a) {
            case 0:
                AppBackupLimitsActivity.N((AppBackupLimitsActivity) this.receiver);
                return be8.a;
            case 1:
                return new ByteArrayInputStream((byte[]) this.receiver);
            case 2:
                ((dz5) this.receiver).getClass();
                return Boolean.valueOf(dz5.d());
            default:
                jy8 jy8Var = (jy8) this.receiver;
                boolean zB = zm5.b(jy8Var.a);
                TokenCredentials tokenCredentials = jy8Var.a;
                if (!zB) {
                    return tokenCredentials.getToken();
                }
                String strU = jy8Var.u(tokenCredentials.getToken());
                return strU == null ? jy8Var.a.getToken() : strU;
        }
    }
}
