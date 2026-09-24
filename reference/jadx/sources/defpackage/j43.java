package defpackage;

import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j43 {
    public final TimeZone a;
    public final int b;

    public j43(TimeZone timeZone, boolean z) {
        this.a = timeZone;
        this.b = z ? timeZone.getDSTSavings() : 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TzInfo [zone=");
        sb.append(this.a);
        sb.append(", dstOffset=");
        return xs1.m(sb, this.b, "]");
    }
}
