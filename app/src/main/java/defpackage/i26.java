package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i26 extends qi4 {
    public final List a;
    public final List b;
    public final ArrayList c;
    public final l39 d = l39.i("record_type");
    public final l39 e;

    public i26(List list, List list2, ArrayList arrayList) {
        this.a = list;
        this.b = list2;
        this.c = arrayList;
        this.e = l39.i((String[]) list.toArray(new String[0]));
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws IOException {
        bn4Var.getClass();
        bn4 bn4Var2 = new bn4(bn4Var);
        try {
            int iF = f(bn4Var2);
            bn4Var2.close();
            if (iF != -1) {
                return ((qi4) this.c.get(iF)).a(bn4Var);
            }
            throw null;
        } catch (Throwable th) {
            bn4Var2.close();
            throw th;
        }
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        Class<?> cls = obj.getClass();
        List list = this.b;
        int iIndexOf = list.indexOf(cls);
        if (iIndexOf == -1) {
            StringBuilder sb = new StringBuilder("Expected one of ");
            sb.append(list);
            sb.append(" but found ");
            sb.append(obj);
            Class<?> cls2 = obj.getClass();
            sb.append(", a ");
            sb.append(cls2);
            sb.append(". Register this subtype.");
            throw new IllegalArgumentException(sb.toString());
        }
        qi4 qi4Var = (qi4) this.c.get(iIndexOf);
        dn4Var.g();
        if (qi4Var != null) {
            dn4Var.m("record_type");
            dn4Var.z((String) this.a.get(iIndexOf));
        }
        int iR = dn4Var.r();
        if (iR != 5 && iR != 3 && iR != 2 && iR != 1) {
            l0.e("Nesting problem.");
            return;
        }
        int i = dn4Var.f;
        dn4Var.f = dn4Var.a;
        qi4Var.e(dn4Var, obj);
        dn4Var.f = i;
        dn4Var.e = false;
        dn4Var.h(3, 5, '}');
    }

    public final int f(bn4 bn4Var) throws EOFException, tj4 {
        bn4Var.b();
        while (bn4Var.u()) {
            if (bn4Var.b0(this.d) != -1) {
                int iC0 = bn4Var.c0(this.e);
                if (iC0 != -1) {
                    return iC0;
                }
                StringBuilder sb = new StringBuilder("Expected one of ");
                sb.append(this.a);
                String strS = bn4Var.S();
                sb.append(" for key 'record_type' but found '");
                sb.append(strS);
                sb.append("'. Register a subtype for this label.");
                throw new lj4(sb.toString());
            }
            bn4Var.g0();
            bn4Var.k0();
        }
        throw new lj4("Missing label for record_type");
    }

    public final String toString() {
        return "PolymorphicJsonAdapter(record_type)";
    }
}
