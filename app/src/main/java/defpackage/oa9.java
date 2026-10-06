package defpackage;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oa9 implements ServiceConnection {
    public final eq0 a;
    public final t99 b;
    public final t99 c;
    public final /* synthetic */ dq0 d;

    public oa9(dq0 dq0Var, eq0 eq0Var) {
        this.d = dq0Var;
        wx3 wx3Var = dq0Var.B;
        this.b = new t99(wx3Var);
        this.c = new t99(wx3Var);
        this.a = eq0Var;
    }

    public final Long a(boolean z) {
        dq0 dq0Var = this.d;
        try {
            if (z) {
                synchronized (dq0Var.a) {
                    try {
                        t99 t99Var = this.b;
                        if (!t99Var.b) {
                            return null;
                        }
                        long jF = t99Var.a.F();
                        if (!t99Var.b) {
                            throw new IllegalStateException("This stopwatch is already stopped.");
                        }
                        t99Var.b = false;
                        long j = (jF - t99Var.d) + t99Var.c;
                        t99Var.c = j;
                        return Long.valueOf(j / 1000000);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            synchronized (dq0Var.a) {
                try {
                    t99 t99Var2 = this.c;
                    if (!t99Var2.b) {
                        return null;
                    }
                    long jF2 = t99Var2.a.F();
                    if (!t99Var2.b) {
                        throw new IllegalStateException("This stopwatch is already stopped.");
                    }
                    t99Var2.b = false;
                    long j2 = (jF2 - t99Var2.d) + t99Var2.c;
                    t99Var2.c = j2;
                    return Long.valueOf(j2 / 1000000);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            ta9.i("BillingClient", "Exception getting connection establishment duration.", th3);
            return null;
        }
        ta9.i("BillingClient", "Exception getting connection establishment duration.", th3);
        return null;
    }

    public final void b(yq0 yq0Var, int i, String str, boolean z) {
        try {
            oo9 oo9VarQ = ro9.q();
            int i2 = yq0Var.a;
            oo9VarQ.b();
            ro9.p((ro9) oo9VarQ.b, i2);
            String str2 = yq0Var.c;
            oo9VarQ.b();
            ro9.s((ro9) oo9VarQ.b, str2);
            oo9VarQ.b();
            ro9.v((ro9) oo9VarQ.b, i);
            oo9VarQ.b();
            ro9.t((ro9) oo9VarQ.b);
            if (str != null) {
                oo9VarQ.b();
                ro9.r((ro9) oo9VarQ.b, str);
            }
            Long lA = a(z);
            dq0 dq0Var = this.d;
            if (!z) {
                mq9 mq9VarP = pq9.p();
                mq9VarP.b();
                pq9.q((pq9) mq9VarP.b, (ro9) oo9VarQ.a());
                if (lA != null) {
                    long jLongValue = lA.longValue();
                    mq9VarP.b();
                    pq9.r((pq9) mq9VarP.b, jLongValue);
                }
                dq0Var.h.u((pq9) mq9VarP.a());
                return;
            }
            tq9 tq9VarP = uq9.p();
            tq9VarP.c(false);
            tq9VarP.d();
            tq9VarP.b();
            uq9.t((uq9) tq9VarP.b);
            if (lA != null) {
                long jLongValue2 = lA.longValue();
                tq9VarP.b();
                uq9.s((uq9) tq9VarP.b, jLongValue2);
            }
            co9 co9VarS = do9.s();
            co9VarS.c(oo9VarQ);
            co9VarS.b();
            do9.r((do9) co9VarS.b, 6);
            co9VarS.d(tq9VarP);
            dq0Var.o((do9) co9VarS.a());
        } catch (Throwable th) {
            ta9.i("BillingClient", "Unable to log.", th);
        }
    }

    public final void c(yq0 yq0Var) {
        dq0 dq0Var = this.d;
        synchronized (dq0Var.a) {
            try {
                if (dq0Var.b == 3) {
                    return;
                }
                try {
                    this.a.a(yq0Var);
                } catch (Throwable th) {
                    ta9.i("BillingClient", "Exception while calling onBillingSetupFinished.", th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        boolean z;
        ta9.h("BillingClient", "Billing service died.");
        try {
            dq0 dq0Var = this.d;
            synchronized (dq0Var.a) {
                z = true;
                if (dq0Var.b != 1) {
                    z = false;
                }
            }
            l39 l39Var = dq0Var.h;
            if (z) {
                co9 co9VarS = do9.s();
                co9VarS.b();
                do9.r((do9) co9VarS.b, 6);
                oo9 oo9VarQ = ro9.q();
                oo9VarQ.b();
                ro9.v((ro9) oo9VarQ.b, 110);
                co9VarS.c(oo9VarQ);
                tq9 tq9VarP = uq9.p();
                tq9VarP.c(false);
                tq9VarP.d();
                co9VarS.d(tq9VarP);
                l39Var.p((do9) co9VarS.a());
            } else {
                l39Var.t(uo9.p());
            }
        } catch (Throwable th) {
            ta9.i("BillingClient", "Unable to log.", th);
        }
        dq0 dq0Var2 = this.d;
        synchronized (dq0Var2.a) {
            if (dq0Var2.b != 3 && dq0Var2.b != 0) {
                dq0Var2.r(0);
                dq0Var2.t();
                try {
                    this.a.b();
                } catch (Throwable th2) {
                    ta9.i("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        w89 g89Var;
        ta9.g("BillingClient", "Billing service connected.");
        dq0 dq0Var = this.d;
        synchronized (dq0Var.a) {
            try {
                if (dq0Var.b == 3) {
                    return;
                }
                int i = u89.b;
                if (iBinder == null) {
                    g89Var = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.vending.billing.IInAppBillingService");
                    g89Var = iInterfaceQueryLocalInterface instanceof w89 ? (w89) iInterfaceQueryLocalInterface : new g89(iBinder, "com.android.vending.billing.IInAppBillingService", 4);
                }
                dq0Var.i = g89Var;
                if (dq0.f(new Callable() { // from class: ha9
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        Bundle bundle;
                        w89 w89Var;
                        int i2;
                        int i3;
                        oa9 oa9Var = this.a;
                        dq0 dq0Var2 = oa9Var.d;
                        synchronized (dq0Var2.a) {
                            try {
                                if (dq0Var2.b == 3) {
                                    return null;
                                }
                                boolean z = true;
                                boolean z2 = dq0Var2.b == 1;
                                if (TextUtils.isEmpty(null)) {
                                    bundle = null;
                                } else {
                                    bundle = new Bundle();
                                    bundle.putString("accountName", null);
                                    ta9.b(bundle, dq0Var2.c, dq0Var2.d, dq0Var2.A.longValue());
                                }
                                synchronized (dq0Var2.a) {
                                    w89Var = dq0Var2.i;
                                }
                                dq0 dq0Var3 = oa9Var.d;
                                if (w89Var == null) {
                                    dq0Var3.r(0);
                                    yq0 yq0Var = le9.j;
                                    dq0Var3.q(107, yq0Var);
                                    oa9Var.c(yq0Var);
                                    return null;
                                }
                                String packageName = dq0Var3.g.getPackageName();
                                int iN = 3;
                                int i4 = 27;
                                while (true) {
                                    if (i4 < 3) {
                                        i4 = 0;
                                        break;
                                    }
                                    try {
                                        ta9.g("BillingClient", "trying subs apiVersion: " + i4);
                                        if (bundle == null) {
                                            g89 g89Var2 = (g89) w89Var;
                                            Parcel parcelL = g89Var2.l();
                                            parcelL.writeInt(i4);
                                            parcelL.writeString(packageName);
                                            parcelL.writeString("subs");
                                            Parcel parcelM = g89Var2.m(parcelL, 1);
                                            int i5 = parcelM.readInt();
                                            parcelM.recycle();
                                            iN = i5;
                                        } else {
                                            iN = ((g89) w89Var).n(i4, packageName, "subs", bundle);
                                        }
                                        if (iN == 0) {
                                            ta9.g("BillingClient", "highestLevelSupportedForSubs: " + i4);
                                            break;
                                        }
                                        i4--;
                                    } catch (Exception e) {
                                        ta9.i("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                        boolean z3 = e instanceof DeadObjectException;
                                        if (z3) {
                                            i2 = 91;
                                        } else if (e instanceof RemoteException) {
                                            i2 = 90;
                                        } else {
                                            i2 = e instanceof SecurityException ? 92 : 42;
                                        }
                                        String strA = dj7.a(i2, 42) ? zd9.a(e) : null;
                                        oa9Var.d.r(0);
                                        oa9Var.b(z3 ? le9.j : le9.h, i2, strA, z2);
                                        oa9Var.c(z3 ? le9.j : le9.h);
                                    }
                                }
                                dq0Var3.k = i4 >= 3;
                                if (i4 < 3) {
                                    ta9.g("BillingClient", "In-app billing API does not support subscription on this device.");
                                    i3 = 9;
                                } else {
                                    i3 = 1;
                                }
                                for (int i6 = 27; i6 >= 3; i6--) {
                                    ta9.g("BillingClient", "trying inapp apiVersion: " + i6);
                                    if (bundle == null) {
                                        g89 g89Var3 = (g89) w89Var;
                                        Parcel parcelL2 = g89Var3.l();
                                        parcelL2.writeInt(i6);
                                        parcelL2.writeString(packageName);
                                        parcelL2.writeString("inapp");
                                        Parcel parcelM2 = g89Var3.m(parcelL2, 1);
                                        int i7 = parcelM2.readInt();
                                        parcelM2.recycle();
                                        iN = i7;
                                    } else {
                                        iN = ((g89) w89Var).n(i6, packageName, "inapp", bundle);
                                    }
                                    if (iN == 0) {
                                        dq0Var3.l = i6;
                                        ta9.g("BillingClient", "mHighestLevelSupportedForInApp: " + i6);
                                        break;
                                    }
                                }
                                int i8 = dq0Var3.l;
                                dq0Var3.l = i8;
                                dq0Var3.w = i8 >= 26;
                                dq0Var3.v = i8 >= 24;
                                dq0Var3.u = i8 >= 21;
                                dq0Var3.t = i8 >= 20;
                                dq0Var3.s = i8 >= 19;
                                dq0Var3.r = i8 >= 17;
                                dq0Var3.q = i8 >= 16;
                                dq0Var3.p = i8 >= 15;
                                dq0Var3.o = i8 >= 14;
                                dq0Var3.n = i8 >= 9;
                                if (i8 < 6) {
                                    z = false;
                                }
                                dq0Var3.m = z;
                                if (i8 < 3) {
                                    ta9.h("BillingClient", "In-app billing API version 3 is not supported on this device.");
                                    i3 = 36;
                                }
                                dq0.j(dq0Var3, iN);
                                if (iN != 0) {
                                    yq0 yq0Var2 = le9.b;
                                    oa9Var.b(yq0Var2, i3, null, z2);
                                    oa9Var.c(yq0Var2);
                                    return null;
                                }
                                try {
                                    Long lA = oa9Var.a(z2);
                                    if (z2) {
                                        ho9 ho9VarQ = no9.q();
                                        ho9VarQ.b();
                                        no9.p((no9) ho9VarQ.b, 6);
                                        tq9 tq9VarP = uq9.p();
                                        tq9VarP.c(false);
                                        tq9VarP.d();
                                        tq9VarP.b();
                                        uq9.t((uq9) tq9VarP.b);
                                        if (lA != null) {
                                            long jLongValue = lA.longValue();
                                            tq9VarP.b();
                                            uq9.s((uq9) tq9VarP.b, jLongValue);
                                        }
                                        dq0 dq0Var4 = oa9Var.d;
                                        ho9VarQ.b();
                                        no9.u((no9) ho9VarQ.b, (uq9) tq9VarP.a());
                                        dq0Var4.p((no9) ho9VarQ.a());
                                    } else {
                                        mq9 mq9VarP = pq9.p();
                                        oo9 oo9VarQ = ro9.q();
                                        oo9VarQ.b();
                                        ro9.p((ro9) oo9VarQ.b, 0);
                                        oo9VarQ.b();
                                        ro9.t((ro9) oo9VarQ.b);
                                        mq9VarP.b();
                                        pq9.q((pq9) mq9VarP.b, (ro9) oo9VarQ.a());
                                        if (lA != null) {
                                            long jLongValue2 = lA.longValue();
                                            mq9VarP.b();
                                            pq9.r((pq9) mq9VarP.b, jLongValue2);
                                        }
                                        oa9Var.d.h.u((pq9) mq9VarP.a());
                                    }
                                } catch (Throwable th) {
                                    ta9.i("BillingClient", "Unable to log.", th);
                                }
                                oa9Var.c(le9.i);
                                return null;
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                }, 30000L, new aq2(this, 5), dq0Var.k(), dq0Var.e()) == null) {
                    yq0 yq0VarN = dq0Var.n();
                    dq0Var.q(25, yq0VarN);
                    c(yq0VarN);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        boolean z;
        ta9.h("BillingClient", "Billing service disconnected.");
        try {
            dq0 dq0Var = this.d;
            synchronized (dq0Var.a) {
                z = true;
                if (dq0Var.b != 1) {
                    z = false;
                }
            }
            l39 l39Var = dq0Var.h;
            if (z) {
                co9 co9VarS = do9.s();
                co9VarS.b();
                do9.r((do9) co9VarS.b, 6);
                oo9 oo9VarQ = ro9.q();
                oo9VarQ.b();
                ro9.v((ro9) oo9VarQ.b, 109);
                co9VarS.c(oo9VarQ);
                tq9 tq9VarP = uq9.p();
                tq9VarP.c(false);
                tq9VarP.d();
                co9VarS.d(tq9VarP);
                l39Var.p((do9) co9VarS.a());
            } else {
                l39Var.v(sq9.p());
            }
        } catch (Throwable th) {
            ta9.i("BillingClient", "Unable to log.", th);
        }
        dq0 dq0Var2 = this.d;
        synchronized (dq0Var2.a) {
            try {
                t99 t99Var = this.c;
                t99Var.c = 0L;
                t99Var.b = false;
                t99Var.a();
                if (dq0Var2.b == 3) {
                    return;
                }
                dq0Var2.r(0);
                try {
                    this.a.b();
                } catch (Throwable th2) {
                    ta9.i("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }
}
