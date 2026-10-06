package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mt5 extends IOException {
    public final int a;
    public final String b;
    public final Long c;

    /* JADX WARN: Illegal instructions before constructor call */
    public mt5(String str, String str2, int i, String str3, Long l) {
        String str4 = str + TokenAuthenticationScheme.SCHEME_DELIMITER + str2 + " failed with HTTP " + i;
        str.getClass();
        str3.getClass();
        super(str4);
        this.a = i;
        this.b = str3;
        this.c = l;
    }
}
