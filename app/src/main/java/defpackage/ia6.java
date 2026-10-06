package defpackage;

import java.security.BasicPermission;
import java.security.Permission;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public final class ia6 extends BasicPermission {
    public final String a;
    public final int b;

    public ia6(String str) {
        super("BC", str);
        this.a = str;
        StringTokenizer stringTokenizer = new StringTokenizer(lq7.c(str), " ,");
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals("threadlocalecimplicitlyca")) {
                i |= 1;
            } else if (strNextToken.equals("ecimplicitlyca")) {
                i |= 2;
            } else if (strNextToken.equals("threadlocaldhdefaultparams")) {
                i |= 4;
            } else if (strNextToken.equals("dhdefaultparams")) {
                i |= 8;
            } else if (strNextToken.equals("acceptableeccurves")) {
                i |= 16;
            } else if (strNextToken.equals("additionalecparameters")) {
                i |= 32;
            } else if (strNextToken.equals("all")) {
                i = 63;
            }
        }
        if (i != 0) {
            this.b = i;
        } else {
            c6.f("unknown permissions passed to mask");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ia6) {
            ia6 ia6Var = (ia6) obj;
            if (this.b == ia6Var.b && getName().equals(ia6Var.getName())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.security.BasicPermission, java.security.Permission
    public final String getActions() {
        return this.a;
    }

    public final int hashCode() {
        return getName().hashCode() + this.b;
    }

    @Override // java.security.BasicPermission, java.security.Permission
    public final boolean implies(Permission permission) {
        if (!(permission instanceof ia6) || !getName().equals(permission.getName())) {
            return false;
        }
        int i = ((ia6) permission).b;
        return (this.b & i) == i;
    }
}
