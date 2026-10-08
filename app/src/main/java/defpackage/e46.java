package defpackage;

import android.text.TextUtils;
import androidx.preference.Preference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e46 {
    public final int a;
    public final int b;
    public final String c;

    public e46(Preference preference) {
        this.c = preference.getClass().getName();
        this.a = preference.W;
        this.b = preference.X;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e46)) {
            return false;
        }
        e46 e46Var = (e46) obj;
        return this.a == e46Var.a && this.b == e46Var.b && TextUtils.equals(this.c, e46Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((((527 + this.a) * 31) + this.b) * 31);
    }
}
