package defpackage;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ou2 extends nc8 {
    public final /* synthetic */ nc8 e;
    public final /* synthetic */ ThreadPoolExecutor f;

    public ou2(nc8 nc8Var, ThreadPoolExecutor threadPoolExecutor) {
        this.e = nc8Var;
        this.f = threadPoolExecutor;
    }

    @Override // defpackage.nc8
    public final void P(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f;
        try {
            this.e.P(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // defpackage.nc8
    public final void R(kb2 kb2Var) {
        ThreadPoolExecutor threadPoolExecutor = this.f;
        try {
            this.e.R(kb2Var);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
