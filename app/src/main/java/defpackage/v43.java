package defpackage;

import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v43 {
    public final TimeZone a;
    public final int b;
    public final Locale c;

    public v43(TimeZone timeZone, boolean z, int i, Locale locale) {
        this.a = timeZone;
        if (z) {
            this.b = Integer.MIN_VALUE | i;
        } else {
            this.b = i;
        }
        int i2 = k05.a;
        this.c = locale == null ? Locale.getDefault() : locale;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v43) {
            v43 v43Var = (v43) obj;
            if (this.a.equals(v43Var.a) && this.b == v43Var.b && this.c.equals(v43Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + ((this.c.hashCode() + (this.b * 31)) * 31);
    }
}
