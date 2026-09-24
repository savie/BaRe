package okhttp3.internal.connection;

import defpackage.ov2;
import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RouteSelector {
    public final Address a;
    public final RouteDatabase b;
    public final ConnectionUser c;
    public final boolean d;
    public final List e;
    public int f;
    public List g;
    public final ArrayList h;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Selection {
        public final ArrayList a;
        public int b;

        public Selection(ArrayList arrayList) {
            this.a = arrayList;
        }
    }

    public RouteSelector(Address address, RouteDatabase routeDatabase, ConnectionUser connectionUser, boolean z) {
        List listK;
        address.getClass();
        routeDatabase.getClass();
        connectionUser.getClass();
        this.a = address;
        this.b = routeDatabase;
        this.c = connectionUser;
        this.d = z;
        ov2 ov2Var = ov2.a;
        this.e = ov2Var;
        this.g = ov2Var;
        this.h = new ArrayList();
        HttpUrl httpUrl = address.h;
        connectionUser.k(httpUrl);
        URI uriI = httpUrl.i();
        if (uriI.getHost() == null) {
            listK = _UtilJvmKt.k(new Proxy[]{Proxy.NO_PROXY});
        } else {
            List<Proxy> listSelect = address.g.select(uriI);
            listK = (listSelect == null || listSelect.isEmpty()) ? _UtilJvmKt.k(new Proxy[]{Proxy.NO_PROXY}) : _UtilJvmKt.j(listSelect);
        }
        this.e = listK;
        this.f = 0;
        connectionUser.l(httpUrl, listK);
    }

    public final boolean a() {
        return this.f < this.e.size() || !this.h.isEmpty();
    }
}
