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
        this.f = new RealConnectionPool$cleanupTask$1(this, strN);
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
        new RealConnectionPool$scheduleOpener$1(this, addressState, strN);
        throw null;
    }
}
