package defpackage;

import com.google.gson.internal.bind.JsonElementTypeAdapter;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qj4 {
    public abstract qj4 c();

    public BigDecimal d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public boolean e() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int f() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final xi4 g() {
        if (this instanceof xi4) {
            return (xi4) this;
        }
        y5.g(this, "Not a JSON Array: ");
        return null;
    }

    public final fl4 i() {
        if (this instanceof fl4) {
            return (fl4) this;
        }
        y5.g(this, "Not a JSON Object: ");
        return null;
    }

    public final kl4 k() {
        if (this instanceof kl4) {
            return (kl4) this;
        }
        y5.g(this, "Not a JSON Primitive: ");
        return null;
    }

    public long l() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String o() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            nn4 nn4Var = new nn4(new qp7(sb));
            nn4Var.n = 1;
            JsonElementTypeAdapter.a.getClass();
            JsonElementTypeAdapter.c(this, nn4Var);
            return sb.toString();
        } catch (IOException e) {
            e6.e(e);
            return null;
        }
    }
}
