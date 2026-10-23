package defpackage;

import android.util.Log;
import android.view.View;
import com.google.android.material.textfield.TextInputLayout;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class s02 implements jk8, n59 {
    public static final r02 d = new r02();
    public Object a;
    public Object b;
    public Object c;

    public static final void a() {
        if (((Boolean) new p02(0, d, r02.class, "isBackgroundThread", "isBackgroundThread()Z", 0, 0).invoke()).booleanValue()) {
            return;
        }
        String str = "Must be called on a background thread, was called on " + Thread.currentThread().getName() + '.';
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    public static final void b() {
        if (((Boolean) new qg1(0, d, r02.class, "isBlockingThread", "isBlockingThread()Z", 0, 1).invoke()).booleanValue()) {
            return;
        }
        String str = "Must be called on a blocking thread, was called on " + Thread.currentThread().getName() + '.';
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", str, null);
        }
    }

    public i98 c(Class cls) {
        bq1 bq1Var = (bq1) this.a;
        bq1 bq1Var2 = (bq1) this.b;
        if (bq1Var2.containsKey(cls)) {
            return null;
        }
        i98 i98Var = (i98) bq1Var.get(cls);
        if (i98Var != null) {
            return i98Var;
        }
        i98 i98VarF = ((x91) this.c).f(cls);
        if (i98VarF != null) {
            bq1Var.put(cls, i98VarF);
            return i98VarF;
        }
        bq1Var2.put(cls, this);
        return i98VarF;
    }

    public hf9 d() throws GeneralSecurityException {
        km8 km8Var;
        d2a d2aVarB;
        sf9 sf9Var = (sf9) this.a;
        if (sf9Var == null || (km8Var = (km8) this.b) == null) {
            m0.h("Cannot build without parameters and/or key material");
            return null;
        }
        if (sf9Var.a != ((d2a) km8Var.a).a.length) {
            m0.h("Key size mismatch");
            return null;
        }
        if (sf9Var.a() && ((Integer) this.c) == null) {
            m0.h("Cannot create key without ID requirement with parameters with ID requirement");
            return null;
        }
        if (!((sf9) this.a).a() && ((Integer) this.c) != null) {
            m0.h("Cannot create key with ID requirement with parameters without ID requirement");
            return null;
        }
        rf9 rf9Var = ((sf9) this.a).d;
        if (rf9Var == rf9.e) {
            d2aVarB = zs9.a;
        } else if (rf9Var == rf9.d) {
            d2aVarB = zs9.a(((Integer) this.c).intValue());
        } else {
            if (rf9Var != rf9.c) {
                l0.e("Unknown AesEaxParameters.Variant: ".concat(String.valueOf(rf9Var)));
                return null;
            }
            d2aVarB = zs9.b(((Integer) this.c).intValue());
        }
        return new hf9((sf9) this.a, (km8) this.b, d2aVarB, (Integer) this.c);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (TextInputLayout) this.a;
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        n69 n69Var = (n69) this.a;
        n69Var.e = ((b69) f59Var).b;
        g59 g59Var = (g59) ((ke) this.c).b;
        l22 l22Var = new l22(this, (yf1) this.b, this, 9, false);
        d59 d59Var = g59Var.a;
        ms8.U(d59Var.r("/verifyPhoneNumber", g59Var.f), n69Var, l22Var, new m69(), (xt1) d59Var.b);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }
}
