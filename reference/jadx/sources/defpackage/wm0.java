package defpackage;

import java.util.Map;
import java.util.concurrent.CompletionException;
import java.util.function.Function;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wm0 implements Function {
    public final /* synthetic */ int a;

    public /* synthetic */ wm0(int i) {
        this.a = i;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.a) {
            case 0:
                int i = cn0.k;
                Throwable cause = ((Throwable) obj).getCause();
                if ((cause instanceof dy2) && ((dy2) cause).a.b().equals("RetryHead")) {
                    return null;
                }
                throw new CompletionException(cause);
            case 1:
                return (String) ((Map.Entry) obj).getValue();
            default:
                return ((pd) obj).q0();
        }
    }
}
