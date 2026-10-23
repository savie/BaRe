package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q87 {
    public static final p87 Companion = new p87();
    public static final os4[] d = {null, null, jd4.x(ys4.b, new fl(12))};
    public final u87 a;
    public final i38 b;
    public final Map c;

    public /* synthetic */ q87(int i, u87 u87Var, i38 i38Var, Map map) {
        if (1 != (i & 1)) {
            nc8.p0(i, 1, o87.a.d());
            throw null;
        }
        this.a = u87Var;
        if ((i & 2) == 0) {
            this.b = null;
        } else {
            this.b = i38Var;
        }
        if ((i & 4) == 0) {
            this.c = null;
        } else {
            this.c = map;
        }
    }

    public static q87 a(q87 q87Var, u87 u87Var, i38 i38Var, Map map, int i) {
        if ((i & 1) != 0) {
            u87Var = q87Var.a;
        }
        if ((i & 2) != 0) {
            i38Var = q87Var.b;
        }
        if ((i & 4) != 0) {
            map = q87Var.c;
        }
        q87Var.getClass();
        u87Var.getClass();
        return new q87(u87Var, i38Var, map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q87)) {
            return false;
        }
        q87 q87Var = (q87) obj;
        return pe4.d(this.a, q87Var.a) && pe4.d(this.b, q87Var.b) && pe4.d(this.c, q87Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        i38 i38Var = this.b;
        int iHashCode2 = (iHashCode + (i38Var == null ? 0 : Long.hashCode(i38Var.a))) * 31;
        Map map = this.c;
        return iHashCode2 + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        return "SessionData(sessionDetails=" + this.a + ", backgroundTime=" + this.b + ", processDataMap=" + this.c + ')';
    }

    public q87(u87 u87Var, i38 i38Var, Map map) {
        u87Var.getClass();
        this.a = u87Var;
        this.b = i38Var;
        this.c = map;
    }
}
