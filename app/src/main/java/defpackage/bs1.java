package defpackage;

import okhttp3.Address;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectionUser;
import okhttp3.internal.connection.FastFallbackExchangeFinder;
import okhttp3.internal.connection.ForceConnectRoutePlanner;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RouteDatabase;

public final class bs1 implements rt3 {
    public final TaskRunner a;
    public final int b,c,d,e,f;
    public final boolean k,n;
    public final RouteDatabase p;

    public bs1(int b,int c,int d,int e,int f,TaskRunner runner,RouteDatabase routeDatabase,boolean k,boolean n){
        this.a=runner; this.b=b; this.c=c; this.d=d; this.e=e; this.f=f;
        this.k=k; this.n=n; this.p=routeDatabase;
    }

    @Override
    public final Object a(Object obj,Object obj2,Object obj3){
        RealConnectionPool pool=(RealConnectionPool)obj;
        Address address=(Address)obj2;
        ConnectionUser user=(ConnectionUser)obj3;
        pool.getClass(); address.getClass(); user.getClass();
        TaskRunner runner=this.a;
        return new FastFallbackExchangeFinder(
            new ForceConnectRoutePlanner(
                new RealRoutePlanner(runner,pool,b,c,d,e,f,k,n,address,p,user)
            ), runner
        );
    }
}
