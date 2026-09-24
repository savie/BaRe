package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import com.bumptech.glide.a;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pk6 extends mm0 {
    public final Context K;
    public final yk6 L;
    public final Class M;
    public final dy3 N;
    public ea8 O;
    public Object P;
    public ArrayList Q;
    public pk6 R;
    public pk6 S;
    public boolean T = true;
    public boolean U;
    public boolean V;

    static {
    }

    public pk6(a aVar, yk6 yk6Var, Class cls, Context context) {
        bl6 bl6Var;
        this.L = yk6Var;
        this.M = cls;
        this.K = context;
        k50 k50Var = yk6Var.a.c.f;
        ea8 ea8Var = (ea8) k50Var.get(cls);
        if (ea8Var == null) {
            for (Map.Entry entry : (e50) k50Var.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    ea8Var = (ea8) entry.getValue();
                }
            }
        }
        this.O = ea8Var == null ? dy3.k : ea8Var;
        this.N = aVar.c;
        Iterator it = yk6Var.p.iterator();
        while (it.hasNext()) {
            w((vk6) it.next());
        }
        synchronized (yk6Var) {
            bl6Var = yk6Var.q;
        }
        a(bl6Var);
    }

    public final void A(px7 px7Var, tk6 tk6Var, mm0 mm0Var, Executor executor) {
        ms8.i(px7Var);
        if (!this.U) {
            c6.f("You must call #load() before calling #into()");
            return;
        }
        kk6 kk6VarY = y(new Object(), px7Var, tk6Var, null, this.O, mm0Var.c, mm0Var.n, mm0Var.k, mm0Var, executor);
        kk6 kk6VarK = px7Var.k();
        if (kk6VarY.b(kk6VarK) && (mm0Var.f || !kk6VarK.k())) {
            ms8.j(kk6VarK, "Argument must not be null");
            if (kk6VarK.isRunning()) {
                return;
            }
            kk6VarK.j();
            return;
        }
        this.L.i(px7Var);
        px7Var.d(kk6VarY);
        yk6 yk6Var = this.L;
        synchronized (yk6Var) {
            yk6Var.f.a.add(px7Var);
            j23 j23Var = yk6Var.d;
            ((Set) j23Var.c).add(kk6VarY);
            if (j23Var.b) {
                kk6VarY.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                ((HashSet) j23Var.d).add(kk6VarY);
            } else {
                kk6VarY.j();
            }
        }
    }

    public final void B(ImageView imageView) {
        mm0 mm0VarI;
        px7 wo2Var;
        xh8.c();
        ms8.i(imageView);
        if (!mm0.h(this.a, RSAKeyGenerator.MIN_KEY_SIZE_BITS) && imageView.getScaleType() != null) {
            switch (ok6.a[imageView.getScaleType().ordinal()]) {
                case 1:
                    mm0VarI = clone().i(so2.c, new e31());
                    break;
                case 2:
                    mm0VarI = clone().n(so2.b, new f31(), false);
                    break;
                case 3:
                case 4:
                case 5:
                    mm0VarI = clone().n(so2.a, new ih3(), false);
                    break;
                case 6:
                    mm0VarI = clone().n(so2.b, new f31(), false);
                    break;
                default:
                    mm0VarI = this;
                    break;
            }
        } else {
            mm0VarI = this;
        }
        this.N.c.getClass();
        Class cls = this.M;
        if (Bitmap.class.equals(cls)) {
            wo2Var = new mr0(imageView);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                c6.f(fz5.l(cls, "Unhandled class: ", ", try .as*(Class).transcode(ResourceTranscoder)"));
                return;
            }
            wo2Var = new wo2(imageView);
        }
        A(wo2Var, null, mm0VarI, xh8.e);
    }

    public final pk6 C(zn8 zn8Var) {
        if (this.H) {
            return clone().C(zn8Var);
        }
        this.Q = null;
        return w(zn8Var);
    }

    public final pk6 D(Object obj) {
        if (this.H) {
            return clone().D(obj);
        }
        this.P = obj;
        this.U = true;
        o();
        return this;
    }

    public final pk6 E(ap2 ap2Var) {
        if (this.H) {
            return clone().E(ap2Var);
        }
        this.O = ap2Var;
        this.T = false;
        o();
        return this;
    }

    @Override // defpackage.mm0
    public final boolean equals(Object obj) {
        if (!(obj instanceof pk6)) {
            return false;
        }
        pk6 pk6Var = (pk6) obj;
        return super.equals(pk6Var) && Objects.equals(this.M, pk6Var.M) && this.O.equals(pk6Var.O) && Objects.equals(this.P, pk6Var.P) && Objects.equals(this.Q, pk6Var.Q) && Objects.equals(this.R, pk6Var.R) && Objects.equals(this.S, pk6Var.S) && this.T == pk6Var.T && this.U == pk6Var.U;
    }

    @Override // defpackage.mm0
    public final int hashCode() {
        return xh8.r(this.U ? 1 : 0, xh8.r(this.T ? 1 : 0, xh8.s(xh8.s(xh8.s(xh8.s(xh8.s(xh8.s(xh8.s(super.hashCode(), this.M), this.O), this.P), this.Q), this.R), this.S), null)));
    }

    public final pk6 w(vk6 vk6Var) {
        if (this.H) {
            return clone().w(vk6Var);
        }
        if (vk6Var != null) {
            if (this.Q == null) {
                this.Q = new ArrayList();
            }
            this.Q.add(vk6Var);
        }
        o();
        return this;
    }

    @Override // defpackage.mm0
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public final pk6 a(mm0 mm0Var) {
        ms8.i(mm0Var);
        return (pk6) super.a(mm0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final kk6 y(Object obj, px7 px7Var, vk6 vk6Var, qk6 qk6Var, ea8 ea8Var, e66 e66Var, int i, int i2, mm0 mm0Var, Executor executor) {
        qk6 qk6Var2;
        qk6 by2Var;
        mm0 mm0Var2;
        kk6 fh7Var;
        e66 e66Var2;
        if (this.S != null) {
            by2Var = new by2(obj, qk6Var);
            qk6Var2 = by2Var;
        } else {
            qk6Var2 = null;
            by2Var = qk6Var;
        }
        pk6 pk6Var = this.R;
        if (pk6Var == null) {
            Context context = this.K;
            dy3 dy3Var = this.N;
            mm0Var2 = mm0Var;
            fh7Var = new fh7(context, dy3Var, obj, this.P, this.M, mm0Var2, i, i2, e66Var, px7Var, vk6Var, this.Q, by2Var, dy3Var.g, ea8Var.a, executor);
        } else {
            if (this.V) {
                l0.e("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
                return null;
            }
            ea8 ea8Var2 = pk6Var.T ? ea8Var : pk6Var.O;
            if (mm0.h(pk6Var.a, 8)) {
                e66Var2 = this.R.c;
            } else {
                int iOrdinal = e66Var.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    e66Var2 = e66.a;
                } else if (iOrdinal == 2) {
                    e66Var2 = e66.b;
                } else {
                    if (iOrdinal != 3) {
                        b6.e(this.c, "unknown priority: ");
                        return null;
                    }
                    e66Var2 = e66.c;
                }
            }
            e66 e66Var3 = e66Var2;
            pk6 pk6Var2 = this.R;
            int i3 = pk6Var2.n;
            int i4 = pk6Var2.k;
            if (xh8.u(i, i2)) {
                pk6 pk6Var3 = this.R;
                if (!xh8.u(pk6Var3.n, pk6Var3.k)) {
                    i3 = mm0Var.n;
                    i4 = mm0Var.k;
                }
            }
            int i5 = i4;
            int i6 = i3;
            d38 d38Var = new d38(obj, by2Var);
            Context context2 = this.K;
            dy3 dy3Var2 = this.N;
            fh7 fh7Var2 = new fh7(context2, dy3Var2, obj, this.P, this.M, mm0Var, i, i2, e66Var, px7Var, vk6Var, this.Q, d38Var, dy3Var2.g, ea8Var.a, executor);
            this.V = true;
            pk6 pk6Var4 = this.R;
            kk6 kk6VarY = pk6Var4.y(obj, px7Var, vk6Var, d38Var, ea8Var2, e66Var3, i6, i5, pk6Var4, executor);
            this.V = false;
            d38Var.c = fh7Var2;
            d38Var.d = kk6VarY;
            mm0Var2 = mm0Var;
            fh7Var = d38Var;
        }
        if (qk6Var2 == null) {
            return fh7Var;
        }
        pk6 pk6Var5 = this.S;
        int i7 = pk6Var5.n;
        int i8 = pk6Var5.k;
        if (xh8.u(i, i2)) {
            pk6 pk6Var6 = this.S;
            if (!xh8.u(pk6Var6.n, pk6Var6.k)) {
                i7 = mm0Var2.n;
                i8 = mm0Var2.k;
            }
        }
        pk6 pk6Var7 = this.S;
        by2 by2Var2 = qk6Var2;
        kk6 kk6VarY2 = pk6Var7.y(obj, px7Var, vk6Var, by2Var2, pk6Var7.O, pk6Var7.c, i7, i8, pk6Var7, executor);
        by2Var2.c = fh7Var;
        by2Var2.d = kk6VarY2;
        return by2Var2;
    }

    @Override // defpackage.mm0
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public final pk6 clone() {
        pk6 pk6Var = (pk6) super.clone();
        pk6Var.O = pk6Var.O.clone();
        if (pk6Var.Q != null) {
            pk6Var.Q = new ArrayList(pk6Var.Q);
        }
        pk6 pk6Var2 = pk6Var.R;
        if (pk6Var2 != null) {
            pk6Var.R = pk6Var2.clone();
        }
        pk6 pk6Var3 = pk6Var.S;
        if (pk6Var3 != null) {
            pk6Var.S = pk6Var3.clone();
        }
        return pk6Var;
    }
}
