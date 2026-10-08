package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.Status;
import defpackage.em0;
import defpackage.fn6;
import defpackage.i19;
import defpackage.ly8;
import defpackage.y16;
import defpackage.z09;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BasePendingResult<R extends fn6> {
    public static final y16 j = new y16(2);
    public fn6 e;
    public Status f;
    public volatile boolean g;
    public boolean h;
    public final Object a = new Object();
    public final CountDownLatch b = new CountDownLatch(1);
    public final ArrayList c = new ArrayList();
    public final AtomicReference d = new AtomicReference();
    public boolean i = false;

    public BasePendingResult(i19 i19Var) {
        new em0(i19Var != null ? i19Var.a.f : Looper.getMainLooper());
        new WeakReference(i19Var);
    }

    public final void a(z09 z09Var) {
        synchronized (this.a) {
            try {
                if (d()) {
                    z09Var.a(this.f);
                } else {
                    this.c.add(z09Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract fn6 b(Status status);

    public final void c(Status status) {
        synchronized (this.a) {
            try {
                if (!d()) {
                    e(b(status));
                    this.h = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d() {
        return this.b.getCount() == 0;
    }

    public final void e(fn6 fn6Var) {
        synchronized (this.a) {
            try {
                if (this.h) {
                    return;
                }
                d();
                ly8.k("Results have already been set", !d());
                ly8.k("Result has already been consumed", !this.g);
                this.e = fn6Var;
                this.f = fn6Var.getStatus();
                this.b.countDown();
                ArrayList arrayList = this.c;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((z09) arrayList.get(i)).a(this.f);
                }
                arrayList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
