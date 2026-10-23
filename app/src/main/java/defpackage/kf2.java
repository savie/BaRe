package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kf2 implements r56, Serializable {
    public as5 a;
    public as5 b;
    public z77 c;
    public transient int d;
    public String e;
    public String f;
    public String k;
    public String n;
    public String p;

    static {
        new z77(TokenAuthenticationScheme.SCHEME_DELIMITER);
    }

    public final void a(fk4 fk4Var) {
        if (!this.a.b0()) {
            this.d++;
        }
        fk4Var.J('[');
    }
}
