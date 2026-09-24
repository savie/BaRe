package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ec0 extends gz1 {
    public final String a;
    public final byte[] b;

    public ec0(String str, byte[] bArr) {
        this.a = str;
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gz1)) {
            return false;
        }
        gz1 gz1Var = (gz1) obj;
        ec0 ec0Var = (ec0) gz1Var;
        if (this.a.equals(ec0Var.a)) {
            return Arrays.equals(this.b, gz1Var instanceof ec0 ? ((ec0) gz1Var).b : ec0Var.b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "File{filename=" + this.a + ", contents=" + Arrays.toString(this.b) + "}";
    }
}
