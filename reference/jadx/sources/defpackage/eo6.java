package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class eo6 {
    public dv1 a;
    public Executor b;
    public d98 c;
    public mi2 d;
    public kg4 e;
    public boolean g;
    public final h80 f = new h80(new p02(0, this, eo6.class, "onClosed", "onClosed()V", 0, 1));
    public final ThreadLocal h = new ThreadLocal();
    public final LinkedHashMap i = new LinkedHashMap();
    public boolean j = true;

    public List a(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(x65.q0(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            n81 n81Var = (n81) entry.getKey();
            n81Var.getClass();
            Class clsA = n81Var.a();
            clsA.getClass();
            linkedHashMap2.put(clsA, entry.getValue());
        }
        return ov2.a;
    }

    public abstract kg4 b();

    public gu2 c() {
        throw new io5(0);
    }

    public final kg4 d() {
        kg4 kg4Var = this.e;
        if (kg4Var != null) {
            return kg4Var;
        }
        pe4.F("internalTracker");
        throw null;
    }

    public final ox1 e() {
        dv1 dv1Var = this.a;
        if (dv1Var != null) {
            return dv1Var.a;
        }
        pe4.F("coroutineScope");
        throw null;
    }

    public Set f() {
        return el1.z1(new ArrayList(hl1.G0(sv2.a, 10)));
    }

    public LinkedHashMap g() {
        int iQ0 = x65.q0(hl1.G0(sv2.a, 10));
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        return new LinkedHashMap(iQ0);
    }

    public final boolean h() {
        mi2 mi2Var = this.d;
        if (mi2Var != null) {
            return ((ns7) mi2Var.g) != null;
        }
        pe4.F("connectionManager");
        throw null;
    }

    public final boolean i() {
        if (j()) {
            mi2 mi2Var = this.d;
            if (mi2Var == null) {
                pe4.F("connectionManager");
                throw null;
            }
            ns7 ns7Var = (ns7) mi2Var.g;
            if (ns7Var == null) {
                l0.e("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
                return false;
            }
            if (ns7Var.L().a0()) {
                return true;
            }
        }
        return false;
    }

    public final boolean j() {
        mi2 mi2Var = this.d;
        if (mi2Var == null) {
            pe4.F("connectionManager");
            throw null;
        }
        is3 is3Var = (is3) mi2Var.h;
        if (is3Var != null) {
            return is3Var.isOpen();
        }
        return false;
    }

    public final Object k(boolean z, qt3 qt3Var, kv1 kv1Var) {
        mi2 mi2Var = this.d;
        if (mi2Var != null) {
            return ((cs1) mi2Var.f).w(z, qt3Var, kv1Var);
        }
        pe4.F("connectionManager");
        throw null;
    }
}
