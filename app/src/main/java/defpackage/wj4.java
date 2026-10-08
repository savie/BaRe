package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class wj4 implements Serializable {
    public static final int p;
    public static final int q;
    public static final z77 r;
    public final int a;
    public final int b;
    public final wl4 c;
    public ar5 d;
    public final ay2 e;
    public final mp7 f;
    public final z77 k;
    public final char n;

    static {
        int iB = 0;
        for (int i : dj7.C(5)) {
            if (i == 0) {
                throw null;
            }
            iB |= eq3.b(i);
        }
        p = iB;
        for (hl4 hl4Var : hl4.values()) {
            boolean z = hl4Var.a;
        }
        int i2 = 0;
        for (ek4 ek4Var : ek4.values()) {
            if (ek4Var.a) {
                i2 |= ek4Var.b;
            }
        }
        q = i2;
        r = new z77(TokenAuthenticationScheme.SCHEME_DELIMITER);
    }

    public wj4(qr5 qr5Var) {
        System.currentTimeMillis();
        new AtomicReference(new hx0(3));
        this.a = p;
        this.b = q;
        this.k = r;
        this.c = wl4.a;
        this.d = qr5Var;
        this.n = '\"';
        this.f = mp7.a;
        this.e = ay2.a;
        System.identityHashCode(this);
        new AtomicReference(new ge());
    }
}
