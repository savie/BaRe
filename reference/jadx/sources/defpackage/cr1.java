package defpackage;

import java.io.File;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.cloud.protocols.TokenCredentials;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class cr1 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ cr1(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                return ConfigSettings.getAppParts$lambda$1$0(str);
            case 1:
                return z85.z(new File(str));
            case 2:
                if (str == null || str.length() == 0) {
                    return null;
                }
                gv7 gv7Var = w14.a;
                return (TeraBoxTokenCredentials) w14.c().c(str, TeraBoxTokenCredentials.class);
            default:
                if (str == null || str.length() == 0) {
                    return null;
                }
                gv7 gv7Var2 = w14.a;
                return (TokenCredentials) w14.c().c(str, TokenCredentials.class);
        }
    }
}
