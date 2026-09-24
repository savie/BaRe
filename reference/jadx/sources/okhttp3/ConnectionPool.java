package okhttp3;

import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;
import defpackage.rt3;
import java.util.concurrent.TimeUnit;
import okhttp3.Address;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectionListener;
import okhttp3.internal.connection.ConnectionUser;
import okhttp3.internal.connection.FastFallbackExchangeFinder;
import okhttp3.internal.connection.ForceConnectRoutePlanner;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RouteDatabase;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ConnectionPool {
    public final RealConnectionPool a;

    /* JADX WARN: Type inference failed for: r7v1, types: [bs1] */
    public ConnectionPool(int i, int i2, int i3, int i4, int i5, TaskRunner taskRunner, RouteDatabase routeDatabase, boolean z, boolean z2) {
        int i6 = (i5 & 1) != 0 ? 5 : 0;
        long j = (i5 & 2) != 0 ? 5L : 1L;
        TimeUnit timeUnit = (i5 & 4) != 0 ? TimeUnit.MINUTES : TimeUnit.NANOSECONDS;
        final TaskRunner taskRunner2 = (i5 & 8) != 0 ? TaskRunner.t : taskRunner;
        final int i7 = (i5 & 32) != 0 ? 10000 : i;
        final int i8 = (i5 & 64) != 0 ? 10000 : i2;
        final int i9 = (i5 & 128) != 0 ? 10000 : i3;
        final int i10 = (i5 & 256) != 0 ? 10000 : i4;
        final int i11 = (i5 & 512) != 0 ? 10000 : 0;
        final boolean z3 = (i5 & 1024) != 0 ? true : z;
        final boolean z4 = (i5 & RSAKeyGenerator.MIN_KEY_SIZE_BITS) != 0 ? true : z2;
        final RouteDatabase routeDatabase2 = (i5 & 4096) != 0 ? new RouteDatabase() : routeDatabase;
        timeUnit.getClass();
        taskRunner2.getClass();
        TaskRunner taskRunner3 = taskRunner2;
        this.a = new RealConnectionPool(taskRunner3, i6, j, timeUnit, ConnectionListener.a, new rt3() { // from class: bs1
            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                RealConnectionPool realConnectionPool = (RealConnectionPool) obj;
                Address address = (Address) obj2;
                ConnectionUser connectionUser = (ConnectionUser) obj3;
                realConnectionPool.getClass();
                address.getClass();
                connectionUser.getClass();
                TaskRunner taskRunner4 = taskRunner2;
                return new FastFallbackExchangeFinder(new ForceConnectRoutePlanner(new RealRoutePlanner(taskRunner4, realConnectionPool, i7, i8, i9, i10, i11, z3, z4, address, routeDatabase2, connectionUser)), taskRunner4);
            }
        });
    }
}
