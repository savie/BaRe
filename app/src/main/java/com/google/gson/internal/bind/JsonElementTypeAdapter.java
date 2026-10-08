package com.google.gson.internal.bind;

import defpackage.aw4;
import defpackage.b6;
import defpackage.dj7;
import defpackage.dw4;
import defpackage.el4;
import defpackage.eq3;
import defpackage.ew4;
import defpackage.fl4;
import defpackage.hw4;
import defpackage.kl4;
import defpackage.l0;
import defpackage.m0;
import defpackage.nn4;
import defpackage.ns4;
import defpackage.om4;
import defpackage.qj4;
import defpackage.tl4;
import defpackage.xi4;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JsonElementTypeAdapter extends com.google.gson.b {
    public static final JsonElementTypeAdapter a = new JsonElementTypeAdapter();

    private JsonElementTypeAdapter() {
    }

    public static qj4 a(tl4 tl4Var) throws IOException {
        qj4 xi4Var;
        qj4 xi4Var2;
        if (tl4Var instanceof om4) {
            om4 om4Var = (om4) tl4Var;
            int iPeek = om4Var.peek();
            if (iPeek == 5 || iPeek == 2 || iPeek == 4 || iPeek == 10) {
                m0.f(eq3.u(iPeek), " when reading a JsonElement.", "Unexpected ");
                return null;
            }
            qj4 qj4Var = (qj4) om4Var.W();
            om4Var.skipValue();
            return qj4Var;
        }
        int iPeek2 = tl4Var.peek();
        int iA = dj7.A(iPeek2);
        if (iA == 0) {
            tl4Var.beginArray();
            xi4Var = new xi4();
        } else if (iA != 2) {
            xi4Var = null;
        } else {
            tl4Var.beginObject();
            xi4Var = new fl4();
        }
        if (xi4Var == null) {
            return b(iPeek2, tl4Var);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (tl4Var.hasNext()) {
                String strNextName = xi4Var instanceof fl4 ? tl4Var.nextName() : null;
                int iPeek3 = tl4Var.peek();
                int iA2 = dj7.A(iPeek3);
                if (iA2 == 0) {
                    tl4Var.beginArray();
                    xi4Var2 = new xi4();
                } else if (iA2 != 2) {
                    xi4Var2 = null;
                } else {
                    tl4Var.beginObject();
                    xi4Var2 = new fl4();
                }
                boolean z = xi4Var2 != null;
                if (xi4Var2 == null) {
                    xi4Var2 = b(iPeek3, tl4Var);
                }
                if (xi4Var instanceof xi4) {
                    ((xi4) xi4Var).p(xi4Var2);
                } else {
                    ((fl4) xi4Var).p(strNextName, xi4Var2);
                }
                if (z) {
                    arrayDeque.addLast(xi4Var);
                    xi4Var = xi4Var2;
                }
            } else {
                if (xi4Var instanceof xi4) {
                    tl4Var.endArray();
                } else {
                    tl4Var.endObject();
                }
                if (arrayDeque.isEmpty()) {
                    return xi4Var;
                }
                xi4Var = (qj4) arrayDeque.removeLast();
            }
        }
    }

    public static qj4 b(int i, tl4 tl4Var) throws IOException {
        int iA = dj7.A(i);
        if (iA == 5) {
            return new kl4(tl4Var.nextString());
        }
        if (iA == 6) {
            return new kl4(new ns4(tl4Var.nextString()));
        }
        if (iA == 7) {
            return new kl4(Boolean.valueOf(tl4Var.nextBoolean()));
        }
        if (iA == 8) {
            tl4Var.nextNull();
            return el4.a;
        }
        l0.e("Unexpected token: ".concat(eq3.u(i)));
        return null;
    }

    public static void c(qj4 qj4Var, nn4 nn4Var) {
        if (qj4Var == null || (qj4Var instanceof el4)) {
            nn4Var.r();
            return;
        }
        if (qj4Var instanceof kl4) {
            kl4 kl4VarK = qj4Var.k();
            Serializable serializable = kl4VarK.a;
            if (serializable instanceof Number) {
                nn4Var.O(kl4VarK.t());
                return;
            } else if (serializable instanceof Boolean) {
                nn4Var.U(kl4VarK.e());
                return;
            } else {
                nn4Var.S(kl4VarK.o());
                return;
            }
        }
        if (qj4Var instanceof xi4) {
            nn4Var.b();
            Iterator it = qj4Var.g().a.iterator();
            while (it.hasNext()) {
                c((qj4) it.next(), nn4Var);
            }
            nn4Var.j();
            return;
        }
        if (!(qj4Var instanceof fl4)) {
            b6.e(qj4Var.getClass(), "Couldn't write ");
            return;
        }
        nn4Var.g();
        Iterator it2 = ((ew4) qj4Var.i().a.entrySet()).iterator();
        while (((aw4) it2).hasNext()) {
            hw4 hw4VarB = ((dw4) it2).b();
            nn4Var.n((String) hw4VarB.getKey());
            c((qj4) hw4VarB.getValue(), nn4Var);
        }
        nn4Var.m();
    }

    @Override // com.google.gson.b
    public final /* bridge */ /* synthetic */ Object read(tl4 tl4Var) {
        return a(tl4Var);
    }

    @Override // com.google.gson.b
    public final /* bridge */ /* synthetic */ void write(nn4 nn4Var, Object obj) {
        c((qj4) obj, nn4Var);
    }
}
