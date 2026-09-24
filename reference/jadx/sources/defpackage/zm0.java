package defpackage;

import java.util.concurrent.CompletionException;
import java.util.function.Function;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zm0 implements Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ yq5 b;

    public /* synthetic */ zm0(yq5 yq5Var, int i) {
        this.a = i;
        this.b = yq5Var;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i = this.a;
        yq5 yq5Var = this.b;
        switch (i) {
            case 0:
                s12 s12Var = (s12) yq5Var;
                Response response = (Response) obj;
                int i2 = cn0.k;
                try {
                    try {
                        t12 t12Var = new t12(response.f, s12Var.f(), s12Var.d(), s12Var.h(), (fc4) by8.a(response.k.g(), fc4.class));
                        response.close();
                        return t12Var;
                    } catch (cy8 e) {
                        throw new CompletionException(e);
                    }
                } catch (Throwable th) {
                    response.close();
                    throw th;
                }
            default:
                lw3 lw3Var = (lw3) yq5Var;
                Response response2 = (Response) obj;
                int i3 = pg5.n;
                return new pw3(response2.f, lw3Var.f(), lw3Var.g(), lw3Var.h(), response2.k.a());
        }
    }
}
