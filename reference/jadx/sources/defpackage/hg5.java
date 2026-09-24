package defpackage;

import java.util.ArrayList;
import java.util.concurrent.CompletableFuture;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hg5 implements Function {
    public final /* synthetic */ pg5 a;
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ ox0 c;
    public final /* synthetic */ hx5 d;
    public final /* synthetic */ dc6 e;
    public final /* synthetic */ String f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ boolean h;
    public final /* synthetic */ long i;

    public /* synthetic */ hg5(pg5 pg5Var, ArrayList arrayList, ox0 ox0Var, hx5 hx5Var, dc6 dc6Var, String str, boolean z, boolean z2, long j) {
        this.a = pg5Var;
        this.b = arrayList;
        this.c = ox0Var;
        this.d = hx5Var;
        this.e = dc6Var;
        this.f = str;
        this.g = z;
        this.h = z2;
        this.i = j;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        ox0 ox0Var = this.c;
        hx5 hx5Var = this.d;
        int i = pg5.n;
        ArrayList arrayList = this.b;
        arrayList.add((yf8) obj);
        try {
            ox0Var.reset();
            if (hx5Var.i == hx5Var.f) {
                return CompletableFuture.completedFuture(arrayList);
            }
            hx5Var.a(ox0Var);
            dc6 dc6Var = this.e;
            String str = this.f;
            boolean z = this.g;
            boolean z2 = this.h;
            CompletableFuture completableFutureSupplyAsync = CompletableFuture.supplyAsync(new fg5(dc6Var, str, hx5Var, ox0Var, z, z2));
            pg5 pg5Var = this.a;
            return completableFutureSupplyAsync.thenCompose((Function) new gg5(pg5Var)).thenCompose((Function) new hg5(pg5Var, arrayList, ox0Var, hx5Var, dc6Var, str, z, z2, this.i));
        } catch (rg5 e) {
            return ki8.c(e);
        }
    }
}
