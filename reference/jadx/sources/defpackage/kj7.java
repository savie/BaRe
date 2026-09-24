package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class kj7 extends dr5 {
    private Long p;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class a extends dr5.a<a, kj7> {
    }

    public kj7(kj7 kj7Var, long j, String str) {
        super(kj7Var, str);
        this.p = null;
        y(j);
        this.p = Long.valueOf(j);
        if (kj7Var.p() == null) {
            if (str != null) {
                return;
            }
            c6.f("etag must be provided");
            throw null;
        }
        if (str == null || kj7Var.p().equals(str)) {
            return;
        }
        throw new IllegalArgumentException("matchETag " + kj7Var.p() + " and passed etag " + str + " does not match");
    }

    public static a u() {
        return new a();
    }

    private void x(long j, long j2, String str) {
        StringBuilder sb = new StringBuilder("source ");
        sb.append(this.d);
        sb.append("/");
        sb.append(this.f);
        if (this.g != null) {
            sb.append("?versionId=");
            sb.append(this.g);
        }
        sb.append(": ");
        sb.append(str);
        sb.append(TokenAuthenticationScheme.SCHEME_DELIMITER);
        sb.append(j2);
        sb.append(" is beyond object size ");
        sb.append(this.p);
        throw new IllegalArgumentException(sb.toString());
    }

    private void y(long j) {
        kj7 kj7Var;
        long j2;
        Long l = this.i;
        if (l == null || l.longValue() < j) {
            kj7Var = this;
            j2 = j;
        } else {
            x(j, this.i.longValue(), "offset");
            kj7Var = this;
            j2 = j;
        }
        Long l2 = kj7Var.j;
        if (l2 != null) {
            if (l2.longValue() > j2) {
                kj7Var.x(j2, kj7Var.j.longValue(), "length");
            }
            Long l3 = kj7Var.i;
            long jLongValue = kj7Var.j.longValue() + (l3 == null ? 0L : l3.longValue());
            if (jLongValue > j2) {
                kj7Var.x(j2, jLongValue, "compose size");
            }
        }
    }

    @Override // defpackage.dr5, defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof kj7) && super.equals(obj)) {
            return Objects.equals(this.p, ((kj7) obj).p);
        }
        return false;
    }

    @Override // defpackage.dr5, defpackage.rr5, defpackage.vr5, defpackage.yq5, defpackage.fw0, defpackage.ll0
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.p);
    }

    public v64.c v() throws ce4 {
        if (this.p != null) {
            return n();
        }
        throw new ce4("SourceObject must be created with object size", null);
    }

    public Long w() {
        return this.p;
    }

    public kj7() {
        this.p = null;
    }
}
