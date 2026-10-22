package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kh8 {
    public final long a;
    public final gy5 b;
    public final qn5 c;
    public final np1 d;
    public final boolean e;

    public kh8(long j, gy5 gy5Var, np1 np1Var) {
        this.a = j;
        this.b = gy5Var;
        this.c = null;
        this.d = np1Var;
        this.e = true;
    }

    public final np1 a() {
        np1 np1Var = this.d;
        if (np1Var != null) {
            return np1Var;
        }
        c6.f("Can't access merge when write is an overwrite!");
        return null;
    }

    public final qn5 b() {
        qn5 qn5Var = this.c;
        if (qn5Var != null) {
            return qn5Var;
        }
        c6.f("Can't access overwrite when write is a merge!");
        return null;
    }

    public final boolean c() {
        return this.c != null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || kh8.class != obj.getClass()) {
            return false;
        }
        kh8 kh8Var = (kh8) obj;
        if (this.a != kh8Var.a || !this.b.equals(kh8Var.b) || this.e != kh8Var.e) {
            return false;
        }
        qn5 qn5Var = kh8Var.c;
        qn5 qn5Var2 = this.c;
        if (qn5Var2 != null) {
            if (!qn5Var2.equals(qn5Var)) {
                return false;
            }
        } else if (qn5Var != null) {
            return false;
        }
        np1 np1Var = kh8Var.d;
        np1 np1Var2 = this.d;
        if (np1Var2 != null) {
            return np1Var2.equals(np1Var);
        }
        return np1Var == null;
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + ((Boolean.valueOf(this.e).hashCode() + (Long.valueOf(this.a).hashCode() * 31)) * 31)) * 31;
        qn5 qn5Var = this.c;
        int iHashCode2 = (iHashCode + (qn5Var != null ? qn5Var.hashCode() : 0)) * 31;
        np1 np1Var = this.d;
        return iHashCode2 + (np1Var != null ? np1Var.hashCode() : 0);
    }

    public final String toString() {
        return "UserWriteRecord{id=" + this.a + " path=" + this.b + " visible=" + this.e + " overwrite=" + this.c + " merge=" + this.d + "}";
    }

    public kh8(long j, gy5 gy5Var, qn5 qn5Var, boolean z) {
        this.a = j;
        this.b = gy5Var;
        this.c = qn5Var;
        this.d = null;
        this.e = z;
    }
}
