package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import com.topjohnwu.superuser.Shell;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iq6 extends Binder implements Runnable, b94 {
    public static iq6 e;
    public final fq6 a;
    public final ArrayMap b;
    public final SparseArray c;
    public final boolean d;

    /* JADX INFO: Infinite loop detected, blocks: 7, insns: 0 */
    /* JADX WARN: Multi-variable type inference failed */
    public iq6(Context context) {
        attachInterface(this, "com.topjohnwu.superuser.internal.IRootServiceManager");
        this.b = new ArrayMap();
        this.c = new SparseArray();
        Shell.enableVerboseLogging = System.getenv("LIBSU_VERBOSE_LOGGING") != null;
        Context baseContext = context;
        while (baseContext instanceof ContextWrapper) {
            baseContext = ((ContextWrapper) baseContext).getBaseContext();
        }
        ji8.c = baseContext;
        if (System.getenv("LIBSU_DEBUGGER") == null) {
            fq6 fq6Var = new fq6(this, new File(context.getPackageCodePath()));
            this.a = fq6Var;
            fq6Var.startWatching();
            if (!(context instanceof Callable)) {
                c6.f("Expected Context to be Callable");
                throw null;
            }
            try {
                Object[] objArr = (Object[]) ((Callable) context).call();
                boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
                this.d = zBooleanValue;
                if (zBooleanValue) {
                    String packageName = context.getPackageName();
                    int i = pp6.a;
                    String str = "libsu-" + packageName;
                    try {
                        Method method = g44.a;
                        if (method.getParameterTypes().length == 4) {
                            method.invoke(null, str, this, Boolean.FALSE, 0);
                        } else {
                            method.invoke(null, str, this);
                        }
                    } catch (ReflectiveOperationException e2) {
                        ji8.k("IPC", e2);
                    }
                }
                f(((Integer) objArr[0]).intValue());
                if (this.d) {
                    return;
                }
                nd8.a.postDelayed(this, 10000L);
                return;
            } catch (Exception e3) {
                y5.k(e3);
                throw null;
            }
        }
        try {
            g44.c.invoke(null, context.getPackageName() + ":root", 0);
            while (true) {
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException unused) {
                }
            }
        } catch (ReflectiveOperationException e4) {
            y5.k(e4);
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        if (r2 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.IBinder a(android.content.Intent r6, int r7) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.InstantiationException, java.lang.reflect.InvocationTargetException {
        /*
            r5 = this;
            android.util.SparseArray r0 = r5.c
            java.lang.Object r0 = r0.get(r7)
            gq6 r0 = (defpackage.gq6) r0
            r1 = 0
            if (r0 != 0) goto Lc
            goto L4e
        Lc:
            android.content.ComponentName r0 = r6.getComponent()
            android.util.ArrayMap r5 = r5.b
            java.lang.Object r2 = r5.get(r0)
            hq6 r2 = (defpackage.hq6) r2
            if (r2 != 0) goto L4f
            android.content.Context r2 = defpackage.ji8.c
            java.lang.ClassLoader r2 = r2.getClassLoader()
            java.lang.String r3 = r0.getClassName()
            java.lang.Class r2 = r2.loadClass(r3)
            java.lang.reflect.Constructor r2 = r2.getDeclaredConstructor(r1)
            r3 = 1
            r2.setAccessible(r3)
            java.lang.Object r2 = r2.newInstance(r1)
            android.content.Context r3 = defpackage.ji8.c
            java.lang.reflect.Method r4 = defpackage.g44.a
            boolean r4 = r2 instanceof android.content.ContextWrapper
            if (r4 == 0) goto L45
            java.lang.reflect.Method r4 = defpackage.g44.b     // Catch: java.lang.ReflectiveOperationException -> L45
            java.lang.Object[] r3 = new java.lang.Object[]{r3}     // Catch: java.lang.ReflectiveOperationException -> L45
            r4.invoke(r2, r3)     // Catch: java.lang.ReflectiveOperationException -> L45
        L45:
            java.lang.Object r5 = r5.get(r0)
            r2 = r5
            hq6 r2 = (defpackage.hq6) r2
            if (r2 != 0) goto L4f
        L4e:
            return r1
        L4f:
            qp6 r5 = r2.a
            android.os.IBinder r1 = r2.d
            if (r1 == 0) goto L62
            r0.getClassName()
            boolean r6 = r2.e
            if (r6 == 0) goto L71
            android.content.Intent r6 = r2.c
            r5.j(r6)
            goto L71
        L62:
            r0.getClassName()
            android.os.IBinder r5 = r5.g(r6)
            r2.d = r5
            android.content.Intent r5 = r6.cloneFilter()
            r2.c = r5
        L71:
            android.util.ArraySet r5 = r2.b
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)
            r5.add(r6)
            android.os.IBinder r5 = r2.d
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.iq6.a(android.content.Intent, int):android.os.IBinder");
    }

    @Override // defpackage.b94
    public final void d(final ComponentName componentName) {
        final int callingUid = Binder.getCallingUid();
        nd8.a(new Runnable() { // from class: cq6
            @Override // java.lang.Runnable
            public final void run() {
                ComponentName componentName2 = componentName;
                componentName2.getClassName();
                this.a.j(callingUid, componentName2);
            }
        });
    }

    @Override // defpackage.b94
    public final IBinder e(Intent intent) {
        IBinder[] iBinderArr = new IBinder[1];
        eq6 eq6Var = new eq6(this, iBinderArr, Binder.getCallingUid(), intent);
        Handler handler = nd8.a;
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            eq6Var.run();
        } else {
            vn8 vn8Var = new vn8();
            vn8Var.a = eq6Var;
            nd8.a.post(vn8Var);
            synchronized (vn8Var) {
                while (vn8Var.a != null) {
                    try {
                        vn8Var.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        return iBinderArr[0];
    }

    public final void f(int i) {
        if (Binder.getCallingUid() != 0) {
            i = Binder.getCallingUid();
        }
        Bundle bundle = new Bundle();
        bundle.putBinder("binder", this);
        Intent intent = new Intent("com.topjohnwu.superuser.RECEIVER_BROADCAST").setPackage(ji8.c.getPackageName());
        Method method = g44.a;
        ji8.c.sendBroadcastAsUser(intent.addFlags(4194304).putExtra("extra.daemon", this.d).putExtra("extra.bundle", bundle), UserHandle.getUserHandleForUid(i));
    }

    public final void g(hq6 hq6Var, int i, Runnable runnable) {
        ArraySet arraySet = hq6Var.b;
        qp6 qp6Var = hq6Var.a;
        boolean zIsEmpty = arraySet.isEmpty();
        ArraySet arraySet2 = hq6Var.b;
        arraySet2.remove(Integer.valueOf(i));
        if (i < 0 || arraySet2.isEmpty()) {
            if (!zIsEmpty) {
                hq6Var.e = qp6Var.k(hq6Var.c);
            }
            boolean z = this.d;
            if (i < 0 || !z) {
                qp6Var.i();
                runnable.run();
                Iterator it = arraySet2.iterator();
                while (it.hasNext()) {
                    gq6 gq6Var = (gq6) this.c.get(((Integer) it.next()).intValue());
                    if (gq6Var != null) {
                        Message messageObtain = Message.obtain();
                        messageObtain.what = 1;
                        messageObtain.arg1 = z ? 1 : 0;
                        messageObtain.obj = hq6Var.c.getComponent();
                        try {
                            try {
                                gq6Var.b.send(messageObtain);
                            } catch (RemoteException e2) {
                                ji8.k("IPC", e2);
                            }
                            messageObtain.recycle();
                        } catch (Throwable th) {
                            messageObtain.recycle();
                            throw th;
                        }
                    }
                }
            }
        }
        if (this.b.isEmpty()) {
            System.exit(0);
        }
    }

    @Override // defpackage.b94
    public final void h(final IBinder iBinder) {
        final int callingUid = Binder.getCallingUid();
        nd8.a(new Runnable() { // from class: dq6
            @Override // java.lang.Runnable
            public final void run() {
                IBinder iBinder2 = iBinder;
                iq6 iq6Var = this;
                SparseArray sparseArray = iq6Var.c;
                int i = callingUid;
                if (sparseArray.get(i) != null) {
                    return;
                }
                try {
                    sparseArray.put(i, new gq6(i, iq6Var, iBinder2));
                    nd8.a.removeCallbacks(iq6Var);
                } catch (RemoteException e2) {
                    ji8.k("IPC", e2);
                }
            }
        });
    }

    @Override // defpackage.b94
    public final void i(int i, ComponentName componentName) {
        if (Binder.getCallingUid() != 0) {
            i = Binder.getCallingUid();
        }
        nd8.a(new eo1(this, componentName, i));
    }

    public final void j(int i, ComponentName componentName) {
        hq6 hq6Var = (hq6) this.b.get(componentName);
        if (hq6Var == null) {
            return;
        }
        g(hq6Var, i, new z22(9, this, componentName));
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface("com.topjohnwu.superuser.internal.IRootServiceManager");
        }
        if (i == 1598968902) {
            parcel2.writeString("com.topjohnwu.superuser.internal.IRootServiceManager");
            return true;
        }
        if (i == 1) {
            f(parcel.readInt());
            return true;
        }
        if (i == 2) {
            i(parcel.readInt(), (ComponentName) (parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null));
            return true;
        }
        if (i == 3) {
            h(parcel.readStrongBinder());
            parcel2.writeNoException();
            return true;
        }
        if (i != 4) {
            if (i != 5) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            d((ComponentName) (parcel.readInt() != 0 ? ComponentName.CREATOR.createFromParcel(parcel) : null));
            return true;
        }
        IBinder iBinderE = e((Intent) (parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null));
        parcel2.writeNoException();
        parcel2.writeStrongBinder(iBinderE);
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.c.size() == 0) {
            System.exit(0);
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}
