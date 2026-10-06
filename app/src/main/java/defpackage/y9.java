package defpackage;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y9 extends qi4 {
    public final /* synthetic */ da a;
    public final /* synthetic */ qi4 b;
    public final /* synthetic */ da c;
    public final /* synthetic */ Set d;
    public final /* synthetic */ Type e;

    public y9(da daVar, qi4 qi4Var, nh5 nh5Var, da daVar2, Set set, Type type) {
        this.a = daVar;
        this.b = qi4Var;
        this.c = daVar2;
        this.d = set;
        this.e = type;
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws IOException {
        da daVar = this.c;
        if (daVar == null) {
            return this.b.a(bn4Var);
        }
        if (!daVar.g && bn4Var.W() == 9) {
            bn4Var.J();
            return null;
        }
        try {
            return daVar.b(bn4Var);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(cause);
            String strR = bn4Var.r();
            sb.append(" at ");
            sb.append(strR);
            throw new lj4(sb.toString(), cause);
        }
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) throws IOException {
        da daVar = this.a;
        if (daVar == null) {
            this.b.e(dn4Var, obj);
            return;
        }
        if (!daVar.g && obj == null) {
            dn4Var.n();
            return;
        }
        try {
            daVar.d(dn4Var, obj);
        } catch (InvocationTargetException e) {
            Throwable cause = e.getCause();
            if (cause instanceof IOException) {
                throw ((IOException) cause);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(cause);
            String strJ = dn4Var.j();
            sb.append(" at ");
            sb.append(strJ);
            throw new lj4(sb.toString(), cause);
        }
    }

    public final String toString() {
        return "JsonAdapter" + this.d + "(" + this.e + ")";
    }
}
