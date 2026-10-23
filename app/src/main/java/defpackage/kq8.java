package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kq8 extends IOException {
    public final int a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kq8(int i, String str, String str2, String str3) {
        super(str + TokenAuthenticationScheme.SCHEME_DELIMITER + str2 + " failed with HTTP " + i + TokenAuthenticationScheme.SCHEME_DELIMITER + str3);
        str2.getClass();
        str3.getClass();
        this.a = i;
    }
}
