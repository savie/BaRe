package defpackage;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class jq implements mt3 {
    public final /* synthetic */ ConcurrentHashMap a;
    public final /* synthetic */ gz b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ mq d;
    public final /* synthetic */ long e;
    public final /* synthetic */ kh6 f;

    public /* synthetic */ jq(ConcurrentHashMap concurrentHashMap, gz gzVar, kh6 kh6Var, mq mqVar, long j, kh6 kh6Var2) {
        this.a = concurrentHashMap;
        this.b = gzVar;
        this.c = kh6Var;
        this.d = mqVar;
        this.e = j;
        this.f = kh6Var2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        pv pvVar;
        ConcurrentHashMap concurrentHashMap = this.a;
        gz gzVar = this.b;
        kh6 kh6Var = this.c;
        mq mqVar = this.d;
        long j = this.e;
        kh6 kh6Var2 = this.f;
        Long l = (Long) obj;
        l.getClass();
        concurrentHashMap.put(gzVar, l);
        synchronized (mq.class) {
            long jCurrentTimeMillis = System.currentTimeMillis() - kh6Var.a;
            if (jCurrentTimeMillis > 2000) {
                Collection collectionValues = concurrentHashMap.values();
                collectionValues.getClass();
                long jO1 = el1.o1(collectionValues);
                int iR = Const.r(jO1, j);
                if (!mqVar.i && iR >= 0 && iR < 101 && (pvVar = mqVar.l) != null) {
                    pvVar.invoke(Integer.valueOf(iR));
                }
                if (!mqVar.i && jO1 >= 0) {
                    long j2 = jO1 > j ? j : jO1;
                    c40 c40Var = mqVar.b;
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    p93 p93Var = p93.a;
                    c40Var.o(contextC.getString(R.string.downloded_progress_message, p93.c(Long.valueOf(j2)), p93.c(Long.valueOf(j))));
                }
                int iV = tu0.v((jO1 - kh6Var2.a) / (jCurrentTimeMillis / 1000.0f));
                p93 p93Var2 = p93.a;
                p93.c(Long.valueOf(iV));
                synchronized (mqVar.b) {
                }
                kh6Var.a = System.currentTimeMillis();
                kh6Var2.a = jO1;
            }
        }
        return be8.a;
    }
}
