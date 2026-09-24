package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xf7 implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        na4 na4Var = zf7.q;
        return ((String) obj).replaceAll("( +)", TokenAuthenticationScheme.SCHEME_DELIMITER).trim();
    }
}
