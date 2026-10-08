package defpackage;

import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uf6 {
    public final Date a;
    public final List b;
    public final String c;

    public uf6(Date date, ArrayList arrayList, String str) {
        this.a = date;
        this.b = Collections.unmodifiableList(arrayList);
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uf6)) {
            return false;
        }
        uf6 uf6Var = (uf6) obj;
        return this.a.equals(uf6Var.a) && this.b.equals(uf6Var.b) && this.c.equals(uf6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return String.format(Locale.US, "%s | Valid until:%s", (URL) this.b.get(0), this.a);
    }
}
