package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dn2 implements kz0 {
    public final LinkedHashMap b;
    public final LinkedHashMap c = new LinkedHashMap();

    public dn2(LinkedHashMap linkedHashMap) {
        this.b = linkedHashMap;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (entry.getValue() instanceof kz0) {
                this.c.put(entry.getKey(), (kz0) entry.getValue());
            }
        }
    }

    @Override // defpackage.kz0
    public final Request a(Route route, Request request) {
        Iterator it = this.c.entrySet().iterator();
        while (it.hasNext()) {
            Request requestA = ((kz0) ((Map.Entry) it.next()).getValue()).a(route, request);
            if (requestA != null) {
                return requestA;
            }
        }
        return null;
    }

    @Override // okhttp3.Authenticator
    public final Request b(Route route, Response response) {
        List listA = response.a();
        if (listA.isEmpty()) {
            return null;
        }
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            Authenticator authenticator = (Authenticator) this.b.get(((Challenge) it.next()).a.toLowerCase(Locale.getDefault()));
            if (authenticator != null) {
                return authenticator.b(route, response);
            }
        }
        return null;
    }
}
