package defpackage;

import java.util.concurrent.ExecutionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class td9 implements Runnable {
    public final /* synthetic */ int a;
    public Object b;
    public final Object c;

    public td9(ke9 ke9Var, wq3 wq3Var) {
        this.a = 0;
        this.b = ke9Var;
        this.c = wq3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable thB;
        int i = 0;
        switch (this.a) {
            case 0:
                wq3 wq3Var = (wq3) this.c;
                ke9 ke9Var = (ke9) this.b;
                if ((ke9Var instanceof uc9) && (thB = ((uc9) ke9Var).b()) != null) {
                    wq3Var.f(thB);
                    return;
                }
                try {
                    if (!ke9Var.isDone()) {
                        throw new IllegalStateException(l73.L("Future was expected to be done: %s", ke9Var));
                    }
                    while (true) {
                        try {
                            Object obj = ke9Var.get();
                            if (i != 0) {
                                Thread.currentThread().interrupt();
                            }
                            Integer num = (Integer) obj;
                            int iIntValue = num.intValue();
                            ud9 ud9Var = (ud9) wq3Var.d;
                            if (iIntValue <= 0) {
                                ((Runnable) wq3Var.c).run();
                                return;
                            }
                            int i2 = wq3Var.a;
                            int iIntValue2 = num.intValue();
                            ud9Var.getClass();
                            yq0 yq0VarA = le9.a(iIntValue2, "Billing override value was set by a license tester.");
                            ud9Var.G(93, i2, yq0VarA);
                            ((yt1) wq3Var.b).accept(yq0VarA);
                            return;
                        } catch (InterruptedException unused) {
                            i = 1;
                        } catch (Throwable th) {
                            if (i != 0) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    }
                } catch (ExecutionException e) {
                    wq3Var.f(e.getCause());
                    return;
                } catch (Throwable th2) {
                    wq3Var.f(th2);
                    return;
                }
                break;
            case 1:
                fh7 fh7Var = (fh7) this.b;
                fh7Var.b.a();
                synchronized (fh7Var.c) {
                    synchronized (((dx2) this.c)) {
                        try {
                            if (((dx2) this.c).a.a.contains(new bx2((fh7) this.b, xh8.f))) {
                                ((dx2) this.c).K.a();
                                dx2 dx2Var = (dx2) this.c;
                                fh7 fh7Var2 = (fh7) this.b;
                                dx2Var.getClass();
                                try {
                                    fh7Var2.h(dx2Var.K, dx2Var.G);
                                    ((dx2) this.c).g((fh7) this.b);
                                } catch (Throwable th3) {
                                    throw new wz0(th3);
                                }
                            }
                            ((dx2) this.c).c();
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                }
                return;
            case 2:
                v24 v24VarA = v24.a();
                v24VarA.getClass();
                xh8.c();
                v24VarA.d.set(true);
                ((gh3) this.c).b.b = true;
                ((gh3) this.c).a.getViewTreeObserver().removeOnDrawListener((gh3) this.b);
                ((gh3) this.c).b.a.clear();
                return;
        }
        while (true) {
            try {
                ((Runnable) this.b).run();
            } catch (Throwable th5) {
                y13.m(lv2.a, th5);
            }
            try {
                Runnable runnableQ = ((mu4) this.c).q();
                if (runnableQ == null) {
                    return;
                }
                this.b = runnableQ;
                i++;
                if (i >= 16) {
                    mu4 mu4Var = (mu4) this.c;
                    if (ly8.N(mu4Var.d, mu4Var)) {
                        mu4 mu4Var2 = (mu4) this.c;
                        ly8.M(mu4Var2.d, mu4Var2, this);
                        return;
                    }
                }
            } catch (Throwable th6) {
                mu4 mu4Var3 = (mu4) this.c;
                synchronized (mu4Var3.k) {
                    mu4.n.decrementAndGet(mu4Var3);
                    throw th6;
                }
            }
        }
    }

    public String toString() {
        switch (this.a) {
            case 0:
                gd gdVar = new gd(td9.class.getSimpleName());
                wq3 wq3Var = (wq3) this.c;
                h80 h80Var = new h80(18, false);
                ((h80) gdVar.d).c = h80Var;
                gdVar.d = h80Var;
                h80Var.b = wq3Var;
                return gdVar.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ td9(int i, Object obj, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }
}
