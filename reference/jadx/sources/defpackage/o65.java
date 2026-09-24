package defpackage;

import java.io.EOFException;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o65 extends qi4 {
    public static final n65 c = new n65();
    public final qi4 a;
    public final qi4 b;

    public o65(nh5 nh5Var, Type type, Type type2) {
        Set set = yh8.a;
        this.a = nh5Var.b(type, set, null);
        this.b = nh5Var.b(type2, set, null);
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        cw4 cw4Var = new cw4();
        bn4Var.b();
        while (bn4Var.u()) {
            if (bn4Var.u()) {
                bn4Var.q = bn4Var.D();
                bn4Var.k = 11;
            }
            Object objA = this.a.a(bn4Var);
            Object objA2 = this.b.a(bn4Var);
            Object objPut = cw4Var.put(objA, objA2);
            if (objPut != null) {
                StringBuilder sb = new StringBuilder("Map key '");
                sb.append(objA);
                String strR = bn4Var.r();
                sb.append("' has multiple values at path ");
                sb.append(strR);
                sb.append(": ");
                sb.append(objPut);
                sb.append(" and ");
                sb.append(objA2);
                throw new lj4(sb.toString());
            }
        }
        bn4Var.m();
        return cw4Var;
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        dn4Var.g();
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            if (entry.getKey() == null) {
                throw new lj4("Map key is null at ".concat(dn4Var.j()));
            }
            int iR = dn4Var.r();
            if (iR != 5 && iR != 3) {
                l0.e("Nesting problem.");
                return;
            } else {
                dn4Var.e = true;
                this.a.e(dn4Var, entry.getKey());
                this.b.e(dn4Var, entry.getValue());
            }
        }
        dn4Var.e = false;
        dn4Var.h(3, 5, '}');
    }

    public final String toString() {
        return "JsonAdapter(" + this.a + "=" + this.b + ")";
    }
}
