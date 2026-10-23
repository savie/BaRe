package defpackage;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cf3 {
    public static l73 a(zc2 zc2Var, boolean z) {
        zc2Var.getClass();
        if (z) {
            Boolean boolValueOf = null;
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                if (mFirebaseUserA != null) {
                    boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
                }
            } catch (Exception unused) {
            }
            if (pe4.d(boolValueOf, Boolean.TRUE)) {
                return we3.o;
            }
        }
        try {
            wj6 wj6Var = zc2Var.a;
            wj6Var.getClass();
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            wj6Var.n(new uj6(wj6Var, zc2Var, taskCompletionSource, wj6Var));
            eb2 eb2Var = (eb2) Tasks.await(taskCompletionSource.getTask());
            eb2Var.getClass();
            return new xe3(eb2Var);
        } catch (Exception e) {
            wc2 wc2VarA = wc2.a(e);
            vr6.e$default(vr6.INSTANCE, "FireSynchronizer", "readReference: ".concat(io4.b(e)), null, 4, null);
            return new we3(wc2VarA);
        }
    }

    public static ve3 b(zc2 zc2Var, mt3 mt3Var) {
        Boolean boolValueOf = null;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            if (mFirebaseUserA != null) {
                boolValueOf = Boolean.valueOf(mFirebaseUserA.isAnonymous());
            }
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            return new ue3(ye3.c.b);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        try {
            bf3 bf3Var = new bf3(mt3Var, new AtomicReference(), atomicReference, countDownLatch);
            ui8.d(zc2Var.b);
            zc2Var.a.n(new b9(zc2Var, bf3Var));
            if (!countDownLatch.await(30L, TimeUnit.SECONDS)) {
                TimeoutException timeoutException = new TimeoutException("Firebase transaction timed out after 30s");
                wc2 wc2VarA = wc2.a(timeoutException);
                vr6.e$default(vr6.INSTANCE, "FireSynchronizer", "runTransaction: ".concat(io4.b(timeoutException)), null, 4, null);
                atomicReference.set(new ue3(wc2VarA));
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            wc2 wc2VarA2 = wc2.a(e);
            vr6.e$default(vr6.INSTANCE, "FireSynchronizer", "runTransaction: ".concat(io4.b(e)), null, 4, null);
            atomicReference.set(new ue3(wc2VarA2));
        } catch (Exception e2) {
            wc2 wc2VarA3 = wc2.a(e2);
            vr6.e$default(vr6.INSTANCE, "FireSynchronizer", "runTransaction: ".concat(io4.b(e2)), null, 4, null);
            atomicReference.set(new ue3(wc2VarA3));
        }
        ve3 ve3Var = (ve3) atomicReference.get();
        return ve3Var == null ? se3.a : ve3Var;
    }

    public static af3 c(zc2 zc2Var, Object obj) {
        Boolean boolValueOf;
        zc2Var.getClass();
        Boolean boolValueOf2 = null;
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            return ye3.c;
        }
        try {
            Tasks.await(zc2Var.i(obj));
            return ze3.b;
        } catch (Exception e) {
            wc2 wc2VarA = wc2.a(e);
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA2 = d45.a();
                if (mFirebaseUserA2 != null) {
                    boolValueOf2 = Boolean.valueOf(mFirebaseUserA2.isAnonymous());
                }
            } catch (Exception unused2) {
            }
            if (!pe4.d(boolValueOf2, Boolean.TRUE)) {
                vr6.e$default(vr6.INSTANCE, "FireSynchronizer", "setValue: ".concat(io4.b(e)), null, 4, null);
            }
            return new ye3(wc2VarA);
        }
    }
}
