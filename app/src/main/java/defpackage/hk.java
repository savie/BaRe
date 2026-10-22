package defpackage;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.model.app.LocalMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hk implements Parcelable {
    public static final Parcelable.Creator<hk> CREATOR;
    public static final gv7 I;
    public final gv7 G;
    public final gv7 H;
    public final String a;
    public final String b;
    public final boolean c;
    public final gv7 d;
    public final gv7 e;
    public final gv7 f;
    public final gv7 k;
    public final gv7 n;
    public final gv7 p;
    public final gv7 q;
    public final gv7 r;
    public final gv7 t;
    public final gv7 x;
    public final gv7 y;

    static {
        int i = 0;
        CREATOR = new gk(i);
        I = new gv7(new zj(i));
    }

    public hk(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        int i = 1;
        this.d = new gv7(new gj(this, i));
        int i2 = 0;
        this.e = new gv7(new dk(this, i2));
        this.f = new gv7(new ek(this, i2));
        this.k = new gv7(new ah(this, i));
        this.n = new gv7(new bh(this, 2));
        this.p = new gv7(new d76(this, i));
        this.q = new gv7(new kf(this, i));
        this.r = new gv7(new lf(this, i));
        this.t = new gv7(new ej(this, i));
        this.x = new gv7(new fj(this, i));
        this.y = new gv7(new ak(this, i2));
        this.G = new gv7(new bk(this, i2));
        this.H = new gv7(new ck(this, i2));
    }

    public final q63 B() {
        return (q63) this.t.getValue();
    }

    public final q63 C() {
        return (q63) this.f.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0049  */
    public final long D() {
        long jA;
        long j = 0;
        for (q63 q63Var : fl1.A0(c(), C(), z(), g(), n(), m(), q(), B())) {
            if (q63Var.j()) {
                jA = q63Var.A();
                if (jA < 0) {
                    jA = 0;
                }
            } else {
                jA = 0;
            }
            j += jA;
        }
        return j;
    }

    public final boolean E() {
        if (!v().j()) {
            return false;
        }
        List listA0 = fl1.A0(c(), g(), n(), m(), q());
        if (listA0.isEmpty()) {
            return false;
        }
        Iterator it = listA0.iterator();
        while (it.hasNext()) {
            if (((q63) it.next()).j()) {
                return true;
            }
        }
        return false;
    }

    public final q63 c() {
        return (q63) this.e.getValue();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final q63 e() {
        return (q63) this.d.getValue();
    }

    public final q63 g() {
        return (q63) this.n.getValue();
    }

    public final long l() {
        return ((Number) this.y.getValue()).longValue();
    }

    public final q63 m() {
        return (q63) this.q.getValue();
    }

    public final q63 n() {
        return (q63) this.p.getValue();
    }

    public final q63 q() {
        return (q63) this.r.getValue();
    }

    public final LocalMetadata u() {
        if (v().j()) {
            return cu.b(v());
        }
        return null;
    }

    public final q63 v() {
        return (q63) this.x.getValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c ? 1 : 0);
    }

    public final q63 z() {
        return (q63) this.k.getValue();
    }
}
