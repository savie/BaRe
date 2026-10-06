package defpackage;

import java.util.Arrays;
import java.util.function.Function;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s64 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Arrays.stream(((X509TrustManager) obj).getAcceptedIssuers());
    }
}
