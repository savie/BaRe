package defpackage;

import android.content.Context;
import android.util.Log;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class oz implements bt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ ConcurrentHashMap b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ long d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ oz(kh6 kh6Var, ConcurrentHashMap concurrentHashMap, a00 a00Var, long j, kh6 kh6Var2) {
        this.c = kh6Var;
        this.b = concurrentHashMap;
        this.f = a00Var;
        this.d = j;
        this.e = kh6Var2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        yk ykVar;
        switch (this.a) {
            case 0:
                kh6 kh6Var = this.c;
                ConcurrentHashMap concurrentHashMap = this.b;
                a00 a00Var = (a00) this.f;
                long j = this.d;
                kh6 kh6Var2 = (kh6) this.e;
                be8 be8Var = be8.a;
                long jCurrentTimeMillis = System.currentTimeMillis() - kh6Var.a;
                if (jCurrentTimeMillis > 2000) {
                    Collection collectionValues = concurrentHashMap.values();
                    collectionValues.getClass();
                    long jO1 = el1.o1(collectionValues);
                    int iR = Const.r(jO1, j);
                    if (!a00Var.k && iR >= 0 && iR < 101 && (ykVar = a00Var.n) != null) {
                        ykVar.invoke(Integer.valueOf(iR));
                    }
                    if (!a00Var.k && jO1 >= 0) {
                        c40 c40Var = a00Var.b;
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        p93 p93Var = p93.a;
                        c40Var.o(contextC.getString(R.string.uploaded_progress_message, p93.c(Long.valueOf(jO1)), p93.c(Long.valueOf(j))));
                    }
                    int iV = tu0.v((jO1 - kh6Var2.a) / (jCurrentTimeMillis / 1000.0f));
                    p93 p93Var2 = p93.a;
                    p93.c(Long.valueOf(iV));
                    synchronized (a00Var.b) {
                    }
                    kh6Var.a = System.currentTimeMillis();
                    kh6Var2.a = jO1;
                }
                return be8Var;
            default:
                yn8 yn8Var = (yn8) this.e;
                io8 io8Var = new io8(this.b, (String) this.f, this.c, this.d);
                Long lValueOf = Long.valueOf(yn8Var.c);
                p93 p93Var3 = p93.a;
                Log.i("WallUploadHelper", "Wall size = " + ((Object) p93.c(lValueOf)));
                q63 q63Var = yn8Var.a;
                q63Var.getClass();
                rf8 rf8Var = new rf8(q63Var, 22, false, null, false);
                tb1 tb1Var = tb1.a;
                ag8 ag8VarD = qb1.c().d(rf8Var);
                e7 e7Var = new e7(io8Var, 27);
                ag8VarD.getClass();
                ag8VarD.g = e7Var;
                zf8 zf8VarC = ag8VarD.c();
                io8Var.invoke(Long.valueOf(yn8Var.c));
                return Boolean.valueOf(zf8VarC.a());
        }
    }

    public /* synthetic */ oz(jo8 jo8Var, yn8 yn8Var, ConcurrentHashMap concurrentHashMap, String str, kh6 kh6Var, long j) {
        this.e = yn8Var;
        this.b = concurrentHashMap;
        this.f = str;
        this.c = kh6Var;
        this.d = j;
    }
}
