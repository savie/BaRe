package defpackage;

import android.os.CancellationSignal;
import androidx.credentials.playservices.controllers.ResponseUtils;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class vc1 implements qt3 {
    public final /* synthetic */ int a;

    public /* synthetic */ vc1(int i) {
        this.a = i;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return dd1._init_$lambda$2((il0) obj, ((Integer) obj2).intValue());
            case 1:
                return dd1._init_$lambda$17((il0) obj, ((Integer) obj2).intValue());
            default:
                return ResponseUtils.Companion.handleGetCredentialResponse$lambda$0((CancellationSignal) obj, (bt3) obj2);
        }
    }
}
