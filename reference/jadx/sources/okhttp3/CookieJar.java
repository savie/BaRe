package okhttp3;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface CookieJar {
    public static final CookieJar a = new Companion.NoCookies();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class NoCookies implements CookieJar {
            @Override // okhttp3.CookieJar
            public final void a(HttpUrl httpUrl, List list) {
                httpUrl.getClass();
            }

            @Override // okhttp3.CookieJar
            public final void b(HttpUrl httpUrl) {
                httpUrl.getClass();
            }
        }
    }

    void a(HttpUrl httpUrl, List list);

    void b(HttpUrl httpUrl);
}
