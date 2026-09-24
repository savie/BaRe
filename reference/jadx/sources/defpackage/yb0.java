package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yb0 {
    public final xb0 a;
    public final String b;
    public final File c;

    public yb0(xb0 xb0Var, String str, File file) {
        this.a = xb0Var;
        if (str == null) {
            f6.n("Null sessionId");
            throw null;
        }
        this.b = str;
        this.c = file;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof yb0)) {
            return false;
        }
        yb0 yb0Var = (yb0) obj;
        return this.a.equals(yb0Var.a) && this.b.equals(yb0Var.b) && this.c.equals(yb0Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() ^ ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.a + ", sessionId=" + this.b + ", reportFile=" + this.c + "}";
    }
}
