package defpackage;

import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.Dns;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class fa5 implements Dns {
    @Override // okhttp3.Dns
    public final List a(String str) {
        List list;
        str.getClass();
        AtomicInteger atomicInteger = ga5.a;
        z63 z63Var = new z63(1, Dns.a, Dns.class, "lookup", "lookup(Ljava/lang/String;)Ljava/util/List;", 0, 1);
        synchronized (ua5.a) {
            ta5 ta5Var = ua5.b;
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = str.toLowerCase(locale);
            lowerCase.getClass();
            list = (List) ta5Var.get(lowerCase);
            if (list == null) {
                list = ov2.a;
            }
        }
        return !list.isEmpty() ? ga5.a(str, ov2.a, list, ga5.a.getAndIncrement()) : ga5.a(str, (List) z63Var.invoke(str), ov2.a, ga5.a.getAndIncrement());
    }
}
