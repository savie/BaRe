package defpackage;

import android.content.Context;
import java.io.Serializable;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.cloud.orphans.a;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rh1 implements bt3 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ long b;
    public final /* synthetic */ Serializable c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ rh1(ih6 ih6Var, a aVar, long j, String str, bt3 bt3Var) {
        this.c = ih6Var;
        this.d = aVar;
        this.b = j;
        this.e = str;
        this.f = bt3Var;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        boolean z;
        dk3 dk3Var;
        switch (this.a) {
            case 0:
                ih6 ih6Var = (ih6) this.c;
                a aVar = (a) this.d;
                long j = this.b;
                String str = (String) this.e;
                bt3 bt3Var = (bt3) this.f;
                synchronized (aVar) {
                    String strO = a.o();
                    if (j == aVar.m && aVar.n == null && pe4.d(str, strO)) {
                        bt3Var.invoke();
                        z = true;
                    } else {
                        aVar.m++;
                        aVar.r(strO);
                        z = false;
                    }
                }
                ih6Var.a = z;
                return be8.a;
            default:
                kh6 kh6Var = (kh6) this.c;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.d;
                io3 io3Var = (io3) this.e;
                long j2 = this.b;
                kh6 kh6Var2 = (kh6) this.f;
                be8 be8Var = be8.a;
                long jCurrentTimeMillis = System.currentTimeMillis() - kh6Var.a;
                if (jCurrentTimeMillis > 2000) {
                    Collection collectionValues = concurrentHashMap.values();
                    collectionValues.getClass();
                    long jO1 = el1.o1(collectionValues);
                    int iR = Const.r(jO1, j2);
                    if (!io3Var.i && iR >= 0 && iR < 101 && (dk3Var = io3Var.k) != null) {
                        dk3Var.invoke(Integer.valueOf(iR));
                    }
                    if (!io3Var.i && jO1 >= 0) {
                        qp3 qp3Var = io3Var.b;
                        SwiftApp.Companion companion = SwiftApp.d;
                        Context contextC = SwiftApp.Companion.c();
                        p93 p93Var = p93.a;
                        qp3Var.o(contextC.getString(R.string.uploaded_progress_message, p93.c(Long.valueOf(jO1)), p93.c(Long.valueOf(j2))));
                    }
                    int iV = tu0.v((jO1 - kh6Var2.a) / (jCurrentTimeMillis / 1000.0f));
                    p93 p93Var2 = p93.a;
                    p93.c(Long.valueOf(iV));
                    synchronized (io3Var.b) {
                    }
                    kh6Var.a = System.currentTimeMillis();
                    kh6Var2.a = jO1;
                }
                return be8Var;
        }
    }

    public /* synthetic */ rh1(kh6 kh6Var, ConcurrentHashMap concurrentHashMap, io3 io3Var, long j, kh6 kh6Var2) {
        this.c = kh6Var;
        this.d = concurrentHashMap;
        this.e = io3Var;
        this.b = j;
        this.f = kh6Var2;
    }
}
