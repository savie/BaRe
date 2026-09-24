package defpackage;

import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ex2 implements jo4 {
    public final Object b;
    public final int c;
    public final int d;
    public final Class e;
    public final Class f;
    public final jo4 g;
    public final Map h;
    public final ou5 i;
    public int j;

    public ex2(Object obj, jo4 jo4Var, int i, int i2, Map map, Class cls, Class cls2, ou5 ou5Var) {
        ms8.j(obj, "Argument must not be null");
        this.b = obj;
        this.g = jo4Var;
        this.c = i;
        this.d = i2;
        ms8.j(map, "Argument must not be null");
        this.h = map;
        ms8.j(cls, "Resource class must not be null");
        this.e = cls;
        ms8.j(cls2, "Transcode class must not be null");
        this.f = cls2;
        ms8.j(ou5Var, "Argument must not be null");
        this.i = ou5Var;
    }

    @Override // defpackage.jo4
    public final void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.jo4
    public final boolean equals(Object obj) {
        if (obj instanceof ex2) {
            ex2 ex2Var = (ex2) obj;
            if (this.b.equals(ex2Var.b) && this.g.equals(ex2Var.g) && this.d == ex2Var.d && this.c == ex2Var.c && this.h.equals(ex2Var.h) && this.e.equals(ex2Var.e) && this.f.equals(ex2Var.f) && this.i.equals(ex2Var.i)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.jo4
    public final int hashCode() {
        if (this.j == 0) {
            int iHashCode = this.b.hashCode();
            this.j = iHashCode;
            int iHashCode2 = ((((this.g.hashCode() + (iHashCode * 31)) * 31) + this.c) * 31) + this.d;
            this.j = iHashCode2;
            int iHashCode3 = this.h.hashCode() + (iHashCode2 * 31);
            this.j = iHashCode3;
            int iHashCode4 = this.e.hashCode() + (iHashCode3 * 31);
            this.j = iHashCode4;
            int iHashCode5 = this.f.hashCode() + (iHashCode4 * 31);
            this.j = iHashCode5;
            this.j = this.i.b.hashCode() + (iHashCode5 * 31);
        }
        return this.j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.b + ", width=" + this.c + ", height=" + this.d + ", resourceClass=" + this.e + ", transcodeClass=" + this.f + ", signature=" + this.g + ", hashCode=" + this.j + ", transformations=" + this.h + ", options=" + this.i + '}';
    }
}
