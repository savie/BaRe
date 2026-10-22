package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.o;
import androidx.fragment.app.u;
import androidx.fragment.app.z;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.material.card.MaterialCardView;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.views.MAppBarLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w00 implements jk8, aj8, n59, qp9, yi6 {
    public final /* synthetic */ int a;
    public final Object b;
    public final Object c;

    public w00(oe oeVar) {
        this.a = 3;
        Context context = (Context) oeVar.b;
        int iS = jm1.s(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (iS != 0) {
            this.b = "Unity";
            String string = context.getResources().getString(iS);
            this.c = string;
            String strJ = xs1.j("Unity Editor version is: ", string);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", strJ, null);
                return;
            }
            return;
        }
        if (context.getAssets() != null) {
            try {
                InputStream inputStreamOpen = context.getAssets().open("flutter_assets/NOTICES.Z");
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                this.b = "Flutter";
                this.c = null;
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", "Development platform is: Flutter", null);
                    return;
                }
                return;
            } catch (IOException unused) {
            }
        }
        this.b = null;
        this.c = null;
    }

    public static w00 b(View view) {
        View viewU = ms8.u(view, R.id.toolbar);
        if (viewU == null) {
            f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.toolbar)));
            return null;
        }
        Toolbar toolbar = (Toolbar) viewU;
        return new w00(0, (MAppBarLayout) view, new ix0(9, toolbar, toolbar));
    }

    @Override // defpackage.qp9
    public Object a(IBinder iBinder) throws rz3, IOException {
        sh9 ee9Var;
        int i = zf9.b;
        if (iBinder == null) {
            ee9Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
            ee9Var = iInterfaceQueryLocalInterface instanceof sh9 ? (sh9) iInterfaceQueryLocalInterface : new ee9(iBinder, "com.google.android.auth.IAuthManagerService", 3);
        }
        String str = (String) this.b;
        Bundle bundle = (Bundle) this.c;
        ee9 ee9Var2 = (ee9) ee9Var;
        ee9Var2.getClass();
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(ee9Var2.c);
        parcelObtain.writeString(str);
        xa9.b(parcelObtain, bundle);
        Parcel parcelJ = ee9Var2.j(parcelObtain, 2);
        Bundle bundle2 = (Bundle) xa9.a(parcelJ, Bundle.CREATOR);
        parcelJ.recycle();
        if (bundle2 == null) {
            sz3.c.g("Service call returned null.", new Object[0]);
            y5.m("Service unavailable.");
            return null;
        }
        String string = bundle2.getString("Error");
        if (bundle2.getBoolean("booleanResult")) {
            return null;
        }
        throw new rz3(string);
    }

    @Override // defpackage.yi6
    public void accept(Object obj, Object obj2) {
        Account account = (Account) this.b;
        Bundle bundle = (Bundle) this.c;
        at9 at9Var = (at9) ((hn9) obj).p();
        yy9 yy9Var = new yy9((TaskCompletionSource) obj2);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(at9Var.c);
        int i = xa9.a;
        parcelObtain.writeStrongBinder(yy9Var);
        xa9.b(parcelObtain, account);
        parcelObtain.writeString("oauth2:https://www.googleapis.com/auth/drive.file");
        xa9.b(parcelObtain, bundle);
        at9Var.k(parcelObtain, 1);
    }

    public void c(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.c(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void d(o oVar, boolean z) {
        oVar.getClass();
        z zVar = (z) this.b;
        u uVar = zVar.w.e;
        o oVar2 = zVar.y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.d(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void e(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.e(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void f(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.f(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void g(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.g(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return (MAppBarLayout) obj;
            default:
                return (MaterialCardView) obj;
        }
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        yf1 yf1Var = (yf1) this.b;
        l69 l69Var = (l69) f59Var;
        if (!TextUtils.isEmpty(l69Var.e)) {
            yf1Var.f(new wc9(l69Var.e, l69Var.d, (ua9) null));
        } else {
            ((ke) this.c).t(new b69(l69Var.b, l69Var.a, Long.valueOf(l69Var.c), BearerAuthenticationSchemeInternal.SCHEME_BEARER), null, null, Boolean.FALSE, null, yf1Var, this);
        }
    }

    public void i(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.i(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void j(o oVar, boolean z) {
        oVar.getClass();
        z zVar = (z) this.b;
        u uVar = zVar.w.e;
        o oVar2 = zVar.y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.j(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void k(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.k(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void l(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.l(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void m(o oVar, Bundle bundle, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.m(oVar, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void n(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.n(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void o(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.o(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    @Override // defpackage.aj8
    public void onCancelled(wc2 wc2Var) {
        wc2Var.getClass();
        ((AtomicReference) this.c).set(wc2Var);
        ((CountDownLatch) this.b).countDown();
    }

    @Override // defpackage.aj8
    public void onDataChange(eb2 eb2Var) {
        if (pe4.d(eb2Var.c(Boolean.TYPE), Boolean.TRUE)) {
            ((CountDownLatch) this.b).countDown();
        }
    }

    public void p(o oVar, View view, boolean z) {
        oVar.getClass();
        view.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.p(oVar, view, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    public void q(o oVar, boolean z) {
        oVar.getClass();
        o oVar2 = ((z) this.b).y;
        if (oVar2 != null) {
            oVar2.getParentFragmentManager().o.q(oVar, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.c).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                e6.d();
            } else {
                if (!z) {
                    throw null;
                }
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public cr4 r(au1 au1Var, Annotation annotation, dr4 dr4Var) {
        cr4 cr4Var;
        bq1 bq1Var = (bq1) this.b;
        cr4 cr4Var2 = (cr4) bq1Var.get(dr4Var);
        if (cr4Var2 != null) {
            return cr4Var2;
        }
        if ((annotation instanceof ut2) || (annotation instanceof jt2) || (annotation instanceof pt2)) {
            cr4Var = t(au1Var, annotation);
        } else {
            uq4 uq4VarS = s(au1Var, annotation, null);
            if (uq4VarS != null) {
                uq4VarS = new fz0(uq4VarS);
            }
            cr4Var = new cr4(Arrays.asList(uq4VarS));
        }
        if (cr4Var != null) {
            bq1Var.put(dr4Var, cr4Var);
        }
        return cr4Var;
    }

    public uq4 s(au1 au1Var, Annotation annotation, Annotation annotation2) throws kd5 {
        u00 u00Var;
        if (annotation instanceof at2) {
            u00Var = new u00(ft2.class, at2.class, (Class) null);
        } else if (annotation instanceof gt2) {
            u00Var = new u00(ht2.class, gt2.class, (Class) null);
        } else if (annotation instanceof ct2) {
            u00Var = new u00(dt2.class, ct2.class, (Class) null);
        } else if (annotation instanceof mt2) {
            u00Var = new u00(nt2.class, mt2.class, (Class) null);
        } else if (annotation instanceof ut2) {
            u00Var = new u00(vt2.class, ut2.class, at2.class);
        } else if (annotation instanceof jt2) {
            u00Var = new u00(kt2.class, jt2.class, gt2.class);
        } else if (annotation instanceof pt2) {
            u00Var = new u00(qt2.class, pt2.class, mt2.class);
        } else if (annotation instanceof u70) {
            u00Var = new u00(x70.class, u70.class, (Class) null);
        } else if (annotation instanceof vj8) {
            u00Var = new u00(xj8.class, vj8.class, (Class) null);
        } else {
            if (!(annotation instanceof q08)) {
                throw new kd5("Annotation %s not supported", annotation);
            }
            u00Var = new u00(j18.class, q08.class, (Class) null);
        }
        Class cls = (Class) u00Var.d;
        Class cls2 = (Class) u00Var.c;
        Class cls3 = (Class) u00Var.b;
        Constructor constructor = cls2 != null ? cls.getConstructor(au1.class, cls3, cls2, vq3.class) : cls.getConstructor(au1.class, cls3, vq3.class);
        if (!constructor.isAccessible()) {
            constructor.setAccessible(true);
        }
        vq3 vq3Var = (vq3) this.c;
        return annotation2 != null ? (uq4) constructor.newInstance(au1Var, annotation, annotation2, vq3Var) : (uq4) constructor.newInstance(au1Var, annotation, vq3Var);
    }

    public cr4 t(au1 au1Var, Annotation annotation) throws kd5 {
        Method[] declaredMethods = annotation.annotationType().getDeclaredMethods();
        Annotation[] annotationArr = declaredMethods.length > 0 ? (Annotation[]) declaredMethods[0].invoke(annotation, null) : new Annotation[0];
        if (annotationArr.length <= 0) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (Annotation annotation2 : annotationArr) {
            uq4 uq4VarS = s(au1Var, annotation, annotation2);
            if (uq4VarS != null) {
                uq4VarS = new fz0(uq4VarS);
            }
            linkedList.add(uq4VarS);
        }
        return new cr4(linkedList);
    }

    public void u(Bundle bundle) {
        vx6 vx6Var = (vx6) this.b;
        wx6 wx6Var = vx6Var.a;
        if (!vx6Var.e) {
            vx6Var.a();
        }
        if (wx6Var.getLifecycle().d.compareTo(st4.d) >= 0) {
            q.d(wx6Var.getLifecycle().d, "performRestore cannot be called when owner is ");
            return;
        }
        if (vx6Var.g) {
            l0.e("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundleS = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            bundleS = k55.s(bundle, "androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        vx6Var.f = bundleS;
        vx6Var.g = true;
    }

    public void v(Bundle bundle) {
        vx6 vx6Var = (vx6) this.b;
        Bundle bundleB = jd4.b((pw5[]) Arrays.copyOf(new pw5[0], 0));
        Bundle bundle2 = vx6Var.f;
        if (bundle2 != null) {
            bundleB.putAll(bundle2);
        }
        synchronized (vx6Var.c) {
            for (Map.Entry entry : vx6Var.d.entrySet()) {
                String str = (String) entry.getKey();
                Bundle bundleA = ((ux6) entry.getValue()).a();
                str.getClass();
                bundleB.putBundle(str, bundleA);
            }
        }
        if (bundleB.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundleB);
    }

    public void w(boolean z) {
        ((MaterialCardView) ((oe) this.b).b).setVisibility(z ? 0 : 8);
    }

    public void x(boolean z, Status status) {
        HashMap map;
        HashMap map2;
        synchronized (((Map) this.b)) {
            map = new HashMap((Map) this.b);
        }
        synchronized (((Map) this.c)) {
            map2 = new HashMap((Map) this.c);
        }
        for (Map.Entry entry : map.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).c(status);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new re(status));
            }
        }
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }

    public /* synthetic */ w00(z39 z39Var, Account account, Bundle bundle) {
        this.a = 13;
        this.b = account;
        this.c = bundle;
    }

    public w00() {
        this.a = 10;
        this.b = Collections.synchronizedMap(new WeakHashMap());
        this.c = Collections.synchronizedMap(new WeakHashMap());
    }

    public w00(ke keVar, yf1 yf1Var) {
        this.a = 11;
        this.b = yf1Var;
        Objects.requireNonNull(keVar);
        this.c = keVar;
    }

    public w00(vx6 vx6Var) {
        this.a = 8;
        this.b = vx6Var;
        ot9 ot9Var = new ot9();
        ot9Var.a = vx6Var;
        this.c = ot9Var;
    }

    public w00(z zVar) {
        this.a = 4;
        this.b = zVar;
        this.c = new CopyOnWriteArrayList();
    }

    public w00(vq3 vq3Var) {
        this.a = 5;
        this.b = new bq1();
        this.c = vq3Var;
    }

    public /* synthetic */ w00(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public w00(oe oeVar, byte b) {
        this.a = 6;
        this.b = oeVar;
        this.c = (TextView) oeVar.c;
    }
}
