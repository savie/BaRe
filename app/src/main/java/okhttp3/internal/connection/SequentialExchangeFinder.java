package okhttp3.internal.connection;

import defpackage.y5;
import defpackage.yc9;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SequentialExchangeFinder implements ExchangeFinder {
    public final RealRoutePlanner a;

    public SequentialExchangeFinder(RealRoutePlanner realRoutePlanner) {
        this.a = realRoutePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RealConnection a() throws Throwable {
        IOException iOException = null;
        while (true) {
            RealRoutePlanner realRoutePlanner = this.a;
            if (realRoutePlanner.l.a()) {
                y5.m("Canceled");
                return null;
            }
            try {
                RoutePlanner.Plan planF = realRoutePlanner.f();
                if (!planF.d()) {
                    RoutePlanner.ConnectResult connectResultE = planF.e();
                    if (connectResultE.b == null && connectResultE.c == null) {
                        connectResultE = planF.g();
                    }
                    RoutePlanner.Plan plan = connectResultE.b;
                    Throwable th = connectResultE.c;
                    if (th != null) {
                        throw th;
                    }
                    if (plan != null) {
                        realRoutePlanner.p.addFirst(plan);
                    }
                }
                return planF.c();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    yc9.a(iOException, e);
                }
                if (!realRoutePlanner.b(null)) {
                    throw iOException;
                }
            }
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RoutePlanner b() {
        return this.a;
    }
}
