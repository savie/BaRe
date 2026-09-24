package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ea2 {
    public final ArrayList a;
    public final boolean b;
    public final boolean c;

    public ea2(ArrayList arrayList) {
        boolean a = V.INSTANCE.getA();
        mp6 mp6Var = mp6.a;
        boolean zF = mp6.f();
        this.a = arrayList;
        this.b = a;
        this.c = zF;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ea2)) {
            return false;
        }
        ea2 ea2Var = (ea2) obj;
        return pe4.d(this.a, ea2Var.a) && this.b == ea2Var.b && this.c == ea2Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + fz5.h(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PinnedAppActionsData(actions=");
        sb.append(this.a);
        sb.append(", isPremium=");
        sb.append(this.b);
        sb.append(", isRootOrShizuku=");
        return dj7.p(sb, this.c, ")");
    }
}
