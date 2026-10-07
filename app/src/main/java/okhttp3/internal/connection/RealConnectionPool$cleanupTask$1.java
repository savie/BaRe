package okhttp3.internal.connection;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;

import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;

public final class RealConnectionPool$cleanupTask$1 extends Task {
    public final RealConnectionPool e;

    public RealConnectionPool$cleanupTask$1(RealConnectionPool owner, String name) {
        super(name, true);
        this.e = owner;
    }

    @Override
    public final long a() {
        RealConnectionPool pool = this.e;
        long now = System.nanoTime();
        Map map = pool.d;

        for (Object value : map.values()) {
            ((RealConnectionPool.AddressState) value).getClass();
        }

        Iterator it = pool.g.iterator();
        it.getClass();
        while (it.hasNext()) {
            RealConnection connection = (RealConnection) it.next();
            if ((RealConnectionPool.AddressState) map.get(connection.d.a) != null) {
                synchronized (connection) {
                }
            }
        }

        long earliest = (now - pool.c) + 1;
        Iterator it2 = pool.g.iterator();
        it2.getClass();
        int inUse = 0;
        long oldestUnaddressed = Long.MAX_VALUE;
        RealConnection candidate = null;
        RealConnection fallback = null;
        int addresslessCount = 0;

        while (it2.hasNext()) {
            RealConnection connection = (RealConnection) it2.next();
            connection.getClass();
            synchronized (connection) {
                if (pool.a(connection, now) > 0) {
                    inUse++;
                } else {
                    long idleAt = connection.L;
                    if (idleAt < earliest) {
                        earliest = idleAt;
                        candidate = connection;
                    }
                    RealConnectionPool.AddressState state =
                            (RealConnectionPool.AddressState) map.get(connection.d.a);
                    if (state != null) {
                        throw null;
                    }
                    addresslessCount++;
                    if (idleAt < oldestUnaddressed) {
                        oldestUnaddressed = idleAt;
                        fallback = connection;
                    }
                }
            }
        }

        if (candidate == null) {
            if (addresslessCount > pool.a) {
                earliest = oldestUnaddressed;
                candidate = fallback;
            } else {
                candidate = null;
                earliest = -1L;
            }
        }

        if (candidate == null) {
            if (fallback != null) {
                return (oldestUnaddressed + pool.c) - now;
            }
            if (inUse > 0) {
                return pool.c;
            }
            return -1L;
        }

        synchronized (candidate) {
            if (!candidate.K.isEmpty()) {
                return 0L;
            }
            if (candidate.L != earliest) {
                return 0L;
            }
            candidate.x = true;
            pool.g.remove(candidate);
        }

        RealConnectionPool.AddressState state =
                (RealConnectionPool.AddressState) map.get(candidate.d.a);
        if (state != null) {
            pool.b(state);
            throw null;
        }

        _UtilJvmKt.c(candidate.f);
        if (pool.g.isEmpty()) {
            pool.e.a();
        }
        return 0L;
    }
}