package defpackage;

import android.util.Base64;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oe0 {
    public final String a;
    public final byte[] b;
    public final d66 c;

    public oe0(String str, byte[] bArr, d66 d66Var) {
        this.a = str;
        this.b = bArr;
        this.c = d66Var;
    }

    public static gh a() {
        gh ghVar = new gh();
        ghVar.c = d66.a;
        return ghVar;
    }

    public final oe0 b(d66 d66Var) {
        gh ghVarA = a();
        ghVarA.n(this.a);
        if (d66Var == null) {
            f6.n("Null priority");
            return null;
        }
        ghVarA.c = d66Var;
        ghVarA.b = this.b;
        return ghVarA.e();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof oe0) {
            oe0 oe0Var = (oe0) obj;
            if (this.a.equals(oe0Var.a) && Arrays.equals(this.b, oe0Var.b) && this.c.equals(oe0Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003);
    }

    public final String toString() {
        byte[] bArr = this.b;
        String strEncodeToString = bArr == null ? "" : Base64.encodeToString(bArr, 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        return dj7.n(sb, strEncodeToString, ")");
    }
}
