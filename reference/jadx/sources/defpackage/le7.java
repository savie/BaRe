package defpackage;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class le7 {
    public static IBinder a = null;
    public static h94 b = null;
    public static int c = -1;
    public static int d = -1;
    public static boolean e = false;
    public static boolean f = false;
    public static final ie7 g;
    public static final fe7 h;
    public static final ArrayList i;
    public static final ArrayList j;
    public static final ArrayList k;
    public static final Handler l;

    static {
        ie7 ie7Var = new ie7();
        ie7Var.attachInterface(ie7Var, "moe.shizuku.server.IShizukuApplication");
        g = ie7Var;
        h = new fe7();
        i = new ArrayList();
        j = new ArrayList();
        k = new ArrayList();
        l = new Handler(Looper.getMainLooper());
    }

    public static boolean a(IBinder iBinder, String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            ie7 ie7Var = g;
            ie7Var.getClass();
            parcelObtain.writeStrongBinder(ie7Var);
            parcelObtain.writeString(str);
            boolean zTransact = iBinder.transact(14, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static boolean b(IBinder iBinder, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("shizuku:attach-api-version", 13);
        bundle.putString("shizuku:attach-package-name", str);
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            ie7 ie7Var = g;
            ie7Var.getClass();
            parcelObtain.writeStrongBinder(ie7Var);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            boolean zTransact = iBinder.transact(18, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public static void c(ke7 ke7Var) {
        Map map = ve7.a;
        String className = ke7Var.d;
        if (className == null) {
            className = ke7Var.a.getClassName();
        }
        Map map2 = ve7.a;
        ue7 ue7Var = (ue7) map2.get(className);
        if (ue7Var == null) {
            ue7Var = new ue7(ke7Var);
            map2.put(className, ue7Var);
        }
        ue7Var.a.add(u17.d);
        try {
            ((f94) h()).a(ue7Var, ke7.a(ke7Var));
        } catch (RemoteException e2) {
            y5.k(e2);
        }
    }

    public static int d() {
        int i2 = d;
        if (i2 != -1) {
            return i2;
        }
        try {
            int iG = ((f94) h()).g();
            d = iG;
            return iG;
        } catch (RemoteException e2) {
            y5.k(e2);
            return 0;
        } catch (SecurityException unused) {
            return -1;
        }
    }

    public static void e(IBinder iBinder, String str) {
        h94 h94Var;
        IBinder iBinder2 = a;
        if (iBinder2 == iBinder) {
            return;
        }
        if (iBinder == null) {
            a = null;
            b = null;
            c = -1;
            d = -1;
            synchronized (i) {
                try {
                    Iterator it = j.iterator();
                    if (it.hasNext()) {
                        je7 je7Var = (je7) it.next();
                        je7Var.getClass();
                        Looper looperMyLooper = Looper.myLooper();
                        Looper mainLooper = Looper.getMainLooper();
                        Object obj = je7Var.a;
                        if (looperMyLooper == mainLooper) {
                            if (obj != null) {
                                throw new ClassCastException();
                            }
                            throw null;
                        }
                        if (obj != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        if (iBinder2 != null) {
            iBinder2.unlinkToDeath(h, 0);
        }
        a = iBinder;
        int i2 = g94.a;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof h94)) {
            f94 f94Var = new f94();
            f94Var.a = iBinder;
            h94Var = f94Var;
        } else {
            h94Var = (h94) iInterfaceQueryLocalInterface;
        }
        b = h94Var;
        try {
            a.linkToDeath(h, 0);
        } catch (Throwable unused) {
            Log.i("ShizukuApplication", "attachApplication");
        }
        try {
            if (!b(a, str) && !a(a, str)) {
                f = true;
            }
            Log.i("ShizukuApplication", "attachApplication");
        } catch (Throwable th2) {
            Log.w("ShizukuApplication", Log.getStackTraceString(th2));
        }
        if (f) {
            i();
        }
    }

    public static boolean f() {
        IBinder iBinder = a;
        return iBinder != null && iBinder.pingBinder();
    }

    public static void g(final dl0 dl0Var) {
        synchronized (i) {
            k.removeIf(new Predicate() { // from class: ge7
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((je7) obj).a == dl0Var;
                }
            });
        }
    }

    public static h94 h() {
        h94 h94Var = b;
        if (h94Var != null) {
            return h94Var;
        }
        l0.e("binder haven't been received");
        return null;
    }

    public static void i() {
        ArrayList arrayList = i;
        synchronized (arrayList) {
            try {
                Iterator it = arrayList.iterator();
                if (it.hasNext()) {
                    je7 je7Var = (je7) it.next();
                    je7Var.getClass();
                    Looper looperMyLooper = Looper.myLooper();
                    Looper mainLooper = Looper.getMainLooper();
                    Object obj = je7Var.a;
                    if (looperMyLooper == mainLooper) {
                        if (obj != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                    if (obj != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static se7 newProcess(String[] strArr, String[] strArr2, String str) {
        try {
            t84 t84VarJ = ((f94) h()).j(strArr, strArr2, str);
            final se7 se7Var = new se7();
            se7Var.a = t84VarJ;
            try {
                ((r84) t84VarJ).a.linkToDeath(new IBinder.DeathRecipient() { // from class: re7
                    @Override // android.os.IBinder.DeathRecipient
                    public final void binderDied() {
                        se7 se7Var2 = se7Var;
                        se7Var2.a = null;
                        Log.v("ShizukuRemoteProcess", "remote process is dead");
                        se7.d.remove(se7Var2);
                    }
                }, 0);
            } catch (RemoteException e2) {
                Log.e("ShizukuRemoteProcess", "linkToDeath", e2);
            }
            se7.d.add(se7Var);
            return se7Var;
        } catch (RemoteException e3) {
            y5.k(e3);
            return null;
        }
    }
}
