package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ix implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ ix(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.bt3
    public final Object invoke() throws InterruptedException {
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                return uq7.T(str, TokenAuthenticationScheme.SCHEME_DELIMITER, "");
            default:
                lh6 lh6Var = new lh6();
                CountDownLatch countDownLatch = new CountDownLatch(1);
                if (str == null) {
                    c6.f("Purchase token must be set");
                    return null;
                }
                ia9 ia9Var = new ia9();
                ia9Var.b = str;
                wq0.g.a(ia9Var, new kq0(lh6Var, countDownLatch));
                countDownLatch.await();
                return (yq0) lh6Var.a;
        }
    }
}
