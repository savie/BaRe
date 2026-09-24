package defpackage;

import java.util.function.Function;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qm0 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ qm0(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Response response = (Response) obj;
        switch (this.a) {
            case 0:
                int i = cn0.k;
                if (response != null) {
                    response.k.close();
                }
                return response;
            default:
                int i2 = pg5.n;
                try {
                    return Boolean.valueOf(response != null);
                } finally {
                    if (response != null) {
                        response.close();
                    }
                }
        }
    }
}
