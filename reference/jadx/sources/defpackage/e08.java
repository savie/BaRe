package defpackage;

import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.FormBody;
import okhttp3.Request;
import org.swiftapps.swiftbackup.cloud.protocols.terabox.TeraBoxTokenCredentials;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e08 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ e08(ConcurrentHashMap concurrentHashMap, String str, kh6 kh6Var, long j) {
        this.a = 1;
        this.c = concurrentHashMap;
        this.b = str;
        this.d = kh6Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        switch (this.a) {
            case 0:
                h08 h08Var = (h08) this.c;
                String str = (String) this.b;
                String str2 = (String) this.d;
                TeraBoxTokenCredentials teraBoxTokenCredentials = (TeraBoxTokenCredentials) obj;
                teraBoxTokenCredentials.getClass();
                Request.Builder builder = new Request.Builder();
                String apiDomain = teraBoxTokenCredentials.getApiDomain();
                String accessToken = teraBoxTokenCredentials.getAccessToken();
                h08Var.getClass();
                builder.a = h08.a(apiDomain, "/openapi/api/precreate", accessToken);
                FormBody.Builder builder2 = new FormBody.Builder(0);
                builder2.a("path", str);
                builder2.a("autoinit", "1");
                builder2.a("block_list", str2);
                builder.c("POST", builder2.c());
                return new Request(builder);
            case 1:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.c;
                String str3 = (String) this.b;
                kh6 kh6Var = (kh6) this.d;
                Long l = (Long) obj;
                l.getClass();
                concurrentHashMap.put(str3, l);
                synchronized (fo8.class) {
                    if (System.currentTimeMillis() - kh6Var.a > 2000) {
                        Collection collectionValues = concurrentHashMap.values();
                        collectionValues.getClass();
                        el1.o1(collectionValues);
                        kh6Var.a = System.currentTimeMillis();
                    }
                }
                return be8.a;
            case 2:
                yp8 yp8Var = (yp8) this.c;
                dy7 dy7Var = (dy7) this.b;
                wp8 wp8Var = (wp8) this.d;
                gz7 gz7Var = (gz7) obj;
                be8 be8Var = be8.a;
                if (yp8Var.a.L) {
                    gz7Var = gz7.COMPLETE;
                }
                if (gz7Var != null) {
                    dy7Var.c(!gz7Var.isComplete());
                    if (gz7Var.isComplete()) {
                        yp8Var.f.w();
                        wp8Var.o(null);
                    }
                }
                return be8Var;
            default:
                yp8 yp8Var2 = (yp8) this.c;
                dy7 dy7Var2 = (dy7) this.b;
                tt8 tt8Var = (tt8) this.d;
                gz7 gz7Var2 = (gz7) obj;
                be8 be8Var2 = be8.a;
                if (yp8Var2.a.L) {
                    gz7Var2 = gz7.COMPLETE;
                }
                if (gz7Var2 != null) {
                    dy7Var2.c(!gz7Var2.isComplete());
                    if (gz7Var2.isComplete()) {
                        yp8Var2.f.w();
                        tt8Var.o(null);
                    }
                }
                return be8Var2;
        }
    }

    public /* synthetic */ e08(int i, Object obj, Object obj2, Object obj3) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
        this.d = obj3;
    }
}
