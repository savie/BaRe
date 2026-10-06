package okhttp3.internal.connection;

import defpackage.pe4;
import defpackage.w40;
import okhttp3.Address;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface RoutePlanner {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class DefaultImpls {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface Plan {
        Plan a();

        RealConnection c();

        void cancel();

        boolean d();

        ConnectResult e();

        ConnectResult g();
    }

    boolean a();

    boolean b(RealConnection realConnection);

    Address c();

    boolean d(HttpUrl httpUrl);

    w40 e();

    Plan f();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class ConnectResult {
        public final Plan a;
        public final Plan b;
        public final Throwable c;

        public /* synthetic */ ConnectResult(Plan plan, ConnectPlan connectPlan, Throwable th, int i) {
            this(plan, (i & 2) != 0 ? null : connectPlan, (i & 4) != 0 ? null : th);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConnectResult)) {
                return false;
            }
            ConnectResult connectResult = (ConnectResult) obj;
            return pe4.d(this.a, connectResult.a) && pe4.d(this.b, connectResult.b) && pe4.d(this.c, connectResult.c);
        }

        public final int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            Plan plan = this.b;
            int iHashCode2 = (iHashCode + (plan == null ? 0 : plan.hashCode())) * 31;
            Throwable th = this.c;
            return iHashCode2 + (th != null ? th.hashCode() : 0);
        }

        public final String toString() {
            return "ConnectResult(plan=" + this.a + ", nextPlan=" + this.b + ", throwable=" + this.c + ')';
        }

        public ConnectResult(Plan plan, Plan plan2, Throwable th) {
            this.a = plan;
            this.b = plan2;
            this.c = th;
        }
    }
}
