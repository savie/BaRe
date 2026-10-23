package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ye1 {
    public final String a;
    public final boolean b;

    public ye1(String str, boolean z) {
        str.getClass();
        this.a = str;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ye1)) {
            return false;
        }
        ye1 ye1Var = (ye1) obj;
        return pe4.d(this.a, ye1Var.a) && this.b == ye1Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CompletionSummary(reportMarkdown=" + this.a + ", hasReportableFailures=" + this.b + ")";
    }
}
