package defpackage;

import java.math.MathContext;
import java.nio.file.attribute.FileTime;
import java.util.Date;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km1 {
    public final q63 a;
    public final String b;

    public km1(q63 q63Var, String str) {
        q63Var.getClass();
        str.getClass();
        this.a = q63Var;
        this.b = str;
    }

    public final wa7 a() {
        wa7 wa7Var = new wa7();
        wa7Var.a = this.b;
        q63 q63Var = this.a;
        wa7Var.c = q63Var.x();
        Date date = new Date(q63Var.z());
        MathContext mathContext = ha3.a;
        FileTime fileTimeFromMillis = FileTime.fromMillis(date.getTime());
        boolean z = fileTimeFromMillis != null;
        wa7Var.f = z;
        if (z) {
            wa7Var.i = fileTimeFromMillis;
        }
        if (q63Var.y()) {
            wa7Var.p = q63Var.A();
        }
        return wa7Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof km1)) {
            return false;
        }
        km1 km1Var = (km1) obj;
        return pe4.d(this.a, km1Var.a) && pe4.d(this.b, km1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.a.hashCode() * 31);
    }

    public final String toString() {
        return "SevenZipItem(file=" + this.a + ", entryName=" + this.b + ")";
    }
}
