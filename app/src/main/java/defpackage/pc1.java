package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.identitycredentials.createdigitalcredential.CreateDigitalCredentialController;
import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.Session;
import org.swiftapps.swiftbackup.cloud.protocols.CloudOperationsImpl$LoginResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class pc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ pc1(int i) {
        this.a = i;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$1((il0) obj, ((Integer) obj2).intValue());
            case 1:
                String str = (String) obj;
                mx1 mx1Var = (mx1) obj2;
                str.getClass();
                mx1Var.getClass();
                if (str.length() == 0) {
                    return mx1Var.toString();
                }
                return str + ", " + mx1Var;
            case 2:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case 3:
                return CreateDigitalCredentialController.handleResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
            default:
                ((ChannelSftp) obj).getClass();
                ((Session) obj2).getClass();
                return new CloudOperationsImpl$LoginResult.Success();
        }
    }
}
