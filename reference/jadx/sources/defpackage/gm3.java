package defpackage;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gm3 implements mt3 {
    public final /* synthetic */ ConcurrentHashMap a;
    public final /* synthetic */ fo2 b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ im3 d;
    public final /* synthetic */ long e;
    public final /* synthetic */ kh6 f;

    public /* synthetic */ gm3(long j, fo2 fo2Var, im3 im3Var, kh6 kh6Var, kh6 kh6Var2, ConcurrentHashMap concurrentHashMap) {
        this.a = concurrentHashMap;
        this.b = fo2Var;
        this.c = kh6Var;
        this.d = im3Var;
        this.e = j;
        this.f = kh6Var2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        pv pvVar;
        ConcurrentHashMap concurrentHashMap = this.a;
        fo2 fo2Var = this.b;
        kh6 kh6Var = this.c;
        im3 im3Var = this.d;
        long j = this.e;
        kh6 kh6Var2 = this.f;
        Long l = (Long) obj;
        l.getClass();
        concurrentHashMap.put(fo2Var.a, l);
        synchronized (im3.class) {
            long jCurrentTimeMillis = System.currentTimeMillis() - kh6Var.a;
            if (jCurrentTimeMillis > 2000) {
                Collection collectionValues = concurrentHashMap.values();
                collectionValues.getClass();
                long jO1 = el1.o1(collectionValues);
                int iR = Const.r(jO1, j);
                if (!im3Var.e && iR >= 0 && iR < 101 && (pvVar = im3Var.g) != null) {
                    pvVar.invoke(Integer.valueOf(iR));
                }
                if (!im3Var.e && jO1 >= 0) {
                    long j2 = jO1 > j ? j : jO1;
                    qp3 qp3Var = im3Var.a;
                    SwiftApp.Companion companion = SwiftApp.d;
                    Context contextC = SwiftApp.Companion.c();
                    p93 p93Var = p93.a;
                    qp3Var.o(contextC.getString(R.string.downloded_progress_message, p93.c(Long.valueOf(j2)), p93.c(Long.valueOf(j))));
                }
                int iV = tu0.v((jO1 - kh6Var2.a) / (jCurrentTimeMillis / 1000.0f));
                p93 p93Var2 = p93.a;
                p93.c(Long.valueOf(iV));
                synchronized (im3Var.a) {
                }
                kh6Var.a = System.currentTimeMillis();
                kh6Var2.a = jO1;
            }
        }
        return be8.a;
    }
}
