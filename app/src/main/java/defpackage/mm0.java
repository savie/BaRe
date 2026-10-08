package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mm0 implements Cloneable {
    public boolean G;
    public boolean H;
    public boolean J;
    public int a;
    public BitmapDrawable d;
    public int e;
    public boolean q;
    public Drawable r;
    public km2 b = km2.c;
    public e66 c = e66.c;
    public boolean f = true;
    public int k = -1;
    public int n = -1;
    public jo4 p = tv2.b;
    public ou5 t = new ou5();
    public iz0 x = new iz0(0);
    public Class y = Object.class;
    public boolean I = true;

    public static boolean h(int i, int i2) {
        return (i & i2) != 0;
    }

    public mm0 a(mm0 mm0Var) {
        if (this.H) {
            return clone().a(mm0Var);
        }
        int i = mm0Var.a;
        if (h(mm0Var.a, 1048576)) {
            this.J = mm0Var.J;
        }
        if (h(mm0Var.a, 4)) {
            this.b = mm0Var.b;
        }
        if (h(mm0Var.a, 8)) {
            this.c = mm0Var.c;
        }
        if (h(mm0Var.a, 16)) {
            this.a &= -33;
        }
        if (h(mm0Var.a, 32)) {
            this.a &= -17;
        }
        if (h(mm0Var.a, 64)) {
            this.d = mm0Var.d;
            this.e = 0;
            this.a &= -129;
        }
        if (h(mm0Var.a, 128)) {
            this.e = mm0Var.e;
            this.d = null;
            this.a &= -65;
        }
        if (h(mm0Var.a, 256)) {
            this.f = mm0Var.f;
        }
        if (h(mm0Var.a, 512)) {
            this.n = mm0Var.n;
            this.k = mm0Var.k;
        }
        if (h(mm0Var.a, 1024)) {
            this.p = mm0Var.p;
        }
        if (h(mm0Var.a, 4096)) {
            this.y = mm0Var.y;
        }
        if (h(mm0Var.a, 8192)) {
            this.r = mm0Var.r;
            this.a &= -16385;
        }
        if (h(mm0Var.a, 16384)) {
            this.r = null;
            this.a &= -8193;
        }
        if (h(mm0Var.a, 131072)) {
            this.q = mm0Var.q;
        }
        if (h(mm0Var.a, RSAKeyGenerator.MIN_KEY_SIZE_BITS)) {
            this.x.putAll(mm0Var.x);
            this.I = mm0Var.I;
        }
        this.a |= mm0Var.a;
        this.t.b.h(mm0Var.t.b);
        o();
        return this;
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public mm0 clone() {
        try {
            mm0 mm0Var = (mm0) super.clone();
            ou5 ou5Var = new ou5();
            mm0Var.t = ou5Var;
            ou5Var.b.h(this.t.b);
            iz0 iz0Var = new iz0(0);
            mm0Var.x = iz0Var;
            iz0Var.putAll(this.x);
            mm0Var.G = false;
            mm0Var.H = false;
            return mm0Var;
        } catch (CloneNotSupportedException e) {
            y5.k(e);
            return null;
        }
    }

    public final mm0 c(Class cls) {
        if (this.H) {
            return clone().c(cls);
        }
        this.y = cls;
        this.a |= 4096;
        o();
        return this;
    }

    public final mm0 d(km2 km2Var) {
        if (this.H) {
            return clone().d(km2Var);
        }
        this.b = km2Var;
        this.a |= 4;
        o();
        return this;
    }

    public final mm0 e(Drawable drawable) {
        if (this.H) {
            return clone().e(drawable);
        }
        this.r = drawable;
        this.a = (this.a | 8192) & (-16385);
        o();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof mm0) {
            return f((mm0) obj);
        }
        return false;
    }

    public final boolean f(mm0 mm0Var) {
        mm0Var.getClass();
        return Float.compare(1.0f, 1.0f) == 0 && this.e == mm0Var.e && xh8.d(this.d, mm0Var.d) && xh8.d(this.r, mm0Var.r) && this.f == mm0Var.f && this.k == mm0Var.k && this.n == mm0Var.n && this.q == mm0Var.q && this.b.equals(mm0Var.b) && this.c == mm0Var.c && this.t.equals(mm0Var.t) && this.x.equals(mm0Var.x) && this.y.equals(mm0Var.y) && this.p.equals(mm0Var.p);
    }

    public int hashCode() {
        return xh8.s(xh8.s(xh8.s(xh8.s(xh8.s(xh8.s(xh8.s(xh8.r(0, xh8.r(0, xh8.r(1, xh8.r(this.q ? 1 : 0, xh8.r(this.n, xh8.r(this.k, xh8.r(this.f ? 1 : 0, xh8.s(xh8.r(0, xh8.s(xh8.r(this.e, xh8.s(xh8.r(0, xh8.r(Float.floatToIntBits(1.0f), 17)), null)), this.d)), this.r)))))))), this.b), this.c), this.t), this.x), this.y), this.p), null);
    }

    public final mm0 i(so2 so2Var, pr0 pr0Var) {
        if (this.H) {
            return clone().i(so2Var, pr0Var);
        }
        p(so2.f, so2Var);
        return t(pr0Var, false);
    }

    public final mm0 j(int i, int i2) {
        if (this.H) {
            return clone().j(i, i2);
        }
        this.n = i;
        this.k = i2;
        this.a |= 512;
        o();
        return this;
    }

    public final mm0 k() {
        if (this.H) {
            return clone().k();
        }
        this.e = R.drawable.ic_user_default;
        int i = this.a | 128;
        this.d = null;
        this.a = i & (-65);
        o();
        return this;
    }

    public final mm0 l(BitmapDrawable bitmapDrawable) {
        if (this.H) {
            return clone().l(bitmapDrawable);
        }
        this.d = bitmapDrawable;
        int i = this.a | 64;
        this.e = 0;
        this.a = i & (-129);
        o();
        return this;
    }

    public final mm0 m(e66 e66Var) {
        if (this.H) {
            return clone().m(e66Var);
        }
        this.c = e66Var;
        this.a |= 8;
        o();
        return this;
    }

    public final mm0 n(so2 so2Var, pr0 pr0Var, boolean z) {
        mm0 mm0VarS = z ? s(so2Var, pr0Var) : i(so2Var, pr0Var);
        mm0VarS.I = true;
        return mm0VarS;
    }

    public final void o() {
        if (this.G) {
            l0.e("You cannot modify locked T, consider clone()");
        }
    }

    public final mm0 p(iu5 iu5Var, Object obj) {
        if (this.H) {
            return clone().p(iu5Var, obj);
        }
        ms8.i(iu5Var);
        this.t.b.put(iu5Var, obj);
        o();
        return this;
    }

    public final mm0 q(nr5 nr5Var) {
        if (this.H) {
            return clone().q(nr5Var);
        }
        this.p = nr5Var;
        this.a |= 1024;
        o();
        return this;
    }

    public final mm0 r() {
        if (this.H) {
            return clone().r();
        }
        this.f = false;
        this.a |= 256;
        o();
        return this;
    }

    public final mm0 s(so2 so2Var, pr0 pr0Var) {
        if (this.H) {
            return clone().s(so2Var, pr0Var);
        }
        p(so2.f, so2Var);
        return t(pr0Var, true);
    }

    public final mm0 t(l98 l98Var, boolean z) {
        if (this.H) {
            return clone().t(l98Var, z);
        }
        zo2 zo2Var = new zo2(l98Var, z);
        u(Bitmap.class, l98Var, z);
        u(Drawable.class, zo2Var, z);
        u(BitmapDrawable.class, zo2Var, z);
        u(fx3.class, new hx3(l98Var), z);
        o();
        return this;
    }

    public final mm0 u(Class cls, l98 l98Var, boolean z) {
        if (this.H) {
            return clone().u(cls, l98Var, z);
        }
        ms8.i(l98Var);
        this.x.put(cls, l98Var);
        int i = this.a;
        this.a = 67584 | i;
        this.I = false;
        if (z) {
            this.a = i | 198656;
            this.q = true;
        }
        o();
        return this;
    }

    public final mm0 v() {
        if (this.H) {
            return clone().v();
        }
        this.J = true;
        this.a |= 1048576;
        o();
        return this;
    }
}
