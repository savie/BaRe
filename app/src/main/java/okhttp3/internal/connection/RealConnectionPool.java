package okhttp3.internal.connection;

import defpackage.bs1;
import defpackage.dj7;
import defpackage.f6;
import defpackage.pv2;
import defpackage.u48;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RealConnectionPool {
    public static final /* synthetic */ int h = 0;
    public final int a;
    public final ConnectionListener b;
    public final long c;
    public volatile Map d = pv2.a;
    public final TaskQueue e;
    public final RealConnectionPool$cleanupTask$1 f;
    public final ConcurrentLinkedQueue g;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class AddressState {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    static {
        AtomicReferenceFieldUpdater.newUpdater(RealConnectionPool.class, Map.class, "d");
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner, int i, long j, TimeUnit timeUnit, ConnectionListener connectionListener, bs1 bs1Var) {
        this.a = i;
        this.b = connectionListener;
        this.c = timeUnit.toNanos(j);
        this.e = taskRunner.d();
        final String strN = dj7.n(new StringBuilder(), _UtilJvmKt.b, " ConnectionPool connection closer");
        this.f = new Task(strN) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                RealConnectionPool realConnectionPool = this.e;
                long jNanoTime = System.nanoTime();
                Map map = realConnectionPool.d;
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    ((RealConnectionPool.AddressState) it.next()).getClass();
                }
                Iterator it2 = realConnectionPool.g.iterator();
                it2.getClass();
                while (it2.hasNext()) {
                    RealConnection realConnection = (RealConnection) it2.next();
                    if (((RealConnectionPool.AddressState) map.get(realConnection.d.a)) != null) {
                        synchronized (realConnection) {
                        }
                    }
                }
                long j2 = (jNanoTime - realConnectionPool.c) + 1;
                Iterator it3 = realConnectionPool.g.iterator();
                it3.getClass();
                int i2 = 0;
                long j3 = Long.MAX_VALUE;
                RealConnection realConnection2 = null;
                RealConnection realConnection3 = null;
                int i3 = 0;
                while (it3.hasNext()) {
                    RealConnection realConnection4 = (RealConnection) it3.next();
                    realConnection4.getClass();
                    synchronized (realConnection4) {
                        if (realConnectionPool.a(realConnection4, jNanoTime) > 0) {
                            i3++;
                        } else {
                            int i4 = i3;
                            long j4 = realConnection4.L;
                            if (j4 < j2) {
                                j2 = j4;
                                realConnection2 = realConnection4;
                            }
                            if (((RealConnectionPool.AddressState) map.get(realConnection4.d.a)) != null) {
                                throw null;
                            }
                            i2++;
                            if (j4 < j3) {
                                j3 = j4;
                                realConnection3 = realConnection4;
                            }
                            i3 = i4;
                        }
                    }
                    jNanoTime = jNanoTime;
                }
                long j5 = jNanoTime;
                int i5 = i3;
                if (realConnection2 == null) {
                    if (i2 > realConnectionPool.a) {
                        j2 = j3;
                        realConnection2 = realConnection3;
                    } else {
                        realConnection2 = null;
                        j2 = -1;
                    }
                }
                if (realConnection2 == null) {
                    if (realConnection3 != null) {
                        return (j3 + realConnectionPool.c) - j5;
                    }
                    if (i5 > 0) {
                        return realConnectionPool.c;
                    }
                    return -1L;
                }
                synchronized (realConnection2) {
                    if (!realConnection2.K.isEmpty()) {
                        return 0L;
                    }
                    if (realConnection2.L != j2) {
                        return 0L;
                    }
                    realConnection2.x = true;
                    realConnectionPool.g.remove(realConnection2);
                    RealConnectionPool.AddressState addressState = (RealConnectionPool.AddressState) map.get(realConnection2.d.a);
                    if (addressState != null) {
                        realConnectionPool.b(addressState);
                        throw null;
                    }
                    _UtilJvmKt.c(realConnection2.f);
                    if (realConnectionPool.g.isEmpty()) {
                        realConnectionPool.e.a();
                    }
                    return 0L;
                }
            }
        };
        this.g = new ConcurrentLinkedQueue();
        if (j > 0) {
            return;
        }
        f6.g(u48.l(j, "keepAliveDuration <= 0: "));
        throw null;
    }

    public final int a(RealConnection realConnection, long j) {
        TimeZone timeZone = _UtilJvmKt.a;
        ArrayList arrayList = realConnection.K;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + realConnection.d.a.h + " was leaked. Did you forget to close a response body?";
                Platform platform = Platform.a;
                Platform.a.k(((RealCall.CallReference) reference).a, str);
                arrayList.remove(i);
                if (arrayList.isEmpty()) {
                    realConnection.L = j - this.c;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }

    public final void b(final AddressState addressState) {
        addressState.getClass();
        final String strN = dj7.n(new StringBuilder(), _UtilJvmKt.b, " ConnectionPool connection opener");
        new Task(this, strN) { // from class: okhttp3.internal.connection.RealConnectionPool$scheduleOpener$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                int i = RealConnectionPool.h;
                addressState.getClass();
                throw null;
            }
        };
        throw null;
    }
}
