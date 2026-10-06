package defpackage;

import java.security.Permission;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public final class c42 extends Permission {
    public final HashSet a;

    public c42(String str) {
        super(str);
        HashSet hashSet = new HashSet();
        this.a = hashSet;
        hashSet.add(str);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c42) && this.a.equals(((c42) obj).a);
    }

    @Override // java.security.Permission
    public final String getActions() {
        return this.a.toString();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.security.Permission
    public final boolean implies(Permission permission) {
        if (!(permission instanceof c42)) {
            return false;
        }
        c42 c42Var = (c42) permission;
        return getName().equals(c42Var.getName()) || this.a.containsAll(c42Var.a);
    }
}
