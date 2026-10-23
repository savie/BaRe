package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import java.lang.reflect.Constructor;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gd implements a13, gd4, jk8, n59 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public gd(cz2 cz2Var) {
        this.a = 4;
        this.b = new StringBuilder();
        this.d = new pc4(6);
        this.c = cz2Var;
    }

    @Override // defpackage.a13
    public int a() {
        int i = ((ExtendedFloatingActionButton) this.d).A0;
        if (i == -1) {
            return ((ro) this.b).a();
        }
        return (i == 0 || i == -2) ? ((ExtendedFloatingActionButton) ((nh) this.c).b).getMeasuredHeight() : i;
    }

    @Override // defpackage.a13
    public int b() {
        int i = ((ExtendedFloatingActionButton) this.d).z0;
        if (i == -1) {
            return ((ro) this.b).b();
        }
        return (i == 0 || i == -2) ? ((nh) this.c).b() : i;
    }

    @Override // defpackage.gd4
    public boolean c() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.gd4
    public Object d() {
        if (this.b == null) {
            om5 om5Var = (om5) this.d;
            Class cls = (Class) this.c;
            bq1 bq1Var = (bq1) om5Var.a;
            Constructor declaredConstructor = (Constructor) bq1Var.get(cls);
            if (declaredConstructor == null) {
                declaredConstructor = cls.getDeclaredConstructor(null);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
                bq1Var.put(cls, declaredConstructor);
            }
            this.b = declaredConstructor.newInstance(null);
        }
        return this.b;
    }

    @Override // defpackage.gd4
    public Object e(Object obj) {
        this.b = obj;
        return obj;
    }

    public void f(ty3 ty3Var, boolean z) {
        if (z) {
            ((wj6) ty3Var.a).a(this);
        }
        for (Object obj : ((eb8) this.d).a.entrySet().toArray()) {
            Map.Entry entry = (Map.Entry) obj;
            new gd(7, (m61) entry.getKey(), this, (eb8) entry.getValue()).f(ty3Var, true);
        }
    }

    public gy5 g() {
        gd gdVar = (gd) this.c;
        m61 m61Var = (m61) this.b;
        if (gdVar == null) {
            return m61Var != null ? new gy5(m61Var) : gy5.d;
        }
        zm5.s(m61Var != null);
        return gdVar.g().d(m61Var);
    }

    @Override // defpackage.a13
    public int getPaddingEnd() {
        return ((ExtendedFloatingActionButton) this.d).t0;
    }

    @Override // defpackage.a13
    public int getPaddingStart() {
        return ((ExtendedFloatingActionButton) this.d).s0;
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (ConstraintLayout) this.b;
    }

    @Override // defpackage.gd4
    public Class getType() {
        return (Class) this.c;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        g69 g69Var = (g69) f59Var;
        ((ke) this.d).t(new b69(g69Var.b, g69Var.a, Long.valueOf(g69Var.c), BearerAuthenticationSchemeInternal.SCHEME_BEARER), null, "password", Boolean.FALSE, null, (yf1) this.b, this);
    }

    @Override // defpackage.a13
    public ViewGroup.LayoutParams i() {
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.d;
        int i = extendedFloatingActionButton.z0;
        if (i == 0) {
            i = -2;
        }
        int i2 = extendedFloatingActionButton.A0;
        return new ViewGroup.LayoutParams(i, i2 != 0 ? i2 : -2);
    }

    public jk6 j(Long l) {
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) this.b;
        reentrantReadWriteLock.readLock().lock();
        try {
            return (jk6) ((HashMap) this.c).get(l);
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public List k(wc2 wc2Var) {
        bv7 bv7Var = (bv7) this.d;
        eo5 eo5Var = bv7Var.g;
        ik8 ik8Var = (ik8) this.b;
        if (wc2Var == null) {
            qc6 qc6Var = ik8Var.a;
            hx7 hx7Var = (hx7) this.c;
            return hx7Var != null ? (List) eo5Var.a(new yu7(bv7Var, hx7Var)) : (List) eo5Var.a(new xu7(bv7Var, qc6Var.a));
        }
        bv7Var.h.j("Listen at " + ik8Var.a.a + " failed: " + wc2Var.toString());
        return bv7Var.l(ik8Var.a, null, wc2Var, false);
    }

    public lc4 l(lc4 lc4Var) {
        cz2 cz2Var = (cz2) this.c;
        pc4 pc4Var = (pc4) this.d;
        if (!pc4Var.contains(lc4Var) && !pc4Var.isEmpty()) {
            return null;
        }
        for (bz2 next = cz2Var.next(); next != null; next = cz2Var.next()) {
            if (next.m0()) {
                if (pc4Var.pop() == lc4Var) {
                    break;
                }
            } else if (next.S()) {
                lc4 lc4Var2 = new lc4(lc4Var, this, next);
                StringBuilder sb = (StringBuilder) this.b;
                if (sb.length() > 0) {
                    sb.setLength(0);
                }
                if (next.S()) {
                    pc4Var.add(lc4Var2);
                }
                return lc4Var2;
            }
        }
        return null;
    }

    public void m(jk6 jk6Var) {
        ReentrantReadWriteLock reentrantReadWriteLock = (ReentrantReadWriteLock) this.b;
        reentrantReadWriteLock.writeLock().lock();
        try {
            ((HashMap) this.c).put(Long.valueOf(jk6Var.c), jk6Var);
            ((HashMap) this.d).put(jk6Var.d, jk6Var);
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }

    public gd n(gy5 gy5Var) {
        m61 m61VarK = gy5Var.k();
        while (true) {
            eb8 eb8Var = (eb8) this.d;
            if (m61VarK == null) {
                return this;
            }
            gd gdVar = new gd(7, m61VarK, this, eb8Var.a.containsKey(m61VarK) ? (eb8) eb8Var.a.get(m61VarK) : new eb8());
            gy5Var = gy5Var.p();
            m61VarK = gy5Var.k();
            this = gdVar;
        }
    }

    public void o() {
        eb8 eb8Var = (eb8) this.d;
        gd gdVar = (gd) this.c;
        if (gdVar != null) {
            m61 m61Var = (m61) this.b;
            eb8 eb8Var2 = (eb8) gdVar.d;
            boolean z = eb8Var.b == null && eb8Var.a.isEmpty();
            HashMap map = eb8Var2.a;
            boolean zContainsKey = map.containsKey(m61Var);
            if (z && zContainsKey) {
                map.remove(m61Var);
                gdVar.o();
            } else {
                if (z || zContainsKey) {
                    return;
                }
                map.put(m61Var, eb8Var);
                gdVar.o();
            }
        }
    }

    public zt9 p() throws GeneralSecurityException {
        km8 km8Var;
        eu9 eu9Var = (eu9) this.b;
        if (eu9Var == null || (km8Var = (km8) this.c) == null) {
            m0.h("Cannot build without parameters and/or key material");
            return null;
        }
        if (eu9Var.a != ((d2a) km8Var.a).a.length) {
            m0.h("Key size mismatch");
            return null;
        }
        if (eu9Var.a() && ((Integer) this.d) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((eu9) this.b).a() && ((Integer) this.d) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        du9 du9Var = ((eu9) this.b).c;
        if (du9Var == du9.f) {
            d2a d2aVar = zs9.a;
        } else if (du9Var == du9.e || du9Var == du9.d) {
            zs9.a(((Integer) this.d).intValue());
        } else {
            if (du9Var != du9.c) {
                l0.e("Unknown AesCmacParametersParameters.Variant: ".concat(String.valueOf(du9Var)));
                return null;
            }
            zs9.b(((Integer) this.d).intValue());
        }
        return new zt9((eu9) this.b, (km8) this.c, (Integer) this.d);
    }

    public String toString() {
        String str = "";
        switch (this.a) {
            case 7:
                m61 m61Var = (m61) this.b;
                StringBuilder sbU = dj7.u("", m61Var == null ? "<anon>" : m61Var.a, "\n");
                sbU.append(((eb8) this.d).a("\t"));
                return sbU.toString();
            case 8:
            default:
                return super.toString();
            case XmlPullParser.COMMENT /* 9 */:
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.b);
                sb.append('{');
                h80 h80Var = (h80) ((h80) this.c).c;
                while (h80Var != null) {
                    Object obj = h80Var.b;
                    sb.append(str);
                    if (obj == null || !obj.getClass().isArray()) {
                        sb.append(obj);
                    } else {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    }
                    h80Var = (h80) h80Var.c;
                    str = ", ";
                }
                sb.append('}');
                return sb.toString();
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((gm1) this.c).zza(str);
    }

    public /* synthetic */ gd(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public gd(ke keVar, yf1 yf1Var, gm1 gm1Var) {
        this.a = 8;
        this.b = yf1Var;
        this.c = gm1Var;
        Objects.requireNonNull(keVar);
        this.d = keVar;
    }

    public gd(String str) {
        this.a = 9;
        h80 h80Var = new h80(18, false);
        this.c = h80Var;
        this.d = h80Var;
        this.b = str;
    }

    public /* synthetic */ gd(int i) {
        this.a = i;
    }

    public gd(bv7 bv7Var, ik8 ik8Var) {
        this.a = 6;
        this.d = bv7Var;
        this.b = ik8Var;
        this.c = bv7Var.m(ik8Var.a);
    }

    public gd(om5 om5Var, Class cls) {
        this.a = 2;
        this.d = om5Var;
        this.c = cls;
    }

    public gd(ExtendedFloatingActionButton extendedFloatingActionButton, ro roVar, nh nhVar) {
        this.a = 1;
        this.d = extendedFloatingActionButton;
        this.b = roVar;
        this.c = nhVar;
    }
}
