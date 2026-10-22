package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ud9 extends dq0 {
    public final Context C;
    public volatile int D;
    public volatile e99 E;
    public volatile nd9 F;
    public volatile ScheduledExecutorService G;

    public ud9(ma2 ma2Var, Context context, db dbVar) {
        super(ma2Var, context, dbVar);
        this.D = 0;
        this.C = context;
    }

    public final synchronized boolean E() {
        return (this.D != 2 || this.E == null || this.F == null) ? false : true;
    }

    public final ke9 F(int i) {
        if (!E()) {
            ta9.h("BillingClientTesting", "Billing Override Service is not ready.");
            G(94, 28, le9.a(-1, "Billing Override Service connection is disconnected."));
            return new ge9(0);
        }
        vc9 vc9Var = new vc9(this, i);
        ct9 ct9Var = new ct9();
        ct9Var.c = new xx9();
        tv9 tv9Var = new tv9(ct9Var);
        ct9Var.b = tv9Var;
        ct9Var.a = vc9.class;
        try {
            vc9Var.f(ct9Var);
            ct9Var.a = "billingOverrideService.getBillingOverride";
            return tv9Var;
        } catch (Exception e) {
            kj9 kj9Var = new kj9(e);
            zh8 zh8Var = ks9.f;
            wu9 wu9Var = tv9Var.b;
            if (zh8Var.S(wu9Var, null, kj9Var)) {
                ks9.b(wu9Var);
            }
            return tv9Var;
        }
    }

    public final void G(int i, int i2, yq0 yq0Var) {
        int i3 = zd9.a;
        do9 do9VarB = zd9.b(i, i2, yq0Var, null, wo9.BROADCAST_ACTION_UNSPECIFIED);
        Objects.requireNonNull(do9VarB, "ApiFailure should not be null");
        this.h.p(do9VarB);
    }

    public final void H(int i, yt1 yt1Var, Runnable runnable) {
        ScheduledExecutorService scheduledExecutorService;
        ke9 ke9VarF = F(i);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        synchronized (this) {
            try {
                if (this.G == null) {
                    this.G = Executors.newSingleThreadScheduledExecutor();
                }
                scheduledExecutorService = this.G;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!ke9VarF.isDone()) {
            ue9 ue9Var = new ue9();
            ue9Var.n = ke9VarF;
            on onVar = new on();
            onVar.b = ue9Var;
            ue9Var.p = scheduledExecutorService.schedule(onVar, 28500L, timeUnit);
            ke9VarF.o(onVar, hd9.a);
            ke9VarF = ue9Var;
        }
        wq3 wq3Var = new wq3();
        wq3Var.a = i;
        wq3Var.b = yt1Var;
        wq3Var.c = runnable;
        wq3Var.d = this;
        ke9VarF.o(new td9(ke9VarF, wq3Var), e());
    }

    @Override // defpackage.dq0
    public final void a(ia9 ia9Var, kq0 kq0Var) {
        H(3, new jq3(kq0Var, 1), new go6(1, this, ia9Var, kq0Var));
    }

    @Override // defpackage.dq0
    public final yq0 b(Activity activity, gq0 gq0Var) {
        int iIntValue = 0;
        try {
            iIntValue = ((Integer) F(2).get(28500L, TimeUnit.MILLISECONDS)).intValue();
        } catch (TimeoutException e) {
            G(102, 28, le9.r);
            ta9.i("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", e);
        } catch (Exception e2) {
            if (e2 instanceof InterruptedException) {
                Thread.currentThread().interrupt();
            }
            G(95, 28, le9.r);
            ta9.i("BillingClientTesting", "An error occurred while retrieving billing override.", e2);
        }
        if (iIntValue > 0) {
            yq0 yq0VarA = le9.a(iIntValue, "Billing override value was set by a license tester.");
            G(93, 2, yq0VarA);
            D(yq0VarA);
            return yq0VarA;
        }
        try {
            return super.b(activity, gq0Var);
        } catch (Exception e3) {
            yq0 yq0Var = le9.h;
            G(103, 2, yq0Var);
            ta9.i("BillingClientTesting", "An internal error occurred.", e3);
            return yq0Var;
        }
    }

    @Override // defpackage.dq0
    public final void c(final jq6 jq6Var, final w76 w76Var) {
        H(7, new yt1() { // from class: fc9
            @Override // defpackage.yt1
            public final void accept(Object obj) {
                ib ibVar = new ib(10, new ArrayList(), new ArrayList());
                w76Var.a((yq0) obj, ibVar);
            }
        }, new Runnable() { // from class: ic9
            @Override // java.lang.Runnable
            public final void run() {
                super/*dq0*/.c(jq6Var, w76Var);
            }
        });
    }

    @Override // defpackage.dq0
    public final void d(eq0 eq0Var) {
        synchronized (this) {
            if (E()) {
                ta9.g("BillingClientTesting", "Billing Override Service connection is valid. No need to re-initialize.");
                int i = zd9.a;
                no9 no9VarC = zd9.c(26, wo9.BROADCAST_ACTION_UNSPECIFIED);
                Objects.requireNonNull(no9VarC, "ApiSuccess should not be null");
                l39 l39Var = this.h;
                l39Var.getClass();
                try {
                    l39Var.x(no9VarC, (hp9) l39Var.b);
                } catch (Throwable th) {
                    ta9.i("BillingLogger", "Unable to log.", th);
                }
            } else {
                int i2 = 1;
                if (this.D == 1) {
                    ta9.h("BillingClientTesting", "Client is already in the process of connecting to Billing Override Service.");
                } else if (this.D == 3) {
                    ta9.h("BillingClientTesting", "Billing Override Service Client was already closed and can't be reused. Please create another instance.");
                    G(38, 26, le9.a(-1, "Billing Override Service connection is disconnected."));
                } else {
                    this.D = 1;
                    ta9.g("BillingClientTesting", "Starting Billing Override Service setup.");
                    this.F = new nd9(this);
                    Intent intent = new Intent("com.google.android.apps.play.billingtestcompanion.BillingOverrideService.BIND");
                    intent.setPackage("com.google.android.apps.play.billingtestcompanion");
                    Context context = this.C;
                    List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                    if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
                        i2 = 41;
                    } else {
                        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
                        if (serviceInfo != null) {
                            String str = serviceInfo.packageName;
                            String str2 = serviceInfo.name;
                            if (!Objects.equals(str, "com.google.android.apps.play.billingtestcompanion") || str2 == null) {
                                ta9.h("BillingClientTesting", "The device doesn't have valid Play Billing Lab.");
                            } else {
                                ComponentName componentName = new ComponentName(str, str2);
                                Intent intent2 = new Intent(intent);
                                intent2.setComponent(componentName);
                                if (context.bindService(intent2, this.F, 1)) {
                                    ta9.g("BillingClientTesting", "Billing Override Service was bonded successfully.");
                                } else {
                                    ta9.h("BillingClientTesting", "Connection to Billing Override Service is blocked.");
                                }
                            }
                            i2 = 39;
                        }
                    }
                    this.D = 0;
                    ta9.g("BillingClientTesting", "Billing Override Service unavailable on device.");
                    G(i2, 26, le9.a(2, "Billing Override Service unavailable on device."));
                }
            }
        }
        s(eq0Var);
    }

    public ud9(ma2 ma2Var, Context context, c6 c6Var, db dbVar) {
        super(ma2Var, context, c6Var, dbVar);
        this.D = 0;
        this.C = context;
    }
}
