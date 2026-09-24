package defpackage;

import java.io.File;
import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v95 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ v95(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                gv7 gv7Var = w14.a;
                return (MegaClient$Credentials) w14.c().c(str, MegaClient$Credentials.class);
            default:
                z07 z07Var = new z07(new File(str));
                try {
                    ky6 ky6VarA = z07Var.A();
                    z07Var.close();
                    return ky6VarA;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        rs9.c(z07Var, th);
                        throw th2;
                    }
                }
        }
    }
}
